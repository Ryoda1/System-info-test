#!/bin/bash
echo -e "${BOLD}${CYAN}Govnofetch${RESET}"
echo -e "${BOLD}${GREEN}User:${RESET} $(whoami)@$(hostname)"
echo -e "${BOLD}${GREEN}Operating System:${RESET} $(lsb_release -ds 2>/dev/null || cat /etc/*release | grep PRETTY_NAME | cut -d '=' -f2)"
echo -e "${BOLD}${GREEN}Kernel:${RESET} $(uname -r)"
echo -e "${BOLD}${GREEN}Uptime:${RESET} $(uptime -p)"
mem_usage=$(free -h | awk '/Mem:/ {print $3 "/" $2}')
echo -e "${BOLD}${GREEN}Memory:${RESET} $mem_usage"
echo -e "${BOLD}${GREEN}CPU:${RESET} $(grep -m1 'model name' /proc/cpuinfo | cut -d ':' -f2 | sed 's/^ *//')"
echo -e "${BOLD}${GREEN}GPU:${RESET} $(lspci | grep VGA | cut -d ':' -f3 | sed 's/^ *//')"
