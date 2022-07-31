```
{
  "took": 5,
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
    "max_score": 0.9331132,
    "hits": [
      {
        "_index": "icu_normalizer_char",
        "_id": "3",
        "_score": 0.9331132,
        "_source": {
          "content": "私はあの㌀を構築しています",
          "content_without_analyzer": "私はあの㌀を構築しています"
        }
      }
    ]
  }
}
```