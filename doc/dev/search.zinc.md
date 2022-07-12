# zinc

https://github.com/zinclabs/zinc
https://docs.zincsearch.com/05_quickstart/
set ZINC_FIRST_ADMIN_USER=admin
set ZINC_FIRST_ADMIN_PASSWORD=123456
ZINC_MINIO_ENDPOINT=
mkdir data
zinc.exe

curl http://192.168.56.1:4080/api/_bulk -i -u admin:123456  --data-binary "@13.json"

docker pull public.ecr.aws/h9e2j3o7/zinc:latest
mkdir data
docker run -d -v d:/binW/zinc/data:/data -e DATA_PATH="/data" -p 4080:4080 -e ZINC_FIRST_ADMIN_USER=admin -e ZINC_FIRST_ADMIN_PASSWORD=123456 --name zinc public.ecr.aws/h9e2j3o7/zinc:latest

curl -L https://github.com/zinclabs/zinc/releases/download/v0.1.1/olympics.ndjson.gz -o olympics.ndjson.gz
curl http://192.168.56.1:4080/api/_bulk -i -u admin:123456  --data-binary "@olympics.ndjson"
curl http://192.168.56.1:4080/api/_bulk -i -u admin:123456  --data-binary "@13.json"

每条数据前需要加索引！！！
{ "index" : { "_index" : "olympics" } } 

[zinc：替代elasticsearch的轻量级Go语言搜索引擎](https://www.jdon.com/57851)

python调用示例
[Zinc 全文搜索引擎Elasticsearch轻量级替代品](https://blog.csdn.net/allway2/article/details/122213511)

## 如何把JSON日志中的时间字段转给Zinc
解决: 
在正文里加上时间字段 @timestamp，比如：
{
  "message": "hello",
  "@timestamp": "2018-01-01T00:00:00Z"
}
需要注意的是，@timestamp字段的格式必须是RFC 3339，而不是ISO 8601。也可以是时间戳

用python把日志转成ndjson
时间转换的工具建议使用 arrow  `pip install arrow`
```python
import arrow
import json
import os

def add_timestamp_ads_log(line, key):
  try:
    line = line.strip()
    if line != "":
      j = json.loads(line)
      if j[key] != "":
        t = j[key]
        tt = arrow.get(t).to("utc").strftime("%Y-%m-%dT%H:%M:%S.%fZ")
        j["@timestamp"] = tt
      return json.dumps(j)
    else:
      return line
  except Exception as e:
    print(e)
    return line

def log2json(log_path, json_path, index):
  with open(log_path, 'r', encoding='utf-8') as f:
    lines = f.readlines()
    with open(json_path, 'w', encoding='utf-8') as f2:
      for line in lines:
        line = add_timestamp_ads_log(line, "_time")
        f2.write(json.dumps({ "index" : { "_index" : index } })+"\n")
        f2.write(line+"\n")

dir = os.path.split(os.path.realpath(__file__))[0]
log2json(dir+'./.log/13.log', dir+'./.log/13.json',"ads_17")

print("curl http://192.168.56.1:4080/api/_bulk -i -u admin:123456  --data-binary \"@13.json\"")
```
[对RFC 3339的时间、时区格式详解](https://www.jianshu.com/p/f50005a2410c)


## 高亮
不好使

https://docs.zincsearch.com/api-es-compatible/search/highlight/

PUT /es/myindex/_mapping
```json
{
    "properties": {
        "content": {
            "type": "text",
            "index": true,
            "store": true,
            "highlightable": true
        }
    }
}
```



