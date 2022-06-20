# Emvironment

## 事前準備
```
TBD
```

## Elasticsearchの起動
```
$ docker-compose up -d
```

## Pluginを指定して起動
```
$ PLUGIN=analysis-kuromoji docker-compose -f docker-compose-in-plugin.yml up -d
```

## PLUGIN指定リスト
|pugin name|URL|
| --- | --- |
|analysis-kuromoji|https://www.elastic.co/guide/en/elasticsearch/plugins/current/analysis-kuromoji.html|
|analysis-icu|https://www.elastic.co/guide/en/elasticsearch/plugins/current/analysis-icu.html|

# Plugin 比較コマンド
- kuromoji_baseform token filter
```
$ sh data/kuromoji_baseform_token_filter.sh
```