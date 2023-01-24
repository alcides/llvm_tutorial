define i32 @sum(i32 %a, i32 %b, i32 %c) {
    %1 = add i32 %a, %b
    %2 = add i32 %1, %c
    ret i32 %2
}

define i32 @main() {
  %1 = call i32 @sum(i32 1, i32 2, i32 3)
  ret i32 %1
}