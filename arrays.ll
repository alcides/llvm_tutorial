define i32 @main() { 
  %arr = alloca i32, i32 3
  ;
  %ind0 = getelementptr i32, i32* %arr, i32 0
  store i32 9, i32* %ind0
  ;
  %ind1 = getelementptr i32, i32* %arr, i32 1
  store i32 8, i32* %ind1
  ;
  %ind2 = getelementptr i32, i32* %arr, i32 2
  store i32 7, i32* %ind2
  ;
  %ind1v = load i32, i32* %ind1
  ret i32 %ind1v
}
