## 2.4. C API

|API名|概要|備考|
|:--|:--|:--|
|[mrb_define_class()](#mrb_define_class)|クラスを定義する。||
|[mrb_define_module()](#mrb_define_module)|モジュールを定義する。||
|[mrb_singleton_class()](#mrb_singleton_class)|レシーバの特異クラスを返します。||
|[mrb_include_module()](#mrb_include_module)|クラスまたはモジュールにモジュールをincludeする。||
|[mrb_prepend_module()](#mrb_prepend_module)|クラスまたはモジュールにモジュールをprependする。||
|[mrb_define_method()](#mrb_define_method)|メソッドを定義する。||
|[mrb_define_class_method()](#mrb_define_class_method)|クラスメソッドを定義する。||
|[mrb_define_singleton_method()](#mrb_define_singleton_method)|特異メソッドを定義する。||
|[mrb_define_module_function()](#mrb_define_module_function)|モジュール関数を定義する。||
|[mrb_define_const()](#mrb_define_const)|定数を定義する。||
|[mrb_undef_method()](#mrb_undef_method)|メソッドの定義を削除する。||
|[mrb_undef_method_id()](#mrb_undef_method_id)|メソッドの定義を削除する。（シンボル指定）||
|[mrb_undef_class_method()](#mrb_undef_class_method)|クラスメソッドの定義を削除する。||
|[mrb_obj_new()](#mrb_obj_new)|C定義のクラスのインスタンスを生成する。||
|[mrb_class_new()](#mrb_class_new)|Classクラスのインスタンスを生成する。||
|[mrb_module_new()](#mrb_module_new)|Moduleモジュールを生成します。||
|[mrb_class_defined()](#mrb_class_defined)|クラスが定義されているかどうかをチェックする。||
|[mrb_class_get()](#mrb_class_get)|定義済みのクラスを取得する。||
|[mrb_exc_get()](#mrb_exc_get)|例外クラスを取得する。||
|[mrb_class_defined_under()](#mrb_class_defined_under)|内部クラスが定義されているかどうかをチェックする。||
|[mrb_class_get_under()](#mrb_class_get_under)|内部クラスを取得する。||
|[mrb_module_get()](#mrb_module_get)|定義済みのモジュールを取得する。||
|[mrb_module_get_under()](#mrb_module_get_under)|定義済みの内部モジュールを取得する。||
|[mrb_notimplement()](#mrb_notimplement)|NotImprementedErrorをraiseする。||
|[mrb_notimplement_m()](#mrb_notimplement_m)|未実装のメソッドを置き換える。||
|[mrb_obj_dup()](#mrb_obj_dup)|オブジェクトを複製する。||
|[mrb_obj_respond_to()](#mrb_obj_respond_to)|クラスにメソッドが定義されているかどうかをチェックします。||
|[mrb_define_class_under()](#mrb_define_class_under)|内部クラスを定義する。||
|[mrb_define_module_under()](#mrb_define_module_under)|内部モジュールを定義する。||
|[mrb_get_args()](#mrb_get_args)|メソッドに与えられた引数を取得する。||
|[mrb_get_argc()](#mrb_get_argc)|メソッドに与えられた引数の数を取得する。||
|[mrb_get_argv()](#mrb_get_argv)|メソッドに与えられた引数を取得する。||
|[mrb_funcall()](#mrb_funcall)|既存のRuby関数を呼び出す。||
|[mrb_funcall_argv()](#mrb_funcall_argv)|既存のRuby関数を呼び出す。||
|[mrb_funcall_with_block()](#mrb_funcall_with_block)|既存のRuby関数をブロック付きで呼び出す。||
|[mrb_intern_cstr()](#mrb_intern_cstr)|C文字列からシンボルを生成する。||
|[mrb_intern()](#mrb_intern)|文字列からシンボルを生成する。||
|[mrb_intern_static()](#mrb_intern_static)|文字列からシンボルを生成する。||
|[mrb_intern_str()](#mrb_intern_str)|Stringからシンボルを生成する。||
|[mrb_check_intern_cstr()](#mrb_check_intern_cstr)|シンボルが定義済みかとうかをチェックする。||
|[mrb_check_intern()](#mrb_check_intern)|シンボルが定義済みかとうかをチェックする。||
|[mrb_check_intern_str()](#mrb_check_intern_str)|シンボルが定義済みかとうかをチェックする。||
|[mrb_sym_name()](#mrb_sym_name)|シンボル名を取得する。||
|[mrb_sym_name_len()](#mrb_sym_name_len)|シンボル名と長さを取得する。||
|[mrb_sym_dump()](#mrb_sym_dump)|非表示文字列をバックスラッシュ記法に置き換えたシンボル名を取得する。||
|[mrb_sym_str()](#mrb_sym_str)|シンボル名をStringで取得する。||
|[mrb_malloc()](#mrb_malloc)|メモリを確保する。（例外あり）||
|[mrb_calloc()](#mrb_calloc)|メモリを確保する。（例外あり、初期化あり）||
|[mrb_realloc()](#mrb_realloc)|確保したメモリサイズを変更する。（例外あり）||
|[mrb_realloc_simple()](#mrb_realloc_simple)|確保したメモリサイズを変更する。（例外なし）||
|[mrb_malloc_simple()](#mrb_malloc_simple)|メモリを確保する。（例外なし）||
|[mrb_obj_alloc()](#mrb_obj_alloc)|オブジェクトのメモリ領域を確保する。||
|[mrb_free()](#mrb_free)|メモリを解放する。||
|[mrb_str_new()](#mrb_str_new)|Stringオブジェクトを生成する。||
|[mrb_str_new_cstr()](#mrb_str_new_cstr)|Stringオブジェクトを生成する。||
|[mrb_str_new_static()](#mrb_str_new_static)|Stringオブジェクトを生成する。||
|[mrb_obj_freeze()](#mrb_obj_freeze)|オブジェクトをfreezeする。||
|[mrb_utf8_from_locale()](#mrb_utf8_from_locale)|現在のロケールコードページの文字列をUTF-8に変換する。|_WIN32用|
|[mrb_locale_from_utf8()](#mrb_locale_from_utf8)|UTF-8文字列を現在のロケールコードページに変換する。|_WIN32用|
|[mrb_open()](#mrb_open)|mrb_stateを生成する。||
|[mrb_open_allocf()](#mrb_open_allocf)|mrb_stateを生成する。（メモリ管理指定）||
|[mrb_open_core()](#mrb_open_core)|mrubyコアのみのmrb_stateを生成する。||
|[mrb_close()](#mrb_close)|mrb_stateをクローズし、メモリを解放する。||
|[mrb_default_allocf()](#mrb_default_allocf)|mrubyのデフォルトのメモリ管理||
|[mrb_top_self()](#mrb_top_self)|トップレベルの`self`を取得する。||
|[mrb_run()](#mrb_run)|Procオブジェクトを実行する。||
|[mrb_top_run()](#mrb_top_run)|トップレベルからProcオブジェクトを実行する。||
|[mrb_vm_run()](#mrb_vm_run)|Procオブジェクトを実行する。||
|[mrb_vm_exec()](#mrb_vm_exec)|mruby VMを実行する。||
|[mrb_p()](#mrb_p)|Kernel#pメソッドを実行する。||
|[mrb_obj_id()](#mrb_obj_id)|オブジェクトIDを取得する。||
|[mrb_obj_to_sym()](#mrb_obj_to_sym)|シンボル値を取得する。||
|[mrb_obj_eq()](#mrb_obj_eq)|2つのオブジェクトを比較する。||
|[mrb_obj_equal()](#mrb_obj_equal)|2つのオブジェクトを比較する。||
|[mrb_equal()](#mrb_equal)|2つのオブジェクトを比較する。||
|[mrb_convert_to_integer()](#mrb_convert_to_integer)|オブジェクトを整数値に変換する。||
|[mrb_Integer()](#mrb_Integer)|オブジェクトを整数値に変換する。||
|[mrb_Float()](#mrb_Float)|オブジェクトを浮動小数点値に変換する。||
|[mrb_inspect()](#mrb_inspect)|Object#inspectを呼び出す。||
|[mrb_eql()](#mrb_eql)|2つのオブジェクトを比較する。||
|[mrb_cmp()](#mrb_cmp)|2つのオブジェクトを比較する。||
|[mrb_garbage_collect()](#mrb_garbage_collect)|ガーベッジコレクション（フルGC）を実行する。||
|[mrb_full_gc()](#mrb_full_gc)|ガーベッジコレクション（フルGC）を実行する。||
|[mrb_incremental_gc()](#mrb_incremental_gc)|ガーベッジコレクション（インクリメンタルGC）を実行する。||
|[mrb_gc_mark()](#mrb_gc_mark)|ガーベッジコレクションのマークフェーズを実行する。||
|[mrb_field_write_barrier()](#mrb_field_write_barrier)|フィールドライトバリアを設定する。||
|[mrb_write_barrier()](#mrb_write_barrier)|ライトバリアを設定する。||
|[mrb_check_convert_type()](#mrb_check_convert_type)|オブジェクトが型変換可能かをチェックする。||
|[mrb_any_to_s()](#mrb_any_to_s)|オブジェクトを文字列に変換する。||
|[mrb_obj_classname()](#mrb_obj_classname)|オブジェクトのクラス名を取得する。||
|[mrb_obj_class()](#mrb_obj_class)|オブジェクトのクラスを取得する。||
|[mrb_class_path()](#mrb_class_path)|クラスパスを取得する。||
|[mrb_convert_type()](#mrb_convert_type)|オブジェクトの型を変換する。||
|[mrb_obj_is_kind_of()](#mrb_obj_is_kind_of)|オブジェクトが指定の型かどうかをチェックする。||
|[mrb_obj_inspect()](#mrb_obj_inspect)|Object#inspectを呼び出す。||
|[mrb_obj_clone()](#mrb_obj_clone)|オブジェクトを複製する。||
|[mrb_exc_new()](#mrb_exc_new)|Exceptionを生成する。||
|[mrb_exc_raise()](#mrb_exc_raise)|Exceptionをraiseする。||
|[mrb_raise()](#mrb_raise)|Exceptionをraiseする。||
|[mrb_raisef()](#mrb_raisef)|Exceptionをraiseする。||
|[mrb_name_error()](#mrb_name_error)|NameErrorをraiseする。||
|[mrb_frozen_error()](#mrb_frozen_error)|FrozenErrorをraiseする。||
|[mrb_warn()](#mrb_warn)|警告メッセージを表示する。||
|[mrb_bug()](#mrb_bug)|バグエラーメッセージを表示する。||
|[mrb_print_backtrace()](#mrb_print_backtrace)|Back traceを表示する。||
|[mrb_print_error()](#mrb_print_error)|発生した例外の内容を表示する。||
|[mrb_vformat()](#mrb_vformat)|書式化した文字列を生成する。||
|[mrb_yield()](#mrb_yield)|`yield`による呼び出しを行う。||
|[mrb_yield_argv()](#mrb_yield_argv)|引数付きで`yield`による呼び出しを行う。||
|[mrb_yield_with_class()](#mrb_yield_with_class)|クラスを指定して`yield`による呼び出しを行う。||
|[mrb_gc_protect()](#mrb_gc_protect)|オブジェクトをGC対象とならないようにプロテクトする。||
|[mrb_gc_register()](#mrb_gc_register)|オブジェクトをGC対象に登録する。||
|[mrb_gc_unregister()](#mrb_gc_unregister)|オブジェクトをGC対象から除外する。||
|[mrb_to_int()](#mrb_to_int)|オブジェクトをIntegerに変換する。||
|[mrb_to_str()](#mrb_to_str)|オブジェクトをStringに変換する。||
|[mrb_check_type()](#mrb_check_type)|オブジェクトの型をチェックする。||
|[mrb_define_alias()](#mrb_define_alias)|aliasを定義する。||
|[mrb_class_name()](#mrb_class_name)|クラスの名称を取得する。||
|[mrb_define_global_const()](#mrb_define_global_const)|グローバル定数を定義する。||
|[mrb_attr_get()](#mrb_attr_get)|オブジェクトの属性を取得する。||
|[mrb_respond_to()](#mrb_respond_to)|メソッドの有無をチェックする。||
|[mrb_obj_is_instance_of()](#mrb_obj_is_instance_of)|オブジェクトがクラスのインスタンスかどうかをチェックする。||
|[mrb_func_basic_p()](#mrb_func_basic_p)|メソッドの実体が指定のC関数かどうかをチェックする。||
|[mrb_fiber_resume()](#mrb_fiber_resume)|Fiberをresumeする。|mruby-fiberに実装されている。|
|[mrb_fiber_yield()](#mrb_fiber_yield)|Fiberをyieldする。|mruby-fiberに実装されている。|
|[mrb_fiber_alive_p()](#mrb_fiber_alive_p)|Fiberが生存しているかを確認する。|mruby-fiberに実装されている。|
|[mrb_stack_extend()](#mrb_stack_extend)|スタックを拡張する。||
|[mrb_pool_open()](#mrb_pool_open)|プールメモリ管理をオープンする。||
|[mrb_pool_close()](#mrb_pool_close)|プールメモリ管理をクローズする。||
|[mrb_pool_alloc()](#mrb_pool_alloc)|プールメモリの領域を確保する。||
|[mrb_pool_realloc()](#mrb_pool_realloc)|プールメモリの領域のサイズを変更する。||
|[mrb_pool_can_realloc()](#mrb_pool_can_realloc)|プールメモリの領域のサイズ変更が可能かをチェックする。||
|[mrb_alloca()](#mrb_alloca)|文字列の領域を確保する。||
|[mrb_state_atexit()](#mrb_state_atexit)|終了関数を指定する。||
|[mrb_show_version()](#mrb_show_version)|mrubyのバージョン情報を表示する。||
|[mrb_show_copyright()](#mrb_show_copyright)|mrubyのCopyright情報を表示する。||
|[mrb_format()](#mrb_format)|書式化した文字列を生成する。||
|[mrb_ary_modify()](#mrb_ary_modify)|`Array`オブジェクトを変更可能にする。||
|[mrb_ary_new_capa()](#mrb_ary_new_capa)|Arrayオブジェクトを生成する。（要素数指定）||
|[mrb_ary_new()](#mrb_ary_new)|Arrayオブジェクトを生成する。||
|[mrb_ary_new_from_values()](#mrb_ary_new_from_values)|初期値を指定してArrayオブジェクトを生成する。||
|[mrb_assoc_new()](#mrb_assoc_new)|2つの初期値からArrayオブジェクトを生成する。||
|[mrb_ary_concat()](#mrb_ary_concat)|Arrayオブジェクトを連結する。||
|[mrb_ary_splat()](#mrb_ary_splat)|入力値を基にArrayを生成する。||
|[mrb_ary_push()](#mrb_ary_push)|Arrayオブジェクトに要素を追加する。||
|[mrb_ary_pop()](#mrb_ary_pop)|Arrayオブジェクトの最後の要素を取り出す。||
|[mrb_ary_ref()](#mrb_ary_ref)|Arrayオブジェクトの指定位置の要素を参照する。||
|[mrb_ary_set()](#mrb_ary_set)|Arrayオブジェクトの指定位置の要素を設定する。||
|[mrb_ary_replace()](#mrb_ary_replace)|指定したArrayオブジェクトでArrayオブジェクトを置き換える。||
|[mrb_ensure_array_type()](#mrb_ensure_array_type)|Arrayオブジェクト型かどうかをチェックする。||
|[mrb_check_array_type()](#mrb_check_array_type)|Arrayオブジェクト型かどうかをチェックする。||
|[mrb_ary_unshift()](#mrb_ary_unshift)|Arrayオブジェクトの先頭に要素を追加する。||
|[mrb_ary_entry()](#mrb_ary_entry)|Arrayオブジェクトの指定位置の要素を取得する。||
|[mrb_ary_splice()](#mrb_ary_splice)|Arrayオブジェクトの一部を置き換える。||
|[mrb_ary_shift()](#mrb_ary_shift)|Arrayオブジェクトの先頭の要素を取り出す。||
|[mrb_ary_clear()](#mrb_ary_clear)|Arrayオブジェクトの全ての要素を削除する。||
|[mrb_ary_join()](#mrb_ary_join)|Arrayオブジェクトの要素を文字列として連結する。||
|[mrb_ary_resize()](#mrb_ary_resize)|Arrayオブジェクトのサイズを変更する。||
|[mrb_word_boxing_cptr_value()](#mrb_word_boxing_cptr_value)|||
|[mrb_word_boxing_float_value()](#mrb_word_boxing_float_value)|||
|[mrb_word_boxing_float_pool()](#mrb_word_boxing_float_pool)|||
|[mrb_define_class_id()](#mrb_define_class_id)|クラスを定義する。（シンボル指定）||
|[mrb_define_module_id()](#mrb_define_module_id)|モジュールを定義する。（シンボル指定）||
|[mrb_define_method_raw()](#mrb_define_method_raw)|メソッドを定義する。||
|[mrb_define_method_id()](#mrb_define_method_id)|メソッドを定義する。||
|[mrb_alias_method()](#mrb_alias_method)|メソッドのaliasを定義する。||
|[mrb_method_search_vm()](#mrb_method_search_vm)|メソッドを検索する。||
|[mrb_method_search()](#mrb_method_search)|メソッドを検索する。||
|[mrb_class_real()](#mrb_class_real)|||
|[mrbc_context_new()](#mrbc_context_new)|コンパイラのコンテキストを生成する。||
|[mrbc_context_free()](#mrbc_context_free)|コンパイラのコンテキストを解放する。||
|[mrbc_filename()](#mrbc_filename)|コンパイル対象のファイル名を指定する。||
|[mrbc_partial_hook()](#mrbc_partial_hook)|||
|[mrb_parser_new()](#mrb_parser_new)|mrubyパーサを生成する。||
|[mrb_parser_free()](#mrb_parser_free)|mrubyパーサを解放する。||
|[mrb_parser_parse()](#mrb_parser_parse)|Rubyスクリプトをパースする。||
|[mrb_parser_set_filename()](#mrb_parser_set_filename)|mrubyパーサにパース対象のファイル名を指定する。||
|[mrb_parser_get_filename()](#mrb_parser_get_filename)|mrubyパーサからパース対象のファイル名を取得する。||
|[mrb_parse_file()](#mrb_parse_file)|mrubyスクリプトファイルをパースする。||
|[mrb_parse_string()](#mrb_parse_string)|mrubyスクリプト文字列をパースする。||
|[mrb_parse_nstring()](#mrb_parse_nstring)|mrubyスクリプト文字列をパースする。||
|[mrb_generate_code()](#mrb_generate_code)|mrubyパーサのパース結果からバイトコードを生成する。||
|[mrb_load_exec()](#mrb_load_exec)|||
|[mrb_load_file()](#mrb_load_file)|mrubyスクリプトファイルを実行する。||
|[mrb_load_file_cxt()](#mrb_load_file_cxt)|mrubyスクリプトファイルを実行する。||
|[mrb_load_string()](#mrb_load_string)|mrubyスクリプト文字列を実行する。||
|[mrb_load_nstring()](#mrb_load_nstring)|mrubyスクリプト文字列を実行する。||
|[mrb_load_string_cxt()](#mrb_load_string_cxt)|mrubyスクリプト文字列を実行する。||
|[mrb_load_nstring_cxt()](#mrb_load_nstring_cxt)|mrubyスクリプト文字列を実行する。||
|[mrb_data_object_alloc()](#mrb_data_object_alloc)|RDataオブジェクトを生成する。||
|[mrb_data_check_type()](#mrb_data_check_type)|RDataオブジェクトの型をチェックする。||
|[mrb_data_get_ptr()](#mrb_data_get_ptr)|RDataオブジェクトの保持データを取得する。||
|[mrb_data_check_get_ptr()](#mrb_data_check_get_ptr)|||
|[mrb_debug_get_filename()](#mrb_debug_get_filename)|デバッグ実行中のソースファイル名を取得する。||
|[mrb_debug_get_line()](#mrb_debug_get_line)|デバッグ実行中のソースファイルの行番号を取得する。||
|[mrb_debug_info_alloc()](#mrb_debug_info_alloc)|デバッグ情報を生成する。||
|[mrb_debug_info_append_file()](#mrb_debug_info_append_file)|||
|[mrb_debug_info_free()](#mrb_debug_info_free)|デバッグ情報を解放する。||
|[mrb_load_irep_file()](#mrb_load_irep_file)|||
|[mrb_load_irep_file_cxt()](#mrb_load_irep_file_cxt)|mrubyバイナリファイルを実行する。||
|[mrb_read_irep()](#mrb_read_irep)|mrubyバイナリファイルを実行する。||
|[mrb_read_irep_buf()](#mrb_read_irep_buf)|mrubyバイトコードを実行する。||
|[mrb_sys_fail()](#mrb_sys_fail)|||
|[mrb_exc_new_str()](#mrb_exc_new_str)|||
|[mrb_make_exception()](#mrb_make_exception)|||
|[mrb_exc_backtrace()](#mrb_exc_backtrace)|||
|[mrb_get_backtrace()](#mrb_get_backtrace)|||
|[mrb_no_method_error()](#mrb_no_method_error)|||
|[mrb_f_raise()](#mrb_f_raise)|||
|[mrb_protect()](#mrb_protect)|||
|[mrb_ensure()](#mrb_ensure)|||
|[mrb_rescue()](#mrb_rescue)|||
|[mrb_rescue_exceptions()](#mrb_rescue_exceptions)|||
|[mrb_free_context()](#mrb_free_context)|||
|[mrb_bool()](#mrb_bool)|||
|[mrb_hash_new_capa()](#mrb_hash_new_capa)|Hashオブジェクトを生成する。（サイズ指定）||
|[mrb_ensure_hash_type()](#mrb_ensure_hash_type)|||
|[mrb_check_hash_type()](#mrb_check_hash_type)|||
|[mrb_hash_new()](#mrb_hash_new)|Hashオブジェクトを生成する。||
|[mrb_hash_set()](#mrb_hash_set)|Hashオブジェクトに要素を追加する。||
|[mrb_hash_get()](#mrb_hash_get)|Hashオブジェクトから指定キーの要素を取得する。||
|[mrb_hash_fetch()](#mrb_hash_fetch)|Hashオブジェクトから指定キーの要素を取得する。||
|[mrb_hash_delete_key()](#mrb_hash_delete_key)|Hashオブジェクトの指定キーの要素を削除する。||
|[mrb_hash_keys()](#mrb_hash_keys)|Hashオブジェクトに登録されているキーの一覧を取得する。||
|[mrb_hash_key_p()](#mrb_hash_key_p)|Hashオブジェクトのキーとして登録されているかどうかをチェックする。||
|[mrb_hash_empty_p()](#mrb_hash_empty_p)|Hashオブジェクトが空かどうかをチェックする。||
|[mrb_hash_values()](#mrb_hash_values)|Hashオブジェクトに登録されている要素の一覧を取得する。||
|[mrb_hash_clear()](#mrb_hash_clear)|Hashオブジェクトを空にする。||
|[mrb_hash_size()](#mrb_hash_size)|Hashオブジェクトに登録されているキーの数を取得する。||
|[mrb_hash_dup()](#mrb_hash_dup)|Hashオブジェクトのクローンを生成する。||
|[mrb_hash_merge()](#mrb_hash_merge)|2つのHasnオブジェクトを連結する。||
|[mrb_hash_foreach()](#mrb_hash_foreach)|Hashオブジェクトの各キー・要素毎にメソッドを呼び出す。||
|[mrb_add_irep()](#mrb_add_irep)|||
|[mrb_load_irep()](#mrb_load_irep)|mrubyバイナリデータを読み込む。||
|[mrb_load_irep_buf()](#mrb_load_irep_buf)|mrubyバイナリデータを読み込む。||
|[mrb_load_irep_cxt()](#mrb_load_irep_cxt)|mrubyバイナリデータを読み込む。||
|[mrb_load_irep_buf_cxt()](#mrb_load_irep_buf_cxt)|mrubyバイナリデータを読み込む。||
|[mrb_flo_to_fixnum()](#mrb_flo_to_fixnum)|FloatをFixnumに変換する。||
|[mrb_fixnum_to_str()](#mrb_fixnum_to_str)|FixnumをStringに変換する。||
|[mrb_float_to_str()](#mrb_float_to_str)|FloatをStringに変換する。||
|[mrb_to_flo()](#mrb_to_flo)|オブジェクトをFloatに変換する。||
|[mrb_int_value()](#mrb_int_value)|浮動小数点値を整数に変換する。||
|[mrb_num_plus()](#mrb_num_plus)|||
|[mrb_num_minus()](#mrb_num_minus)|||
|[mrb_num_mul()](#mrb_num_mul)|2つの値の積を取得する。||
|[mrb_proc_new_cfunc()](#mrb_proc_new_cfunc)|C関数からProcオブジェクトを生成する。||
|[mrb_closure_new_cfunc()](#mrb_closure_new_cfunc)|C関数からクロージャを生成する。||
|[mrb_proc_new_cfunc_with_env()](#mrb_proc_new_cfunc_with_env)|C関数からProcオブジェクトを生成する。||
|[mrb_proc_cfunc_env_get()](#mrb_proc_cfunc_env_get)|||
|[mrb_range_ptr()](#mrb_range_ptr)|RangeオブジェクトからRRange情報を取得する。||
|[mrb_range_new()](#mrb_range_new)|Rangeオブジェクトを生成する。||
|[mrb_range_beg_len()](#mrb_range_beg_len)|||
|[mrb_str_strlen()](#mrb_str_strlen)|RString構造体に格納されている文字列の長さを取得する。||
|[mrb_str_modify()](#mrb_str_modify)|||
|[mrb_str_modify_keep_ascii()](#mrb_str_modify_keep_ascii)|||
|[mrb_str_index()](#mrb_str_index)|Stringオブジェクト内の指定文字列が含まれる位置を取得する。||
|[mrb_str_concat()](#mrb_str_concat)|Stringオブジェクトに文字列を連結する。||
|[mrb_str_plus()](#mrb_str_plus)|2つの文字列を連結したStringオブジェクトを取得する。||
|[mrb_ptr_to_str()](#mrb_ptr_to_str)|Cのポインタで指定した内容をStringオブジェクトに変換する。||
|[mrb_obj_as_string()](#mrb_obj_as_string)|オブジェクトを文字列に変換する。||
|[mrb_str_resize()](#mrb_str_resize)|Stringオブジェクトのサイズを変更する。||
|[mrb_str_substr()](#mrb_str_substr)|Stringオブジェクトの一部を切り取る。||
|[mrb_ensure_string_type()](#mrb_ensure_string_type)|||
|[mrb_check_string_type()](#mrb_check_string_type)|||
|[mrb_string_type()](#mrb_string_type)|||
|[mrb_str_new_capa()](#mrb_str_new_capa)|Stringオブジェクトを生成する。（サイズ指定）||
|[mrb_str_buf_new()](#mrb_str_buf_new)|Stringオブジェクトを生成する。（サイズ指定）||
|[mrb_string_cstr()](#mrb_string_cstr)|StringオブジェクトをC文字列に変換する。||
|[mrb_string_value_cstr()](#mrb_string_value_cstr)|StringオブジェクトをC文字列に変換する。||
|[mrb_string_value_ptr()](#mrb_string_value_ptr)|Stringオブジェクトの文字列のポインタを返す。||
|[mrb_string_value_len()](#mrb_string_value_len)|Stringオブジェクトの文字長を取得する。||
|[mrb_str_dup()](#mrb_str_dup)|Stringオブジェクトを複製する。||
|[mrb_str_intern()](#mrb_str_intern)|Stringオブジェクトからシンボルを生成する。||
|[mrb_str_to_inum()](#mrb_str_to_inum)|||
|[mrb_cstr_to_inum()](#mrb_cstr_to_inum)|||
|[mrb_str_to_dbl()](#mrb_str_to_dbl)|||
|[mrb_cstr_to_dbl()](#mrb_cstr_to_dbl)|||
|[mrb_str_to_str()](#mrb_str_to_str)|オブジェクトをStringオブジェクトに変換する。||
|[mrb_str_equal()](#mrb_str_equal)|2つのStringオブジェクトが同じかどうかを比較する。||
|[mrb_str_cat()](#mrb_str_cat)|StringオブジェクトとC文字列を連結する。||
|[mrb_str_cat_cstr()](#mrb_str_cat_cstr)|StringオブジェクトとC文字列を連結する。||
|[mrb_str_cat_str()](#mrb_str_cat_str)|2つのStringオブジェクトを連結する。||
|[mrb_str_append()](#mrb_str_append)|Stringオブジェクトの後ろにStringオブジェクトを追加する。||
|[mrb_str_cmp()](#mrb_str_cmp)|2つのStringオブジェクトを比較する。||
|[mrb_str_to_cstr()](#mrb_str_to_cstr)|StringオブジェクトからC文字列を生成する。||
|[mrb_float_read()](#mrb_float_read)|||
|[mrb_msvc_vsnprintf()](#mrb_msvc_vsnprintf)|||
|[mrb_msvc_snprintf()](#mrb_msvc_snprintf)|||
|[mrb_const_get()](#mrb_const_get)|定数を取得する。||
|[mrb_const_set()](#mrb_const_set)|定数を設定する。||
|[mrb_const_defined()](#mrb_const_defined)|定数が定義されているかどうかをチェックする。||
|[mrb_const_remove()](#mrb_const_remove)|定数の定義を削除する。||
|[mrb_iv_name_sym_p()](#mrb_iv_name_sym_p)|||
|[mrb_iv_name_sym_check()](#mrb_iv_name_sym_check)|||
|[mrb_obj_iv_get()](#mrb_obj_iv_get)|オブジェクトのインスタンス変数を取得する。||
|[mrb_obj_iv_set()](#mrb_obj_iv_set)|オブジェクトのインスタンス変数を設定する。||
|[mrb_obj_iv_defined()](#mrb_obj_iv_defined)|オブジェクトにインスタンス変数が定義されているかどうかをチェックする。||
|[mrb_iv_get()](#mrb_iv_get)|オブジェクトのインスタンス変数を取得する。||
|[mrb_iv_set()](#mrb_iv_set)|オブジェクトのインスタンス変数を設定する。||
|[mrb_iv_defined()](#mrb_iv_defined)|オブジェクトにインスタンス変数が定義されているかどうかをチェックする。||
|[mrb_iv_remove()](#mrb_iv_remove)|オブジェクトのインスタンス変数を削除する。||
|[mrb_iv_copy()](#mrb_iv_copy)|オブジェクトのインスタンス変数を複製する。||
|[mrb_const_defined_at()](#mrb_const_defined_at)|モジュールに定数が定義されているかどうかをチェックする。||
|[mrb_gv_get()](#mrb_gv_get)|グローバル変数を取得する。||
|[mrb_gv_set()](#mrb_gv_set)|グローバル変数を設定する。||
|[mrb_gv_remove()](#mrb_gv_remove)|グローバル変数を削除する。||
|[mrb_cv_get()](#mrb_cv_get)|クラス変数を取得する。||
|[mrb_mod_cv_set()](#mrb_mod_cv_set)|モジュール変数を設定する。||
|[mrb_cv_set()](#mrb_cv_set)|クラス変数を設定する。||
|[mrb_cv_defined()](#mrb_cv_defined)|クラス変数が定義されているかどうかをチェックする。||
|[mrb_iv_foreach()](#mrb_iv_foreach)|定義されているインスタンス変数毎に関数を呼び出す。||
|[mrb_time_at()](#mrb_time_at)|時刻を設定する。||

---

# C API仕様

## mrb_define_class

```c
MRB_API struct RClass *mrb_define_class(mrb_state *mrb, const char *name, struct RClass *super);
```

クラスを定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|name|定義するクラス名を渡します。||
|super|親クラスのインスタンス（`struct RClass`のポインタ）を指定します。|特定の親クラスを指定しない場合は`Object`クラスのインスタンス`mrb->object_class`を指定します。|

### 戻り値

定義したクラスのインスタンス（`struct RClass`のポインタ）が返されます。

---

## mrb_define_module

```c
MRB_API struct RClass *mrb_define_module(mrb_state *mrb, const char *name);
```

モジュールを定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|name|定義するモジュール名を渡します。||

### 戻り値

定義したモジュールのインスタンス（`struct RClass`のポインタ）が返されます。

---

## mrb_singleton_class

```c
MRB_API mrb_value mrb_singleton_class(mrb_state *mrb, mrb_value val);
```

レシーバの特異クラスを返します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|val|特異クラスを取得するオブジェクトを渡します。||

### 戻り値

特異クラスのオブジェクトが返されます。

---

## mrb_include_module

```c
MRB_API void mrb_include_module(mrb_state *mrb, struct RClass *cla, struct RClass *included);
```

クラスまたはモジュールにモジュールをincludeします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|cla|include先のクラス・モジュールのインスタンス（`struct RClass`のポインタ）を渡します。||
|included|includeするモジュールのインスタンス（`struct RClass`のポインタ）を渡します。||

---

## mrb_prepend_module

```c
MRB_API void mrb_prepend_module(mrb_state *mrb, struct RClass *cla, struct RClass *prepended);
```

クラスまたはモジュールにモジュールをprependします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|cla|prepend先のクラス・モジュールのインスタンス（`struct RClass`のポインタ）を渡します。||
|prepended|prependするモジュールのインスタンス（`struct RClass`のポインタ）を渡します。||

---

## mrb_define_method

```c
MRB_API void mrb_define_method(mrb_state *mrb, struct RClass *cla, const char *name, mrb_func_t func, mrb_aspec aspec);
```

クラスまたはモジュールのインスタンスメソッドを定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|cla|インスタンスメソッドを定義するクラスのインスタンス（`struct RClass`のポインタ）を渡します。||
|name|（Ruby側から呼び出す）メソッド名を文字列で指定します。||
|func|メソッドが呼び出されたときに実際に実行されるC関数を指定します。|呼び出されるC関数は以下の形式である必要があります。<br/>```mrb_value func(struct mrb_state *mrb, mrb_value self);```|
|aspec|メソッドの引数を`MRB_ARGS_XXX()`形式のマクロで指定します。|マクロ `MRB_ARGS_XXX()` の種類・詳細は [2.2. 定義されているマクロ](mruby-c-api-macros.md) を参照して下さい。|

### 使用例

```c
static mrb_value
c_foo(mrb_state *mrb, mrb_value self)
{
  return mrb_str_new_lit(mrb, "foo");
}

static mrb_value
c_foo(mrb_state *mrb, mrb_value self)
{
  const char *name;
  mrb_get_args(mrb, "z", &name);
  printf("Hello, %s\n", name);
  return mrb_nil_value();
}

void
add_foo_method(mrb_state* mrb)
{
  struct RClass * f = mrb_define_class(mrb, "Foo", mrb->object_class);
  // Foo#foo -> String
  mrb_define_method(mrb, f, "foo", c_foo, MRB_ARGS_NONE());
  // hello(name) -> nil
  mrb_define_method(mrb, mrb->object_class, "hello", c_hello, MRB_ARGS_REQ(1));
}
```

---

## mrb_define_class_method

```c
MRB_API void mrb_define_class_method(mrb_state *mrb, struct RClass *cla, const char *name, mrb_func_t func, mrb_aspec aspec);
```

クラスメソッドを定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|cla|クラスメソッドを定義するクラスのインスタンス（`struct RClass`のポインタ）を渡します。||
|name|（Ruby側から呼び出す）メソッド名を文字列で指定します。||
|func|メソッドが呼び出されたときに実際に実行されるC関数を指定します。|呼び出されるC関数は以下の形式である必要があります。<br/>```mrb_value func(struct mrb_state *mrb, mrb_value self);```|
|aspec|メソッドの引数を`MRB_ARGS_XXX()`形式のマクロで指定します。|マクロ `MRB_ARGS_XXX()` の種類・詳細は [2.2. 定義されているマクロ](mruby-c-api-macros.md) を参照して下さい。|

---

## mrb_define_singleton_method

```c
MRB_API void mrb_define_singleton_method(mrb_state *mrb, struct RObject *cla, const char *name, mrb_func_t fun, mrb_aspec aspec);
```

特異メソッドを定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|cla|特異メソッドを定義するオブジェクト（`struct RObject`のポインタ）を渡します。||
|name|（Ruby側から呼び出す）メソッド名を文字列で指定します。||
|func|メソッドが呼び出されたときに実際に実行されるC関数を指定します。|呼び出されるC関数は以下の形式である必要があります。<br/>```mrb_value func(struct mrb_state *mrb, mrb_value self);```|
|aspec|メソッドの引数を`MRB_ARGS_XXX()`形式のマクロで指定します。|マクロ `MRB_ARGS_XXX()` の種類・詳細は [2.2. 定義されているマクロ](mruby-c-api-macros.md) を参照して下さい。|

---

## mrb_define_module_function

```c
MRB_API void mrb_define_module_function(mrb_state *mrb, struct RClass *cla, const char *name, mrb_func_t fun, mrb_aspec aspec);
```

モジュール関数を定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|cla|モジュール関数を定義するモジュールのインスタンス（`struct RClass`のポインタ）を渡します。||
|name|（Ruby側から呼び出す）メソッド名を文字列で指定します。||
|func|モジュール関数が呼び出されたときに実際に実行されるC関数を指定します。|呼び出されるC関数は以下の形式である必要があります。<br/>```mrb_value func(struct mrb_state *mrb, mrb_value self);```|
|aspec|メソッドの引数を`MRB_ARGS_XXX()`形式のマクロで指定します。|マクロ `MRB_ARGS_XXX()` の種類・詳細は [2.2. 定義されているマクロ](mruby-c-api-macros.md) を参照して下さい。|

---

## mrb_define_const

```c
MRB_API void mrb_define_const(mrb_state* mrb, struct RClass* cla, const char *name, mrb_value val);
```

クラスまたはモジュールに定数を定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|cla|定数を定義するクラスまたはモジュールのインスタンス（`struct RClass`のポインタ）を渡します。||
|name|（Ruby側から呼び出す）定数名を文字列で指定します。||
|val|定数に設定する値をmrb_value型で指定します。||

### 使用例

```c
void
mrb_mruby_math_gem_init(mrb_state* mrb)
{
  struct RClass *m = mrb_define_module(mrb, "Marathon");
  mrb_define_const(mrb, m, "DISTANCE", mrb_float_value(mrb, 42.195)); // Marathon::DISTANCE -> 42.195
}
```

---

## mrb_undef_method

```c
MRB_API void mrb_undef_method(mrb_state *mrb, struct RClass *cla, const char *name);
```

メソッド名を指定してインスタンスメソッドの定義を削除します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|cla|メソッドを削除するクラスまたはモジュールのインスタンス（`struct RClass`のポインタ）を渡します。||
|name|削除するメソッド名を文字列で指定します。||

---

## mrb_undef_method_id

```c
MRB_API void mrb_undef_method_id(mrb_state *mrb, struct RClass *cla, mrb_sym sym);
```

シンボルを指定してインスタンスメソッドの定義を削除します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|cla|メソッドを削除するクラスまたはモジュールのインスタンス（`struct RClass`のポインタ）を渡します。||
|sym|削除するメソッドのシンボルを渡します指定します。||

---

## mrb_undef_class_method

```c
MRB_API void mrb_undef_class_method(mrb_state *mrb, struct RClass *cls, const char *name);
```

メソッド名を指定してクラスメソッドの定義を削除します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|cla|メソッドを削除するクラスまたはモジュールのインスタンス（`struct RClass`のポインタ）を渡します。||
|name|削除するメソッド名を文字列で指定します。||

---

## mrb_obj_new

```c
MRB_API mrb_value mrb_obj_new(mrb_state *mrb, struct RClass *cla, mrb_int argc, const mrb_value *argv);
```

`mrb_define_class()`などの C API で定義したクラスのインスタンスを生成します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|cla|インスタンス化するクラス（`struct RClass`のポインタ）を渡します。||
|argc|コンストラクタに渡す引数の数を渡します。||
|argv|コンストラクタに渡す引数を`mrb_value`配列のポインタで渡します。<br/>引数なし (`argc == 0`) の場合は `NULL` を指定可能です。|引数の配列の要素数は`argc`の数に合わせる必要があります。|

### 戻り値

インスタンス化されたC定義のクラスのオブジェクトが返されます。

---

## mrb_class_new

```c
MRB_API struct RClass * mrb_class_new(mrb_state *mrb, struct RClass *super);
```

Classクラスのインスタンスを生成する。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|super|クラスインスタンスを取得するクラス（`struct RClass`のポインタ）を渡します。||

### 戻り値

Classクラスのインスタンスが返されます。

---

## mrb_module_new

```c
MRB_API struct RClass * mrb_module_new(mrb_state *mrb);
```

Moduleモジュールを生成します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

### 戻り値

生成したModuleのインスタンスが返されます。

---

## mrb_class_defined

```c
MRB_API mrb_bool mrb_class_defined(mrb_state *mrb, const char *name);
```

クラスが定義されているかどうかをチェックします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|name|定義有無チェックするクラス名を文字列で指定します。||

### 戻り値

- `true`: 指定した名前のクラスが定義されている
- `false`: 指定した名前のクラスは定義されていない

---

## mrb_class_get

```c
MRB_API struct RClass * mrb_class_get(mrb_state *mrb, const char *name);
```

定義済みのクラスを取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|name|取得するクラスの名前を指定します。||

### 戻り値

`name`で指定した名称のクラスのインスタンスが`struct RClass`のポインタで返されます。  
該当するクラスが定義されていない場合は、例外 `TypeError` が発生します。

---

## mrb_exc_get

```c
MRB_API struct RClass * mrb_exc_get(mrb_state *mrb, const char *name);
```

例外クラスを取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|name|取得する例外クラスの名前を指定します。||

### 戻り値

例外クラスのインスタンスが`struct RClass`のポインタで返されます。

---

## mrb_class_defined_under

```c
MRB_API mrb_bool mrb_class_defined_under(mrb_state *mrb, struct RClass *outer, const char *name);
```

内部クラスが定義されているかどうかをチェックします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|outer|内部クラスを包含するクラス・モジュールのインスタンスを`struct RClass`のポインタで指定します。||
|name|内部クラスの名前を指定します。||

### 戻り値

- `true`: `name`で指定されたクラスは`outer`の内部クラスである
- `false`: `name`で指定されたクラスは`outer`の内部クラスではない

---

## mrb_class_get_under

```c
MRB_API struct RClass * mrb_class_get_under(mrb_state *mrb, struct RClass *outer, const char *name);
```

内部クラスのインスタンスを取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|outer|外部クラス・モジュールのインスタンスを`struct RClass`のポインタで指定します。||
|name|内部クラスの名前を指定します。||

### 戻り値

内部クラスのインスタンスが`struct RClass`のポインタで返されます。

---

## mrb_module_get

```c
MRB_API struct RClass * mrb_module_get(mrb_state *mrb, const char *name);
```

定義済みのモジュールを取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|name|取得するモジュールの名前を指定します。||

### 戻り値

`name`で指定した名称のモジュールのインスタンスが`struct RClass`のポインタで返されます。  
該当するモジュールが定義されていない場合は、例外 `TypeError` が発生します。

---

## mrb_module_get_under

```c
MRB_API struct RClass * mrb_module_get_under(mrb_state *mrb, struct RClass *outer, const char *name);
```

定義済みの内部モジュールを取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|outer|外部モジュールのインスタンスを`struct RClass`のポインタで指定します。||
|name|内部モジュールの名前を指定します。||

### 戻り値

内部モジュールのインスタンスが`struct RClass`のポインタで返されます。

---

## mrb_notimplement

```c
MRB_API void mrb_notimplement(mrb_state*);
```

現在のメソッド名で`NotImprementedError`をraiseします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

---

## mrb_notimplement_m

```c
MRB_API mrb_value mrb_notimplement_m(mrb_state *mrb, mrb_value self);
```

未実装のメソッドを置き換える関数です。  
現在のメソッド名で`NotImprementedError`をraiseします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|self|メソッドのレシーバを渡します。||

### 戻り値

`NotImprementedError`をraiseされるため、戻り値が返されることはありません。

---

## mrb_obj_dup

```c
MRB_API mrb_value mrb_obj_dup(mrb_state *mrb, mrb_value obj);
```

オブジェクトを複製します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|複製するオブジェクトを渡します。||

### 戻り値

複製されたオブジェクトが返されます。

---

## mrb_obj_respond_to

```c
MRB_API mrb_bool mrb_obj_respond_to(mrb_state *mrb, struct RClass* c, mrb_sym mid);
```

クラスにメソッドが定義されているかどうかをチェックします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|c|メソッド定義有無をチェックするクラスのインスタンスを`struct RClass`のポインタで渡します。||
|mid|チェックするメソッド名のシンボル値を渡します。||

### 戻り値

- `true`: 指定されたメソッドが定義されている
- `false`: 指定されたメソッドは定義されていない

---

## mrb_define_class_under

```c
MRB_API struct RClass * mrb_define_class_under(mrb_state *mrb, struct RClass *outer, const char *name, struct RClass *super);
```

内部クラスを定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|outer|外部クラス・モジュールのインスタンス（`struct RClass`のポインタ）を指定します。||
|name|定義するクラス名を渡します。||
|super|親クラスのインスタンス（`struct RClass`のポインタ）を指定します。|特定の親クラスを指定しない場合は`Object`クラスのインスタンス`mrb->object_class`を指定します。|

### 戻り値

定義した内部クラスのインスタンス（`struct RClass`のポインタ）が返されます。

---

## mrb_define_module_under

```c
MRB_API struct RClass * mrb_define_module_under(mrb_state *mrb, struct RClass *outer, const char *name);
```

内部モジュールを定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|outer|外部モジュールのインスタンス（`struct RClass`のポインタ）を指定します。||
|name|定義するモジュール名を渡します。||

### 戻り値

定義した内部モジュールのインスタンス（`struct RClass`のポインタ）が返されます。

---

## mrb_get_args

```c
MRB_API mrb_int mrb_get_args(mrb_state *mrb, mrb_args_format format, ...);
```

メソッドに与えられた引数を取得を取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|format|メソッドに渡された引数列を受け取る書式文字列を指定します。|指定可能な文字列の形式は [引数の書式文字列と受け取るデータ型](#引数の書式文字と受け取るデータ型) を参照して下さい。|
|...|引数を受け取る変数のポインタを列挙します。|変数ポインタの型、個数は`format`で指定した書式文字列に合わせる必要があります。詳細は [引数の書式文字列と受け取るデータ型](#引数の書式文字と受け取るデータ型) を参照して下さい。|

### 戻り値

定義した内部モジュールのインスタンス（`struct RClass`のポインタ）が返されます。

### 引数の書式文字と受け取るデータ型

|文字|mrubyのデータ型|Cで受け取るデータ型|備考|
|:-:|:------------|:----------|:--------------|
|o|Object|mrb_value|任意のデータ型を受け取ることが出来ます。|
|C|Class\|Module|mrb_value||
|S|String|mrb_value|`S!`とすることで`nil`の受け取りを許容できます。|
|A|Array|mrb_value|`A!`とすることで`nil`の受け取りを許容できます。|
|H|Hash|mrb_value|`H!`とすることで`nil`の受け取りを許容できます。|
|s|String|char *, mrb_int|文字列の先頭アドレスと文字数を受け取ります。<br/>`s!`とすることで`nil`の受け取りを許容できます。`nil`が渡された場合は `NULL, 0`を受け取ります。|
|z|String|char *|C言語形式の文字列の先頭アドレスを受け取ります。文字列の終端には `\0` が付加されています。<br/>`z!`とすることで`nil`の受け取りを許容することができます。`nil`が渡された場合は`NULL`を受け取ります。|
|a|Array|mrb_value *, mrb_int|Arrayオブジェクトの要素の配列の先頭アドレスと要素数を受け取ります。<br/>`a!`とすることで`nil`の受け取りを許容することができます。`nil`が渡された場合は`NULL, 0`を受け取ります。|
|f|Fixnum\|Float|mrb_float||
|i|Fixnum\|Float|mrb_int||
|b|boolean|mrb_bool||
|n|String\|Symbol|mrb_sym||
|d|ユーザ定義データ型|void *, mrb_data_type|
|I|inline struct|void *||
|&|block|mrb_value|`&!`とするとブロックが渡されなかった場合に例外となります。|
|*|残りの引数|mrb_value *, mrb_int|残りの引数の配列と残りの引数の数を受け取ります。<br/>`*!`とするとスタックのコピーが行われません。|
|\||オプション引数|-|この`|`以降はオプション引数と見なされます。|
|?|オプション引数の有無|mrb_bool|オプション引数が渡されたかどうかを受け取ります。|
|:|キーワード引数|mrb_kwargs|キーワード引数を受け取ります。|

### 使用例

```c
// nputs(str, n=1)
mrb_value c_nputs(mrb_state *mrb, mrb_value self)
{
  char *str;
  mrb_int n = 1;

  mrb_get_args("z|i", &str, &n);

  while (0 < n--) {
    printf("%s", str);
  }
  printf("\n");

  return mrb_nil_value();
}
```

---

## mrb_get_argc

```c
MRB_API mrb_int mrb_get_argc(mrb_state *mrb);
```

メソッドに与えられた引数の数を取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

### 戻り値

現在のメソッドに与えられた引数が返されます。

---

## mrb_get_argv

```c
MRB_API mrb_value* mrb_get_argv(mrb_state *mrb);
```

メソッドに与えられた引数列を取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

### 戻り値

現在のメソッドに与えられた引数の配列のポインタが返されます。

---

## mrb_funcall

```c
MRB_API mrb_value mrb_funcall(mrb_state *mrb, mrb_value val, const char *name, mrb_int argc, ...);
```

既存のRuby関数（メソッド）を呼び出します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|val|メソッドのレシーバであるオブジェクトを渡します。||
|name|呼び出すメソッド名を文字列で指定します。||
|argc|メソッドに渡す引数の数を指定します。||
|...|メソッドに渡す引数を`mrb_value`型で羅列します。|指定する引数の数は`argc`に合わせる必要があります。|

### 戻り値

メソッドの処理結果が返されます。  
返される値は呼び出すメソッドの処理結果に依存します。

---

## mrb_funcall_argv

```c
MRB_API mrb_value mrb_funcall_argv(mrb_state *mrb, mrb_value val, mrb_sym name, mrb_int argc, const mrb_value *argv);
```

既存のRuby関数を呼び出します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|val|メソッドのレシーバであるオブジェクトを渡します。||
|name|呼び出すメソッド名を文字列で指定します。||
|argc|メソッドに渡す引数の数
を指定します。||
|argv|メソッドに渡す引数を`mrb_value`型の配列で渡します。|指定する引数の数は`argc`に合わせる必要があります。|

### 戻り値

メソッドの処理結果が返されます。  
返される値は呼び出すメソッドの処理結果に依存します。

---

## mrb_funcall_with_block

```c
MRB_API mrb_value mrb_funcall_with_block(mrb_state *mrb, mrb_value val, mrb_sym name, mrb_int argc, const mrb_value *argv, mrb_value block);
```

既存のRuby関数をブロック付きで呼び出します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|val|メソッドのレシーバであるオブジェクトを渡します。||
|name|呼び出すメソッド名を文字列で指定します。||
|argc|メソッドに渡す引数の数
を指定します。||
|argv|メソッドに渡す引数を`mrb_value`型の配列で渡します。|指定する引数の数は`argc`に合わせる必要があります。|
|block|メソッドに渡すブロックオブジェクトを渡します。||

### 戻り値

メソッドの処理結果が返されます。  
返される値は呼び出すメソッドの処理結果に依存します。

---

## mrb_intern_cstr

```c
MRB_API mrb_sym mrb_intern_cstr(mrb_state *mrb, const char* str);
```

C言語形式（`\0`終端）の文字列からシンボルを生成します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|str|シンボル値を求める文字列を渡します。||

### 戻り値

文字列のシンボル値が返されます。

---

## mrb_intern

```c
MRB_API mrb_sym mrb_intern(mrb_state *mrb, const char *name,size_t len);
```

文字列からシンボルを生成します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|name|シンボル値を求める文字列の先頭アドレスを渡します。||
|len|シンボル値を求める文字列の長さ（バイト数）を渡します。||

### 戻り値

文字列のシンボル値が返されます。

---

## mrb_intern_static

```c
MRB_API mrb_sym mrb_intern_static(mrb_state *mrb, const char *name, size_t len);
```

文字列定数からシンボルを生成します。  
文字列が変数の場合は `mrb_intern()` を使用します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|name|シンボル値を求める文字列定数の先頭アドレスを渡します。|文字列はアドレス・値が変更されない定数である必要があります。|
|len|シンボル値を求める文字列の長さ（バイト数）を渡します。||

### 戻り値

文字列のシンボル値が返されます。

---

## mrb_intern_str

```c
MRB_API mrb_sym mrb_intern_str(mrb_state *mrb, mrb_value str);
```

Stringからシンボルを生成します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|str|シンボル値を求めるStringオブジェクトを渡します。||

### 戻り値

文字列のシンボル値が返されます。

---

## mrb_check_intern_cstr

```c
MRB_API mrb_value mrb_check_intern_cstr(mrb_state *mrb, const char *name);
```

C言語形式の文字列（`\0`終端）で指定したシンボルが定義済みかとうかをチェックします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|name|シンボル名をC言語形式の文字列で指定します。||

### 戻り値

シンボルが定義済みの場合はシンボル値が返されます。  
シンボルが未定義の場合は`nil`が返されます。

---

## mrb_check_intern

```c
MRB_API mrb_value mrb_check_intern(mrb_state *mrb, const char *name, size_t len);
```

シンボルが定義済みかとうかをチェックします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|name|シンボル名の文字列の先頭アドレスを渡します。||
|len|シンボル名の文字列の長さ（バイト数）を渡します。||

### 戻り値

シンボルが定義済みの場合はシンボル値が返されます。  
シンボルが未定義の場合は`nil`が返されます。

---

## mrb_check_intern_str

```c
MRB_API mrb_value mrb_check_intern_str(mrb_state *mrb, mrb_value str);
```

シンボルが定義済みかとうかをチェックします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|str|シンボル名の`String`オブジェクトを渡します。||

### 戻り値

シンボルが定義済みの場合はシンボル値が返されます。  
シンボルが未定義の場合は`nil`が返されます。

---

## mrb_sym_name

```c
MRB_API const char *mrb_sym_name(mrb_state *mrb, mrb_sym sym);
```

シンボル名を取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|sym|シンボル値を渡します。||

### 戻り値

シンボル名文字列のポインタが返されます。  
シンボルが未定義の場合は`NULL`が返されます。

---

## mrb_sym_name_len

```c
MRB_API const char *mrb_sym_name_len(mrb_state *mrb, mrb_sym sym, mrb_int *lenp);
```

シンボル名とシンボル名の長さを取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|sym|シンボル値を渡します。||
|lenp|シンボル名の長さを格納する変数のポインタを渡します。||

### 戻り値

シンボル名文字列のポインタが返されます。  
シンボルが未定義の場合は`NULL`が返されます。

---

## mrb_sym_dump

```c
MRB_API const char *mrb_sym_dump(mrb_state *mrb, mrb_sym sym);
```

非表示文字列をバックスラッシュ記法に置き換えたシンボル名を取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|sym|シンボル値を渡します。||

### 戻り値

エスケープ済みのシンボル名文字列のポインタが返されます。  
シンボルが未定義の場合は`NULL`が返されます。

---

## mrb_sym_str

```c
MRB_API mrb_value mrb_sym_str(mrb_state *mrb, mrb_sym sym);
```

シンボル名をStringで取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|sym|シンボル値を渡します。||

### 戻り値

シンボル名文字列がStringオブジェクトとして返されます。

---

## mrb_malloc

```c
MRB_API void *mrb_malloc(mrb_state *mrb, size_t len);
```

メモリを確保します。  
メモリが確保できなかった場合は `NoMemoryError` がraiseされます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|len|確保するメモリのサイズを指定します。||

### 戻り値

確保したメモリ領域のアドレスが返されます。

---

## mrb_calloc

```c
MRB_API void *mrb_calloc(mrb_state *mrb, size_t nelem, size_t len);
```

サイズ`len`のメモリ領域を`nelem`個分を確保して0クリアします。  
メモリが確保できなかった場合は `NoMemoryError` がraiseされます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|nelem|確保するメモリブロックの個数を指定します。||
|len|確保するメモリのブロック単位のサイズを指定します。||

### 戻り値

確保したメモリ領域のアドレスが返されます。

---

## mrb_realloc

```c
MRB_API void *mrb_realloc(mrb_state *mrb, void *p, size_t len);
```

確保したメモリサイズを変更します。  
メモリサイズを拡張時にメモリ確保ができない場合は `NoMemoryError` がraiseされます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|p|サイズを変更するメモリ領域の先頭アドレスを指定します。||
|len|新しいメモリサイズを指定します。||

### 戻り値

サイズ変更したメモリ領域のアドレスが返されます。

---

## mrb_realloc_simple

```c
MRB_API void *mrb_realloc_simple(mrb_state *mrb, void *p,  size_t len);
```

確保したメモリサイズを変更します。  
メモリサイズを拡張時にメモリ確保ができない場合は`NULL`が返されます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|p|サイズを変更するメモリ領域の先頭アドレスを指定します。||
|len|新しいメモリサイズを指定します。||

### 戻り値

サイズ変更したメモリ領域のアドレスが返されます。  
サイズ変更できなかった場合は`NULL`が返されます。

---

## mrb_malloc_simple

```c
MRB_API void *mrb_malloc_simple(mrb_state *mrb, size_t len);
```

メモリ確保します。  
メモリ確保ができない場合は`NULL`が返されます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|len|確保するメモリサイズを指定します。||

### 戻り値

確保したメモリ領域のアドレスが返されます。  
メモリを確保できなかった場合は`NULL`が返されます。

---

## mrb_obj_alloc

```c
MRB_API struct RBasic *mrb_obj_alloc(mrb_state *mrb, enum mrb_vtype ttype, struct RClass *cls);
```

オブジェクトのメモリ領域を確保します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|ttype|メモリを確保するオブジェクトのデータ型を指定します。||
|cls|メモリを確保するオブジェクトのクラスインスタンスを`struct RClass`のポインタで指定します。||

### 戻り値

オブジェクト用に確保されたメモリ領域のアドレスが返されます。

---

## mrb_free

```c
MRB_API void mrb_free(mrb_state *mrb, void *p);
```

メモリ領域を解放します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|p|解放するメモリ領域の先頭アドレスを渡します。||

---

## mrb_str_new

```c
MRB_API mrb_value mrb_str_new(mrb_state *mrb, const char *p, size_t len);
```

文字列を指定してStringオブジェクトを生成します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|p|文字列の先頭アドレスを渡します。||
|len|文字列の長さを渡します。||

### 戻り値

生成された`String`オブジェクトが返されます。

---

## mrb_str_new_cstr

```c
MRB_API mrb_value mrb_str_new_cstr(mrb_state *mrb, const char *cstr);
```

C言語形式の文字列（`\0'終端）を指定してStringオブジェクトを生成します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|cstr|C言語文字列の先頭アドレスを渡します。||

### 戻り値

生成された`String`オブジェクトが返されます。

---

## mrb_str_new_static

```c
MRB_API mrb_value mrb_str_new_static(mrb_state *mrb, const char *p, size_t len);
```

文字列定数を指定してStringオブジェクトを生成します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|p|文字列の先頭アドレスを渡します。|文字列はアドレス・値が変更されない定数である必要があります。|
|len|文字列の長さを渡します。||

### 戻り値

生成された`String`オブジェクトが返されます。

---

## mrb_obj_freeze

```c
MRB_API mrb_value mrb_obj_freeze(mrb_state *mrb, mrb_value obj);
```

オブジェクトをfreeze（内容の変更を禁止）します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|freezeするオブジェクトを渡します。||

### 戻り値

freezeされたオブジェクトが返されます。

---

## mrb_utf8_from_locale

```c
MRB_API char* mrb_utf8_from_locale(const char *p, int len);
```

現在のロケールのコードページの文字列をUTF-8に変換します。  
このAPIはWindows環境のみで有効です。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|p|現在のロケールコードページの文字列の先頭アドレスを渡します。||
|len|コードページを変換する文字列長を渡します。<br/>`-1`を指定した場合は文字列`p`の全体の長さとなります。||

### 戻り値

UTF-8に変換された文字列のポインタが返されます。

---

## mrb_locale_from_utf8

```c
MRB_API char* mrb_locale_from_utf8(const char *p, int len);
```

UTF-8文字列を現在のロケールのコードページに変換します。  
このAPIはWindows環境のみで有効です。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|p|UTF-8文字列の先頭アドレスを渡します。||
|len|コードページを変換する文字列長を渡します。<br/>`-1`を指定した場合は文字列`p`の全体の長さとなります。||

### 戻り値

現在のロケールのコードページに変換された文字列のポインタが返されます。

---

## mrb_open

```c
MRB_API mrb_state* mrb_open(void);
```

`mrb_state`を生成し、mruby VMを初期化します。  
mrubyのC APIを使用する場合には、このAPI（または他の`mrb_open`系API）を呼び出してmruby VMを初期化する必要があります。

### 戻り値

生成されたmruby VM情報 `mrb_state` のポインタが返されます。

---

## mrb_open_allocf

```c
MRB_API mrb_state* mrb_open_allocf(mrb_allocf f, void *ud);
```

カスタムのメモリアロケータを使用して`mrb_state`を生成し、mruby VMを初期化します。  
mrubyのC APIを使用する場合には、このAPI（または他の`mrb_open`系API）を呼び出してmruby VMを初期化する必要があります。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|f|mruby VM内で使用するメモリアロケータ関数を指定します。|メモリアロケータは以下の形式で定義する必要があります。<br/>```void *mrb_allocf(struct mrb_state *mrb, void *p, size_t size, void *ud);```|
|ud|この引数にメモリアロケータ`f`に渡す付加情報を指定できます。付加情報を指定する必要がない場合は`NULL`を指定します。|`f`が呼び出される度に`ud`が引数として渡されます。|

### 戻り値

生成されたmruby VM情報 `mrb_state` のポインタが返されます。

---

## mrb_open_core

```c
MRB_API mrb_state* mrb_open_core(mrb_allocf f, void *ud);
```

カスタムのメモリアロケータを使用して`mrb_state`を生成し、mruby VMを初期化します。  
`mrb_open_core()`で生成したmruby VMは、ライブラリ`mrbgems`が含まれない最小構成となります。  
mrubyのC APIを使用する場合には、このAPI（または他の`mrb_open`系API）を呼び出してmruby VMを初期化する必要があります。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|f|mruby VM内で使用するメモリアロケータ関数を指定します。|メモリアロケータは以下の形式で定義する必要があります。<br/>```void *mrb_allocf(struct mrb_state *mrb, void *p, size_t size, void *ud);```|
|ud|この引数にメモリアロケータ`f`に渡す付加情報を指定できます。付加情報を指定する必要がない場合は`NULL`を指定します。|`f`が呼び出される度に`ud`が引数として渡されます。|

### 戻り値

生成されたmruby VM情報 `mrb_state` のポインタが返されます。

---

## mrb_close

```c
MRB_API void mrb_close(mrb_state *mrb);
```

mruby VM情報 `mrb_state` をクローズし、メモリを解放します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

---

## mrb_default_allocf

```c
MRB_API void* mrb_default_allocf(mrb_state *mrb, void *p, size_t size, void *ud);
```

mrubyのデフォルトのメモリアロケータです。  
[mrb_open()](#mrb_open)で生成したmruby VMで使用されます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|p|メモリ領域の先頭アドレスを渡します。<li>メモリ確保時: `NULL`を渡します。<li>メモリ解放時: 解放するメモリ領域のポインタを渡します。<li>メモリサイズ変更時： サイズ変更するメモリ領域のポインタを渡します。||
|size|メモリサイズを渡します。<li>メモリ確保時: 確保するメモリサイズを渡します。<li>メモリ解放時: `0`を渡します。<li>メモリサイズ変更時: 変更するメモリサイズを渡します。||
|ud|使用されません。`NULL`を渡します。||

### 戻り値

- メモリ確保時: 確保したメモリ領域のアドレスが返されます。
- メモリ解法時: `NULL`が返されます。
- メモリサイズ変更時: サイズ変更後のメモリ領域のアドレスが返されます。
- メモリ確保・サイズ変更失敗時: `NULL`が返されます。

---

## mrb_top_self

```c
MRB_API mrb_value mrb_top_self(mrb_state *mrb);
```

トップレベルの`self`オブジェクトを取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

### 戻り値

トップレベルの`self`オブジェクトが返されます。

---

## mrb_run

```c
MRB_API mrb_value mrb_run(mrb_state *mrb, struct RProc* proc, mrb_value self);
```

Procオブジェクトを実行します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|proc|実行する`Proc`オブジェクトを`struct RProc`のポインタで渡します。||
|self|レシーバのオブジェクトを渡します。||

### 戻り値

`proc`の実行結果が返されます。  
値の内容は`proc`の処理内容に依存します。

---

## mrb_top_run

```c
MRB_API mrb_value mrb_top_run(mrb_state *mrb, struct RProc *proc, mrb_value self, unsigned int stack_keep);
```

トップレベルからProcオブジェクトを実行します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|proc|実行する`Proc`オブジェクトを`struct RProc`のポインタで渡します。||
|self|レシーバのオブジェクトを渡します。||
|stack_keep|保持するスタックの容量を指定します。||

### 戻り値

`proc`の実行結果が返されます。  
値の内容は`proc`の処理内容に依存します。

---

## mrb_vm_run

```c
MRB_API mrb_value mrb_vm_run(mrb_state *mrb, struct RProc *proc, mrb_value self, unsigned int stack_keep);
```

Procオブジェクトを実行します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|proc|実行する`Proc`オブジェクトを`struct RProc`のポインタで渡します。||
|self|レシーバのオブジェクトを渡します。||
|stack_keep|保持するスタックの容量を指定します。||

### 戻り値

`proc`の実行結果が返されます。  
値の内容は`proc`の処理内容に依存します。

---

## mrb_vm_exec

```c
MRB_API mrb_value mrb_vm_exec(mrb_state *mrb, struct RProc *proc, const mrb_code *iseq);
```

mrubyバイトコードを実行します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|proc|実行する`Proc`オブジェクトを`struct RProc`のポインタで渡します。||
|iseq|実行するmrubyバイトコード`ISEQ`の先頭アドレスを渡します。||

### 戻り値

mrubyバイトコードの実行結果が返されます。  
値の内容はバイトコードの処理内容に依存します。

---

## mrb_p

```c
MRB_API void mrb_p(mrb_state *mrb, mrb_value obj);
```

Kernel#pメソッドを実行して、オブジェクトの内容を標準出力に表示します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|値を表示するオブジェクトを渡します。||

---

## mrb_obj_id

```c
MRB_API mrb_int mrb_obj_id(mrb_value obj);
```

オブジェクトIDを取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|obj|IDを取得するオブジェクトを渡します。||

### 戻り値

オブジェクトIDが返されます。

---

## mrb_obj_to_sym

```c
MRB_API mrb_sym mrb_obj_to_sym(mrb_state *mrb, mrb_value name);
```

`String`または`Symbol`オブジェクトのシンボル値を取得します。  
`String`、`Symbol`以外のオブジェクトが渡された場合は、`TypeError`がraiseされます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|name|シンボル値を取得する`String`または`Symbol`オブジェクトを渡します。||

### 戻り値

オブジェクトのシンボル値が返されます。

---

## mrb_obj_eq
## mrb_obj_equal

```c
MRB_API mrb_bool mrb_obj_eq(mrb_state *mrb, mrb_value a, mrb_value b);
MRB_API mrb_bool mrb_obj_equal(mrb_state *mrb, mrb_value a, mrb_value b);
```

2つのオブジェクトの内容を比較します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|a, b|比較対象の2つのオブジェクトを渡します。||

### 戻り値

オブジェクトの内容が一致する場合は`true`、一致しない場合は`false`が返されます。

---

## mrb_equal

```c
MRB_API mrb_bool mrb_equal(mrb_state *mrb, mrb_value obj1, mrb_value obj2);
```

2つのオブジェクトを比較します。  
オブジェクトの内容の比較と`==`演算子での比較を行います。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|a, b|比較対象の2つのオブジェクトを渡します。||

### 戻り値

オブジェクトの内容が一致する場合は`true`、一致しない場合は`false`が返されます。

---

## mrb_convert_to_integer
## mrb_Integer

```c
MRB_API mrb_value mrb_convert_to_integer(mrb_state *mrb, mrb_value val, mrb_int base);
MRB_API mrb_value mrb_Integer(mrb_state *mrb, mrb_value val);
```

オブジェクトを整数値（`Fixnum`オブジェクト）に変換します。  
数値に変換できないオブジェクトが渡された場合は `TypeError` がraiseされます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|val|`Fixnum`に変換するオブジェクトを渡します。||
|base|数値の基数を渡します。|通常（10進数の場合）は`10`を指定します。|

### 戻り値

オブジェクトを整数値に変換した結果（`Fixnum`オブジェクト）が返されます。

---

## mrb_Float

```c
MRB_API mrb_value mrb_Float(mrb_state *mrb, mrb_value val);
```

オブジェクトを浮動小数点値（`Float`オブジェクト）に変換します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|val|`Float`に変換するオブジェクトを渡します。||

### 戻り値

オブジェクトを浮動小数点数に変換した結果（`Float`オブジェクト）が返されます。

---

## mrb_inspect

```c
MRB_API mrb_value mrb_inspect(mrb_state *mrb, mrb_value obj);
```

Object#inspectを呼び出して、オブジェクトを分かりやすい文字列に変換します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|文字列に変換するオブジェクトを渡します。||

### 戻り値

オブジェクトを分かりやすい内容に変更した文字列（`String`オブジェクト）が返されます。

---

## mrb_eql

```c
MRB_API mrb_bool mrb_eql(mrb_state *mrb, mrb_value obj1, mrb_value obj2);
```

2つのオブジェクトを比較します。  
オブジェクトの内容の比較と`eql?`メソッドでの比較を行います。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj1, obj2|比較対象の2つのオブジェクトを渡します。||

### 戻り値

オブジェクトの内容が一致する場合は`true`、一致しない場合は`false`が返されます。

---

## mrb_cmp

```c
MRB_API mrb_int mrb_cmp(mrb_state *mrb, mrb_value obj1, mrb_value obj2);
```

`<=>`演算子による2つのオブジェクトの比較を行います。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj1, obj2|比較対象の2つのオブジェクトを渡します。||

### 戻り値

`<=>`演算子による比較結果を返します。

- `-1`: obj1 < obj2
- `0`: obj1 == obj2
- `1`: obj1 > obj2

---

## mrb_garbage_collect
## mrb_full_gc

```c
MRB_API void mrb_garbage_collect(mrb_state *mrb);
MRB_API void mrb_full_gc(mrb_state *mrb);
```

ガーベッジコレクション（フルGC）を実行します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

---

## mrb_incremental_gc

```c
MRB_API void mrb_incremental_gc(mrb_state *mrb);
```

ガーベッジコレクション（インクリメンタルGC）を実行します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

---

## mrb_gc_mark

```c
MRB_API void mrb_gc_mark(mrb_state *mrb,　struct RBasic *obj);
```

ガーベッジコレクションのマークフェーズを実行します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|マークするオブジェクトを指定します。||

---

## mrb_field_write_barrier

```c
MRB_API void mrb_field_write_barrier(mrb_state *mrb, struct RBasic *obj, struct RBasic *value);
```

フィールドライトバリアを設定します。  
`obj(Black) -> value(White)` を `obj(Black) -> value(Gray)` に変更します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|ライトバリアを設定するオブジェクトを指定します。||
|value|ライトバリアを設定する値を指定します。||

---

## mrb_write_barrier

```c
MRB_API void mrb_write_barrier(mrb_state *, struct RBasic*);
```

ライトバリアを設定します。  
`obj(Black)` を `obj(Gray)` に変更します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|ライトバリアを設定するオブジェクトを指定します。||

---

## mrb_check_convert_type

```c
MRB_API mrb_value mrb_check_convert_type(mrb_state *mrb, mrb_value val, enum mrb_vtype type, const char *tname, const char *method);
```

オブジェクトが型変換可能かをチェックします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|val|型変換するオブジェクトを渡します。||
|type|型変換するデータタイプを渡します。||
|tname|型変換するクラス名を渡します。||
|method|型変換するために呼び出すメソッド名を渡します。||

### 戻り値

型変換したオブジェクトが返されます。  
型変換出来なかった場合には `nil`値の `mrb_value` が返されます。

---

## mrb_any_to_s

```c
MRB_API mrb_value mrb_any_to_s(mrb_state *mrb, mrb_value obj);
```

オブジェクトを文字列に変換します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|文字列に変換するオブジェクトを渡します。||

### 戻り値

オブジェクトの内容を文字列に変換した結果が`String`オブジェクトとして返されます。

---

## mrb_obj_classname

```c
MRB_API const char * mrb_obj_classname(mrb_state *mrb, mrb_value obj);
```

オブジェクトのクラス名を取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|クラス名を取得するオブジェクトを渡します。||

### 戻り値

オブジェクトのクラス名がC言語文字列のポインタとして返されます。

---

## mrb_obj_class

```c
MRB_API struct RClass* mrb_obj_class(mrb_state *mrb, mrb_value obj);
```

オブジェクトのクラスを取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|クラスを取得するオブジェクトを渡します。||

### 戻り値

オブジェクトのクラスのインスタンスが`struct RClass`のポインタとして返されます。

---

## mrb_class_path

```c
MRB_API mrb_value mrb_class_path(mrb_state *mrb, struct RClass *c);
```

クラスパスを取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|c|クラスパスを取得するクラスのインスタンス`struct RClass`のポインタで渡します。||

### 戻り値

クラスパスの文字列が返されます。

---

## mrb_convert_type

```c
MRB_API mrb_value mrb_convert_type(mrb_state *mrb, mrb_value val, enum mrb_vtype type, const char *tname, const char *method);
```

オブジェクトの型を変換します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|val|型変換するオブジェクトを渡します。||
|type|型変換するデータタイプを渡します。||
|tname|型変換するクラス名を渡します。||
|method|型変換するために呼び出すメソッド名を渡します。||

### 戻り値

型変換したオブジェクトが返されます。  

---

## mrb_obj_is_kind_of

```c
MRB_API mrb_bool mrb_obj_is_kind_of(mrb_state *mrb, mrb_value obj, struct RClass *c);
```

`kind_of?`メソッドによる型チェックを行います。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|型をチェックするオブジェクトを渡します。||
|c|クラス・モジュールのインスタンスを`struct RClass`のポインタで指定します。||

### 戻り値

オブジェクト`obj`がクラス`c`に属する場合は`true`が返されます。それ以外は`false`が返されます。

---

## mrb_obj_inspect

```c
MRB_API mrb_value mrb_obj_inspect(mrb_state *mrb, mrb_value self);
```

Object#inspectを呼び出して、オブジェクトを分かりやすい文字列に変換します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|self|文字列に変換するオブジェクトを渡します。||

### 戻り値

オブジェクトを分かりやすい内容に変更した文字列（`String`オブジェクト）が返されます。

---

## mrb_obj_clone

```c
MRB_API mrb_value mrb_obj_clone(mrb_state *mrb, mrb_value self);
```

`clone`メソッドによるオブジェクトの複製を行います。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|self|複製するオブジェクトを渡します。||

### 戻り値

複製されたオブジェクトが返されます。

---

## mrb_exc_new

```c
MRB_API mrb_value mrb_exc_new(mrb_state *mrb, struct RClass *c, const char *ptr, size_t len);
```

例外オブジェクトを生成します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|c|例外クラスのインスタンス`struct RClass`を渡します。||
|ptr|例外のメッセージ文字列の先頭アドレスを渡します。||
|len|例外メッセージの文字長を渡します。||

### 戻り値

生成された例外オブジェクトが返されます。

---

## mrb_exc_raise

```c
MRB_API mrb_noreturn void mrb_exc_raise(mrb_state *mrb, mrb_value exc);
```

例外をraiseします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|exc|raiseする例外オブジェクトを渡します。||

---

## mrb_raise

```c
MRB_API mrb_noreturn void mrb_raise(mrb_state *mrb, struct RClass *c, const char *msg);
```

例外をraiseします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|c|raiseする例外クラスのインスタンスを渡します。||
|str|例外メッセージ文字列を渡します。||

---

## mrb_raisef

```c
MRB_API mrb_noreturn void mrb_raisef(mrb_state *mrb, struct RClass *c, const char *fmt, ...);
```

例外をraiseします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|c|raiseする例外クラスのインスタンスを渡します。||
|fmt|例外メッセージの書式文字列を渡します。|書式文字列の詳細は[mrb_vformat()](#mrb_vformat)を参照してください。|
|...|書式文字列に埋め込むパラメータを列挙します。||

---

## mrb_name_error

```c
MRB_API mrb_noreturn void mrb_name_error(mrb_state *mrb, mrb_sym id, const char *fmt, ...);
```

`NameError`をraiseします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|id|`NameError`の対象のシンボルを指定します。||
|fmt|例外メッセージの書式文字列を渡します。|書式文字列の詳細は[mrb_vformat()](#mrb_vformat)を参照してください。|
|...|書式文字列に埋め込むパラメータを列挙します。||

---

## mrb_frozen_error

```c
MRB_API mrb_noreturn void mrb_frozen_error(mrb_state *mrb, void *frozen_obj);
```

`FrozenError`をraiseします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|forzon_obj|`FrozenError`の対象となったオブジェクトを渡します。||

---

## mrb_warn

```c
MRB_API void mrb_warn(mrb_state *mrb, const char *fmt, ...);
```

標準出力に警告メッセージを表示します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|fmt|警告メッセージの書式文字列を渡します。|書式文字列の詳細は[mrb_vformat()](#mrb_vformat)を参照してください。|
|...|書式文字列に埋め込むパラメータを列挙します。||

---

## mrb_bug

```c
MRB_API mrb_noreturn void mrb_bug(mrb_state *mrb, const char *fmt, ...);
```

標準出力にバグエラーメッセージを表示します。

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|fmt|バグエラーメッセージの書式文字列を渡します。|書式文字列の詳細は[mrb_vformat()](#mrb_vformat)を参照してください。|
|...|書式文字列に埋め込むパラメータを列挙します。||

---

## mrb_print_backtrace

```c
MRB_API void mrb_print_backtrace(mrb_state *mrb);
```

標準出力にBack trace情報を表示します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

---

## mrb_print_error

```c
MRB_API void mrb_print_error(mrb_state *mrb);
```

発生した例外の内容を標準出力に表示します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

---

## mrb_vformat

```c
MRB_API mrb_value mrb_vformat(mrb_state *mrb, const char *format, va_list ap);
```

C言語の`sprintf()`のように書式化した文字列を生成します。  

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|format|書式指定文字列を指定します。|指定可能な書式指定文字は[下記](#書式指定文字)を参照してください。|
|ap|書式指定文字に対応するパラメータを順に指定します。|[書式指定文字](#書式指定文字)に対応するデータ型で指定する必要があります。|

### 戻り値

書式化文字列の`String`オブジェクトが返されます。

### 書式指定文字

書式指定文字は以下の形式で指定します。

```
%[modifier]specifier
```

`modifier`には`!`が指定できます。  
`!`を指定すると、文字列に変換する際に `to_s` の代わりに `inspect` が使用されます。


`specifier`に指定可能な文字とそれに対応するデータ型は以下の通りです。

|書式指定文字|データ型|概要|備考|
|:-:|:--|:--|:--|
|c|char|1文字を出力します。||
|d|int|整数値を出力します。||
|f|mrb_float|浮動小数点数を出力します。||
|i|mrb_int|整数値を出力します。||
|l|char*, size_t|文字列を出力します。|文字列の先頭アドレスおよび文字数を指定します。|
|n|mrb_sym|シンボル名を出力します。||
|s|char*|文字列を出力します。|C言語形式の文字列（`\0`終端）を指定します。|
|t|mrb_value|オブジェクトの型（クラス・モジュール）名を出力します。||
|v|mrb_value|オブジェクトの内容を文字列として出力します。||
|S|mrb_value|オブジェクトの内容を文字列として出力します。||
|C|struct RClass*|クラス・モジュール名を出力します。||
|T|mrb_value|オブジェクトのリアル型（クラス・モジュール）名を出力します。||
|Y|mrb_value|引数が `true`, `false`, `nil` の場合は `%!v` が指定された場合と同じです。<br/>それ以外は `%T` が指定された場合と同じです。||
|%|-|`%`記号に変換します。||

---

## mrb_yield

```c
MRB_API mrb_value mrb_yield(mrb_state *mrb, mrb_value b, mrb_value arg);
```

`yield`によるブロックの呼び出しを行います。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|b|呼び出すブロックの`Proc`オブジェクトを渡します。||
|arg|ブロックに渡す引数（1つ）を指定します。||

### 戻り値

ブロックの処理結果が返されます。

---

## mrb_yield_argv

```c
MRB_API mrb_value mrb_yield_argv(mrb_state *mrb, mrb_value b, mrb_int argc, const mrb_value *argv);
```

引数を指定して`yield`によるブロックの呼び出しを行います。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|b|呼び出すブロックの`Proc`オブジェクトを渡します。||
|argc|ブロックに渡す引数の数を指定します。||
|argv|ブロックに渡す引数配列のポインタを指定します。|引数配列の要素数は`argc`の数に合わせる必要があります。|

### 戻り値

ブロックの処理結果が返されます。

---

## mrb_yield_with_class

```c
MRB_API mrb_value mrb_yield_with_class(mrb_state *mrb, mrb_value b, mrb_int argc, const mrb_value *argv, mrb_value self, struct RClass *c);
```

クラスを指定して`yield`によるブロックの呼び出しを行います。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|b|呼び出すブロックの`Proc`オブジェクトを渡します。||
|argc|ブロックに渡す引数の数を指定します。||
|argv|ブロックに渡す引数配列のポインタを指定します。|引数配列の要素数は`argc`の数に合わせる必要があります。|
|self|ブロックのターゲットを指定します。||
|c|`self`のクラスのインスタンスを`struct RClass`ポインタで指定します。||

### 戻り値

ブロックの処理結果が返されます。

---

## mrb_gc_protect

```c
MRB_API void mrb_gc_protect(mrb_state *mrb, mrb_value obj);
```

オブジェクトをGC対象とならないようにプロテクトします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|GC対象外とするオブジェクトを指定します。||

---

## mrb_gc_register

```c
MRB_API void mrb_gc_register(mrb_state *mrb, mrb_value obj);
```

オブジェクトをGC対象に登録します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|GC対象に登録するオブジェクトを指定します。||

---

## mrb_gc_unregister

```c
MRB_API void mrb_gc_unregister(mrb_state *mrb, mrb_value obj);
```

オブジェクトをGC対象から除外します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|GC対象から除外するオブジェクトを指定します。||

---

## mrb_to_int

```c
MRB_API mrb_value mrb_to_int(mrb_state *mrb, mrb_value val);
```

オブジェクトを`Integer`に変換します。  
`Integer`に変換できない場合には`TypeError`がraiseされます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|val|`Integer`に変換するオブジェクトを渡します。||

### 戻り値

変換結果の`Integer`オブジェクトが返されます。

---

## mrb_to_str

```c
MRB_API mrb_value mrb_to_str(mrb_state *mrb, mrb_value val);
```

オブジェクトを`String`に変換します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|val|`String`に変換するオブジェクトを渡します。||

### 戻り値

変換結果の`String`オブジェクトが返されます。

---

## mrb_check_type

```c
MRB_API void mrb_check_type(mrb_state *mrb, mrb_value x, enum mrb_vtype t);
```

オブジェクトの型をチェックします。  
オブジェクトが指定型と一致しない場合は `TypeError` がraiseされます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|x|型をチェックするオブジェクトを渡します。||
|t|チェックする型を指定します。||

---

## mrb_define_alias

```c
MRB_API void mrb_define_alias(mrb_state *mrb, struct RClass *c, const char *a, const char *b);
```

メソッドのaliasを定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|c|`alias`を定義するクラス・モジュールを渡します。||
|a|新しくaliasとして定義するメソッド名を指定します。||
|b|aliasを定義する既存のメソッド名を指定します。||

---

## mrb_class_name

```c
MRB_API const char *mrb_class_name(mrb_state *mrb, struct RClass* klass);
```

クラスの名称を取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|klass|クラス名を取得するクラスのインスタンスを渡します。||

### 戻り値

クラス名文字列の先頭アドレスが返されます。

---

## mrb_define_global_const

```c
MRB_API void mrb_define_global_const(mrb_state *mrb, const char *name, mrb_value val);
```

グローバル定数を定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|name|グローバル変数の名前を渡します。||
|val|グローバル変数にセットする値を指定します。||

---

## mrb_attr_get

```c
MRB_API mrb_value mrb_attr_get(mrb_state *mrb, mrb_value obj, mrb_sym id);
```

オブジェクトの属性（インスタンス変数）を取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|インスタンス変数を取得する対象のオブジェクトを渡します。||
|id|インスタンス変数名のシンボル値を指定します。||

### 戻り値

インスタンス変数の値が返されます。

---

## mrb_respond_to

```c
MRB_API mrb_bool mrb_respond_to(mrb_state *mrb, mrb_value obj, mrb_sym mid);
```

オブジェクトに指定のメソッドが定義されているかどうかをチェックします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|メソッド定義有無を確認するオブジェクトを渡します。||
|mid|メソッド名のシンボル値を指定します。||

### 戻り値

メソッドが定義されている場合は `true`、定義されていない場合は `false` が返されます。

---

## mrb_obj_is_instance_of

```c
MRB_API mrb_bool mrb_obj_is_instance_of(mrb_state *mrb, mrb_value obj, struct RClass* c);
```

オブジェクトが指定のクラスの直接のインスタンスであるかどうかをチェックします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|チェック対象のオブジェクトを渡します。||
|c|クラスのインスタンスを`struct RClass`ポインタで指定します。||

### 戻り値

オブジェクトが指定クラスのインスタンスの場合は `true`、指定クラスのインスタンスでない場合は `false` が返されます。

---

## mrb_func_basic_p

```c
MRB_API mrb_bool mrb_func_basic_p(mrb_state *mrb, mrb_value obj, mrb_sym mid, mrb_func_t func);
```

メソッドの実体が指定のC関数かどうかをチェックします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|obj|メソッドのレシーバであるオブジェクトを渡します。||
|mid|メソッド名のシンボル値を指定します。||
|func|チェック対象のC関数を指定します。||

### 戻り値

メソッドの実体が与えられてC関数の場合は `true`、そうでない場合は `false` が返されます。

---

## mrb_fiber_resume

```c
MRB_API mrb_value mrb_fiber_resume(mrb_state *mrb, mrb_value fib, mrb_int argc, const mrb_value *argv);
```

`Fiber`をresumeします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|fib|resumeする`Fiber`オブジェクトを渡します。||
|argc|メソッドに渡す引数の数を渡します。||
|argv|メソッドに渡す引数配列のポインタを渡します。|引数配列の数は`argc`に合わせる必要があります。|

### 戻り値

`Fiber`の処理結果が返されます。

---

## mrb_fiber_yield

```c
MRB_API mrb_value mrb_fiber_yield(mrb_state *mrb, mrb_int argc, const mrb_value *argv);
```

`Fiber`をyieldします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|fib|yieldする`Fiber`オブジェクトを渡します。||
|argc|メソッドに渡す引数の数を渡します。||
|argv|メソッドに渡す引数配列のポインタを渡します。|引数配列の数は`argc`に合わせる必要があります。|

### 戻り値

`Fiber`の処理結果が返されます。

---

## mrb_fiber_alive_p

```c
MRB_API mrb_value mrb_fiber_alive_p(mrb_state *mrb, mrb_value fib);
```

Fiberが生存しているかを確認します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|fib|`Fiber`オブジェクトを渡します。||

### 戻り値

`Fiber`が生存していれば `true`、終了していれば `false` が返されます。

---
## mrb_stack_extend

```c
MRB_API void mrb_stack_extend(mrb_state *mrb, mrb_int room);
```

スタック領域を拡張します。  
スタックの空き領域が`room`に満たない場合に、`room`の容量を満たすサイズにスタックが格納されます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|room|確保したいスタック容量（格納可能なオブジェクト数）を指定します。||

---

## mrb_pool_open

```c
MRB_API struct mrb_pool* mrb_pool_open(mrb_state *mrb);
```

プールメモリ管理をオープンします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

### 戻り値

確保したプールメモリ管理領域のアドレスが返されます。

---

## mrb_pool_close

```c
MRB_API void mrb_pool_close(struct mrb_pool *pool);
```

プールメモリ管理をクローズします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|pool|プールメモリ管理情報`mrb_pool`のポインタを渡します。||

---

## mrb_pool_alloc

```c
MRB_API void* mrb_pool_alloc(struct mrb_pool *pool, size_t len);
```

プールメモリの領域を確保します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|pool|プールメモリ管理情報`mrb_pool`のポインタを渡します。||
|len|確保するプールメモリのサイズを渡します。||

### 戻り値

確保されたプールメモリ領域のアドレスが返されます。  
メモリの確保に失敗した場合は `NULL` が返されます。

---

## mrb_pool_realloc

```c
MRB_API void* mrb_pool_realloc(struct mrb_pool *pool, void *p, size_t oldlen, size_t newlen);
```

プールメモリの領域のサイズを変更します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|pool|プールメモリ管理情報`mrb_pool`のポインタを渡します。||
|p|プールメモリ領域の先頭アドレスを渡します。||
|oldlen|プールメモリの現在のサイズを渡します。||
|newlen|プールメモリの変更サイズを渡します。||

### 戻り値

サイズ変更されたプールメモリ領域のアドレスが返されます。  
メモリの確保に失敗した場合は `NULL` が返されます。

---

## mrb_pool_can_realloc

```c
MRB_API mrb_bool mrb_pool_can_realloc(struct mrb_pool *pool, void *p, size_t len);
```

プールメモリの領域のサイズ変更が可能かをチェックする。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|pool|プールメモリ管理情報`mrb_pool`のポインタを渡します。||
|p|プールメモリ領域の先頭アドレスを渡します。||
|len|変更したいプールメモリサイズを渡します。||

### 戻り値

サイズ変更可能な場合は `true`、変更不可の場合は `false` が返されます。

---

## mrb_alloca

```c
MRB_API void* mrb_alloca(mrb_state *mrb, size_t size);
```

文字列の領域を確保します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|size|文字列長を指定します。||

### 戻り値

文字列の先頭アドレスが返されます。

---

## mrb_state_atexit

```c
MRB_API void mrb_state_atexit(mrb_state *mrb, mrb_atexit_func func);
```

mruby VM終了時に呼び出される関数を指定します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|func|mruby VM終了関数のアドレスを渡します。|終了関数は以下の形式で定義します。<br/>```void mrb_atexit_func(struct mrb_state *mrb);```|

---
## mrb_show_version

```c
MRB_API void mrb_show_version(mrb_state *mrb);
```

mrubyのバージョン情報を標準出力に表示します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

---

## mrb_show_copyright

```c
MRB_API void mrb_show_copyright(mrb_state *mrb);
```

mrubyのCopyright情報を標準出力に表示する。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

---

## mrb_format

```c
MRB_API mrb_value mrb_format(mrb_state *mrb, const char *format, ...);
```

C言語の`sprintf()`のように書式化した文字列を生成します。  

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|format|書式指定文字列を指定します。|指定可能な書式指定文字は[下記](#書式指定文字)を参照してください。|
|...|書式指定文字に対応するパラメータを順に指定します。|[書式指定文字](#書式指定文字)に対応するデータ型で指定する必要があります。|

### 戻り値

書式化文字列の`String`オブジェクトが返されます。

---

## mrb_ary_modify

```c
MRB_API void mrb_ary_modify(mrb_state *mrb, struct RArray *a);
```

`Array`オブジェクトを変更可能な状態に更新します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|a|`Array`オブジェクトのインスタンスを`struct RClass`のポインタで渡します。||

---

## mrb_ary_new_capa

```c
MRB_API mrb_value mrb_ary_new_capa(mrb_state *mrb, mrb_int capa);
```

初期容量を指定してArrayオブジェクトを生成します。  
要素数は`0`ですが、初期の最大容量が`capa`となります。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|capa|`Array`オブジェクトの初期容量を指定します。||

### 戻り値

生成した`Array`オブジェクトが返されます。

---

## mrb_ary_new

```c
MRB_API mrb_value mrb_ary_new(mrb_state *mrb);
```

Arrayオブジェクトを生成します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

### 戻り値

生成した`Array`オブジェクトが返されます。

---

## mrb_ary_new_from_values

```c
MRB_API mrb_value mrb_ary_new_from_values(mrb_state *mrb, mrb_int size, const mrb_value *vals);
```

初期値を指定してArrayオブジェクトを生成する。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|size|`Array`オブジェクトの初期値の要素数を指定します。||
|vals|`Array`オブジェクトの初期値を`mrb_value`の配列で渡します。|配列の要素数は`size`に合わせる必要があります。|

### 戻り値

`vals`を初期値とした`Array`オブジェクトが返されます。

---

## mrb_assoc_new

```c
MRB_API mrb_value mrb_assoc_new(mrb_state *mrb, mrb_value car, mrb_value cdr);
```

2つの初期値からArrayオブジェクトを生成する。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|car|1つ目の値を渡します。||
|cdr|2つ目の値を渡します。||

### 戻り値

[car, cdr]が1つ目の要素である`Array`オブジェクトが返されます。

---

## mrb_ary_concat

```c
MRB_API void mrb_ary_concat(mrb_state *mrb, mrb_value self, mrb_value other);
```

Arrayオブジェクト `self` の後ろに `other` を連結します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|self|連結元の`Array`オブジェクトを指定します。||
|other|連結する`Array`オブジェクトを指定します。||

---

## mrb_ary_splat

```c
MRB_API mrb_value mrb_ary_splat(mrb_state *mrb, mrb_value value);
```

入力値に `to_a` を実行した結果を`Array`オブジェクトとして返します。  
入力値が `to_a` に応答しない場合は、入力値のみを要素とした `Arary` オブジェクトを返します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|value|`Array`オブジェクト化する値を渡します。||

### 戻り値

生成された`Array`オブジェクトが返されます。

---

## mrb_ary_push

```c
MRB_API void mrb_ary_push(mrb_state *mrb, mrb_value array, mrb_value value);
```

Arrayオブジェクトの最後に要素を追加します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|array|要素を追加する`Array`オブジェクトを渡します。||
|value|`array`の最後に追加する値を渡します。||

---

## mrb_ary_pop

```c
MRB_API mrb_value mrb_ary_pop(mrb_state *mrb, mrb_value ary);
```

Arrayオブジェクトの最後の要素を取り出します。  
取り出された要素はArrayオブジェクトから削除されます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|ary|要素を取得する`Array`オブジェクトを渡します。||

### 戻り値

最後の要素が返されます。  
`ary`が空の配列の場合は `nil` が返されます。

---

## mrb_ary_ref

```c
MRB_API mrb_value mrb_ary_ref(mrb_state *mrb, mrb_value ary, mrb_int n);
```

Arrayオブジェクトの指定位置の要素を参照します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|ary|要素を取得する`Array`オブジェクトを渡します。||
|n|要素の位置（インデックス値）を渡します。||

### 戻り値

指定位置の要素が返されます。  
指定位置の要素がない場合は `nil` が返されます。

---

## mrb_ary_set

```c
MRB_API void mrb_ary_set(mrb_state *mrb, mrb_value ary, mrb_int n, mrb_value val);
```

Arrayオブジェクトの指定位置の要素を設定します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|ary|要素を取得する`Array`オブジェクトを渡します。||
|n|値を設定する要素の位置（インデックス値）を渡します。||
|val|要素に設定する値を渡します。||

---

## mrb_ary_replace

```c
MRB_API void mrb_ary_replace(mrb_state *mrb, mrb_value self, mrb_value other);
```

指定したArrayオブジェクトでArrayオブジェクトを置き換えます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|self|置き換え対象（置き換えられる側）の`Array`オブジェクトを渡します。||
|other|置き換える`Array`オブジェクトを渡します。||

---

## mrb_ensure_array_type

```c
MRB_API mrb_value mrb_ensure_array_type(mrb_state *mrb, mrb_value self);
```

Arrayオブジェクト型かどうかをチェックします。  
Arrayオブジェクトでない場合は、`TypeError`がraiseされます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|self|チェックする対象のオブジェクトを渡します。||

### 戻り値

`self`が返されます。

---

## mrb_check_array_type

```c
MRB_API mrb_value mrb_check_array_type(mrb_state *mrb, mrb_value self);
```

Arrayオブジェクト型かどうかをチェックします。  
Arrayオブジェクトでない場合は `nil` が返されます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|self|チェックする対象のオブジェクトを渡します。||

### 戻り値

`self`が`Array`オブジェクトの場合は `self` が、そうでない場合は `nil` が返されます。

---

## mrb_ary_unshift

```c
MRB_API mrb_value mrb_ary_unshift(mrb_state *mrb, mrb_value self, mrb_value item);
```

Arrayオブジェクトの先頭に要素を追加します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|self|要素を追加する`Array`オブジェクトを渡します。||
|item|先頭要素として追加する値を渡します。||

### 戻り値

要素追加後の `self` が返されます。

---

## mrb_ary_entry

```c
MRB_API mrb_value mrb_ary_entry(mrb_value ary, mrb_int offset);
```

Arrayオブジェクトの指定位置の要素を取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|ary|要素を取得する`Array`オブジェクトを渡します。||
|offset|要素を取得する場所（インデックス値）を渡します。||

### 戻り値

`ary`の指定場所に格納されている要素の値を返されます。  
指定場所に値が格納されていない場合は `nil` が返されます。

---

## mrb_ary_splice

```c
MRB_API mrb_value mrb_ary_splice(mrb_state *mrb, mrb_value self, mrb_int head, mrb_int len, mrb_value rpl);
```

Arrayオブジェクトの一部を置き換えます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|self|操作対象の`Array`オブジェクトを渡します。||
|head|要素を置き換える対象の先頭場所（インデックス値）を渡します。||
|len|置き換え対象の要素数を渡します。||
|rpl|置き換える値を渡します。||

### 戻り値

要素を置き換えた結果の`Array`オブジェクトが返されます。

---

## mrb_ary_shift

```c
MRB_API mrb_value mrb_ary_shift(mrb_state *mrb, mrb_value self);
```

Arrayオブジェクトの先頭の要素を取り出します。  
取り出された要素はArrayオブジェクトから削除されます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|ary|要素を取得する`Array`オブジェクトを渡します。||

### 戻り値

先頭の要素が返されます。  
`ary`が空の配列の場合は `nil` が返されます。

---

## mrb_ary_clear

```c
MRB_API mrb_value mrb_ary_clear(mrb_state *mrb, mrb_value self);
```

Arrayオブジェクトの全ての要素を削除します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|self|要素を削除する`Array`オブジェクトを渡します。||

### 戻り値

空になった`self`が返されます。

---

## mrb_ary_join

```c
MRB_API mrb_value mrb_ary_join(mrb_state *mrb, mrb_value ary, mrb_value sep);
```

Arrayオブジェクトの要素を文字列として連結します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|ary|`Array`オブジェクトを渡します。||
|sep|各要素の区切り文字を指定します。<br/>`nil`が指定された場合は区切り文字なしで連結されます。||

### 戻り値

各要素を連結した文字列が返されます。  
区切り文字が指定された場合は、各要素の間に区切り文字が挿入されます。

---

## mrb_ary_resize

```c
MRB_API mrb_value mrb_ary_resize(mrb_state *mrb, mrb_value ary, mrb_int new_len);
```

Arrayオブジェクトのサイズを変更します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|ary|サイズを変更する`Array`オブジェクトを渡します。||
|new_len|新しいサイズを指定します。||

### 戻り値

サイズ変更後のArrayオブジェクトが返されます。

---

## mrb_word_boxing_cptr_value

```c
MRB_API mrb_value mrb_word_boxing_cptr_value(struct mrb_state*, void*);
```



## mrb_word_boxing_float_value

```c
MRB_API mrb_value mrb_word_boxing_float_value(struct mrb_state*, mrb_float);
```



## mrb_word_boxing_float_pool

```c
MRB_API mrb_value mrb_word_boxing_float_pool(struct mrb_state*, mrb_float);
```



## mrb_define_class_id

```c
MRB_API struct RClass* mrb_define_class_id(mrb_state *mrb, mrb_sym name, struct RClass *super);
```

クラス名のシンボル値を指定してクラスを定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|name|定義するクラス名のシンボル値を渡します。||
|super|定義するクラスの親クラスのインスタンスを`struct RClass`のポインタで渡します。||

### 戻り値

定義されたクラスのインスタンス（`struct RClass`のポインタ）が返されます。

---

## mrb_define_module_id

```c
MRB_API struct RClass* mrb_define_module_id(mrb_state *mrb, mrb_sym name);
```

モジュール名のシンボル値を指定してクラスを定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|name|定義するモジュール名のシンボル値を渡します。||

### 戻り値

定義されたクラスのインスタンス（`struct RClass`のポインタ）が返されます。

---

## mrb_define_method_raw

```c
MRB_API void mrb_define_method_raw(mrb_state *mrb, struct RClass *c, mrb_sym mid, mrb_method_t m);
```

インスタンスメソッドを定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|c|インスタンスメソッドを定義するクラス・モジュールのインスタンス（`struct RClass`のポインタ）を渡します。||
|mid|インスタンスメソッド名のシンボル値を渡します。||
|m|インスタンスメソッドとして呼び出されるメソッドの情報を渡します。||

---

## mrb_define_method_id

```c
MRB_API void mrb_define_method_id(mrb_state *mrb, struct RClass *c, mrb_sym mid, mrb_func_t func, mrb_aspec aspec);
```

インスタンスメソッドを定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|c|インスタンスメソッドを定義するクラス・モジュールのインスタンス（`struct RClass`のポインタ）を渡します。||
|mid|インスタンスメソッド名のシンボル値を渡します。||
|func|インスタンスメソッドとして呼び出されるC関数を渡します。||
|aspec|メソッドの引数を`MRB_ARGS_XXX()`形式のマクロで指定します。|マクロ `MRB_ARGS_XXX()` の種類・詳細は [2.2. 定義されているマクロ](mruby-c-api-macros.md) を参照して下さい。|

---

## mrb_alias_method

```c
MRB_API void mrb_alias_method(mrb_state *mrb, struct RClass *c, mrb_sym a, mrb_sym b);
```

メソッドのaliasを定義します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|c|`alias`を定義するクラス・モジュールを渡します。||
|a|新しくaliasとして定義するメソッド名を指定します。||
|b|aliasを定義する既存のメソッド名を指定します。||

---

## mrb_method_search_vm

```c
MRB_API mrb_method_t mrb_method_search_vm(mrb_state *mrb, struct RClass **cp, mrb_sym mid);
```

メソッドを検索します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|cp|メソッドを検索する対象のクラスインスタンスを格納したポインタを渡します。<br/>メソッドが見つかった場合は実際にメソッドが定義されているクラスインスタンスに更新されます。||
|mid|検索するメソッド名のシンボル値を渡します。||

### 戻り値

メソッド情報 `mrb_method_t` が返されます。

---

## mrb_method_search

```c
MRB_API mrb_method_t mrb_method_search(mrb_state *mrb, struct RClass *c, mrb_sym mid);
```

メソッドを検索します。  
メソッドが未定義の場合は `NameError` がraiseされます。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|cp|メソッドを検索する対象のクラスインスタンスを渡します。||
|mid|検索するメソッド名のシンボル値を渡します。||

### 戻り値

メソッド情報 `mrb_method_t` が返されます。

---

## mrb_class_real

```c
MRB_API struct RClass* mrb_class_real(struct RClass* cl);
```

---

## mrbc_context_new

```c
MRB_API mrbc_context* mrbc_context_new(mrb_state *mrb);
```

コンパイラのコンテキストを生成します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

### 戻り値

コンパイラコンテキスト情報 `mrbc_context` のポインタが返されます。

---

## mrbc_context_free

```c
MRB_API void mrbc_context_free(mrb_state *mrb, mrbc_context *cxt);
```

コンパイラのコンテキストを解放します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|cxt|コンパイラコンテキスト情報 `mrbc_context` のポインタを渡します。||

---

## mrbc_filename

```c
MRB_API const char *mrbc_filename(mrb_state *mrb, mrbc_context *c, const char *s);
```

コンパイル対象のファイル名を指定します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||
|c|コンパイラコンテキスト情報 `mrbc_context` のポインタを渡します。||
|s|コンパイル対象のファイル名のポインタを渡します。||

### 戻り値

ファイル名のポインタを返します。

---

## mrbc_partial_hook

```c
MRB_API void mrbc_partial_hook(mrb_state *mrb, mrbc_context *c, int (*partial_hook)(struct mrb_parser_state*), void*data);
```



## mrb_parser_new

```c
MRB_API struct mrb_parser_state* mrb_parser_new(mrb_state *mrb);
```

mrubyパーサを生成します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|mrb|mruby VM情報`mrb_state`のポインタを渡します。||

### 戻り値

パーサ状態 `mrb_parser_state` のポインタを返します。

---

## mrb_parser_free

```c
MRB_API void mrb_parser_free(struct mrb_parser_state *p);
```

mrubyパーサを解放します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|p|パーサ状態 `mrb_parser_state` のポインタを渡します。||

---

## mrb_parser_parse

```c
MRB_API void mrb_parser_parse(struct mrb_parser_state *p, mrbc_context *c);
```

Rubyスクリプトをパースします。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|p|パーサ状態 `mrb_parser_state` のポインタを渡します。||
|c|コンパイラコンテキスト情報 `mrbc_context` のポインタを渡します。||

---

## mrb_parser_set_filename

```c
MRB_API void mrb_parser_set_filename(struct mrb_parser_state *p, char const *f);
```

mrubyパーサにパース対象のファイル名を指定する。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|p|パーサ状態 `mrb_parser_state` のポインタを渡します。||
|f|パース対象のファイル名のポインタを渡します。||

---

## mrb_parser_get_filename

```c
MRB_API mrb_sym mrb_parser_get_filename(struct mrb_parser_state *p, uint16_t idx);
```

mrubyパーサからパース対象のファイル名を取得します。

### 引数

|引数|概要|備考|
|:--|:--|:--|
|p|パーサ状態 `mrb_parser_state` のポインタを渡します。||
|idx|ファイル名テーブルのインデックス番号を渡します。||

### 戻り値

ファイル名のシンボル値を返します。

---

## mrb_parse_file

```c
MRB_API struct mrb_parser_state* mrb_parse_file(mrb_state*,FILE*,mrbc_context*);
```

mrubyスクリプトファイルをパースする。

## mrb_parse_string

```c
MRB_API struct mrb_parser_state* mrb_parse_string(mrb_state*,const char*,mrbc_context*);
```

mrubyスクリプト文字列をパースする。

## mrb_parse_nstring

```c
MRB_API struct mrb_parser_state* mrb_parse_nstring(mrb_state*,const char*,size_t,mrbc_context*);
```

mrubyスクリプト文字列をパースする。

## mrb_generate_code

```c
MRB_API struct RProc* mrb_generate_code(mrb_state*, struct mrb_parser_state*);
```

mrubyパーサのパース結果からバイトコードを生成する。

## mrb_load_exec

```c
MRB_API mrb_value mrb_load_exec(mrb_state *mrb, struct mrb_parser_state *p, mrbc_context *c);
```



## mrb_load_file

```c
MRB_API mrb_value mrb_load_file(mrb_state*,FILE*);
```

mrubyスクリプトファイルを実行する。

## mrb_load_file_cxt

```c
MRB_API mrb_value mrb_load_file_cxt(mrb_state*,FILE*, mrbc_context *cxt);
```

mrubyスクリプトファイルを実行する。

## mrb_load_string

```c
MRB_API mrb_value mrb_load_string(mrb_state *mrb, const char *s);
```

mrubyスクリプト文字列を実行する。

## mrb_load_nstring

```c
MRB_API mrb_value mrb_load_nstring(mrb_state *mrb, const char *s, size_t len);
```

mrubyスクリプト文字列を実行する。

## mrb_load_string_cxt

```c
MRB_API mrb_value mrb_load_string_cxt(mrb_state *mrb, const char *s, mrbc_context *cxt);
```

mrubyスクリプト文字列を実行する。

## mrb_load_nstring_cxt

```c
MRB_API mrb_value mrb_load_nstring_cxt(mrb_state *mrb, const char *s, size_t len, mrbc_context *cxt);
```

mrubyスクリプト文字列を実行する。

## mrb_data_object_alloc

```c
MRB_API struct RData *mrb_data_object_alloc(mrb_state *mrb, struct RClass* klass, void *datap, const mrb_data_type *type);
```

RDataオブジェクトを生成する。

## mrb_data_check_type

```c
MRB_API void mrb_data_check_type(mrb_state *mrb, mrb_value, const mrb_data_type*);
```

RDataオブジェクトの型をチェックする。

## mrb_data_get_ptr

```c
MRB_API void *mrb_data_get_ptr(mrb_state *mrb, mrb_value, const mrb_data_type*);
```

RDataオブジェクトの保持データを取得する。

## mrb_data_check_get_ptr

```c
MRB_API void *mrb_data_check_get_ptr(mrb_state *mrb, mrb_value, const mrb_data_type*);
```



## mrb_debug_get_filename

```c
MRB_API const char *mrb_debug_get_filename(mrb_state *mrb, mrb_irep *irep, ptrdiff_t pc);
```

デバッグ実行中のソースファイル名を取得する。

## mrb_debug_get_line

```c
MRB_API int32_t mrb_debug_get_line(mrb_state *mrb, mrb_irep *irep, ptrdiff_t pc);
```

デバッグ実行中のソースファイルの行番号を取得する。

## mrb_debug_info_alloc

```c
MRB_API mrb_irep_debug_info *mrb_debug_info_alloc(mrb_state *mrb, mrb_irep *irep);
```

デバッグ情報を生成する。

## mrb_debug_info_append_file

```c
MRB_API mrb_irep_debug_info_file *mrb_debug_info_append_file(
```



## mrb_debug_info_free

```c
MRB_API void mrb_debug_info_free(mrb_state *mrb, mrb_irep_debug_info *d);
```

デバッグ情報を解放する。

## mrb_load_irep_file

```c
MRB_API mrb_value mrb_load_irep_file(mrb_state*,FILE*);
```



## mrb_load_irep_file_cxt

```c
MRB_API mrb_value mrb_load_irep_file_cxt(mrb_state*, FILE*, mrbc_context*);
```

mrubyバイナリファイルを実行する。

## mrb_read_irep

```c
MRB_API mrb_irep *mrb_read_irep(mrb_state*, const uint8_t*);
```

mrubyバイナリファイルを実行する。

## mrb_read_irep_buf

```c
MRB_API mrb_irep *mrb_read_irep_buf(mrb_state*, const void*, size_t);
```

mrubyバイトコードを実行する。

## mrb_sys_fail

```c
MRB_API void mrb_sys_fail(mrb_state *mrb, const char *mesg);
```



## mrb_exc_new_str

```c
MRB_API mrb_value mrb_exc_new_str(mrb_state *mrb, struct RClass* c, mrb_value str);
```



## mrb_make_exception

```c
MRB_API mrb_value mrb_make_exception(mrb_state *mrb, mrb_int argc, const mrb_value *argv);
```



## mrb_exc_backtrace

```c
MRB_API mrb_value mrb_exc_backtrace(mrb_state *mrb, mrb_value exc);
```



## mrb_get_backtrace

```c
MRB_API mrb_value mrb_get_backtrace(mrb_state *mrb);
```



## mrb_no_method_error

```c
MRB_API mrb_noreturn void mrb_no_method_error(mrb_state *mrb, mrb_sym id, mrb_value args, const char *fmt, ...);
```



## mrb_f_raise

```c
MRB_API mrb_value mrb_f_raise(mrb_state*, mrb_value);
```



## mrb_protect

```c
MRB_API mrb_value mrb_protect(mrb_state *mrb, mrb_func_t body, mrb_value data, mrb_bool *state);
```



## mrb_ensure

```c
MRB_API mrb_value mrb_ensure(mrb_state *mrb, mrb_func_t body, mrb_value b_data,
```



## mrb_rescue

```c
MRB_API mrb_value mrb_rescue(mrb_state *mrb, mrb_func_t body, mrb_value b_data,
```



## mrb_rescue_exceptions

```c
MRB_API mrb_value mrb_rescue_exceptions(mrb_state *mrb, mrb_func_t body, mrb_value b_data,
```



## mrb_free_context

```c
MRB_API void mrb_free_context(struct mrb_state *mrb, struct mrb_context *c);
```



## mrb_bool

```c
MRB_API mrb_bool
```



## mrb_hash_new_capa

```c
MRB_API mrb_value mrb_hash_new_capa(mrb_state *mrb, mrb_int capa);
```

Hashオブジェクトを生成する。（サイズ指定）

## mrb_ensure_hash_type

```c
MRB_API mrb_value mrb_ensure_hash_type(mrb_state *mrb, mrb_value hash);
```



## mrb_check_hash_type

```c
MRB_API mrb_value mrb_check_hash_type(mrb_state *mrb, mrb_value hash);
```



## mrb_hash_new

```c
MRB_API mrb_value mrb_hash_new(mrb_state *mrb);
```

Hashオブジェクトを生成する。

## mrb_hash_set

```c
MRB_API void mrb_hash_set(mrb_state *mrb, mrb_value hash, mrb_value key, mrb_value val);
```

Hashオブジェクトに要素を追加する。

## mrb_hash_get

```c
MRB_API mrb_value mrb_hash_get(mrb_state *mrb, mrb_value hash, mrb_value key);
```

Hashオブジェクトから指定キーの要素を取得する。

## mrb_hash_fetch

```c
MRB_API mrb_value mrb_hash_fetch(mrb_state *mrb, mrb_value hash, mrb_value key, mrb_value def);
```

Hashオブジェクトから指定キーの要素を取得する。

## mrb_hash_delete_key

```c
MRB_API mrb_value mrb_hash_delete_key(mrb_state *mrb, mrb_value hash, mrb_value key);
```

Hashオブジェクトの指定キーの要素を削除する。

## mrb_hash_keys

```c
MRB_API mrb_value mrb_hash_keys(mrb_state *mrb, mrb_value hash);
```

Hashオブジェクトに登録されているキーの一覧を取得する。

## mrb_hash_key_p

```c
MRB_API mrb_bool mrb_hash_key_p(mrb_state *mrb, mrb_value hash, mrb_value key);
```

Hashオブジェクトのキーとして登録されているかどうかをチェックする。

## mrb_hash_empty_p

```c
MRB_API mrb_bool mrb_hash_empty_p(mrb_state *mrb, mrb_value self);
```

Hashオブジェクトが空かどうかをチェックする。

## mrb_hash_values

```c
MRB_API mrb_value mrb_hash_values(mrb_state *mrb, mrb_value hash);
```

Hashオブジェクトに登録されている要素の一覧を取得する。

## mrb_hash_clear

```c
MRB_API mrb_value mrb_hash_clear(mrb_state *mrb, mrb_value hash);
```

Hashオブジェクトを空にする。

## mrb_hash_size

```c
MRB_API mrb_int mrb_hash_size(mrb_state *mrb, mrb_value hash);
```

Hashオブジェクトに登録されているキーの数を取得する。

## mrb_hash_dup

```c
MRB_API mrb_value mrb_hash_dup(mrb_state *mrb, mrb_value hash);
```

Hashオブジェクトのクローンを生成する。

## mrb_hash_merge

```c
MRB_API void mrb_hash_merge(mrb_state *mrb, mrb_value hash1, mrb_value hash2);
```

2つのHasnオブジェクトを連結する。

## mrb_hash_foreach

```c
MRB_API void mrb_hash_foreach(mrb_state *mrb, struct RHash *hash, mrb_hash_foreach_func *func, void *p);
```

Hashオブジェクトの各キー・要素毎にメソッドを呼び出す。

## mrb_add_irep

```c
MRB_API mrb_irep *mrb_add_irep(mrb_state *mrb);
```



## mrb_load_irep

```c
MRB_API mrb_value mrb_load_irep(mrb_state*, const uint8_t*);
```

mrubyバイナリデータを読み込む。

## mrb_load_irep_buf

```c
MRB_API mrb_value mrb_load_irep_buf(mrb_state*, const void*, size_t);
```

mrubyバイナリデータを読み込む。

## mrb_load_irep_cxt

```c
MRB_API mrb_value mrb_load_irep_cxt(mrb_state*, const uint8_t*, mrbc_context*);
```

mrubyバイナリデータを読み込む。

## mrb_load_irep_buf_cxt

```c
MRB_API mrb_value mrb_load_irep_buf_cxt(mrb_state*, const void*, size_t, mrbc_context*);
```

mrubyバイナリデータを読み込む。

## mrb_flo_to_fixnum

```c
MRB_API mrb_value mrb_flo_to_fixnum(mrb_state *mrb, mrb_value val);
```

FloatをFixnumに変換する。

## mrb_fixnum_to_str

```c
MRB_API mrb_value mrb_fixnum_to_str(mrb_state *mrb, mrb_value x, mrb_int base);
```

FixnumをStringに変換する。

## mrb_float_to_str

```c
MRB_API mrb_value mrb_float_to_str(mrb_state *mrb, mrb_value x, const char *fmt);
```

FloatをStringに変換する。

## mrb_to_flo

```c
MRB_API mrb_float mrb_to_flo(mrb_state *mrb, mrb_value x);
```

オブジェクトをFloatに変換する。

## mrb_int_value

```c
MRB_API mrb_value mrb_int_value(mrb_state *mrb, mrb_float f);
```

浮動小数点値を整数に変換する。

## mrb_num_plus

```c
MRB_API mrb_value mrb_num_plus(mrb_state *mrb, mrb_value x, mrb_value y);
```



## mrb_num_minus

```c
MRB_API mrb_value mrb_num_minus(mrb_state *mrb, mrb_value x, mrb_value y);
```



## mrb_num_mul

```c
MRB_API mrb_value mrb_num_mul(mrb_state *mrb, mrb_value x, mrb_value y);
```

2つの値の積を取得する。

## mrb_proc_new_cfunc

```c
MRB_API struct RProc *mrb_proc_new_cfunc(mrb_state*, mrb_func_t);
```

C関数からProcオブジェクトを生成する。

## mrb_closure_new_cfunc

```c
MRB_API struct RProc *mrb_closure_new_cfunc(mrb_state *mrb, mrb_func_t func, int nlocals);
```

C関数からクロージャを生成する。

## mrb_proc_new_cfunc_with_env

```c
MRB_API struct RProc *mrb_proc_new_cfunc_with_env(mrb_state *mrb, mrb_func_t func, mrb_int argc, const mrb_value *argv);
```

C関数からProcオブジェクトを生成する。

## mrb_proc_cfunc_env_get

```c
MRB_API mrb_value mrb_proc_cfunc_env_get(mrb_state *mrb, mrb_int idx);
```



## mrb_range_ptr

```c
MRB_API struct RRange* mrb_range_ptr(mrb_state *mrb, mrb_value range);
```

RangeオブジェクトからRRange情報を取得する。

## mrb_range_new

```c
MRB_API mrb_value mrb_range_new(mrb_state *mrb, mrb_value start, mrb_value end, mrb_bool exclude);
```

Rangeオブジェクトを生成する。

## mrb_range_beg_len

```c
MRB_API enum mrb_range_beg_len mrb_range_beg_len(mrb_state *mrb, mrb_value range, mrb_int *begp, mrb_int *lenp, mrb_int len, mrb_bool trunc);
```



## mrb_str_strlen

```c
MRB_API mrb_int mrb_str_strlen(mrb_state*, struct RString*);
```

RString構造体に格納されている文字列の長さを取得する。

## mrb_str_modify

```c
MRB_API void mrb_str_modify(mrb_state *mrb, struct RString *s);
```



## mrb_str_modify_keep_ascii

```c
MRB_API void mrb_str_modify_keep_ascii(mrb_state *mrb, struct RString *s);
```



## mrb_str_index

```c
MRB_API mrb_int mrb_str_index(mrb_state *mrb, mrb_value str, const char *p, mrb_int len, mrb_int offset);
```

Stringオブジェクト内の指定文字列が含まれる位置を取得する。

## mrb_str_concat

```c
MRB_API void mrb_str_concat(mrb_state *mrb, mrb_value self, mrb_value other);
```

Stringオブジェクトに文字列を連結する。

## mrb_str_plus

```c
MRB_API mrb_value mrb_str_plus(mrb_state *mrb, mrb_value a, mrb_value b);
```

2つの文字列を連結したStringオブジェクトを取得する。

## mrb_ptr_to_str

```c
MRB_API mrb_value mrb_ptr_to_str(mrb_state *mrb, void *p);
```

Cのポインタで指定した内容をStringオブジェクトに変換する。

## mrb_obj_as_string

```c
MRB_API mrb_value mrb_obj_as_string(mrb_state *mrb, mrb_value obj);
```

オブジェクトを文字列に変換する。

## mrb_str_resize

```c
MRB_API mrb_value mrb_str_resize(mrb_state *mrb, mrb_value str, mrb_int len);
```

Stringオブジェクトのサイズを変更する。

## mrb_str_substr

```c
MRB_API mrb_value mrb_str_substr(mrb_state *mrb, mrb_value str, mrb_int beg, mrb_int len);
```

Stringオブジェクトの一部を切り取る。

## mrb_ensure_string_type

```c
MRB_API mrb_value mrb_ensure_string_type(mrb_state *mrb, mrb_value str);
```



## mrb_check_string_type

```c
MRB_API mrb_value mrb_check_string_type(mrb_state *mrb, mrb_value str);
```



## mrb_string_type

```c
MRB_API mrb_value mrb_string_type(mrb_state *mrb, mrb_value str);
```



## mrb_str_new_capa

```c
MRB_API mrb_value mrb_str_new_capa(mrb_state *mrb, size_t capa);
```

Stringオブジェクトを生成する。（サイズ指定）

## mrb_str_buf_new

```c
MRB_API mrb_value mrb_str_buf_new(mrb_state *mrb, size_t capa);
```

Stringオブジェクトを生成する。（サイズ指定）

## mrb_string_cstr

```c
MRB_API const char *mrb_string_cstr(mrb_state *mrb, mrb_value str);
```

StringオブジェクトをC文字列に変換する。

## mrb_string_value_cstr

```c
MRB_API const char *mrb_string_value_cstr(mrb_state *mrb, mrb_value *str);
```

StringオブジェクトをC文字列に変換する。

## mrb_string_value_ptr

```c
MRB_API const char *mrb_string_value_ptr(mrb_state *mrb, mrb_value str);
```

Stringオブジェクトの文字列のポインタを返す。

## mrb_string_value_len

```c
MRB_API mrb_int mrb_string_value_len(mrb_state *mrb, mrb_value str);
```

Stringオブジェクトの文字長を取得する。

## mrb_str_dup

```c
MRB_API mrb_value mrb_str_dup(mrb_state *mrb, mrb_value str);
```

Stringオブジェクトを複製する。

## mrb_str_intern

```c
MRB_API mrb_value mrb_str_intern(mrb_state *mrb, mrb_value self);
```

Stringオブジェクトからシンボルを生成する。

## mrb_str_to_inum

```c
MRB_API mrb_value mrb_str_to_inum(mrb_state *mrb, mrb_value str, mrb_int base, mrb_bool badcheck);
```



## mrb_cstr_to_inum

```c
MRB_API mrb_value mrb_cstr_to_inum(mrb_state *mrb, const char *s, mrb_int base, mrb_bool badcheck);
```



## mrb_str_to_dbl

```c
MRB_API double mrb_str_to_dbl(mrb_state *mrb, mrb_value str, mrb_bool badcheck);
```



## mrb_cstr_to_dbl

```c
MRB_API double mrb_cstr_to_dbl(mrb_state *mrb, const char *s, mrb_bool badcheck);
```



## mrb_str_to_str

```c
MRB_API mrb_value mrb_str_to_str(mrb_state *mrb, mrb_value str);
```

オブジェクトをStringオブジェクトに変換する。

## mrb_str_equal

```c
MRB_API mrb_bool mrb_str_equal(mrb_state *mrb, mrb_value str1, mrb_value str2);
```

2つのStringオブジェクトが同じかどうかを比較する。

## mrb_str_cat

```c
MRB_API mrb_value mrb_str_cat(mrb_state *mrb, mrb_value str, const char *ptr, size_t len);
```

StringオブジェクトとC文字列を連結する。

## mrb_str_cat_cstr

```c
MRB_API mrb_value mrb_str_cat_cstr(mrb_state *mrb, mrb_value str, const char *ptr);
```

StringオブジェクトとC文字列を連結する。

## mrb_str_cat_str

```c
MRB_API mrb_value mrb_str_cat_str(mrb_state *mrb, mrb_value str, mrb_value str2);
```

2つのStringオブジェクトを連結する。

## mrb_str_append

```c
MRB_API mrb_value mrb_str_append(mrb_state *mrb, mrb_value str, mrb_value str2);
```

Stringオブジェクトの後ろにStringオブジェクトを追加する。

## mrb_str_cmp

```c
MRB_API int mrb_str_cmp(mrb_state *mrb, mrb_value str1, mrb_value str2);
```

2つのStringオブジェクトを比較する。

## mrb_str_to_cstr

```c
MRB_API char *mrb_str_to_cstr(mrb_state *mrb, mrb_value str);
```

StringオブジェクトからC文字列を生成する。

## mrb_float_read

```c
MRB_API double mrb_float_read(const char*, char**);
```



## mrb_msvc_vsnprintf

```c
MRB_API int mrb_msvc_vsnprintf(char *s, size_t n, const char *format, va_list arg);
```



## mrb_msvc_snprintf

```c
MRB_API int mrb_msvc_snprintf(char *s, size_t n, const char *format, ...);
```



## mrb_const_get

```c
MRB_API mrb_value mrb_const_get(mrb_state*, mrb_value, mrb_sym);
```

定数を取得する。

## mrb_const_set

```c
MRB_API void mrb_const_set(mrb_state*, mrb_value, mrb_sym, mrb_value);
```

定数を設定する。

## mrb_const_defined

```c
MRB_API mrb_bool mrb_const_defined(mrb_state*, mrb_value, mrb_sym);
```

定数が定義されているかどうかをチェックする。

## mrb_const_remove

```c
MRB_API void mrb_const_remove(mrb_state*, mrb_value, mrb_sym);
```

定数の定義を削除する。

## mrb_iv_name_sym_p

```c
MRB_API mrb_bool mrb_iv_name_sym_p(mrb_state *mrb, mrb_sym sym);
```



## mrb_iv_name_sym_check

```c
MRB_API void mrb_iv_name_sym_check(mrb_state *mrb, mrb_sym sym);
```



## mrb_obj_iv_get

```c
MRB_API mrb_value mrb_obj_iv_get(mrb_state *mrb, struct RObject *obj, mrb_sym sym);
```

オブジェクトのインスタンス変数を取得する。

## mrb_obj_iv_set

```c
MRB_API void mrb_obj_iv_set(mrb_state *mrb, struct RObject *obj, mrb_sym sym, mrb_value v);
```

オブジェクトのインスタンス変数を設定する。

## mrb_obj_iv_defined

```c
MRB_API mrb_bool mrb_obj_iv_defined(mrb_state *mrb, struct RObject *obj, mrb_sym sym);
```

オブジェクトにインスタンス変数が定義されているかどうかをチェックする。

## mrb_iv_get

```c
MRB_API mrb_value mrb_iv_get(mrb_state *mrb, mrb_value obj, mrb_sym sym);
```

オブジェクトのインスタンス変数を取得する。

## mrb_iv_set

```c
MRB_API void mrb_iv_set(mrb_state *mrb, mrb_value obj, mrb_sym sym, mrb_value v);
```

オブジェクトのインスタンス変数を設定する。

## mrb_iv_defined

```c
MRB_API mrb_bool mrb_iv_defined(mrb_state*, mrb_value, mrb_sym);
```

オブジェクトにインスタンス変数が定義されているかどうかをチェックする。

## mrb_iv_remove

```c
MRB_API mrb_value mrb_iv_remove(mrb_state *mrb, mrb_value obj, mrb_sym sym);
```

オブジェクトのインスタンス変数を削除する。

## mrb_iv_copy

```c
MRB_API void mrb_iv_copy(mrb_state *mrb, mrb_value dst, mrb_value src);
```

オブジェクトのインスタンス変数を複製する。

## mrb_const_defined_at

```c
MRB_API mrb_bool mrb_const_defined_at(mrb_state *mrb, mrb_value mod, mrb_sym id);
```

モジュールに定数が定義されているかどうかをチェックする。

## mrb_gv_get

```c
MRB_API mrb_value mrb_gv_get(mrb_state *mrb, mrb_sym sym);
```

グローバル変数を取得する。

## mrb_gv_set

```c
MRB_API void mrb_gv_set(mrb_state *mrb, mrb_sym sym, mrb_value val);
```

グローバル変数を設定する。

## mrb_gv_remove

```c
MRB_API void mrb_gv_remove(mrb_state *mrb, mrb_sym sym);
```

グローバル変数を削除する。

## mrb_cv_get

```c
MRB_API mrb_value mrb_cv_get(mrb_state *mrb, mrb_value mod, mrb_sym sym);
```

クラス変数を取得する。

## mrb_mod_cv_set

```c
MRB_API void mrb_mod_cv_set(mrb_state *mrb, struct RClass * c, mrb_sym sym, mrb_value v);
```

モジュール変数を設定する。

## mrb_cv_set

```c
MRB_API void mrb_cv_set(mrb_state *mrb, mrb_value mod, mrb_sym sym, mrb_value v);
```

クラス変数を設定する。

## mrb_cv_defined

```c
MRB_API mrb_bool mrb_cv_defined(mrb_state *mrb, mrb_value mod, mrb_sym sym);
```

クラス変数が定義されているかどうかをチェックする。

## mrb_iv_foreach

```c
MRB_API void mrb_iv_foreach(mrb_state *mrb, mrb_value obj, mrb_iv_foreach_func *func, void *p);
```

定義されているインスタンス変数毎に関数を呼び出す。

## mrb_time_at

```c
MRB_API mrb_value mrb_time_at(mrb_state *mrb, time_t sec, time_t usec, mrb_timezone timezone);
```

時刻を設定する。
