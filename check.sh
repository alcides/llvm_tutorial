# LLVM

clang -S -emit-llvm helloworld.c
llc -o=middle.s helloworld.ll
(cat middle.s | grep -v macos) > middle_clean.s
CC -o helloworld middle_clean.s

if [ -f "middle.s" ]
then
  echo "LLVM installed with success."
else
  echo "LLVM is not installed!"
fi


if [ $? -ne 0 ]
then
    echo "The result of LLVM Hello World code did not succeed to execute."
fi

./helloworld
