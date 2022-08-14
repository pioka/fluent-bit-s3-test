# fluent-bit-s3-test
## About
fluent-bitのS3 Output pluginをminioで試してみる

services:  
* logger
  * 1秒ごとにタイムスタンプとランダムな文字列をファイルと標準出力に吐き出す.
* fluentbit
  * fluent-bit.
* minio
  * minio. S3互換のAPIを持ったストレージ. AWSに金払いたくないので代わりに使う.

## Usage
minioだけ起動する
```
docker-compose up -d minio
```

ブラウザで`http://localhost:9001`を開いてログ保存用バケット:`log-bucket`を作成する

他のサービスも起動する
```
docker-compose up -d
```

