## 2.2. 定義されているマクロ

主要なヘッダファイルで定義されているマクロを以下に示します。

|Macros|Description|Header file|Note|
|:--------------|:--------------------------|:--------------|:----------------------|
|MRB_64BIT|32bitプロセッサ向け|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L17)||
|MRB_32BIT|64bitプロセッサ向け|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L19)||
|MRB_USE_FLOAT|Floatクラスの実体に`float`型を使用する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L29)|指定されない場合は`double`型が使用される|
|MRB_WITHOUT_FLOAT|Floatクラスおよび浮動小数点演算機能を使用しない|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L32)||
|MRB_METHOD_CACHE|メソッドキャッシュ機能を有効化する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L35)||
|MRB_METHOD_CACHE_SIZE|メソッドキャッシュのサイズを指定する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L37)|2のべき乗値を指定する必要がある|
|MRB_METHOD_T_STRUCT||[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L41)||
|MRB_INT16|mrb_int型に16bit整数値を使用する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L44)|扱える整数値の範囲は15bit|
|MRB_INT32|mrb_int型に32bit整数値を使用する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L48)|扱える整数値の範囲は31bit|
|MRB_INT64|mrb_int型に64bit整数値を使用する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L52)|扱える整数値の範囲は63bit|
|MRB_COMPEX_NUMBERS|複素数を使用する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L65)||
|MRB_RATIONAL_NUMBERS|有理数を使用する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L66)||
|MRB_NAN_BOXING|NaN Boxingを使用して`mrb_value`のメモリサイズを削減する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L77)|MRB_USE_FLOAT, MRB_WITHOUT_FLOATと同時に使用できない|
|MRB_WORD_BOXING|`mrb_value`のメモリサイズをプロセッサの処理単位に合わせる|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L80)||
|MRB_UTF8_STRING|StringでUTF-8文字列をサポートする|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L83)||
|MRB_FUNCALL_ARGC_MAX|`mrb_funcall`でRubyのメソッドを呼び出す際の引数の最大数|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L86)||
|MRB_HEAP_PAGE_SIZE|ヒープページに格納できるオブジェクト数|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L89)||
|MRB_USE_LINK_TIME_RO_DATA_P|`__ehdr_start`が有効な場合にSymbolが使用するメモリを削減する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L92)||
|MRB_USE_CUSTOM_RO_DATA_P|`MRB_USE_LINK_TIME_RO_DATA_P`が機能しない場合にユーザ実装の`mrb_ro_data_p()`を使用してメモリ削減する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L97)||
|MRB_GC_TURN_OFF_GENERATIONAL|世代別GCを無効化する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L100)||
|KHASH_DEFAULT_SIZE|khashテーブルのデフォルトサイズ|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L103)||
|POOL_ALIGNMENT|プールメモリアドレスのアライメント|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L106)||
|POOL_PAGE_SIZE|プールメモリのページサイズ|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L109)||
|MRB_STR_BUF_MIN_SIZE|文字列初期化時の最小バッファサイズ|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L112)||
|MRB_GC_ARENA_SIZE|GC arenaのサイズ|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L115)|`MRB_GC_FIXED_ARENA`指定時のみ有効|
|MRB_GC_FIXED_ARENA|GC arenaを固定サイズとする|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L118)||
|MRB_FIXED_STATE_ATEXIT_STACK_SIZE|`mrb_state`の`atexit`スタックサイズ|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L121)|`MRB_FIXED_STATE_ATEXIT_STACK`指定時のみ有効|
|MRB_FIXED_STATE_ATEXIT_STACK|`mrb_state`の`atexit`スタックを固定サイズとする|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L124)||
|MRB_DISABLE_STDIO|標準入出力`stdio`を無効化する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L127)||
|MRB_ENABLE_DEBUG_HOOK|デバッガ用のフック処理を有効化する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L130)||
|MRB_ENABLE_ALL_SYMBOLS|`Symbol.all_symbols`を有効化する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L131)||
|MRB_CONSTRAINED_BASELINE_PROFILE|マイコン向けに使用メモリを制限するプロファイルを指定する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L161-L173)|`KHASH_DEFAULT_SIZE=16`, `MRB_STR_BUF_MIN_SIZE=32`, `MRB_HEAP_PAGE_SIZE=256`に設定される|
|MRB_BASELINE_PROFILE|デフォルトプロファイルを指定する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L176)||
|MRB_MAIN_PROFILE|デスクトップコンピュータ向けのプロファイルを指定する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L178-L194)|`MRB_METHOD_CACHE`有効, `MRB_METHOD_CACHE_SIZE=(1<<10)`, `MRB_IV_SEGMENT_SIZE=32`, `MRB_HEAP_PAGE_SIZE=4096`に設定される|
|MRB_HIGH_PROFILE|mruby VMを連続稼働させるサーバ向けのプロファイルを指定する|[mrbconf.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mrbconf.h#L196-L213)|`MRB_METHOD_CACHE`有効, `MRB_METHOD_CACHE_SIZE=(1<<12)`, `MRB_IV_SEGMENT_SIZE=64`, `MRB_HEAP_PAGE_SIZE=4096`に設定される|
|MRB_ARGS_REQ(n)|メソッドの必須引数の数を指定する|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L798-L804)||
|MRB_ARGS_OPT(n)|メソッドのオプション引数の数を指定する|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L806-L812)||
|MRB_ARGS_ARG(n1,n2)|メソッドの必須引数の数`n1`およびオプション引数の数`n2`を指定する|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L814-L822)||
|MRB_ARGS_REST()|メソッドが残り引数を受け取ることを指定する|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L824-L825)||
|MRB_ARGS_POST(n)|残り引数の後に受け取る引数の数を指定する|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L827-L828)||
|MRB_ARGS_KEY(n1,n2)|メソッドがキーワード引数を受け取ることを指定する|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L830-L831)||
|MRB_ARGS_BLOCK()|メソッドがブロックを受け取ることを指定する|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L833-L836)||
|MRB_ARGS_ANY()|メソッドが不定数の引数を受け取ることを指定する|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L838-L841)||
|MRB_ARGS_NONE()|メソッドが引数を取らないことを指定する|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L843-L846)||
|mrb_strlen_lit(lit)|リテラル文字列の長さを取得する|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L961-L967)|APIに入れる？|
|mrb_intern_lit(mrb, lit)|リテラル文字列のシンボル値を求める|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1052)|APIに入れる？|
|mrb_str_new_lit(mrb, lit)|リテラル文字列からStringオブジェクトを生成する|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1080)|APIに入れる？|
|mrb_str_new_frozen(mrb,p,len)|凍結されたStringオブジェクトを生成する|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1083)||
|mrb_str_new_cstr_frozen(mrb,p)|C文字列から凍結されたStringオブジェクトを生成する|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1084)||
|mrb_str_new_static_frozen(mrb,p,len)|static宣言されているC文字列から凍結されたStringオブジェクトを生成する|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1085)||
|mrb_str_new_lit_frozen(mrb,lit)|リテラル文字列から凍結されたStringオブジェクトを生成する|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1086)||
|E_RUNTIME_ERROR|RuntimeErrorオブジェクト|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1247)||
|E_TYPE_ERROR|TypeErrorオブジェクト|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1248)||
|E_ARGUMENT_ERROR|ArgumentErrorオブジェクト|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1249)||
|E_INDEX_ERROR|IndexErrorオブジェクト|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1250)||
|E_RANGE_ERROR|RangeErrorオブジェクト|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1251)||
|E_NAME_ERROR|NameErrorオブジェクト|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1252)||
|E_NOMETHOD_ERROR|NoMethodErrorオブジェクト|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1253)||
|E_SCRIPT_ERROR|ScriptErrorオブジェクト|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1254)||
|E_SYNTAX_ERROR|SyntaxErrorオブジェクト|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1255)||
|E_LOCALJUMP_ERROR|LocalJumpErrorオブジェクト|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1256)||
|E_REGEXP_ERROR|RegexpErrorオブジェクト|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1257)||
|E_FROZEN_ERROR|FrozenErrorオブジェクト|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1258)||
|E_NOTIMP_ERROR|NotImplementedErrorオブジェクト|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1260)||
|E_FLOATDOMAIN_ERROR|FloatDomainErrorオブジェクト|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1262)||
|E_KEY_ERROR|KeyErrorオブジェクト|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L1265)||
|MRB_BEGIN_DECL|C言語の関数宣言を開始する|[mruby/common.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/common.h#L16-L29)|`mruby.h`で`#include`される|
|MRB_END_DECL|C言語の関数宣言を終了する|[mruby/common.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/common.h#L16-L29)|`mruby.h`で`#include`される|
|MRB_INLINE|インライン関数を定義する|[mruby/common.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/common.h#L56-L62)|`mruby.h`で`#include`される|
|MRB_API|mruby C APIとして公開する関数を定義する|[mruby/common.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/common.h#L64-L75)|`mruby.h`で`#include`される|
||