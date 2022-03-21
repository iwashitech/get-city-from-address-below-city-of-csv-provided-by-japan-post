cd $USERPROFILE/Desktop
curl -0 https://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip > ken_all.zip
unzip ken_all.zip
mv KEN_ALL.CSV ken_all.csv

iconv -f SHIFT_JIS -t UTF-8 ken_all.csv > ken_all_utf8.csv

cut -f 4-5,7-8 -d ',' ken_all_utf8.csv|sed -e 's/^"\([^"]*\)","\([^"]*\)","\([^"]*\)","\([^"]*\)"/\3 \1\
\4 \2/g'|sort|uniq|gawk '{c=int(-400 * (length($1) ^ 1.5)); if (c < -36000) c=36000; print $1 ",-1,-1," c ",名詞,固有名詞,地域,一般,*,*," $1 "," $2 "," $2}' > ken_all_custom.csv