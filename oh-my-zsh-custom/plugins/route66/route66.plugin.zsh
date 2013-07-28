#!/usr/bin/env zsh
# Usage: route66 [up|down]

find_default_gateway() {
  local base_ip="$(ifconfig $DEFAULT_INTERFACE | awk '/inet/{ print $2 }' | sed -E 's/\.[0-9]+$//')"
  echo $(traceroute -w1 -m5 -i$DEFAULT_INTERFACE google.com 2> /dev/null | awk "/$base_ip/{ print \$2 }" | tail -1)
}

# Add custom routes after you connect to the GD VPN
_route66_routes_up() {
  echo "Adding custom routes"

  sudo route add 10.0.0.0/8 $VPN_GATEWAY
  sudo route add 172.16.0.0/12 $VPN_GATEWAY
  sudo route change default $DEFAULT_GATEWAY
}

# Remove custom routes after you disconnect from the GD VPN
_route66_routes_down() {
  echo "Removing custom routes"

  sudo route delete 10.0.0.0/8 $VPN_GATEWAY
  sudo route delete 172.16.0.0/12 $VPN_GATEWAY
}

route66() {
  COMMAND="$1"
  [[ -z "$COMMAND" ]] && echo "$COMMAND not supported. Use either up or down" && return

  VPN_GATEWAY="$(ifconfig utun0|tail -1|awk '{print $2}')"
  DEFAULT_INTERFACE="en0"
  DEFAULT_GATEWAY="$(find_default_gateway)"

  case $COMMAND in
  up)
    _route66_routes_up
    ;;
  down)
    _route66_routes_down
    ;;
  *)
    echo "$COMMAND not supported. Use either up or down" && return
    ;;
  esac
}
