## Chapter 2 Input, Output and Throughput 
- Three are thre types of parameters
    - `Positional parameters`
        - Arguments present on the command line, and they are referenced by a number, `first is one, not 0`.
    - `Spcial parameters`
        - The shell to store information about aspects of its current state, such as the number of 

            the number of arguments and the exit code of last command. 
    - `Variables`

### *`Positional Parameters*
- Create a file 'hello' in `$HOME/bpl/bin/hello`
- Add content (check file `hello`)

### *`Variable`*
- `name=value`
- `name = value` Has space is invalid so not work

### *`Escape Sequences`*
- `\a`: : Alert (bell)
- `\b`: Backspace
- `\e`: Escape character
- `\f`: Form feed
- `\n`: Newline
- `\r`: Carriage return 
- `\t`: Horizontal tab
- `\v`: Vertical tab
- `\\`: Backslash
- `\nnn`: A character specified by one to three octal digits
- `\xHH`: A character specified by one or two hexadecimal digits

    e.g: `printf "Q\t\141\n\x42\n"`

### *`Format Specifiers`*
- `%s` Prints the literal characters in the argument

- `%b` is like `%s`: except that escape sequences in the arguments are translated:

```bash
printf "%b\n" "Hello\nworld" "12\tword"
```

- Output
```  
              
Hello

              
world

              
12   word
```

- `%d` The integer may be specified as a decimal, octal (using a leaning 0), or hexadicmal (preceding the hex number with 0x) number. 

    If the number is not a valid integer, `printf` prints an error message. 

```bash
printf "%d\n" 23 45 56.78 0xff 011
```

- Output
```  
              
bash: printf: 56.78: invalid number

              
0

              
255

              
9
```
- `%f` Format decimal fractions or floating-point numbers. Default printed is six decimal places. 

```bash
printf "%f\n" 12.34 23 56.789 1.2345678
printf "%.3f" 1.61803398
```

- Output
```  
12.340000

              
23.000000

              
56.789000

              
1.234568
1.618
```
### *`Width Specification`*

The printf command in Bash is used for formatted printing. The format string you provided %8s %-15s: 

contains format specifiers that define how the output should be formatted. Let's break down the format string:

`%8s`: This is a format specifier for a string (s). It specifies a field width of 8 characters, 

and the string will be right-justified within that field. If the string is shorter than 8 characters, it will be padded with spaces on the left.

`%-15s`: Similarly, this is a format specifier for a string. It also specifies a field width of 15 characters, 

but the string will be left-justified within that field. If the string is shorter than 15 characters, it will be padded with spaces on the right.

`:`: This is a literal colon character that will be printed as is.

 ```bash
printf "%8s %-15s:\n" first second third fourth fifth sixth
```
- Output
```              
first second     :

              
third fourth     :

              
fifth sixth     :
```
- If the width specification is preceded by a 0, the numbers are padded with leading zeros to fill the width:

 ```bash
printf "%04d\n" 12 23 56 123 255
```
- Output
```              
0012
            
0023
              
0056

0123
              
0255
```
