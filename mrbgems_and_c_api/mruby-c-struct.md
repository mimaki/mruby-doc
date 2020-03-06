## 2.3. C APIで使用する構造体

mruby C APIで使用される構造体を以下に示します。

|Struct|Description|Header file|
|:---------------|:-------------------|:------------------|
|[mrb_callinfo](#mrb_callinfo)|関数呼び出し情報|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L130-L142)|
|[mrb_context](#mrb_context)|Fiberコンテキスト情報|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L153-L170)|
|[mrb_method_t](#mrb_method_t)|メソッド情報|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L194-L200)|
|[mrb_cache_entry](#mrb_cache_entry)|メソッドキャッシュ情報|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L204-L208)|
|[mrb_state](#mrb_state)|mruby VM情報|[mruby.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby.h#L215-L287)|
|[mrb_shared_array](#mrb_shared_array)|共有Array情報|[mruby/array.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/array.h#L18-L22)|
|[RArray](#RArray)|Arrayオブジェクト|[mruby/array.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/array.h#L25-L38)|
|[mrb_value](#mrb_value)|Rubyデータ格納する構造体|[mruby/boxing_nan.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/boxing_nan.h#L32-L48)|
|[mrb_value](#mrb_value)|Rubyデータ格納する構造体|[mruby/boxing_no.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/boxing_no.h#L21-L24)|
|[mrb_value](#mrb_value)|Rubyデータ格納する共用体|[mruby/boxing_word.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/boxing_word.h#L73-L92)|
|[RClass](#RClass)|クラスオブジェクト|[mruby/class.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/class.h#L17-L22)|
|[mrbc_context](#mrbc_context)|コンパイラコンテキスト情報|[mruby/compile.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/compile.h#L23-L39)|
|[mrb_ast_node](#mrb_ast_node)|ASTノード情報|[mruby/compile.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/compile.h#L47-L50)|
|[mrb_parser_message](#mrb_parser_message)|パーサエラー情報|[mruby/compile.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/compile.h#L69-L73)|
|[mrb_parser_heredoc_info](#mrb_parser_heredoc_info)|ヒアドキュメント情報|[mruby/compile.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/compile.h#L99-L106)|
|[mrb_parser_state](#mrb_parser_state)|mrubyパーサ情報|[mruby/compile.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/compile.h#L112-L164)|
|[mrb_data_type](#mrb_data_type)|カスタムデータ型定義情報|[mruby/data.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/data.h#L22-L28)|
|[RData](#RData)|カスタムデータオブジェクト|[mruby/data.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/data.h#L30-L35)|
|[mrb_irep_debug_info_line](#mrb_irep_debug_info_line)|デバッグ行情報|[mruby/debug.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/debug.h#L22-L25)|
|[mrb_irep_debug_info_file](#mrb_irep_debug_info_file)|デバッグ中ファイル情報|[mruby/debug.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/debug.h#L27-L37)|
|[mrb_irep_debug_info](#mrb_irep_debug_info)|デバッグ情報|[mruby/debug.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/debug.h#L39-L43)|
|[rite_binary_header](#rite_binary_header)|mrubyバイナリヘッダ|[mruby/dump.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/dump.h#L71-L78)|
|[rite_section_header](#rite_section_header)|mrubyバイナリセクションヘッダ|[mruby/dump.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/dump.h#L85-L87)|
|[rite_section_irep_header](#rite_section_irep_header)|mrubyバイナリIREPセクションヘッダ|[mruby/dump.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/dump.h#L89-L93)|
|[rite_section_debug_header](#rite_section_debug_header)|mrubyバイナリDEBUGセクションヘッダ|[mruby/dump.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/dump.h#L95-L97)|
|[rite_section_lv_header](#rite_section_lv_header)|mrubyバイナリLVセクションヘッダ|[mruby/dump.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/dump.h#L99-L101)|
|[rite_binary_footer](#rite_binary_footer)|mrubyバイナリフッタ|[mruby/dump.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/dump.h#L105-L107)|
|[RException](#RException)|Exceptionオブジェクト|[mruby/error.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/error.h#L17-L20)|
|[RBreak](#RBreak)|Breakオブジェクト|[mruby/error.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/error.h#L36-L40)|
|[mrb_heap_page](#mrb_heap_page)|ヒープページ情報|[mruby/gc.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/gc.h#L43-L51)|
|[mrb_gc](#mrb_gc)|GC情報|[mruby/gc.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/gc.h#L57-L84)|
|[RHash](#RHash)|Hashオブジェクト|[mruby/hash.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/hash.h#L17-L21)|
|[mrb_locals](#mrb_locals)|ローカル変数情報|[mruby/irep.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/irep.h#L24-L27)|
|[mrb_irep](#mrb_irep)|プログラムデータ配列|[mruby/irep.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/irep.h#L30-L46)|
|[mrb_insn_data](#mrb_insn_data)|オペコード解析情報|[mruby/irep.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/irep.h#L76-L81)|
|[RIStruct](#RIStruct)|インライン構造体|[mruby/istruct.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/istruct.h#L22-L25)|
|[RBasic](#RBasic)|オブジェクト基本データ|[mruby/object.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/object.h#L19-L21)|
|[RObject](#RObject)|Objectオブジェクト|[mruby/object.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/object.h#L30-L33)|
|[RFiber](#RFiber)|Fiberオブジェクト|[mruby/object.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/object.h#L38-L41)|
|[REnv](#REnv)|Envオブジェクト|[mruby/proc.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/proc.h#L18-L23)|
|[RProc](#RProc)|Procオブジェクト|[mruby/proc.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/proc.h#L36-L47)|
|[RRange](#RRange)|Rangeオブジェクト|[mruby/range.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/range.h#L22-L27)|
|[RString](#RString)|Stringオブジェクト|[mruby/string.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/string.h#L22-L35)|
|[RStringEmbed](#RStringEmbed)|組み込みStringオブジェクト|[mruby/string.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/string.h#L36-L39)|
|[mrb_jmpbuf](#mrb_jmpbuf)|例外ジャンプ先情報|[mruby/throw.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/throw.h#L46-L53)|
|[global_variable](#global_variable)|グローバル変数情報|[mruby/variable.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/variable.h#L17-L25)|
|[global_entry](#global_entry)|グローバル変数エントリ|[mruby/variable.h](https://github.com/mruby/mruby/blob/57a56ddaa26d1bb7d67c8dde435b2e08dc17290f/include/mruby/variable.h#L27-L30)|

---

### mrb_callinfo

関数呼び出し情報

### mrb_context

Fiberコンテキスト情報

### mrb_method_t

メソッド情報

### mrb_cache_entry

メソッドキャッシュ情報

### mrb_state

mruby VM情報

### mrb_shared_array

共有Array情報

### RArray

Arrayオブジェクト

### mrb_value

Rubyデータ格納する構造体

### mrb_value

Rubyデータ格納する構造体

### mrb_value

Rubyデータ格納する共用体

### RClass

クラスオブジェクト

### mrbc_context

コンパイラコンテキスト情報

### mrb_ast_node

ASTノード情報

### mrb_parser_message

パーサエラー情報

### mrb_parser_heredoc_info

ヒアドキュメント情報

### mrb_parser_state

mrubyパーサ情報

### mrb_data_type

カスタムデータ型定義情報

### RData

カスタムデータオブジェクト

### mrb_irep_debug_info_line

デバッグ行情報

### mrb_irep_debug_info_file

デバッグ中ファイル情報

### mrb_irep_debug_info

デバッグ情報

### rite_binary_header

mrubyバイナリヘッダ

### rite_section_header

mrubyバイナリセクションヘッダ

### rite_section_irep_header

mrubyバイナリIREPセクションヘッダ

### rite_section_debug_header

mrubyバイナリDEBUGセクションヘッダ

### rite_section_lv_header

mrubyバイナリLVセクションヘッダ

### rite_binary_footer

mrubyバイナリフッタ

### RException

Exceptionオブジェクト

### RBreak

Breakオブジェクト

### mrb_heap_page

ヒープページ情報

### mrb_gc

GC情報

### RHash

Hashオブジェクト

### mrb_locals

ローカル変数情報

### mrb_irep

プログラムデータ配列

### mrb_insn_data

オペコード解析情報

### RIStruct

インライン構造体

### RBasic

オブジェクト基本データ

### RObject

Objectオブジェクト

### RFiber

Fiberオブジェクト

### REnv

Envオブジェクト

### RProc

Procオブジェクト

### RRange

Rangeオブジェクト

### RString

Stringオブジェクト

### RStringEmbed

組み込みStringオブジェクト

### mrb_jmpbuf

例外ジャンプ先情報

### global_variable

グローバル変数情報

### global_entry

グローバル変数エントリ
