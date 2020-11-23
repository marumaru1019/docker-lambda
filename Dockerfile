FROM lambci/lambda:build-python3.7
ENV AWS_DEFAULT_REGION ap-northeast-1

ADD . .

CMD pip install -r requirements.txt -t python/lib/python3.7/site-packages/ && \
    zip -r linetest.zip ./python 