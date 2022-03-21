# -*- coding: utf-8 -*-
'''

'''

import os
import pandas as pd
from janome.tokenizer import Tokenizer

user_name = os.environ['USERPROFILE'].replace('\\', '/')

# Reason for using excel(Because address may contain commas)
addr = pd.read_excel(user_name + '/Desktop/addr.xlsx', header=None, encoding='shift-jis')

# ユーザー定義辞書 あり
#t = Tokenizer(user_name + '/Desktop/ken_all_simple.csv', udic_type='simpledic', udic_enc='utf8')
t = Tokenizer(user_name + '/Desktop/ken_all_custom.csv', udic_enc='utf8')

list_addr = []

for i, txt in addr.iterrows():
    tokens = t.tokenize(txt[0], wakati=True)
    list_addr.append(tokens[0])  

df = pd.DataFrame(list_addr)

writer = pd.ExcelWriter(user_name + '/Desktop/addr_split_city.xlsx')
df.to_excel(writer, header=False, index=False)
writer.save()
