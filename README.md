# Environment

## Prepare
- [Install Docker](https://docs.docker.com/engine/install/)
- [Install Docker-compose](https://docs.docker.com/compose/install/)

## Launch by specifying the Plugin
```
※ To verify the analysis-kuromoji plugin
$ PLUGIN=analysis-kuromoji docker-compose -f docker-compose-in-plugin.yml up -d
※ To verify the analysis-icu plugin
$ PLUGIN=analysis-icu docker-compose -f docker-compose-in-plugin.yml up -d
```

## Plugin designation list
|plugin name|URL|
| --- | --- |
|analysis-kuromoji|https://www.elastic.co/guide/en/elasticsearch/plugins/current/analysis-kuromoji.html|
|analysis-icu|https://www.elastic.co/guide/en/elasticsearch/plugins/current/analysis-icu.html|

# Plugin verification commands
- kuromoji_baseform token filter
```
$ sh data/kuromoji_baseform_token_filter.sh
```

- kuromoji_part_of_speech token filter
```
$ sh data/kuromoji_part_of_speech_token_filter.sh
```

- kuromoji_stemmer token filter
```
$ sh data/kuromoji_stemmer_token_filter.sh
```

- ja_stop token filter
```
$ sh data/ja_stop_token_filter.sh
```

- kuromoji_iteration_mark character filter
```
$ sh data/kuromoji_iteration_mark_char_filter.sh
```

- kuromoji_readingform token filter
```
$ sh data/kuromoji_readingform_token_filter.sh
```

- kuromoji_number token filter
```
$ sh data/kuromoji_number_token_filter.sh
```

- icu_normalizer char filter
```
$ sh data/icu_normalizer_char_filter.sh
```

- icu_folding token filter
```
$ sh data/icu_folding_token_filter.sh
```

- icu_transform token filter
```
$ sh data/icu_transform_token_filter.sh
```
