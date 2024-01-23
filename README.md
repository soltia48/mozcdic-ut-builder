# mozcdic-ut-builder

A builder of Mozc UT dictionary

## Summary

This software builds Mozc UT dictionary (mozcdic-ut) with [merge-ut-dictionaries](https://github.com/utuhiro78/merge-ut-dictionaries) and Docker.
Refer to merge-ut-dictionaries for the dictionary to be built.

## Dependencies

### Docker

```
curl --proto '=https' --tlsv1.2 -sSf https://get.docker.com | sh
```

## Configuration

Set environment variables to configure the settings.

| Name | Description | Default |
| ---- |---- | ---- |
| INCLUDE_ALT_CANNADIC | Include [Alt-Cannadic](https://github.com/utuhiro78/mozcdic-ut-alt-cannadic) | false |
| INCLUDE_EDICT2 | Include [EDICT2](https://github.com/utuhiro78/mozcdic-ut-edict2) | false |
| INCLUDE_JAWIKI | Include [a dictionary generated from the Japanese Wikipedia](https://github.com/utuhiro78/mozcdic-ut-jawiki) | true |
| INCLUDE_NEOLOGD | Include [mecab-ipadic-NEologd](https://github.com/utuhiro78/mozcdic-ut-neologd) | true |
| INCLUDE_PERSONAL_NAMES | Include [Personal Name Dictionary](https://github.com/utuhiro78/mozcdic-ut-personal-names) | true |
| INCLUDE_PLACE_NAMES | Include [a dictionary generated from Japan Post's ZIP code data](https://github.com/utuhiro78/mozcdic-ut-place-names) | true |
| INCLUDE_SKK_JISYO | Include [SKK-JISYO](https://github.com/utuhiro78/mozcdic-ut-skk-jisyo) | false |
| INCLUDE_SUDACHIDICT | Include [SudachiDict](https://github.com/utuhiro78/mozcdic-ut-sudachidict) | false |

## Usage

### Build the dictionary

```
git clone https://github.com/soltia48/mozcdic-ut-builder.git
cd ./mozcdic-ut-builder/
./build.sh
```

The output will be placed in `./dist/`.

## Authors

- soltia48

## Thanks

- [utuhiro78](https://github.com/utuhiro78) - Author of merge-ut-dictionaries

## License

[MIT](https://opensource.org/licenses/MIT)

Copyright (c) 2024 soltia48
