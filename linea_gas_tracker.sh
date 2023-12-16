#!/bin/bash
#
# <xbar.title>Linea Gas Price Tracker</xbar.title>
# <xbar.version>v1.0.1</xbar.version>
# <xbar.author>lytves</xbar.author>
# <xbar.author.github>lytves</xbar.author.github>
# <xbar.desc>Linea GasPrice forecast system.</xbar.desc>
# <xbar.image></xbar.image>
# <xbar.abouturl>https://docs.lineascan.build/</xbar.abouturl>
#
#Linea GasPrice forecast system based on LineaScan Developer APIs

content=$(($(curl -s "https://api.lineascan.build/api?module=proxy&action=eth_gasPrice&apikey=YOUR_API_KEY" | /usr/local/bin/jq --raw-output '.result'))); 
gas=$(echo "scale=2; $content/1000000000" | bc) && echo "L $gas | color=black"
