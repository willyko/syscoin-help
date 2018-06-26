#!/bin/bash

syscoin_of_the_markdown() {
  while read i; do 
    c=$(echo "$i" | head -n1 | awk '{print $1;}');
    if [[ $c == "==" ]]; then 
      h=$(echo "$i" | head -n1 | awk '{print $2;}');
      if [[ $h != $head ]]; then
        head="$h";
        printf "\n\n$head\n==============================\n";
      fi
    else
      if [[ $c != $cmd ]]; then
        cmd="$c";
      fi
    fi
    if [[ $cmd != "" ]]; then
      TICKS="\\\`\\\`\\\`"
      printf "## **\`${cmd}\`**\n\n";
      helpdoc=$(syscoin-cli help $cmd)
      echo "$helpdoc" | grep -q "Arguments:" && RTICKS=$TICKS
      echo "$helpdoc" | (grep -q "Arguments:" || grep -q "Result") && ETICKS=$TICKS
      helpdoc=$(echo "$helpdoc" | sed -e "s#^${cmd}\(.*\)#*\`${cmd}\\1\`*#")
      helpdoc=$(echo "$helpdoc" | sed -e "s#^Arguments:#*Arguments:*$TICKS#")
      helpdoc=$(echo "$helpdoc" | sed -e "s#^Result\(.*\)#$RTICKS*Result\\1*$TICKS#")
      helpdoc=$(echo "$helpdoc" | sed -e "s#^Examples:#$ETICKS*Examples:*$TICKS#")
      echo "$helpdoc"
      echo "$TICKS"
      echo ""
    fi
  done < <(syscoin-cli help)
}

syscoin_of_the_markdown
