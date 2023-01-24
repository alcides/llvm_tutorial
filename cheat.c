int factorial(int x) {
    return x * factorial(x-1);
}


struct {
    int a;
    char b;
    int d;
    char e;
}


0[ 32 ] 32 [ 8 ] [ 24 bits de lixo] 64 [ 32 ]
    
    s.a; <- load 0 (do processor)
    s.b; <- load 32 (do processor)
    s.c; <- load 64 (do processor)
    
    
0 [ 32 ] 32 [ 8 ] 40 [ 32 ]
        
        s.a; <- load 0 (do processor)
        s.b; <- load 32 (do processor)
        s.c; <- load 32 (do processor)
                load 64 (do processor)
                juntar bytes do primeiro e segundo loads