# Format strings exploitation

## Documentation

Format strings are nice vulnerabilities.

We can find them into printf calls:

```c
    // bad call
    printf(argv[1]);

    // right formated call
    printf("%s", argv[1]);
```


```bash
gdb$ r AAAABBBx/20xw $esp
0xffffd53c:    0x08048476     0xffffd55c    0xffffd797    0x00000014
0xffffd54c:    0x080482b5     0xffffd767    0x0000002f    0x08049718
0xffffd55c:    0x41414141     0x42424242    0x78257825    0x78257825
0xffffd56c:    0x78257825     0xf7fae3c4    0xffffd590    0x00000000
0xffffd57c:    0xf7e20a63     0x08048490    0x00000000    0x00000000
```


## How to use tools


