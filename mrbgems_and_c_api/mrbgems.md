## 1.1. mrbgems概要

### mrbgemsとは

`mrbgems` は `Ruby` における [RubyGems](https://rubygems.org/) に相当する `mruby` の拡張ライブラリです。  
`mruby` に標準で添付されているものの他に、GitHub上で公開されている300を超えるライブラリが利用可能です。

### mrbgemsを利用する

`mruby` で `mrbgems` を利用するためには、`mruby VM` に `mrbgems` を組み込む必要があります。  
`mruby` ソースコードに含まれる `build_config.rb` に、利用する `mrbgems` を記述して`mruby VM` をビルドすることで、`mruby VM` に `mrbgems` を追加することができます。

**build_config.rbの記述例**

mruby標準の `mruby-eval` と、GitHubに公開されている [`mruby-onig-regexp`](https://github.com/mattn/mruby-onig-regexp) を利用する場合の `build_config.rb` 記述例を下記に示します。

```ruby
MRuby::Build.new do |conf|
  # snip...
  conf.gem :core => 'mruby-eval'
  conf.gem :github => 'mattn/mruby-onig-regexp'
  # snip...
end
```
