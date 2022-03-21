# 市区町村以下の住所から市区町村を取得

https://www.post.japanpost.jp/zipcode/download.html

## 住所の郵便番号（CSV形式） > 読み仮名データの促音・拗音を小書きで表記するもの
全国一括⇒ken_all.zipをダウンロード

https://www.post.japanpost.jp/zipcode/dl/kogaki-zip.html

---

ken_all_simple.csv
```csv
あきる野市,カスタム,ヨミカタ
```

ken_all_custome.csv
```csv
あきる野市,-1,-1,-4472,名詞,固有名詞,地域,一般,*,*,あきる野市,ｱｷﾙﾉｼ,ｱｷﾙﾉｼ
```

- [python で形態素解析。Janome が簡単。pip 一発でインストール](http://ailaby.com/janome/)
- [Welcome to janome's documentation! (Japanese) — Janome v0.3 documentation (ja)](https://mocobeta.github.io/janome/)
- [Python, Janomeで日本語の形態素解析、分かち書き（単語分割）](https://note.nkmk.me/python-janome-tutorial/)
- [Python初心者が1時間以内にjanomeで形態素解析できた方法](https://qiita.com/d-cabj/items/d934eb87e3012a02e23a)
- [PHPで都道府県、市区町村、町域名以降の住所分割を高速に行う方法](http://pcmaster.hatenablog.com/entry/20100211/p2)
