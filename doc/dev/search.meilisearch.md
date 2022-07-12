## meilisearch

rust的搜索引擎
https://github.com/meilisearch/MeiliSearch
https://gitee.com/azhao-1981/MeiliSearch
https://www.meilisearch.com/
https://tech.marksblogg.com/meilisearch-full-text-search.html

扩展：https://tech.marksblogg.com/billion-nyc-taxi-rides-redshift.html

### 优点

 MIT License
小，7,600 lines of Rust.
诸如词干提取、停止词、同义词、排序、过滤器和面等功能都可以开箱即用

The following took 102 seconds to complete. It converted 27,199 documents into JSON at a rate of ~8.6 MB/s and 267 documents/s. The resulting JSON file is 842 MB when decompressed.

Meilisearch can't be distributed

缺点：如果按每条输入，那导入慢得可是十分感人

### 安装
https://docs.meilisearch.com/learn/getting_started/quick_start.html

```bash
docker pull getmeili/meilisearch:v0.27.2
mkdir -p meili/data
docker run -d --rm --name Meili \
    -p 7700:7700 \
    -e MEILI_MASTER_KEY='221133'\
    -v $(pwd)/meili_data:/meili_data \
    getmeili/meilisearch:v0.27.2 \
    meilisearch --env="development"
```

curl \
  -X POST 'http://127.0.0.1:7700/indexes/movies/documents' \
  -H 'Content-Type: application/json' \
  --data-binary @movies.json
curl \
  -X POST 'http://127.0.0.1:7700/indexes/ads_14/documents' \
  -H 'Content-Type: application/json' \
  --data-binary @13.json

curl -d '{
  "uid": "movies",
  "primaryKey": "id"
}' \
http://127.0.0.1:7700/indexes

# 下载 https://www.notion.so/A-movies-dataset-to-test-Meili-1cbf7c9cfa4247249c40edfa22d7ca87#b5ae399b81834705ba5420ac70358a65

# 好像把这些数据一灌进去，进程就挂了,应该是windows docker的问题，在linux docker就没有问题

curl -i -X POST 'http://192.168.56.140:7700/indexes/movies/documents' --header 'content-type: application/json' --data-binary @movies.json

curl 'http://127.0.0.1:7700/indexes/movies/search?q=botman+robin&limit=2' | jq

```

### 安全/鉴权

https://docs.meilisearch.com/reference/features/authentication.html#key-types

如果没有key，就会报

No master key found; The server will accept unidentified requests. If you need some protection in development mode, please export a key: export MEILI_MASTER_KEY=xxx

### cloud
### SDK

https://github.com/meilisearch/meilisearch-rails

https://github.com/meilisearch/meilisearch-vue

### 同义词

[分享一个基于 Rust 的搜索引擎 MeiliSearch](https://www.v2ex.com/t/744135)

```bash
# 接下来通过接口配置一些同义词
curl -d '{
    "扫黑": [
        "除黑",
        "打黑"
    ],
    "除黑": [
        "扫黑",
        "打黑"
    ],
    "打黑": [
        "除黑",
        "扫黑"
    ],
}' \
http://127.0.0.1:7700/indexes/wechat/settings/synonyms
```