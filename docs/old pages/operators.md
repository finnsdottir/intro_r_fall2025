# Operators

Operators are special symbols or keywords used to perform operations on one or more values. Common operators include:

- Assignment operators. We can use the operators `<-` and `=` to assign a value to a variable/object. When naming an object in R, avoid using the names of fundamental objects (like 'mean), periods, or numbers at the beginning. Try creating variables for the day and month and assigning them values by running the following in the Source Editor: 
```R
day <- 3
month = 10
```
!!!info "Note"
    RStudio allows for several quick keyboard shortcuts. One is to press ++alt+hyphen++ (on PC) or ++option+hyphen++ (on mac) to write `<-`

- Arithmetic operators. The operators `+`, `-`, `*`, and `/` are used for basic mathematical calculations, namely addition, subtraction, multiplication, and division. Try running the following in your Source Editor and watching what appears in the console:
```R
4+2
4-2
4*2
4/2
```
???note "Output"
    ```R
    > 4+2
    [1] 6
    > 4-2
    [1] 2
    > 4*2
    [1] 8
    > 4/2
    [1] 2
    ```
- Comparison operators. The operators `<`, `>`, and `==` return a logical values when used to compare two things. Try running the following:
```R
4==3
4!=3
4>3
4<3
```
???note "Output"
    ```R
    > 4==3
    [1] FALSE
    > 4!=3
    [1] TRUE
    > 4>3
    [1] TRUE
    > 4<3
    [1] FALSE
    ```
- Logical operators. The operators `&` (and), `|` (or), and `!` (not) are used to perform logical operators. These are a bit more complicated to use, but here is a simple example:
```R
#the single & operator represents an element-wise logical AND. It will return TRUE if both corresponding elements are true. Run the following:
c(TRUE,TRUE,FALSE) & c(TRUE,FALSE,FALSE)

#Running the code above should return the following output:
[1]  TRUE FALSE FALSE
```
- Other miscellaneous operators:
    - The hash sign `#` indicates a comment in the code
    - The colon sign `:` creates a sequence of numbers 
    - The square brackets `[]` indexed an object, such as a vector
    - The dollar sign `$` accesses a variable from a dataframe
    - The percent sign `%` is used for some special operators to string operations together
    - The double colon `::` accesses functions or variables from a specific package





