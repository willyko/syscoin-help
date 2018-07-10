#!/bin/bash

syscoin_of_the_markdown() {
  LC_ALL=C
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
      EXAMPLES=""
      printf "## **\`${cmd}\`**\n\n";
      helpdoc=$(syscoin-cli help $cmd)
      echo "$helpdoc" | grep -q "Arguments:" && RTICKS=$TICKS
      echo "$helpdoc" | grep -q "Arguments:" && ETICKS=$TICKS
      if [ "$ETICKS" = "" ]; then
        echo "$helpdoc" | grep -q "Result\( (.*)\)*:" && ETICKS=$TICKS
      fi
      echo "$helpdoc" | grep -q "Examples:" && EXAMPLES="Y"
      helpdoc=$(echo "$helpdoc" | sed -e "s#^${cmd}\(.*\)#**\`${cmd}\\1\`**#")
      helpdoc=$(echo "$helpdoc" | sed -e "s/Arguments:/***Arguments:***é$TICKS/" | tr 'é' '\n') 
      helpdoc=$(echo "$helpdoc" | sed -e "s/Result\( (.*)\)*:/${RTICKS}éé***Result\1:***é$TICKS/" | tr 'é' '\n') 
      helpdoc=$(echo "$helpdoc" | sed -e "s/Examples:/${ETICKS}éé***Examples:***é$TICKS/" | tr 'é' '\n') 
      echo "$helpdoc"
      if [ "$ETICKS" != "" ] || [ "$RTICKS" != "" ] || [ "$EXAMPLES" != "" ]; then
        echo "\`\`\`"
      fi
      echo ""
    fi
  done < <(syscoin-cli help)
}

echo "$(syscoin_of_the_markdown) " > README.md
