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
      RTICKS=""
      ETICKS=""
      printf "## **\`${cmd}\`**\n\n";
      helpdoc=$(syscoin-cli help $cmd)
      echo "$helpdoc" | grep -q "Arguments:" && RTICKS=$TICKS
      echo "$helpdoc" | grep -q "Arguments:" && ETICKS=$TICKS
      if [ "$ETICKS" = "" ]; then
        echo "$helpdoc" | grep -q "Result\( (.*)\)*:" && ETICKS=$TICKS
      fi
      helpdoc=$(echo "$helpdoc" | sed -e "s#^${cmd}\(.*\)#**\`${cmd}\\1\`**#")
      helpdoc=$(echo "$helpdoc" | awk -v patt="Arguments:" "\$0 ~ patt {gsub(patt, \"***\"patt\"***\n$TICKS\")}1")
      helpdoc=$(echo "$helpdoc" | sed -e "s/Result\( (.*)\)*:/${RTICKS}éé***Result\1:***é$TICKS/" | LC_ALL=C tr 'é' '\n') 
      helpdoc=$(echo "$helpdoc" | awk -v patt="Examples:" "\$0 ~ patt {gsub(patt, \"$ETICKS\n\n***\"patt\"***\n$TICKS\")}1")
      echo "$helpdoc"
      if [ "$ETICKS" != "" ] || [ "$RTICKS" != "" ]; then
        echo "\`\`\`"
      fi
      echo ""
    fi
  done < <(syscoin-cli help)
}

echo "$(syscoin_of_the_markdown) " > README.md
