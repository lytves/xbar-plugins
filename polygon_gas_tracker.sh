#!/bin/bash
#
# <xbar.title>Polygon Gas Price Tracker</xbar.title>
# <xbar.version>v1.0.1</xbar.version>
# <xbar.author>lytves</xbar.author>
# <xbar.author.github>lytves</xbar.author.github>
# <xbar.desc>Polygon GasPrice forecast system.</xbar.desc>
# <xbar.image></xbar.image>
# <xbar.abouturl>https://docs.polygonscan.com/</xbar.abouturl>
#
#Polygon GasPrice forecast system based on PolygonScan Developer APIs

content=$(curl -s "https://api.polygonscan.com/api?module=gastracker&action=gasoracle&apikey=TZNPKBVIS18JISATIH95GYN2BTTHKCQ7CB" | /usr/local/bin/jq --raw-output '.result.SafeGasPrice');
echo "♾️ $content | color=purple"
