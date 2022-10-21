#!/usr/bin/env zsh

echo "\n<<< Running $0 >>>\n"
echo "ZSH_VERSION = ${ZSH_VERSION}"

exists brew && echo "excellent!!!" || echo "bogus"
exists nonexistent && echo "excellent!!!" || echo "bogus"

which exists
