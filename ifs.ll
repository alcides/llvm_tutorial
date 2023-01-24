define i32 @main() {
entry:
  %v1 = add i32 0, 3
  %v2 = add i32 0, 2
  %ifcond = icmp eq i32 %v1, %v2
  br i1 %ifcond, label %then, label %else
then:
  %calltmp = add i32 %v1, %v2
  br label %ifcont
else:
  %calltmp1 = mul i32 %v1, %v2
  br label %ifcont
ifcont:
  %iftmp = phi i32 [ %calltmp, %then ], [ %calltmp1, %else ]
  ret i32 %iftmp
}
