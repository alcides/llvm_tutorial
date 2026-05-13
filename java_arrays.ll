%IntArray = type { i32, ptr }
%BooleanArray = type { i32, ptr }
%StringArray = type { i32, ptr }

@a = global %IntArray { i32 0, ptr null }


define i32 @main() {
  %size = add i32 0, 3

  %arr = alloca i32, i32 %size
  %arr_ins = insertvalue %IntArray undef, i32 %size, 0
  %arr_ins2 = insertvalue %IntArray %arr_ins, ptr %arr, 1
  store %IntArray %arr_ins2, ptr @a


  %arr_load = load %IntArray, ptr @a
  %length = extractvalue %IntArray %arr_load, 0

  %store_load = load %IntArray, ptr @a
  %store_arr = extractvalue %IntArray %store_load, 1
  %ind0 = getelementptr i32, ptr %store_arr, i32 1
  store i32 9, ptr %ind0

  %load_load = load %IntArray, ptr @a
  %load_arr = extractvalue %IntArray %load_load, 1
  %load_ind0 = getelementptr i32, ptr %load_arr, i32 1

  %ind1v = load i32, ptr %load_ind0

  ret i32 %ind1v
}
