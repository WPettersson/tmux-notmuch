#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# shellcheck source=helpers.sh
source "$CURRENT_DIR/helpers.sh"

main() {
  local units
  tags=$(get_tmux_option "@notmuch_tags" "tag:unread")
  local out=$(notmuch count ${tags})
  if [ "${out}" -ge 1 ] ; then
    printf "${out}📬 "
  fi
}
main
