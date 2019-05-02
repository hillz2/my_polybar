#!/usr/bin/env python3

import requests
import json
import locale

locale.setlocale(locale.LC_ALL, 'id_ID.UTF-8')
try:
	data = requests.get('https://indodax.com/api/btc_idr/ticker').text
	json = json.loads(data)
	local_price = json["ticker"]["last"]
	rupiah = locale.currency(int(local_price), grouping=True)
	print('BTC ' + rupiah.strip("0").replace(',',''))
except:
	print('BTC Error')