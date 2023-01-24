@.str = private unnamed_addr constant [14 x i8] c"Hello World!\0A\00", align 1

define i32 @main(i32 %0, i8** %1) {
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare i32 @printf(i8*, ...) #1