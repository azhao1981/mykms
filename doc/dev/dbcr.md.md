# dbcr 大便超人

数据库超人，关于数据的一切都在这里

## 概述

+ 数据库 管理端
+ 数据库 migration最佳实践
+ 数据库 安全配置
+ 数据库 合规审计
+ 数据库 proxy

## 数据库 migration最佳实践

关于开发中的数据库管理，和使用规约
Ask HN: How do you organize and manage database migrations?
https://news.ycombinator.com/item?id=21405501
rails migration ，但有一个问题，注释和默认id
https://stackify.com/rails-migration-a-complete-guide/
gitlab 的迁移指导
https://docs.gitlab.com/ee/development/migration_style_guide.html

python:
Django's migration handling is excellent as well [0]. python的迁移工具
[0] https://docs.djangoproject.com/en/2.2/topics/migrations/
https://pypi.org/project/yoyo-migrations/
The best way to manage MySQL table definitions
https://www.skeema.io/
https://github.com/SectorLabs/django-postgres-extra
other
https://github.com/jtdaugherty/dbmigrations 最后更新18年

go: dbmate
https://github.com/amacneil/dbmate
dbmate --help    # print usage help
dbmate new       # generate a new migration file
dbmate up        # create the database (if it does not already exist) and run any pending migrations
dbmate create    # create the database
dbmate drop      # drop the database
dbmate migrate   # run any pending migrations
dbmate rollback  # roll back the most recent migration
dbmate down      # alias for rollback
dbmate status    # show the status of all migrations (supports --exit-code and --quiet)
dbmate dump      # write the database schema.sql file
dbmate wait      # wait for the database server to become available

ghost 数据迁移

proxy 个人数据审核或代理

## 数据库 安全配置

vault 用来管理账号

ClickHouse是一个用于联机分析处理的开源列式数据库。 
ClickHouse是由俄罗斯IT公司Yandex为Yandex.Metrica网络分析服务开发的。 
ClickHouse允许分析实时更新的数据。
关键词：列式存储
https://clickhouse.tech/
ClickHouse® is a free analytics DBMS for big data
https://github.com/ClickHouse/ClickHouse
什么是ClickHouse？
https://clickhouse.tech/docs/zh/
探索ClickHouse与Amazon S3结合使用的三种方法
https://aws.amazon.com/cn/blogs/china/explore-three-ways-to-combine-clickhouse-and-amazon-s3/
ClickHouse 在有赞的实践之路
https://tech.youzan.com/clickhouse-zai-you-zan-de-shi-jian-zhi-lu/

阿里云也提供了ClickHouse
云数据库 ClickHouse 新用户可享受首月10元优惠！优惠支持规格：4 核16GB，8 核 32GB，存储容量不超过 500GB；优惠节点数不超过 4 。
https://www.aliyun.com/product/clickhouse