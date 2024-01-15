## Source
- https://www.learnshell.org
- https://www.w3schools.io/terminal/bash-tutorials

### *`Hello World`*
 ```bash
#!/bin/bash
# sudo chmod +x {fileName} (Set permission to execute)
# sudo ./{fileName} (Execute file)

echo "Hello World"
```

### *`Array`*
- Declare an array 
 ```bash
declares -a array; # indexed array
declare -A array; # associative array
```

### *`Operator`*
- Arithmetic Operators
    - Addition: +
    - Subtraction: -
    - Multiplication: *
    - Division: /
    - Modulus (remainder): %

    ```bash
    a=5
    b=3
    counter=22
    sum=$((a + b))
    difference=$((a-b))
    mul=$((a*b))
    div=$((a/b))
    mod=$((a%b))
    combi=$(( ((a+b) * 2)/5 ))
    ((counter++))

    echo "Sum: $sum"
    echo "Difference: $difference"
    echo "Multiplication: $mul"
    echo "Division: $div"
    echo "Modulus: $mod"
    echo "Counter: $counter"
    echo "Combining Operator : $combi"
    ```
- Comparison Operators:
    - Equal to: == `-eq`
    - Not equal to: != `-ne`
    - Greater than: > `-gt`
    - Less than: < `-lt`
    - Greater than or equal to: >= `-ge`
    - Less than or equal to: <= `-le`

    ```bash
    a=22
    b=1992
    c=22
    d=92283
    e=983

    if [ $a -eq $b ]; then 
        echo "a is equal to b"
    else 
        echo "a is not equal to b"
    fi

    if [ $b -le $d ]; then 
        echo "b is less than or equal to d"
    else 
        echo "b is not less than or equal to d"
    fi
    # other you need to do with your own 
    ```
- Logical Operators:
    - AND: &&
    - OR: ||
    - NOT: !

    ```bash
    age=18
    grade="B"
    if [ $age -ge 18 ] && [ $age -lt 21 ]; then
        echo "You are eligible for some privileges."
    else
        echo "You are not eligible for privileges."
    fi

    if [ "$grade" == "A" ] || [ "$grade" == "B" ]; then
        echo "You have a good grade"
    else
        echo "Your grade is not A or B"
    fi
    ```