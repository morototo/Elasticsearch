```
{
  "took": 6,
  "timed_out": false,
  "_shards": {
    "total": 1,
    "successful": 1,
    "skipped": 0,
    "failed": 0
  },
  "hits": {
    "total": {
      "value": 1,
      "relation": "eq"
    },
    "max_score": 1.469157,
    "hits": [
      {
        "_index": "icu_transform",
        "_id": "3",
        "_score": 1.469157,
        "_source": {
          "content": "こんにちは",
          "content_without_analyzer": "こんにちは"
        }
      }
    ]
  }
}
```