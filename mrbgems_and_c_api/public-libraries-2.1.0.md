## 1.3. mruby拡張ライブラリ

`mruby` では、GitHub上で公開されている数多くの拡張ライブラリ(mrbgems)が利用できます。  
mruby 2.1.0で利用可能な `mrbgems` の一覧を以下に示します。

|mrbgems|作者|ライセンス|概要|依存するmrbgems|備考|
|:----------------|:---------|:-----|:----------------------|:------------|:--------|
|[mruby-alarm](https://github.com/k0u5uk3/mruby-alarm)|k0u5uk3|MIT|POSIX `alarm()` の機能を提供する`Alarm`クラス|mruby-signal||
|[mruby-allocate](https://github.com/ppibburr/mruby-allocate)|ppibburr|MIT|`Class#allocate`の実装|||
|[mruby-ansi-colors](https://github.com/Mav7/mruby-ansi-colors)|Mav7|MIT|ANSIエスケープコードを使用するためのStringクラス機能拡張|mruby-print||
|[mruby-argon2](https://github.com/Asmod4n/mruby-argon2)|Hendrik Beskow|Apache-2.0|パスワードハッシュ関数`Argon2`の機能を提供する`Argon2`クラス|mruby-sysrandom, mruby-errno||
|[mruby-at_exit](https://github.com/ksss/mruby-at_exit)|ksss|MIT|`Kernel.at_ext`の実装|||
|[mruby-avl](https://github.com/randym/mruby-avl)|randym|MIT|AVLツリーの機能を提供する`AvlTree`クラス|||
|[mruby-aws-sigv4](https://github.com/hfm/mruby-aws-sigv4)|Okumura Takahiro|MIT|`AWS Signature Version 4`の署名ライブラリ`aws-sigv4 rubygem`のmruby実装|mruby-digest, mruby-enum-ext, mruby-io, mruby-set, mruby-stringio, mruby-time-strftime, mruby-uri||
|[mruby-b64](https://github.com/Asmod4n/mruby-b64)|Hendrik Beskow|Apache-2|Base64エンコード／デコード機能を提供する`B64`クラス|||
|[mruby-base32](https://github.com/tk3/mruby-base32)|qtakamitsu|MIT|Base32エンコード／デコード機能を提供する`Base32`モジュール|mruby-string-ext, mruby-pack||
|[mruby-base58](https://github.com/sadasant/mruby-base58)|h2so5|MIT|Base58エンコード／デコード機能を提供する`Base58`モジュール|||
|[mruby-base64](https://github.com/mattn/mruby-base64)|mattn|MIT|Base64エンコード／デコード機能を提供する`Base64`モジュール|||
|[mruby-bcrypt](https://github.com/baldowl/mruby-bcrypt)|Emanuele Vicentini|MIT|OpenBSDスタイルのBlowfishベースのパスワードハッシュ関数を提供する`BCrypt::Password`クラス|mruby-onig-regexp, mruby-secure-compare, mruby-sysrandom||
|[mruby-bignum](https://github.com/chasonr/mruby-bignum)|Ray Chason|MIT|`Bignum`クラス|||
|[mruby-c-ext-helpers](https://github.com/Asmod4n/mruby-c-ext-helpers)|Asmod4n|MPL-2|mrubyのC言語拡張のためのヘルパメソッド群|mruby-errno||
|[mruby-cache](https://github.com/charlescui/mruby-cache)|charlescui|MIT|mmap()共有メモリを使用したKey-Valueデータベース機能を提供する`Cache`クラス|||
|[mruby-capability](https://github.com/matsumotory/mruby-capability)|MATSUMOTO Ryosuke|MIT|LinuxのCapabilityを提供する`Capability`クラス|||
|[mruby-capacity](https://github.com/pyama86/mruby-capacity)|pyama86|MIT|StringクラスとArrayクラスへの`capacity`メソッド拡張|||
|[mruby-catch-throw](https://github.com/IceDragon200/mruby-catch-throw)|Corey Powell|MIT|mrubyへの`catch`, `throw`の実装|||
|[mruby-changefinder](https://github.com/matsumotory/mruby-changefinder)|MATSUMOTO Ryosuke|MIT|変化点を検出する`ChangeFinder`クラス|mruby-matrix, mruby-mtest, mruby-random, mruby-numeric-ext, mruby-enumerator||
|[mruby-channel](https://github.com/bggd/mruby-channel)|bggd|MIT|名前付きFIFOの機能を提供する`Channel`クラス|mruby-io||
|[mruby-chrono](https://github.com/Asmod4n/mruby-chrono)|Hendrik Beskow|Apache-2|C++11の`std::chrono`に類似したシステムクロック機能を提供する`Chrono`モジュール|||
|[mruby-clang-plugin](https://github.com/take-cheeze/mruby-clang-plugin)|Takeshi Watanabe|MIT|mruby API呼び出しのチェックを行うclangプラグイン|||
|[mruby-concurrently](https://github.com/christopheraue/m-ruby-concurrently)|Christopher Aue|Apache-2.0|Fiber上で動作するコンカレンシーフレームワーク|mruby-hash-ext, mruby-array-ext, mruby-numeric-ext, mruby-proc-ext, mruby-kernel-ext, mruby-enumerator, mruby-fiber, mruby-time, mruby-io, mruby-callbacks_attachable||
|[mruby-config](https://github.com/matsumotory/mruby-config)|MATSUMOTO Ryosuke|MIT|Ruby/Cコード間で環境値を共有可能な`Config`クラス|||
|[mruby-consul](https://github.com/inokappa/mruby-consul)|Yohei Kawahara|MIT|`Consul` HTTP APIクライアント機能を提供する`Consul`クラス|mruby-httprequest||
|[mruby-correlation](https://github.com/matsumotory/mruby-correlation)|MATSUMOTO Ryosuke|MIT|Arrayクラスに対する相関係数の機能拡張|mruby-enumerator, mruby-math, mruby-io||
|[mruby-crc](https://github.com/dearblue/mruby-crc)|dearblue|BSD-2-Clause|CRC生成機能を提供する`CRC`クラス|mruby-aux||
|[mruby-cross-compile-on-mac-osx](https://github.com/matsumotory/mruby-cross-compile-on-mac-osx)|MATSUMOTO Ryosuke|MIT|macOS上でmrubyのOSX, Linux, Win32用のバイナリのクロスビルド|||
|[mruby-curl](https://github.com/mattn/mruby-curl)|mattn|MIT|cURLクライアントのmruby実装|mruby-http||
|[mruby-datadog](https://github.com/inokappa/mruby-datadog)|Yohei Kawahara|MIT|Datadog APIクライアントのmruby実装|mruby-httprequest, mruby-json, mruby-polarssl||
|[mruby-delegate](https://github.com/dearblue/mruby-delegate)|dearblue|CC0|メソッドの委譲を行う`Delegator`クラスのmruby実装|||
|[mruby-digest](https://github.com/iij/mruby-digest)|Internet Initiative Japan., Inc.|MIT|Digest`モジュールおよび`HMAC`クラスのmruby実装|||
|[mruby-dir](https://github.com/iij/mruby-dir)|Internet Initiative Japan., Inc.|MIT|`Dir`クラスのmruby実装|||
|[mruby-dir-glob](https://github.com/gromnitsky/mruby-dir-glob.git)|Alexander Gromnitsky|MIT|`File.fnmatch`と`Dir.glob`のmruby実装|mruby-dir, mruby-io, mruby-errno, mruby-file-stat, mruby-process, mruby-pack||
|[mruby-discount](https://github.com/matsumotory/mruby-discount)|MATSUMOTO Ryosuke|MIT|MarkdownからHTMLを生成する機能を提供する`Discount`クラス|||
|[mruby-disque](https://github.com/matsumotory/mruby-disque)|MATSUMOTO Ryosuke|MIT|`Disque`クライアントのmruby実装|mruby-redis||
|[mruby-dll](https://github.com/mattn/mruby-dll)|mattn|MIT|mrubyの共有ライブラリを生成|||
|[mruby-eject](https://github.com/mattn/mruby-eject)|mattn|MIT|CD-ROMドライブをejectする`eject`メソッド|||
|[mruby-env](https://github.com/iij/mruby-env)|iij|MIT|`ENV`オブジェクトのmruby実装|||
|[mruby-erb](https://github.com/jbreeden/mruby-erb)|Jared Breeden|Ruby License|`ERB`のmruby実装|mruby-eval||
|[mruby-errno](https://github.com/iij/mruby-errno)|iij|MIT|`Errno`モジュールのmruby実装|||
|[mruby-etcd](https://github.com/udzura/mruby-etcd)|Uchio Kondo|MIT|etcd APIのmruby実装|mruby-httprequest, mruby-json||
|[mruby-eventfd](https://github.com/matsumotory/mruby-eventfd)|MATSUMOTO Ryosuke|MIT|POSIXの`eventfd`機能を提供する`Eventfd`クラス|mruby-process, mruby-sleep||
|[mruby-fiberpool](https://github.com/mattn/mruby-fiberpool)|mattn|MIT|FiberPoolのmruby実装|mruby-fiber, mruby-proc-ext||
|[mruby-file-access](https://github.com/takumakume/mruby-file-access)|takumakume|MIT|POSIX `access(2)`の機能を提供する`File::Access`クラス|||
|[mruby-file-fnmatch](https://github.com/appplant/mruby-file-fnmatch)|katzer|MIT|パスマッチング機能を提供する`File::fnmatch`メソッド|||
|[mruby-file-stat](https://github.com/ksss/mruby-file-stat)|ksss|MIT|`File::Stat`クラスのmruby実装|mruby-time||
|[mruby-float4](https://github.com/dabroz/mruby-float4)|Tomasz Dabrowski|MIT|mruby用のvectorクラス|||
|[mruby-fluent-logger](https://github.com/y-ken/fluent-logger-mruby)|Kentaro Yoshida|MIT|イベントログ収集ツール`Fluentd`の機能を提供する`Fluent::Logger`クラス|||
|[mruby-forwardable](https://github.com/takahashim/mruby-forwardable)|Masayoshi Takahashi|BSDL|`Forwardable`モジュールのmruby実装|mruby-array-ext, mruby-metaprog, mruby-onig-regexp||
|[mruby-fsm](https://github.com/UniTN-Mechatronics/mruby-fsm)|Paolo Bosetti, University of Trento|GPL 2.0|有限オートマトンのmruby実装|mruby-signal, mruby-struct||
|[mruby-ftp](https://github.com/UniTN-Mechatronics/mruby-ftp)|Paolo Bosetti and Matteo Ragni, University of Trento|GPL 2.0|FTPクライアント機能を提供する`FTP`クラス|||
|[mruby-gemcut](https://github.com/dearblue/mruby-gemcut)|dearblue|BSD-2-Clause|mruby VMに取り込むmrbgemsを実行時に選択可能なC APIを提供|mruby-error||
|[mruby-getloadavg](https://github.com/takumakume/mruby-getloadavg)|takumakume|MIT|Linuxの`getloadavg(3)`の機能を提供する`Getloadavg`クラス|||
|[mruby-getoptlong](https://github.com/rubiojr/mruby-getoptlong)|Sergio Rubio <rubiojr@frameos.org>|MIT|CRubyの`GetoptLong`のmruby実装|mruby-env||
|[mruby-getopts](https://github.com/mttech/mruby-getopts)|M&T Technology, Inc.|GPL|GNU `getopt`の機能を提供する`Getopts`モジュール|||
|[mruby-getpass](https://github.com/Asmod4n/mruby-getpass)|Hendrik Beskow|Apache-2|コマンドラインからパスワードを読み取る`Kernel.getpass`メソッド|mruby-error||
|[mruby-gettimeofday](https://github.com/mame/mruby-gettimeofday)|mame|MIT|POSIXの`gettimeofday(2)`の機能を提供する`Kernel.gettimeofday`メソッド|||
|[mruby-gmp-bignum](https://github.com/chasonr/mruby-gmp-bignum)|Ray Chason|MIT|GMPライブラリを使用した高速版`Bignum`クラス|||
|[mruby-gntp](https://github.com/mattn/mruby-gntp)|mattn|MIT|Growl Notification Transfer Protocol (GNTP)の機能を提供する`GNTP`モジュール|||
|[mruby-growthforecast](https://github.com/matsumotory/mruby-growthforecast)|MATSUMOTO Ryosuke|MIT|WebAPI経由でグラフ化する機能を提供する`GrowthForecast`のクライアント`GrowthForecast`クラス|||
|[mruby-hashie](https://github.com/k0kubun/mruby-hashie)|Michael Bleigh, Jerry Cheung, Takashi Kokubun|MIT|ハッシュ拡張機能を提供するRubyGems`Hashie`のmruby実装|mruby-metaprog||
|[mruby-hibari](https://github.com/kentaro/mruby-hibari)|Kentaro Kuribayashi|MIT|RackベースのAPIをサポートするアプリケーションフレームワーク`Hibari`のmruby実装|mruby-uri||
|[mruby-heeler](https://github.com/katzer/mruby-heeler)|Sebastian Katzer|MIT|`Shelf`互換のWebサーバのmruby実装|mruby-time, mruby-socket, mruby-shelf||
|[mruby-hiredis](https://github.com/Asmod4n/mruby-hiredis)|Hendrik Beskow|Apache-2|Redisデータベース用のCクライアントライブラリ`hiredis`のmruby実装|mruby-errno, mruby-redis-ae||
|[mruby-hmac](https://github.com/scalone/mruby-hmac)|scalone|MIT|Hashクラスに対してHMACを実行する`Digest::HMAC`クラス|mruby-sha1, mruby-pack, mruby-enum-ext||
|[mruby-hogun](https://github.com/tk3/mruby-hogun)|qtakamitsu|MIT|CLIを構築するのに便利な`Hogun`クラス|||
|[mruby-http](https://github.com/mattn/mruby-http)|mattn|MIT|mruby用のHTTPパーサ|mruby-uv||
|[mruby-httprequest](https://github.com/matsumotory/mruby-httprequest)|MATSUMOTO Ryosuke|MIT|HTTPリクエスト機能を提供する`HttpRequest`クラス|mruby-simplehttp, mruby-http||
|[mruby-iconv](https://github.com/mattn/mruby-iconv)|mattn|MIT|文字コードの変換を行う`libiconv`をmrubyで利用するための`Iconv`クラス|||
|[mruby-iijson](https://github.com/iij/mruby-iijson)|iij|MIT|JSONパーサ／ジェネレータ機能を提供する`JSON`モジュール|||
|[mruby-implerr](https://github.com/keizo042/mruby-implerr)|Kouichi Nakanishi|MIT|`ImplementationError`クラス|||
|[mruby-inotify](https://github.com/FlavourSys/mruby-inotify)|FlavourSys Technology GmbH|MIT|ファイルシステムイベントを監視する`inotify`のmruby実装|||
|[mruby-io-console](https://github.com/ksss/mruby-io-console)|ksss|MIT|CRubyのio/consoleのmruby実装|||
|[mruby-io-copy_stream](https://github.com/ksss/mruby-io-copy_stream)|ksss|MIT|`IO.copy_stream`メソッドのmruby実装|||
|[mruby-ionice](https://github.com/takumakume/mruby-ionice)|takumakume|MIT|Linuxシステムコール`ionice(1)`と互換性がある`ioprio_set(2)`, `ioprit_get(2)`のmruby実装|mruby-print, mruby-process||
|[mruby-ipaddr](https://github.com/iij/mruby-ipaddr)|iij|MIT|`IPAddr`クラスのmruby実装|mruby-sprintf, mruby-pack, mruby-socket||
|[mruby-javascriptcore](https://github.com/ppibburr/mruby-javascriptcore)|ppibburr|MIT|WebKitGTKを使用してmruby VMとJavaScriptCore間のブリッジ機能を提供|||
|[mruby-json](https://github.com/mattn/mruby-json)|mattn|MIT|JSONパーサ／ジェネレータ機能を提供する`JSON`モジュール|mruby-metaprog||
|[mruby-jvm](https://github.com/jkutner/mruby-jvm)|jkutner|MIT|JVMプロセスを呼び出す機能を提供する`JavaSupport`クラス|mruby-env, mruby-dir, mruby-string-ext, mruby-io||
|[mruby-jwt](https://github.com/prevs-io/mruby-jwt)|Naoki AINOYA|MIT|JSON Web Token draft 06の機能を提供する`JWT`モジュール|mruby-pack, mruby-onig-regexp, mruby-iijson, mruby-digest||
|[mruby-kmp](https://github.com/santazhang/mruby-kmp)|santazhang|MIT|KMP検索アルゴリズムのmruby実装|||
|[mruby-knn-detector](https://github.com/tsurubee/mruby-knn-detector)|tsurubee|MIT|k近傍法による異常検知機能を提供する`KNN`クラス|mruby-math||
|[mruby-leveldb](https://github.com/take-cheeze/mruby-leveldb)|Takeshi Watanabe|BSD3|オープンソースのKey-Valueストア`LevelDB`を利用するための`LevelDB`クラス|||
|[mruby-libhydrogen](https://github.com/Asmod4n/mruby-libhydrogen)|Hendrik Beskow|ISC|軽量な暗号化ライブラリ`libhydrogen`のmruby実装|mruby-string-ext, mruby-errno||
|[mruby-limits](https://github.com/ksss/mruby-limits)|ksss|MIT|`limits.h`の定数コレクションを提供する`Limits`モジュール|||
|[mruby-linenoise](https://github.com/Asmod4n/mruby-linenoise)|Hendrik Beskow|Simplified BSD License|`readline`の軽量実装`linenoise`の機能を提供する`Linenoise`モジュール|mruby-struct, mruby-errno||
|[mruby-linux-namespace](https://github.com/haconiwa/mruby-linux-namespace)|Russel Hunter Yukawa / Uchio Kondo|MIT|Linuxの`namespaces`を利用するための`Namespace`モジュール|mruby-sprintf||
|[mruby-lmdb](https://github.com/Asmod4n/mruby-lmdb)|Hendrik Beskow|Apache-2|Lightning Memory-Mapped Database `LMDB`のためのmruby実装|mruby-errno, mruby-struct||
|[mruby-localmemcache](https://github.com/matsumotory/mruby-localmemcache)|MATSUMOTO Ryosuke|MIT|Key-Valueデータベース`localmemcache`のmruby実装|||
|[mruby-logger](https://github.com/katzer/mruby-logger)|katzer|MIT|CRubyの`Logger`クラスのmruby実装|mruby-sprintf, mruby-time, mruby-io||
|[mruby-lruc](https://github.com/matsumotory/mruby-lruc)|MATSUMOTO Ryosuke|MIT|Least Recently Used (LRU)キャッシュのmruby実装|||
|[mruby-lz4](https://github.com/dearblue/mruby-lz4)|dearblue|BSD-2-Clause|lz4圧縮ライブラリのmruby実装|mruby-string-ext, mruby-aux, mruby-metaprog||
|[mruby-m2x](https://github.com/attm2x/m2x-mruby)|AT&T M2X Team|MIT|M2MおよびIoT向けのデータストレージサービス`AT&T M2X`のクライアントライブラリ|mruby-http, mruby-socket, mruby-json||
|[mruby-markdown](https://github.com/carsonmcdonald/mruby-markdown)|Carson McDonald|MIT|Markdownライブラリのmruby実装|||
|[mruby-marshal-fast](https://github.com/asfluido/mruby-marshal-fast)|Carlo Prelz|MIT|`Marshal`モジュール|||
|[mruby-matrix](https://github.com/listrophy/mruby-matrix)|listrophy|Apache v2|`Matrix`, 'Vector`ライブラリのmruby実装|mruby-mtest, mruby-symbol-ext, mruby-array-ext, mruby-math||
|[mruby-md5](https://github.com/mattn/mruby-md5)|mattn|MIT|MD5ハッシュアルゴリズムの機能を提供する`MD5`モジュール|||
|[mruby-merb](https://github.com/pbosetti/mruby-merb)|pbosetti|MIT|mrubyにERBライクな機能を提供するライブラリ|||
|[mruby-method](https://github.com/ksss/mruby-method)|ksss|MIT|`Method`および`UnboundMethod`のmruby実装|mruby-proc-ext||
|[mruby-miniz](https://github.com/scalone/mruby-miniz)|scalone|MIT|zipおよびunzipファイルへのインターフェースを提供|mruby-pack, mruby-io, mruby-dir||
|[mruby-mod-mruby-ext](https://github.com/matsumotory/mruby-mod-mruby-ext)|MATSUMOTO Ryosuke|MIT|`mod_mruby`用のApache拡張クラス|||
|[mruby-mrbgem-template](https://github.com/matsumotory/mruby-mrbgem-template)|MATSUMOTO Ryosuke|MIT|`mrbgems`のテンプレート作成機能を提供|mruby-io, mruby-dir, mruby-time, mruby-optparse||
|[mruby-msgpack](https://github.com/suzukaze/mruby-msgpack)|Jun Hiroe|MIT, Apache2.0|`MessagePack`のmruby実装|||
|[mruby-mtest](https://github.com/iij/mruby-mtest)|Internet Initiative Japan., Inc.|MIT|mruby用の最小のテストフレームワーク|mruby-sprintf, mruby-time, mruby-io, mruby-metaprog||
|[mruby-murmurhash1](https://github.com/ksss/mruby-murmurhash1)|ksss|MIT|`MurmurHash1`のハッシュ関数を提供|||
|[mruby-murmurhash2](https://github.com/ksss/mruby-murmurhash2)|ksss|MIT|`MurmurHash2`のハッシュ関数を提供|||
|[mruby-mutex](https://github.com/matsumotory/mruby-mutex)|MATSUMOTO Ryosuke|MIT|POSIX Mutexのmruby実装|mruby-sleep||
|[mruby-named-constants](https://github.com/ppibburr/mruby-named-constants)|ppibburr|MIT|Moduleの定数を許可するライブラリ|||
|[mruby-ngx-mruby-ext](https://github.com/matsumotory/mruby-ngx-mruby-ext)|MATSUMOTO Ryosuke|MIT|`ngx_mruby`用のNginx拡張クラス||`ngx_mruby`に統合された|
|[mruby-oauth](https://github.com/matsumotory/mruby-oauth)|MATSUMOTO Ryosuke|MIT|OAuth認証機能を提供する`OAuth`クラス|mruby-pack, mruby-digest, mruby-json, mruby-sleep, mruby-http, mruby-httprequest||
|[mruby-onig-regexp](https://github.com/mattn/mruby-onig-regexp)|mattn|MIT, BSD|`Onigmo`によるCRuby互換正規表現ライブラリ|mruby-string-ext||
|[mruby-open3](https://github.com/k0kubun/mruby-open3)|Takashi Kokubun|MIT|POSIX `open3`の機能を提供する`Open3`モジュール|mruby-io, mruby-process, mruby-string-ext||
|[mruby-optparse](https://github.com/fastly/mruby-optparse)|fastly|MIT|CRubyの`OptionPerser`のmruby実装|mruby-array-ext, mruby-exit, mruby-hash-ext, mruby-proc-ext, mruby-string-ext, mruby-catch-throw, mruby-env, mruby-onig-regexp||
|[mruby-opvault](https://github.com/hanachin/mruby-opvault)|Seiei Miyagi|MIT|`OPVault`解読機能を提供|mruby-enumerator, mruby-struct, mruby-digest, mruby-iijson, mruby-io, mruby-base64, mruby-pkcs5, mruby-cipher||
|[mruby-os](https://github.com/appPlant/mruby-os)|katzer|MIT|システムとmruby VMの機能を実行時に参照可能にする`OS`モジュール|mruby-print, mruby-env||
|[mruby-ostruct](https://github.com/ksss/mruby-ostruct)|ksss|MIT|CRubyの`OpenStruct`クラスのmruby実装|mruby-string-ext||
|[mruby-otp](https://github.com/baldowl/mruby-otp)|Emanuele Vicentini|MIT|OTP (HOTP, TOTP) の生成・検証機能を提供|mruby-base32, mruby-digest, mruby-enumerator, mruby-time, mruby-secure-compare, mruby-uri-parser||
|[mruby-otpauth](https://github.com/qtkmz/mruby-otpauth)|qtakamitsu|MIT|RFC 6238に基づくワンタイムパスワード(TOTP)を提供する`OTPAuth::TOTP`クラス|mruby-sprintf, mruby-pack, mruby-digest, mruby-base32||
|[mruby-passwdqc](https://github.com/Asmod4n/mruby-passwdqc)|Hendrik Beskow|Apache-2|パスワード品質チェッカのmruby実装|mruby-errno||
|[mruby-pcre-regexp](https://github.com/mattn/mruby-pcre-regexp)|mattn|MIT|Perl互換の正規表現 `PCRE` のmruby実装|||
|[mruby-perlin-noise](https://github.com/dabroz/mruby-perlin-noise)|Junegunn Choi, Matthew Johnston, Tomasz Dabrowski|MIT|N時限のPerlinノイズ生成器のmruby実装|mruby-enumerator, mruby-random, mruby-hash-ext, mruby-proc-ext, mruby-matrix||
|[mruby-phr](https://github.com/Asmod4n/mruby-phr)|Hendrik Beskow|Apache-2|小型のHTTPパーサ`picohttpparser`のmruby実装|||
|[mruby-pid](https://github.com/cadwallion/mruby-pid)|Andrew Nordman|MIT|PIDアルゴリズムを提供する`PID`クラス|||
|[mruby-pjson](https://github.com/mattn/mruby-pjson)|mattn|MIT|Ruby実装のJSONパーサ|||
|[mruby-pkcs5](https://github.com/hanachin/mruby-pkcs5)|Seiei Miyagi|MIT|`mruby-digest`用の`PKCS#5`機能拡張|mruby-digest, mruby-pack, mruby-string-xor||
|[mruby-polarssl](https://github.com/luisbebop/mruby-polarssl)|luisbebop|Apache License 2.0|`PolarSSL`によるSSLおよび暗号化機能を提供|mruby-print, mruby-string-ext, mruby-io, mruby-socket||
|[mruby-poll](https://github.com/Asmod4n/mruby-poll)|Asmod4n|MIT|Lowレベルのシステムポーリングのmruby実装|mruby-errno||
|[mruby-pong](https://github.com/nsheremet/mruby-pong)|Nazarii Sheremet|MPL-2.0|`Sinatra`ライクなシンプルなWebアプリケーションサーバ|mruby-sprintf, mruby-socket, mruby-polarssl, mruby-thread, mruby-json, mruby-catch-throw, mruby-hash-ext||
|[mruby-posix_ipc](https://github.com/udzura/mruby-posix_ipc)|Uchio Kondo|MIT|POSIX Message Queue (MQ)のmruby実装|mruby-print, mruby-process||
|[mruby-proc-irep-ext](https://github.com/Asmod4n/mruby-proc-irep-ext)|Hendrik Beskow|Apache-2|`Proc`をirep構造体にdump/loadを可能とする`Proc`クラスの機能拡張|||
|[mruby-process](https://github.com/iij/mruby-process)|Internet Initiative Japan., Inc.|MIT|`Process`モジュールのmruby実装|||
|[mruby-process2](https://github.com/appPlant/mruby-process)|katzer|MIT|`Process`モジュールのmruby実装|mruby-env, mruby-os, mruby-io||
|[mruby-publicsuffix](https://github.com/hfm/mruby-publicsuffix)|Okumura Takahiro|MIT|Public Suffix Listを提供する`publicsuffix-ruby`のmruby実装|mruby-struct, mruby-string-ext, mruby-enum-ext, mruby-symbol-ext, mruby-hash-ext, mruby-io||
|[mruby-pure-regexp](https://github.com/WindProphet/mruby-pure-regexp)|h2so5|MIT|Rubyのみで実装された正規表現ライブラリ|mruby-array-ext, mruby-fiber||
|[mruby-qml-parse](https://github.com/mruby-zest/mruby-qml-parse)|fundamental|MIT|Qtの`.qml`ファイルのパーサ|||
|[mruby-qml-spawn](https://github.com/mruby-zest/mruby-qml-spawn)|fundamental|MIT|qml->pure Rubyの​​疑似コンパイラ|mruby-set||
|[mruby-qrcode](https://github.com/scalone/mruby-qrcode)|sadasant, scalone|MIT|QRコードを生成する`QR`クラス|||
|[mruby-r3](https://github.com/katzer/mruby-r3)|katzer|MIT|ハイパフォーマンスのパスディスパッチライブラリ`libr3`のmruby実装|||
|[mruby-rake](https://github.com/ksss/mruby-rake)|ksss|MIT|`Rake`のmruby実装|mruby-dir, mruby-io, mruby-process, mruby-require, mruby-file-stat, mruby-array-ext||
|[mruby-redis](https://github.com/matsumotory/mruby-redis)|MATSUMOTO Ryosuke|MIT|Redisデータベース用の最小限のCクライアントライブラリ`Hiredis`のmruby実装|mruby-sleep, mruby-pointer||
|[mruby-redis-ae](https://github.com/Asmod4n/mruby-redis-ae)|Hendrik Beskow|Apache-2|Redis Ae イベントループライブラリのmruby実装|mruby-errno||
|[mruby-redis-cluster](https://github.com/yukirii/mruby-redis-cluster)|Yuki Kirii|MIT|Redis Clusterのクライアント機能を提供|mruby-metaprog, mruby-random, mruby-string-ext, mruby-redis, mruby-logger, mruby-mock||
|[mruby-regexp-pcre](https://github.com/iij/mruby-regexp-pcre)|iij|MIT|Perl互換の正規表現 `PCRE` のmruby実装|mruby-string-ext||
|[mruby-renice](https://github.com/takumakume/mruby-renice)|takumakume|MIT|`renice(1)`ライクな`getpriority(2)`/`setpriority(2)`のmruby実装|mruby-print, mruby-process, mruby-process-sys||
|[mruby-require](https://github.com/mattn/mruby-require)|mattn|MIT|`Kernel.require`のmruby実装|||
|[mruby-research](https://github.com/ksss/mruby-research)|ksss|MIT|mrubyの内部を探求可能にする機能拡張|mruby-metaprog||
|[mruby-resource](https://github.com/harasou/mruby-resource)|harasou|MIT|`setrlimit(2)`, `getrlimit(2)`, `getrusage(2)` システムコールのmruby実装|mruby-process, mruby-exec||
|[mruby-ripemd](https://github.com/scalone/mruby-ripemd)|sadasant, scalone|MIT|RIPEMD (RACE Integrity Primitives Evaluation Message Digest) のインターフェース機能を提供|||
|[mruby-romajify](https://github.com/emsk/mruby-romajify)|emsk|MIT|ローマ字ライブラリのmruby実装|mruby-print, mruby-mtest, mruby-onig-regexp||
|[mruby-secure-compare](https://github.com/Asmod4n/mruby-secure-compare)|Hendrik Beskow|Apache-2|セキュアな文字列比較メソッド`String#securecmp`の提供|||
|[mruby-secure-random](https://github.com/monochromegane/mruby-secure-random)|monochromegane|MIT|セキュアな乱数発生器`SecureRandom`クラスのmruby実装|mruby-io, mruby-pack, mruby-string-ext, mruby-sprintf||
|[mruby-serialport](https://github.com/monami-ya-mrb/mruby-serialport/)|Monami-ya LLC, Japan|MIT|シリアル通信ポート制御のための`SerialPort`クラス|mruby-io||
|[mruby-set](https://github.com/yui-knk/mruby-set)|yui-knk|MIT|`Set`クラスのmruby実装|mruby-hash-ext, mruby-enumerator||
|[mruby-sha1](https://github.com/mattn/mruby-sha1)|mattn|GPL|SHA-1ハッシュアルゴリズムのmruby実装|||
|[mruby-sha2](https://github.com/keizo042/mruby-sha2)|h2so5|MIT|SHA-2ハッシュアルゴリズムのmruby実装|||
|[mruby-shelf](https://github.com/katzer/mruby-shelf)|katzer|MIT|モジュラタイプのWebサーバインターフェースを提供|mruby-r3, mruby-env||
|[mruby-shelf-deflater](https://github.com/katzer/mruby-shelf-deflater)|katzer|MIT|HTTPレスポンスの圧縮を可能とするインターフェースを提供|mruby-zlib||
|[mruby-shellwords](https://github.com/k0kubun/mruby-shellwords)|Wakou Aoyama, Akinori MUSHA, Takashi Kokubun|BSDL|UNIX Bourneシェルの単語分割規則に従った文字列分割と文字列エスケープを行う`Shellwords`モジュールのmruby実装|mruby-onig-regexp||
|[mruby-sidekiq-client](https://github.com/monochromegane/mruby-sidekiq-client)|monochromegane|MIT|Sidekiqワーカーモジュールを提供する`SidekiqClient`クラス|mruby-redis, mruby-iijson, mruby-secure-random, mruby-time||
|[mruby-signal](https://github.com/ksss/mruby-signal)|ksss|MIT|POSIX signalをサポートする`Signal`モジュール|||
|[mruby-signal-thread](https://github.com/pyama86/mruby-signal-thread)|pyama86|MIT|POSIX signalをサポートしたマルチスレッド`SignalThread`クラス|mruby-thread||
|[mruby-simple-random](https://github.com/iij/mruby-simple-random)|Internet Initiative Japan., Inc.|MIT|シンプルな擬似乱数ジェネレータ|||
|[mruby-simplehttp](https://github.com/matsumotory/mruby-simplehttp)|MATSUMOTO Ryosuke|MIT|シンプルなHTTP/HTTPSコネクション機能を提供する`SimpleHttp`クラスおよび`SimpleHttpResponse`クラス|mruby-env, mruby-polarssl, mruby-io, mruby-socket||
|[mruby-simplehttp-socket](https://github.com/y-ken/mruby-simplehttp-socket)|Kentaro Yoshida, Internet Initiative Japan Inc.|MIT|シンプルなHTTP/HTTPSコネクション機能を提供する`SimpleHttp`クラスおよび`SimpleHttpResponse`クラス|mruby-io, mruby-socket, mruby-pack, mruby-http||
|[mruby-simplehttpserver](https://github.com/matsumotory/mruby-simplehttpserver)|MATSUMOTO Ryosuke|MIT|mrubyと依存度の低い`SimpleHttpServer`クラス|mruby-time, mruby-http, mruby-shelf, mruby-io, mruby-socket||
|[mruby-simplemsgpack](https://github.com/Asmod4n/mruby-simplemsgpack)|Hendrik Beskow|Apache-2|`msgpack-c`を使用したシンプルな`msgpack`のmruby実装|mruby-errno||
|[mruby-simpletest](https://github.com/matsumotory/mruby-simpletest)|MATSUMOTO Ryosuke|MIT|シンプルなテスト機能を提供する`SimpleTest`クラス|mruby-print||
|[mruby-sinatic](https://github.com/mattn/mruby-sinatic)|mattn|MIT|Sinatraライクな簡易Webアプリケーションフレームワーク|mruby-uv, mruby-http||
|[mruby-singleton](https://github.com/ksss/mruby-singleton)|ksss|MIT|`Singleton`モジュールのmruby実装|mruby-metaprog||
|[mruby-siphash](https://github.com/ksss/mruby-siphash)|ksss|MIT|SipHashによるハッシュ関数生成機能を提供|||
|[mruby-smallhttp](https://github.com/nsheremet/mruby-smallhttp)|Nazarii Sheremet|MIT|小型のHTTPクライアントの実装|mruby-sprintf, mruby-socket, mruby-polarssl, mruby-regexp-pcre, mruby-json||
|[mruby-specinfra](https://github.com/k0kubun/mruby-specinfra)|[Gosuke Miyashita, Takashi Kokubun|MIT|サーバ状態をテスト可能な汎用フレームワーク`Specinfra`のmruby実装|mruby-array-ext, mruby-class-ext, mruby-env, mruby-metaprog, mruby-onig-regexp, mruby-open3, mruby-shellwords, mruby-singleton||
|[mruby-sqlite](https://github.com/jbreeden/mruby-sqlite)|Jared Breeden|MIT|RubyGems `sqlite3` との互換性を目指した `SQLite3` のmruby実装|||
|[mruby-sqlite3](https://github.com/mattn/mruby-sqlite3)|mattn|MIT|`SQLite3`データベースのインターフェースを提供|||
|[mruby-statemachine](https://github.com/ascaridol/mruby-statemachine)|Hendrik Beskow|Apache-2|小型のステートマシンのmruby実装|||
|[mruby-string-crypt](https://github.com/mattn/mruby-string-crypt)|mattn|MIT|`String#crypt`のmruby実装|||
|[mruby-string-ext-latin9](https://github.com/appPlant/mruby-string-ext-latin9)|katzer|MIT|iso-8859-15 (Latin9) から UTF-8 への変換機能を提供|||
|[mruby-string-is-utf8](https://github.com/Asmod4n/mruby-string-is-utf8)|Hendrik Beskow|Simplified BSD License|有効なUTF-8文字列かどうかを判定するインターフェースを提供|||
|[mruby-string-xor](https://github.com/hanachin/mruby-string-xor)|Seiei Miyagi|MIT|`String#^(other)`のmruby実装|||
|[mruby-stringio](https://github.com/ksss/mruby-stringio)|ksss|MIT|`StringIO`クラスのmruby実装|mruby-print, mruby-enumerator||
|[mruby-sysconf](https://github.com/pyama86/mruby-sysconf)|pyama86|MIT|POSIX `sysconf`の機能を提供する`Sysconf`クラス|||
|[mruby-syslog](https://github.com/iij/mruby-syslog)|iij|MIT|CRuby `Syslog`モジュールのmruby実装|mruby-sprintf||
|[mruby-sysrandom](https://github.com/Asmod4n/mruby-sysrandom)|Hendrik Beskow|ISC|セキュアな乱数発生器`Sysrandom`クラス|mruby-b64||
|[mruby-tbot](https://github.com/nsheremet/mruby-tbot)|Nazarii Sheremet|MIT|`Telegram Bot API`のmruby実装|mruby-smallhttp, mruby-json, mruby-sleep||
|[mruby-tempfile](https://github.com/iij/mruby-tempfile)|iij|MIT|CRuby `Tempfile`クラスのmruby実装|mruby-dir, mruby-env, mruby-io, mruby-random, mruby-sprintf, mruby-time, mruby-errno||
|[mruby-terminal-table](https://github.com/appPlant/mruby-terminal-table)|katzer|MIT|ASCIIの表を生成する`Terminal::Table`クラス|mruby-array-ext, mruby-string-ext, mruby-unicode-display_width||
|[mruby-thread](https://github.com/mattn/mruby-thread)|mattn|MIT|`Thread`クラスのmruby実装|||
|[mruby-time-strftime](https://github.com/monochromegane/mruby-time-strftime)|monochromegane|MIT|`Time#strftime`のmruby実装|mruby-time, mruby-sprintf||
|[mruby-tiny-io](https://github.com/mimaki/mruby-tiny-io)|mimaki|MIT|簡易版の`File`クラス|||
|[mruby-tiny-opt-parser](https://github.com/katzer/mruby-tiny-opt-parser)|katzer|MIT|コマンドラインオプションを解析する`OptParser`クラスのmruby実装|||
|[mruby-tinymt](https://github.com/matsumotory/mruby-tinymt)|MATSUMOTO Ryosuke|MIT, BSD New|疑似乱数列生成器 `Mersenne Twister` の簡易版 `TinyMT` を使用した `TinyMT`クラス|||
|[mruby-tinyxml2](https://github.com/kalabiyau/mruby-tinyxml2)|h2so5|MIT|`TinyXML-2`のmruby実装|||
|[mruby-tty-screen](https://github.com/jeremyjung/mruby-tty-screen)|Piotr Murach, Jeremy Jung|MIT|端末画面サイズ検出コンポーネント`TTY::Screen`クラスのmruby実装|mruby-env, mruby-tempfile, mruby-array-ext, mruby-hash-ext, mruby-io-console, mruby-process||
|[mruby-uchardet](https://github.com/take-cheeze/mruby-uchardet/)|Takeshi Watanabe|MPL2|Mozillaによるユニバーサルコード化文字セット`uchardet`のmruby実装|||
|[mruby-uname](https://github.com/matsumotory/mruby-uname)|Kouichi Nakanishi|MIT|POSIX `uname`のmruby実装|||
|[mruby-unicode-display_width](https://github.com/appPlant/mruby-unicode-display_width)|katzer|MIT|文字列の等幅表示幅を取得出来る `unicode-display_width` のmruby実装|||
|[mruby-updategems](https://github.com/mattn/mruby-updategems)|mattn|-|mrbgemsを更新するためのRaskタスク|||
|[mruby-uri-parser](https://github.com/Asmod4n/mruby-uri-parser)|Hendrik Beskow|Apache-2|URIパーサのmruby実装|mruby-errno||
|[mruby-userdata](https://github.com/matsumotory/mruby-userdata)|MATSUMOTO Ryosuke|MIT|mrb_stateを共有する複数のコードでユーザーデータオブジェクトの共有機能を提供する`Userdata`クラス|||
|[mruby-vedis](https://github.com/matsumotory/mruby-vedis)|MATSUMOTO Ryosuke|Sleepycat License'|Redisライクで70以上のコマンドをサポートする埋め込み可能なデータストア`Vedis`のmruby実装|||
|[mruby-weakref](https://github.com/dearblue/mruby-weakref)|dearblue|CC0|CRubyの`weakref`ライブラリのmruby実装|mruby-delegate||
|[mruby-winapp](https://github.com/mattn/mruby-winapp)|mattn|MIT|非コンソールのWindowsアプリケーションバイナリを作成するRakeスクリプト|||
|[mruby-wslay](https://github.com/Asmod4n/mruby-wslay)|Hendrik Beskow|Apache-2|コールバックベースのWebSocketクライアントおよびサーバーライブラリ`wslay`のmruby実装|mruby-sysrandom, mruby-errno, mruby-struct, mruby-string-is-utf8||
|[mruby-yaml](https://github.com/mrbgems/mruby-yaml)|Andrew Belt|MIT|CRuby `yaml`ライブラリのmruby実装|||
|[mruby-yeah](https://github.com/katzer/mruby-yeah)|katzer|MIT|`Shelf`アプリケーションを素早く作成するためのDSL|mruby-object-ext, mruby-sprintf, mruby-print, mruby-exit, mruby-shelf, mruby-heeler, mruby-tiny-opt-parser||
|[mruby-zabbix](https://github.com/matsumotory/mruby-zabbix)|MATSUMOTO Ryosuke|MIT|`Zabbix 2.0 API`クライアントのmruby実装|||
|[mruby-zlib](https://github.com/jbreeden/mruby-zlib)|Jared Breeden|MIT|データ圧縮・伸張ライブラリ`zlib`のmruby実装|||
|[mruby-zstd](https://github.com/dearblue/mruby-zstd)|dearblue|BSD-2-Clause|可逆圧縮アルゴリズム`Zstandard (zstd)`のmruby実装|mruby-string-ext, mruby-errno, mruby-aux||