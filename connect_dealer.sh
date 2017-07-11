curl -i -N -H "Connection: Upgrade" -H "Upgrade: websocket" -H "Origin: https://${DEALERHOST}" -H "Authorization: Bearer $TOKEN" http://${DEALERHOST} 
