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
|[mrb_class_defined_under()](#mrb_class_defined_under)|派生クラスが定義されているかどうかをチェックする。||
|[mrb_class_get_under()](#mrb_class_get_under)|派生クラスを取得する。||
|[mrb_module_get()](#mrb_module_get)|定義済みのモジュールを取得する。||
|[mrb_module_get_under()](#mrb_module_get_under)|定義済みの派生モジュールを取得する。||
|[mrb_notimplement()](#mrb_notimplement)|NotImprementedErrorをraiseする。||
|[mrb_notimplement_m()](#mrb_notimplement_m)|未実装のメソッドを置き換える。||
|[mrb_obj_dup()](#mrb_obj_dup)|オブジェクトを複製する。||
|[mrb_obj_respond_to()](#mrb_obj_respond_to)|クラスにメソッドが定義されているかどうかをチェックします。||
|[mrb_define_class_under()](#mrb_define_class_under)|派生クラスを定義する。||
|[mrb_define_module_under()](#mrb_define_module_under)|派生モジュールを定義する。||
|[mrb_get_args()](#mrb_get_args)|メソッドに与えられた引数を取得する。||
|[mrb_get_argc()](#mrb_get_argc)|メソッドに与えられた引数の数を取得する。||
|[mrb_get_argv()](#mrb_get_argv)|メソッドに与えられた引数を取得する。||
|[mrb_funcall()](#mrb_funcall)|既存のRuby関数を呼び出す。||
|[mrb_funcall_argv()](#mrb_funcall_argv)|既存のRuby関数を呼び出す。||
|[mrb_funcall_with_block()](#mrb_funcall_with_block)|既存のRuby関数をブロック付きで呼び出す。||
|[mrb_intern_cstr()](#mrb_intern_cstr)|C文字列からシンボルを生成する。||
|[mrb_intern()](#mrb_intern)|C文字列からシンボルを生成する。||
|[mrb_intern_static()](#mrb_intern_static)|C文字列からシンボルを生成する。||
|[mrb_intern_str()](#mrb_intern_str)|Stringからシンボルを生成する。||
|[mrb_check_intern_cstr()](#mrb_check_intern_cstr)|||
|[mrb_check_intern()](#mrb_check_intern)|||
|[mrb_check_intern_str()](#mrb_check_intern_str)|||
|[mrb_sym_name()](#mrb_sym_name)|シンボル名を取得する。||
|[mrb_sym_name_len()](#mrb_sym_name_len)|シンボル名の長さを取得する。||
|[mrb_sym_dump()](#mrb_sym_dump)|||
|[mrb_sym_str()](#mrb_sym_str)|シンボル名をStringで取得する。||
|[mrb_malloc()](#mrb_malloc)|メモリを確保する。（例外あり）||
|[mrb_calloc()](#mrb_calloc)|メモリを確保する。（例外あり、初期化あり）||
|[mrb_realloc()](#mrb_realloc)|確保したメモリサイズを変更する。（例外あり）||
|[mrb_realloc_simple()](#mrb_realloc_simple)|確保したメモリサイズを変更する。（例外なし）||
|[mrb_malloc_simple()](#mrb_malloc_simple)|確保したメモリサイズを変更する。（例外なし）||
|[mrb_obj_alloc()](#mrb_obj_alloc)|オブジェクトのメモリ領域を確保する。||
|[mrb_free()](#mrb_free)|メモリを解放する。||
|[mrb_str_new()](#mrb_str_new)|Stringオブジェクトを生成する。||
|[mrb_str_new_cstr()](#mrb_str_new_cstr)|Stringオブジェクトを生成する。||
|[mrb_str_new_static()](#mrb_str_new_static)|Stringオブジェクトを生成する。||
|[mrb_obj_freeze()](#mrb_obj_freeze)|オブジェクトをfreezeする。||
|[mrb_utf8_from_locale()](#mrb_utf8_from_locale)||_WIN32用|
|[mrb_locale_from_utf8()](#mrb_locale_from_utf8)||_WIN32用|
|[mrb_open()](#mrb_open)|mrb_stateを生成する。||
|[mrb_open_allocf()](#mrb_open_allocf)|mrb_stateを生成する。（メモリ管理指定）||
|[mrb_open_core()](#mrb_open_core)|mrubyコアのみのmrb_stateを生成する。||
|[mrb_close()](#mrb_close)|mrb_stateをクローズし、メモリを解放する。||
|[mrb_default_allocf()](#mrb_default_allocf)|mrubyのデフォルトのメモリ管理||
|[mrb_top_self()](#mrb_top_self)|||
|[mrb_run()](#mrb_run)|Procオブジェクトを実行する。||
|[mrb_top_run()](#mrb_top_run)|||
|[mrb_vm_run()](#mrb_vm_run)|||
|[mrb_vm_exec()](#mrb_vm_exec)|||
|[mrb_p()](#mrb_p)|Kernel#pメソッドを実行する。||
|[mrb_obj_id()](#mrb_obj_id)|オブジェクトIDを取得する。||
|[mrb_obj_to_sym()](#mrb_obj_to_sym)|オブジェクトをシンボル化する。||
|[mrb_obj_eq()](#mrb_obj_eq)|2つのオブジェクトを比較する。||
|[mrb_obj_equal()](#mrb_obj_equal)|2つのオブジェクトを比較する。||
|[mrb_equal()](#mrb_equal)|2つのオブジェクトを比較する。||
|[mrb_convert_to_integer()](#mrb_convert_to_integer)|オブジェクトを整数値に変換する。||
|[mrb_Integer()](#mrb_Integer)|オブジェクトを整数値に変換する。||
|[mrb_Float()](#mrb_Float)|オブジェクトを浮動小数点値に変換する。||
|[mrb_inspect()](#mrb_inspect)|Object#inspectを呼び出す。||
|[mrb_eql()](#mrb_eql)|2つのオブジェクトを比較する。||
|[mrb_cmp()](#mrb_cmp)|2つのオブジェクトを比較する。||
|[mrb_garbage_collect()](#mrb_garbage_collect)|ガーベッジコレクションを実行する。||
|[mrb_full_gc()](#mrb_full_gc)|ガーベッジコレクション（フルGC）を実行する。||
|[mrb_incremental_gc()](#mrb_incremental_gc)|ガーベッジコレクション（インクリメンタルGC）を実行する。||
|[mrb_gc_mark()](#mrb_gc_mark)|GCのマークフェーズを実行する。||
|[mrb_field_write_barrier()](#mrb_field_write_barrier)|||
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
|[mrb_warn()](#mrb_warn)|||
|[mrb_bug()](#mrb_bug)|||
|[mrb_print_backtrace()](#mrb_print_backtrace)|Back traceを表示する。||
|[mrb_print_error()](#mrb_print_error)|発生した例外の内容を表示する。||
|[mrb_vformat()](#mrb_vformat)|||
|[mrb_yield()](#mrb_yield)|||
|[mrb_yield_argv()](#mrb_yield_argv)|||
|[mrb_yield_with_class()](#mrb_yield_with_class)|||
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
|[mrb_respond_to()](#mrb_respond_to)|||
|[mrb_obj_is_instance_of()](#mrb_obj_is_instance_of)|||
|[mrb_func_basic_p()](#mrb_func_basic_p)|||
|[mrb_fiber_resume()](#mrb_fiber_resume)|Fiberをresumeする。|mruby-fiberに実装されている。|
|[mrb_fiber_yield()](#mrb_fiber_yield)|Fiberをyieldする。|mruby-fiberに実装されている。|
|[mrb_fiber_alive_p()](#mrb_fiber_alive_p)|Fiberが生存しているかを確認する。|mruby-fiberに実装されている。|
|[mrb_stack_extend()](#mrb_stack_extend)|||
|[mrb_pool_open()](#mrb_pool_open)|プールメモリ管理をオープンする。||
|[mrb_pool_close()](#mrb_pool_close)|プールメモリ管理をクローズする。||
|[mrb_pool_alloc()](#mrb_pool_alloc)|プールメモリの領域を確保する。||
|[mrb_pool_realloc()](#mrb_pool_realloc)|プールメモリの領域のサイズを変更する。||
|[mrb_pool_can_realloc()](#mrb_pool_can_realloc)|プールメモリの領域のサイズ変更が可能かをチェックする。||
|[mrb_alloca()](#mrb_alloca)|メモリを確保する。||
|[mrb_state_atexit()](#mrb_state_atexit)|||
|[mrb_show_version()](#mrb_show_version)|mrubyのバージョン情報を表示する。||
|[mrb_show_copyright()](#mrb_show_copyright)|mrubyのCopyright情報を表示する。||
|[mrb_format()](#mrb_format)|||
|[mrb_ary_modify()](#mrb_ary_modify)|||
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
|[mrb_ensure_array_type()](#mrb_ensure_array_type)|||
|[mrb_check_array_type()](#mrb_check_array_type)|||
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

クラスを定義する。

## mrb_define_module

```c
MRB_API struct RClass *mrb_define_module(mrb_state *mrb, const char *name);
```

モジュールを定義する。

## mrb_singleton_class

```c
MRB_API mrb_value mrb_singleton_class(mrb_state *mrb, mrb_value val);
```

レシーバの特異クラスを返します。

## mrb_include_module

```c
MRB_API void mrb_include_module(mrb_state *mrb, struct RClass *cla, struct RClass *included);
```

クラスまたはモジュールにモジュールをincludeする。

## mrb_prepend_module

```c
MRB_API void mrb_prepend_module(mrb_state *mrb, struct RClass *cla, struct RClass *prepended);
```

クラスまたはモジュールにモジュールをprependする。

## mrb_define_method

```c
MRB_API void mrb_define_method(mrb_state *mrb, struct RClass *cla, const char *name, mrb_func_t func, mrb_aspec aspec);
```

メソッドを定義する。

## mrb_define_class_method

```c
MRB_API void mrb_define_class_method(mrb_state *mrb, struct RClass *cla, const char *name, mrb_func_t fun, mrb_aspec aspec);
```

クラスメソッドを定義する。

## mrb_define_singleton_method

```c
MRB_API void mrb_define_singleton_method(mrb_state *mrb, struct RObject *cla, const char *name, mrb_func_t fun, mrb_aspec aspec);
```

特異メソッドを定義する。

## mrb_define_module_function

```c
MRB_API void mrb_define_module_function(mrb_state *mrb, struct RClass *cla, const char *name, mrb_func_t fun, mrb_aspec aspec);
```

モジュール関数を定義する。

## mrb_define_const

```c
MRB_API void mrb_define_const(mrb_state* mrb, struct RClass* cla, const char *name, mrb_value val);
```

定数を定義する。

## mrb_undef_method

```c
MRB_API void mrb_undef_method(mrb_state *mrb, struct RClass *cla, const char *name);
```

メソッドの定義を削除する。

## mrb_undef_method_id

```c
MRB_API void mrb_undef_method_id(mrb_state*, struct RClass*, mrb_sym);
```

メソッドの定義を削除する。（シンボル指定）

## mrb_undef_class_method

```c
MRB_API void mrb_undef_class_method(mrb_state *mrb, struct RClass *cls, const char *name);
```

クラスメソッドの定義を削除する。

## mrb_obj_new

```c
MRB_API mrb_value mrb_obj_new(mrb_state *mrb, struct RClass *c, mrb_int argc, const mrb_value *argv);
```

C定義のクラスのインスタンスを生成する。

## mrb_class_new

```c
MRB_API struct RClass * mrb_class_new(mrb_state *mrb, struct RClass *super);
```

Classクラスのインスタンスを生成する。

## mrb_module_new

```c
MRB_API struct RClass * mrb_module_new(mrb_state *mrb);
```

Moduleモジュールを生成します。

## mrb_class_defined

```c
MRB_API mrb_bool mrb_class_defined(mrb_state *mrb, const char *name);
```

クラスが定義されているかどうかをチェックする。

## mrb_class_get

```c
MRB_API struct RClass * mrb_class_get(mrb_state *mrb, const char *name);
```

定義済みのクラスを取得する。

## mrb_exc_get

```c
MRB_API struct RClass * mrb_exc_get(mrb_state *mrb, const char *name);
```

例外クラスを取得する。

## mrb_class_defined_under

```c
MRB_API mrb_bool mrb_class_defined_under(mrb_state *mrb, struct RClass *outer, const char *name);
```

派生クラスが定義されているかどうかをチェックする。

## mrb_class_get_under

```c
MRB_API struct RClass * mrb_class_get_under(mrb_state *mrb, struct RClass *outer, const char *name);
```

派生クラスを取得する。

## mrb_module_get

```c
MRB_API struct RClass * mrb_module_get(mrb_state *mrb, const char *name);
```

定義済みのモジュールを取得する。

## mrb_module_get_under

```c
MRB_API struct RClass * mrb_module_get_under(mrb_state *mrb, struct RClass *outer, const char *name);
```

定義済みの派生モジュールを取得する。

## mrb_notimplement

```c
MRB_API void mrb_notimplement(mrb_state*);
```

NotImprementedErrorをraiseする。

## mrb_notimplement_m

```c
MRB_API mrb_value mrb_notimplement_m(mrb_state*, mrb_value);
```

未実装のメソッドを置き換える。

## mrb_obj_dup

```c
MRB_API mrb_value mrb_obj_dup(mrb_state *mrb, mrb_value obj);
```

オブジェクトを複製する。

## mrb_obj_respond_to

```c
MRB_API mrb_bool mrb_obj_respond_to(mrb_state *mrb, struct RClass* c, mrb_sym mid);
```

クラスにメソッドが定義されているかどうかをチェックします。

## mrb_define_class_under

```c
MRB_API struct RClass * mrb_define_class_under(mrb_state *mrb, struct RClass *outer, const char *name, struct RClass *super);
```

派生クラスを定義する。

## mrb_define_module_under

```c
MRB_API struct RClass * mrb_define_module_under(mrb_state *mrb, struct RClass *outer, const char *name);
```

派生モジュールを定義する。

## mrb_get_args

```c
MRB_API mrb_int mrb_get_args(mrb_state *mrb, mrb_args_format format, ...);
```

メソッドに与えられた引数を取得する。

## mrb_get_argc

```c
MRB_API mrb_int mrb_get_argc(mrb_state *mrb);
```

メソッドに与えられた引数の数を取得する。

## mrb_get_argv

```c
MRB_API mrb_value* mrb_get_argv(mrb_state *mrb);
```

メソッドに与えられた引数を取得する。

## mrb_funcall

```c
MRB_API mrb_value mrb_funcall(mrb_state *mrb, mrb_value val, const char *name, mrb_int argc, ...);
```

既存のRuby関数を呼び出す。

## mrb_funcall_argv

```c
MRB_API mrb_value mrb_funcall_argv(mrb_state *mrb, mrb_value val, mrb_sym name, mrb_int argc, const mrb_value *argv);
```

既存のRuby関数を呼び出す。

## mrb_funcall_with_block

```c
MRB_API mrb_value mrb_funcall_with_block(mrb_state *mrb, mrb_value val, mrb_sym name, mrb_int argc, const mrb_value *argv, mrb_value block);
```

既存のRuby関数をブロック付きで呼び出す。

## mrb_intern_cstr

```c
MRB_API mrb_sym mrb_intern_cstr(mrb_state *mrb, const char* str);
```

C文字列からシンボルを生成する。

## mrb_intern

```c
MRB_API mrb_sym mrb_intern(mrb_state*,const char*,size_t);
```

C文字列からシンボルを生成する。

## mrb_intern_static

```c
MRB_API mrb_sym mrb_intern_static(mrb_state*,const char*,size_t);
```

C文字列からシンボルを生成する。

## mrb_intern_str

```c
MRB_API mrb_sym mrb_intern_str(mrb_state*,mrb_value);
```

Stringからシンボルを生成する。

## mrb_check_intern_cstr

```c
MRB_API mrb_value mrb_check_intern_cstr(mrb_state*,const char*);
```



## mrb_check_intern

```c
MRB_API mrb_value mrb_check_intern(mrb_state*,const char*,size_t);
```



## mrb_check_intern_str

```c
MRB_API mrb_value mrb_check_intern_str(mrb_state*,mrb_value);
```



## mrb_sym_name

```c
MRB_API const char *mrb_sym_name(mrb_state*,mrb_sym);
```

シンボル名を取得する。

## mrb_sym_name_len

```c
MRB_API const char *mrb_sym_name_len(mrb_state*,mrb_sym,mrb_int*);
```

シンボル名の長さを取得する。

## mrb_sym_dump

```c
MRB_API const char *mrb_sym_dump(mrb_state*,mrb_sym);
```



## mrb_sym_str

```c
MRB_API mrb_value mrb_sym_str(mrb_state*,mrb_sym);
```

シンボル名をStringで取得する。

## mrb_malloc

```c
MRB_API void *mrb_malloc(mrb_state*, size_t);         /* raise RuntimeError if no mem */
```

メモリを確保する。（例外あり）

## mrb_calloc

```c
MRB_API void *mrb_calloc(mrb_state*, size_t, size_t); /* ditto */
```

メモリを確保する。（例外あり、初期化あり）

## mrb_realloc

```c
MRB_API void *mrb_realloc(mrb_state*, void*, size_t); /* ditto */
```

確保したメモリサイズを変更する。（例外あり）

## mrb_realloc_simple

```c
MRB_API void *mrb_realloc_simple(mrb_state*, void*, size_t); /* return NULL if no memory available */
```

確保したメモリサイズを変更する。（例外なし）

## mrb_malloc_simple

```c
MRB_API void *mrb_malloc_simple(mrb_state*, size_t);  /* return NULL if no memory available */
```

確保したメモリサイズを変更する。（例外なし）

## mrb_obj_alloc

```c
MRB_API struct RBasic *mrb_obj_alloc(mrb_state*, enum mrb_vtype, struct RClass*);
```

オブジェクトのメモリ領域を確保する。

## mrb_free

```c
MRB_API void mrb_free(mrb_state*, void*);
```

メモリを解放する。

## mrb_str_new

```c
MRB_API mrb_value mrb_str_new(mrb_state *mrb, const char *p, size_t len);
```

Stringオブジェクトを生成する。

## mrb_str_new_cstr

```c
MRB_API mrb_value mrb_str_new_cstr(mrb_state*, const char*);
```

Stringオブジェクトを生成する。

## mrb_str_new_static

```c
MRB_API mrb_value mrb_str_new_static(mrb_state *mrb, const char *p, size_t len);
```

Stringオブジェクトを生成する。

## mrb_obj_freeze

```c
MRB_API mrb_value mrb_obj_freeze(mrb_state*, mrb_value);
```

オブジェクトをfreezeする。

## mrb_utf8_from_locale

```c
MRB_API char* mrb_utf8_from_locale(const char *p, int len);
```



## mrb_locale_from_utf8

```c
MRB_API char* mrb_locale_from_utf8(const char *p, int len);
```



## mrb_open

```c
MRB_API mrb_state* mrb_open(void);
```

mrb_stateを生成する。

## mrb_open_allocf

```c
MRB_API mrb_state* mrb_open_allocf(mrb_allocf f, void *ud);
```

mrb_stateを生成する。（メモリ管理指定）

## mrb_open_core

```c
MRB_API mrb_state* mrb_open_core(mrb_allocf f, void *ud);
```

mrubyコアのみのmrb_stateを生成する。

## mrb_close

```c
MRB_API void mrb_close(mrb_state *mrb);
```

mrb_stateをクローズし、メモリを解放する。

## mrb_default_allocf

```c
MRB_API void* mrb_default_allocf(mrb_state*, void*, size_t, void*);
```

mrubyのデフォルトのメモリ管理

## mrb_top_self

```c
MRB_API mrb_value mrb_top_self(mrb_state *mrb);
```



## mrb_run

```c
MRB_API mrb_value mrb_run(mrb_state *mrb, struct RProc* proc, mrb_value self);
```

Procオブジェクトを実行する。

## mrb_top_run

```c
MRB_API mrb_value mrb_top_run(mrb_state *mrb, struct RProc *proc, mrb_value self, unsigned int stack_keep);
```



## mrb_vm_run

```c
MRB_API mrb_value mrb_vm_run(mrb_state *mrb, struct RProc *proc, mrb_value self, unsigned int stack_keep);
```



## mrb_vm_exec

```c
MRB_API mrb_value mrb_vm_exec(mrb_state *mrb, struct RProc *proc, const mrb_code *iseq);
```



## mrb_p

```c
MRB_API void mrb_p(mrb_state*, mrb_value);
```

Kernel#pメソッドを実行する。

## mrb_obj_id

```c
MRB_API mrb_int mrb_obj_id(mrb_value obj);
```

オブジェクトIDを取得する。

## mrb_obj_to_sym

```c
MRB_API mrb_sym mrb_obj_to_sym(mrb_state *mrb, mrb_value name);
```

オブジェクトをシンボル化する。

## mrb_obj_eq

```c
MRB_API mrb_bool mrb_obj_eq(mrb_state *mrb, mrb_value a, mrb_value b);
```

2つのオブジェクトを比較する。

## mrb_obj_equal

```c
MRB_API mrb_bool mrb_obj_equal(mrb_state *mrb, mrb_value a, mrb_value b);
```

2つのオブジェクトを比較する。

## mrb_equal

```c
MRB_API mrb_bool mrb_equal(mrb_state *mrb, mrb_value obj1, mrb_value obj2);
```

2つのオブジェクトを比較する。

## mrb_convert_to_integer

```c
MRB_API mrb_value mrb_convert_to_integer(mrb_state *mrb, mrb_value val, mrb_int base);
```

オブジェクトを整数値に変換する。

## mrb_Integer

```c
MRB_API mrb_value mrb_Integer(mrb_state *mrb, mrb_value val);
```

オブジェクトを整数値に変換する。

## mrb_Float

```c
MRB_API mrb_value mrb_Float(mrb_state *mrb, mrb_value val);
```

オブジェクトを浮動小数点値に変換する。

## mrb_inspect

```c
MRB_API mrb_value mrb_inspect(mrb_state *mrb, mrb_value obj);
```

Object#inspectを呼び出す。

## mrb_eql

```c
MRB_API mrb_bool mrb_eql(mrb_state *mrb, mrb_value obj1, mrb_value obj2);
```

2つのオブジェクトを比較する。

## mrb_cmp

```c
MRB_API mrb_int mrb_cmp(mrb_state *mrb, mrb_value obj1, mrb_value obj2);
```

2つのオブジェクトを比較する。

## mrb_garbage_collect

```c
MRB_API void mrb_garbage_collect(mrb_state*);
```

ガーベッジコレクションを実行する。

## mrb_full_gc

```c
MRB_API void mrb_full_gc(mrb_state*);
```

ガーベッジコレクション（フルGC）を実行する。

## mrb_incremental_gc

```c
MRB_API void mrb_incremental_gc(mrb_state *);
```

ガーベッジコレクション（インクリメンタルGC）を実行する。

## mrb_gc_mark

```c
MRB_API void mrb_gc_mark(mrb_state*,struct RBasic*);
```

GCのマークフェーズを実行する。

## mrb_field_write_barrier

```c
MRB_API void mrb_field_write_barrier(mrb_state *, struct RBasic*, struct RBasic*);
```



## mrb_write_barrier

```c
MRB_API void mrb_write_barrier(mrb_state *, struct RBasic*);
```

ライトバリアを設定する。

## mrb_check_convert_type

```c
MRB_API mrb_value mrb_check_convert_type(mrb_state *mrb, mrb_value val, enum mrb_vtype type, const char *tname, const char *method);
```

オブジェクトが型変換可能かをチェックする。

## mrb_any_to_s

```c
MRB_API mrb_value mrb_any_to_s(mrb_state *mrb, mrb_value obj);
```

オブジェクトを文字列に変換する。

## mrb_obj_classname

```c
MRB_API const char * mrb_obj_classname(mrb_state *mrb, mrb_value obj);
```

オブジェクトのクラス名を取得する。

## mrb_obj_class

```c
MRB_API struct RClass* mrb_obj_class(mrb_state *mrb, mrb_value obj);
```

オブジェクトのクラスを取得する。

## mrb_class_path

```c
MRB_API mrb_value mrb_class_path(mrb_state *mrb, struct RClass *c);
```

クラスパスを取得する。

## mrb_convert_type

```c
MRB_API mrb_value mrb_convert_type(mrb_state *mrb, mrb_value val, enum mrb_vtype type, const char *tname, const char *method);
```

オブジェクトの型を変換する。

## mrb_obj_is_kind_of

```c
MRB_API mrb_bool mrb_obj_is_kind_of(mrb_state *mrb, mrb_value obj, struct RClass *c);
```

オブジェクトが指定の型かどうかをチェックする。

## mrb_obj_inspect

```c
MRB_API mrb_value mrb_obj_inspect(mrb_state *mrb, mrb_value self);
```

Object#inspectを呼び出す。

## mrb_obj_clone

```c
MRB_API mrb_value mrb_obj_clone(mrb_state *mrb, mrb_value self);
```

オブジェクトを複製する。

## mrb_exc_new

```c
MRB_API mrb_value mrb_exc_new(mrb_state *mrb, struct RClass *c, const char *ptr, size_t len);
```

Exceptionを生成する。

## mrb_exc_raise

```c
MRB_API mrb_noreturn void mrb_exc_raise(mrb_state *mrb, mrb_value exc);
```

Exceptionをraiseする。

## mrb_raise

```c
MRB_API mrb_noreturn void mrb_raise(mrb_state *mrb, struct RClass *c, const char *msg);
```

Exceptionをraiseする。

## mrb_raisef

```c
MRB_API mrb_noreturn void mrb_raisef(mrb_state *mrb, struct RClass *c, const char *fmt, ...);
```

Exceptionをraiseする。

## mrb_name_error

```c
MRB_API mrb_noreturn void mrb_name_error(mrb_state *mrb, mrb_sym id, const char *fmt, ...);
```

NameErrorをraiseする。

## mrb_frozen_error

```c
MRB_API mrb_noreturn void mrb_frozen_error(mrb_state *mrb, void *frozen_obj);
```

FrozenErrorをraiseする。

## mrb_warn

```c
MRB_API void mrb_warn(mrb_state *mrb, const char *fmt, ...);
```



## mrb_bug

```c
MRB_API mrb_noreturn void mrb_bug(mrb_state *mrb, const char *fmt, ...);
```



## mrb_print_backtrace

```c
MRB_API void mrb_print_backtrace(mrb_state *mrb);
```

Back traceを表示する。

## mrb_print_error

```c
MRB_API void mrb_print_error(mrb_state *mrb);
```

発生した例外の内容を表示する。

## mrb_vformat

```c
MRB_API mrb_value mrb_vformat(mrb_state *mrb, const char *format, va_list ap);
```



## mrb_yield

```c
MRB_API mrb_value mrb_yield(mrb_state *mrb, mrb_value b, mrb_value arg);
```



## mrb_yield_argv

```c
MRB_API mrb_value mrb_yield_argv(mrb_state *mrb, mrb_value b, mrb_int argc, const mrb_value *argv);
```



## mrb_yield_with_class

```c
MRB_API mrb_value mrb_yield_with_class(mrb_state *mrb, mrb_value b, mrb_int argc, const mrb_value *argv, mrb_value self, struct RClass *c);
```



## mrb_gc_protect

```c
MRB_API void mrb_gc_protect(mrb_state *mrb, mrb_value obj);
```

オブジェクトをGC対象とならないようにプロテクトする。

## mrb_gc_register

```c
MRB_API void mrb_gc_register(mrb_state *mrb, mrb_value obj);
```

オブジェクトをGC対象に登録する。

## mrb_gc_unregister

```c
MRB_API void mrb_gc_unregister(mrb_state *mrb, mrb_value obj);
```

オブジェクトをGC対象から除外する。

## mrb_to_int

```c
MRB_API mrb_value mrb_to_int(mrb_state *mrb, mrb_value val);
```

オブジェクトをIntegerに変換する。

## mrb_to_str

```c
MRB_API mrb_value mrb_to_str(mrb_state *mrb, mrb_value val);
```

オブジェクトをStringに変換する。

## mrb_check_type

```c
MRB_API void mrb_check_type(mrb_state *mrb, mrb_value x, enum mrb_vtype t);
```

オブジェクトの型をチェックする。

## mrb_define_alias

```c
MRB_API void mrb_define_alias(mrb_state *mrb, struct RClass *c, const char *a, const char *b);
```

aliasを定義する。

## mrb_class_name

```c
MRB_API const char *mrb_class_name(mrb_state *mrb, struct RClass* klass);
```

クラスの名称を取得する。

## mrb_define_global_const

```c
MRB_API void mrb_define_global_const(mrb_state *mrb, const char *name, mrb_value val);
```

グローバル定数を定義する。

## mrb_attr_get

```c
MRB_API mrb_value mrb_attr_get(mrb_state *mrb, mrb_value obj, mrb_sym id);
```

オブジェクトの属性を取得する。

## mrb_respond_to

```c
MRB_API mrb_bool mrb_respond_to(mrb_state *mrb, mrb_value obj, mrb_sym mid);
```



## mrb_obj_is_instance_of

```c
MRB_API mrb_bool mrb_obj_is_instance_of(mrb_state *mrb, mrb_value obj, struct RClass* c);
```



## mrb_func_basic_p

```c
MRB_API mrb_bool mrb_func_basic_p(mrb_state *mrb, mrb_value obj, mrb_sym mid, mrb_func_t func);
```



## mrb_fiber_resume

```c
MRB_API mrb_value mrb_fiber_resume(mrb_state *mrb, mrb_value fib, mrb_int argc, const mrb_value *argv);
```

Fiberをresumeする。

## mrb_fiber_yield

```c
MRB_API mrb_value mrb_fiber_yield(mrb_state *mrb, mrb_int argc, const mrb_value *argv);
```

Fiberをyieldする。

## mrb_fiber_alive_p

```c
MRB_API mrb_value mrb_fiber_alive_p(mrb_state *mrb, mrb_value fib);
```

Fiberが生存しているかを確認する。

## mrb_stack_extend

```c
MRB_API void mrb_stack_extend(mrb_state*, mrb_int);
```



## mrb_pool_open

```c
MRB_API struct mrb_pool* mrb_pool_open(mrb_state*);
```

プールメモリ管理をオープンする。

## mrb_pool_close

```c
MRB_API void mrb_pool_close(struct mrb_pool*);
```

プールメモリ管理をクローズする。

## mrb_pool_alloc

```c
MRB_API void* mrb_pool_alloc(struct mrb_pool*, size_t);
```

プールメモリの領域を確保する。

## mrb_pool_realloc

```c
MRB_API void* mrb_pool_realloc(struct mrb_pool*, void*, size_t oldlen, size_t newlen);
```

プールメモリの領域のサイズを変更する。

## mrb_pool_can_realloc

```c
MRB_API mrb_bool mrb_pool_can_realloc(struct mrb_pool*, void*, size_t);
```

プールメモリの領域のサイズ変更が可能かをチェックする。

## mrb_alloca

```c
MRB_API void* mrb_alloca(mrb_state *mrb, size_t);
```

メモリを確保する。

## mrb_state_atexit

```c
MRB_API void mrb_state_atexit(mrb_state *mrb, mrb_atexit_func func);
```



## mrb_show_version

```c
MRB_API void mrb_show_version(mrb_state *mrb);
```

mrubyのバージョン情報を表示する。

## mrb_show_copyright

```c
MRB_API void mrb_show_copyright(mrb_state *mrb);
```

mrubyのCopyright情報を表示する。

## mrb_format

```c
MRB_API mrb_value mrb_format(mrb_state *mrb, const char *format, ...);
```



## mrb_ary_modify

```c
MRB_API void mrb_ary_modify(mrb_state*, struct RArray*);
```



## mrb_ary_new_capa

```c
MRB_API mrb_value mrb_ary_new_capa(mrb_state*, mrb_int);
```

Arrayオブジェクトを生成する。（要素数指定）

## mrb_ary_new

```c
MRB_API mrb_value mrb_ary_new(mrb_state *mrb);
```

Arrayオブジェクトを生成する。

## mrb_ary_new_from_values

```c
MRB_API mrb_value mrb_ary_new_from_values(mrb_state *mrb, mrb_int size, const mrb_value *vals);
```

初期値を指定してArrayオブジェクトを生成する。

## mrb_assoc_new

```c
MRB_API mrb_value mrb_assoc_new(mrb_state *mrb, mrb_value car, mrb_value cdr);
```

2つの初期値からArrayオブジェクトを生成する。

## mrb_ary_concat

```c
MRB_API void mrb_ary_concat(mrb_state *mrb, mrb_value self, mrb_value other);
```

Arrayオブジェクトを連結する。

## mrb_ary_splat

```c
MRB_API mrb_value mrb_ary_splat(mrb_state *mrb, mrb_value value);
```

入力値を基にArrayを生成する。

## mrb_ary_push

```c
MRB_API void mrb_ary_push(mrb_state *mrb, mrb_value array, mrb_value value);
```

Arrayオブジェクトに要素を追加する。

## mrb_ary_pop

```c
MRB_API mrb_value mrb_ary_pop(mrb_state *mrb, mrb_value ary);
```

Arrayオブジェクトの最後の要素を取り出す。

## mrb_ary_ref

```c
MRB_API mrb_value mrb_ary_ref(mrb_state *mrb, mrb_value ary, mrb_int n);
```

Arrayオブジェクトの指定位置の要素を参照する。

## mrb_ary_set

```c
MRB_API void mrb_ary_set(mrb_state *mrb, mrb_value ary, mrb_int n, mrb_value val);
```

Arrayオブジェクトの指定位置の要素を設定する。

## mrb_ary_replace

```c
MRB_API void mrb_ary_replace(mrb_state *mrb, mrb_value self, mrb_value other);
```

指定したArrayオブジェクトでArrayオブジェクトを置き換える。

## mrb_ensure_array_type

```c
MRB_API mrb_value mrb_ensure_array_type(mrb_state *mrb, mrb_value self);
```



## mrb_check_array_type

```c
MRB_API mrb_value mrb_check_array_type(mrb_state *mrb, mrb_value self);
```



## mrb_ary_unshift

```c
MRB_API mrb_value mrb_ary_unshift(mrb_state *mrb, mrb_value self, mrb_value item);
```

Arrayオブジェクトの先頭に要素を追加する。

## mrb_ary_entry

```c
MRB_API mrb_value mrb_ary_entry(mrb_value ary, mrb_int offset);
```

Arrayオブジェクトの指定位置の要素を取得する。

## mrb_ary_splice

```c
MRB_API mrb_value mrb_ary_splice(mrb_state *mrb, mrb_value self, mrb_int head, mrb_int len, mrb_value rpl);
```

Arrayオブジェクトの一部を置き換える。

## mrb_ary_shift

```c
MRB_API mrb_value mrb_ary_shift(mrb_state *mrb, mrb_value self);
```

Arrayオブジェクトの先頭の要素を取り出す。

## mrb_ary_clear

```c
MRB_API mrb_value mrb_ary_clear(mrb_state *mrb, mrb_value self);
```

Arrayオブジェクトの全ての要素を削除する。

## mrb_ary_join

```c
MRB_API mrb_value mrb_ary_join(mrb_state *mrb, mrb_value ary, mrb_value sep);
```

Arrayオブジェクトの要素を文字列として連結する。

## mrb_ary_resize

```c
MRB_API mrb_value mrb_ary_resize(mrb_state *mrb, mrb_value ary, mrb_int new_len);
```

Arrayオブジェクトのサイズを変更する。

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
MRB_API struct RClass* mrb_define_class_id(mrb_state*, mrb_sym, struct RClass*);
```

クラスを定義する。（シンボル指定）

## mrb_define_module_id

```c
MRB_API struct RClass* mrb_define_module_id(mrb_state*, mrb_sym);
```

モジュールを定義する。（シンボル指定）

## mrb_define_method_raw

```c
MRB_API void mrb_define_method_raw(mrb_state*, struct RClass*, mrb_sym, mrb_method_t);
```

メソッドを定義する。

## mrb_define_method_id

```c
MRB_API void mrb_define_method_id(mrb_state *mrb, struct RClass *c, mrb_sym mid, mrb_func_t func, mrb_aspec aspec);
```

メソッドを定義する。

## mrb_alias_method

```c
MRB_API void mrb_alias_method(mrb_state*, struct RClass *c, mrb_sym a, mrb_sym b);
```

メソッドのaliasを定義する。

## mrb_method_search_vm

```c
MRB_API mrb_method_t mrb_method_search_vm(mrb_state*, struct RClass**, mrb_sym);
```

メソッドを検索する。

## mrb_method_search

```c
MRB_API mrb_method_t mrb_method_search(mrb_state*, struct RClass*, mrb_sym);
```

メソッドを検索する。

## mrb_class_real

```c
MRB_API struct RClass* mrb_class_real(struct RClass* cl);
```



## mrbc_context_new

```c
MRB_API mrbc_context* mrbc_context_new(mrb_state *mrb);
```

コンパイラのコンテキストを生成する。

## mrbc_context_free

```c
MRB_API void mrbc_context_free(mrb_state *mrb, mrbc_context *cxt);
```

コンパイラのコンテキストを解放する。

## mrbc_filename

```c
MRB_API const char *mrbc_filename(mrb_state *mrb, mrbc_context *c, const char *s);
```

コンパイル対象のファイル名を指定する。

## mrbc_partial_hook

```c
MRB_API void mrbc_partial_hook(mrb_state *mrb, mrbc_context *c, int (*partial_hook)(struct mrb_parser_state*), void*data);
```



## mrb_parser_new

```c
MRB_API struct mrb_parser_state* mrb_parser_new(mrb_state*);
```

mrubyパーサを生成する。

## mrb_parser_free

```c
MRB_API void mrb_parser_free(struct mrb_parser_state*);
```

mrubyパーサを解放する。

## mrb_parser_parse

```c
MRB_API void mrb_parser_parse(struct mrb_parser_state*,mrbc_context*);
```

Rubyスクリプトをパースする。

## mrb_parser_set_filename

```c
MRB_API void mrb_parser_set_filename(struct mrb_parser_state*, char const*);
```

mrubyパーサにパース対象のファイル名を指定する。

## mrb_parser_get_filename

```c
MRB_API mrb_sym mrb_parser_get_filename(struct mrb_parser_state*, uint16_t idx);
```

mrubyパーサからパース対象のファイル名を取得する。

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
