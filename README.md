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
藪から棒
藪からBaton
From a busy stick
$ bundle exec ruby stick.rb 糠に釘
糠に釘
branに釘
Nail in bran
```
