@.str = private unnamed_addr constant [14 x i8] c"Hello World!\0A\00", align 1

define i32 @main(i32 %0, ptr %1) {
  %3 = call i32 (ptr, ...) @printf(ptr @.str)
  ret i32 0
}

declare i32 @printf(ptr, ...)
