# 藪からBaton

## Setup

```
$ brew install mecab mecab-ipadic
$ export MECAB_PATH=/usr/local/Cellar/mecab/0.996/lib/libmecab.dylib
$ bundle install --path /vendor/bundler
$ export TRANSLATE_KEY=[translate key]
$ bundle exec ruby stick.rb
```

### How to get an API key

https://support.google.com/cloud/answer/6158862

## Usage

```
$ bundle exec ruby stick.rb
藪からBaton
$ bundle exec ruby stick.rb 犬も歩けば棒に当たる
dogも歩けば棒に当たる
$ bundle exec ruby stick.rb 糠に釘
糠にnail
```
