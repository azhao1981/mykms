# search

## 产品

[Elasticsearch](https://www.elastic.co/cn/) is made up of almost 2 million lines of Java
[Apache Solr](https://solr.apache.org/) which uses [Apache Lucene](https://lucene.apache.org/) comes in at around 1.3M lines of Java
[Groonga](https://groonga.org/) is made up of 600K+ lines of C
[Manticore Search](https://manticoresearch.com/) is made up of 150K lines of C++,
[Sphinx](http://sphinxsearch.com/) is made up of 100K lines of C++, 
[Typesense](https://typesense.org/) is made up of 50K lines of C++ including headers, GPL-3.0 License
[Tantivy](https://github.com/tantivy-search/tantivy), which is also written in Rust, has 40K lines of code.  MIT License
  https://tantivy-search.github.io/bench/
[Bleve](https://github.com/blevesearch/bleve), which is just a text indexing library for GoLang, that doesn't include any client or server interfaces, is made up of 83K+ lines of code Apache-2.0 License
[SRCHX](https://github.com/alash3al/srchx) that comes in at a few hundred lines of GoLang.
[MeiliSearch](https://github.com/meilisearch/MeiliSearc) 7,600 lines of Rust.

 https://tech.marksblogg.com/benchmarks.html

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
### 安装
```bash
docker pull getmeili/meilisearch:v0.21.0rc4
docker run -p 7700:7700 getmeili/meilisearch:v0.21.0rc4 ./meilisearch

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

### [lmdb](http://www.lmdb.tech/doc/)

[lmdb 数据库](https://zhuanlan.zhihu.com/p/70359311)

平衡二叉树、B树、B+树、B*树 理解其中一种你就都明白了
https://zhuanlan.zhihu.com/p/27700617

面试官问你B树和B+树，就把这篇文章丢给他
https://segmentfault.com/a/1190000020416577


把mysql转成json kafka的生产者
Maxwell's daemon, a mysql-to-json kafka producer
https://github.com/zendesk/maxwell
