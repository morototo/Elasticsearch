```
{
  "took": 1,
  "timed_out": false,
  "_shards": {
    "total": 1,
    "successful": 1,
    "skipped": 0,
    "failed": 0
  },
  "hits": {
    "total": {
      "value": 3,
      "relation": "eq"
    },
    "max_score": 1,
    "hits": [
      {
        "_index": "kuromoji_number",
        "_id": "1",
        "_score": 1,
        "_source": {
          "content": "そのネズミを捕まえています",
          "content_without_analyzer": "そのネズミを捕まえています"
        }
      },
      {
        "_index": "kuromoji_number",
        "_id": "2",
        "_score": 1,
        "_source": {
          "content": "昨日このバスに乗った",
          "content_without_analyzer": "昨日このバスに乗った"
        }
      },
      {
        "_index": "kuromoji_number",
        "_id": "3",
        "_score": 1,
        "_source": {
          "content": "私はあのサーバーを一〇〇〇個構築しています",
          "content_without_analyzer": "私はあのサーバーを一〇〇〇個構築しています"
        }
      }
    ]
  }
}
```