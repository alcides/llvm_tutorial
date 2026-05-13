define i32 @main() {
  %arr = alloca i32, i32 3
  ;
  %ind0 = getelementptr i32, ptr %arr, i32 0
  store i32 9, ptr %ind0
  ;
  %ind1 = getelementptr i32, ptr %arr, i32 1
  store i32 8, ptr %ind1
  ;
  %ind2 = getelementptr i32, ptr %arr, i32 2
  store i32 7, ptr %ind2
  ;
  %ind1v = load i32, ptr %ind1
  ret i32 %ind1v
}
