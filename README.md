# Detect leaks with ASAN

Install the [asan](https://pkgs.org/download/libasan) library on your system and run the executable.


```
$ cabal run

=================================================================
==1044805==ERROR: LeakSanitizer: detected memory leaks

Direct leak of 8 byte(s) in 1 object(s) allocated from:
    #0 0x7fe6a58e6f2b in malloc (/usr/lib64/libasan.so.8.0.0+0xe6f2b) (BuildId: 5a053b2c39acdde66812d293604438f39b6f73db)
    #1 0x000000224a06 in leak8 cbits/test.c:20
    #2 0x0000002244b6  (/home/tchoutri/Vrac/leak-test/dist-newstyle/build/x86_64-linux/ghc-9.12.2/leak-test-0.1.0.0/x/leak-test/noopt/build/leak-test/leak-test+0x2244b6) (BuildId: 437cd1fb3010aa7a2ff2ece6ef00fca0a09f0a89)

Direct leak of 4 byte(s) in 1 object(s) allocated from:
    #0 0x7fe6a58e6f2b in malloc (/usr/lib64/libasan.so.8.0.0+0xe6f2b) (BuildId: 5a053b2c39acdde66812d293604438f39b6f73db)
    #1 0x0000002249f6 in leak4 cbits/test.c:15
    #2 0x00000022462e  (/home/tchoutri/Vrac/leak-test/dist-newstyle/build/x86_64-linux/ghc-9.12.2/leak-test-0.1.0.0/x/leak-test/noopt/build/leak-test/leak-test+0x22462e) (BuildId: 437cd1fb3010aa7a2ff2ece6ef00fca0a09f0a89)

Direct leak of 2 byte(s) in 1 object(s) allocated from:
    #0 0x7fe6a58e6f2b in malloc (/usr/lib64/libasan.so.8.0.0+0xe6f2b) (BuildId: 5a053b2c39acdde66812d293604438f39b6f73db)
    #1 0x0000002249e1 in leak2 cbits/test.c:10
    #2 0x00000022476e  (/home/tchoutri/Vrac/leak-test/dist-newstyle/build/x86_64-linux/ghc-9.12.2/leak-test-0.1.0.0/x/leak-test/noopt/build/leak-test/leak-test+0x22476e) (BuildId: 437cd1fb3010aa7a2ff2ece6ef00fca0a09f0a89)

Direct leak of 1 byte(s) in 1 object(s) allocated from:
    #0 0x7fe6a58e6f2b in malloc (/usr/lib64/libasan.so.8.0.0+0xe6f2b) (BuildId: 5a053b2c39acdde66812d293604438f39b6f73db)
    #1 0x0000002249c8 in leak1 cbits/test.c:5
    #2 0x0000002248d9  (/home/tchoutri/Vrac/leak-test/dist-newstyle/build/x86_64-linux/ghc-9.12.2/leak-test-0.1.0.0/x/leak-test/noopt/build/leak-test/leak-test+0x2248d9) (BuildId: 437cd1fb3010aa7a2ff2ece6ef00fca0a09f0a89)

SUMMARY: AddressSanitizer: 15 byte(s) leaked in 4 allocation(s).
```
