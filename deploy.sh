# docker run --rm -v $(pwd):/var/task lambci/lambda:build-python3.7 
# pip install -r requirements.txt -t python/lib/python3.7/site-packages/

# zip -r line.zip ./python 
# chmod -R 755 ./*

# 初回のみ コンテナの立ち上げ
docker build -t lambda_test .
# コンテナの実行
docker run -v "$PWD":/var/task lambda_test

chmod -R 755 ./*