# Data Types

The most common data types in R are:

1. Numeric data (numbers with decimal points, either integers or floats)
2. Character data (text strings)
3. Factor data (categorial data with a fixed set of values or levels)
4. Logical data (boolean values or logical values)

Data types are important because they determine how data is stored, processed, and analyzed. Choosing the appropriate data type can help you optimize your memory usage, perform the necessary data manipulations, conduct the appropriate statistical analyses, and create effective visualizations of your data.

Data can be contained within a number of structures, including vectors, matrices, lists, factors, arrays, and data frames.

## Vectors 

A vector is a basic data structure that represents a sequence of values of the same data type, whether numbers or letters. 

Creating vectors is straightforward: you just use the assignment operator and the **c()** function, which combines values. Try running the following code to make some vectors describing the Hollywood Chris's:
```R
chris_vector <- c('pratt','hemsworth')
chris_age_vector <- c(44,46,42,45)
```
Now that you've created these two vectors, you should see them in your environment in the top right pane of the RStudio console.

!!!info "Note"
    Be sure to include quotation marks around the text data you're combining into a vector. If you do not have them, R will assume that you are referring to objects, not data values.

You can call functions on vectors. For example, you can inspect the length, structure, and type of vectors. Run these three functions. Your output will appear in the console.
```R
length(chris_age_vector)
str(chris_age_vector)
typeof(chris_vector)
```
???note "Output"
    ```R
    > length(chris_age_vector)
    [1] 4
    > str(chris_age_vector)
     num [1:4] 44 46 42 45
    > typeof(chris_vector)
    [1] "character"
    ```

It is also fairly straightforward to add elements to the beggining or end of your vector. Run the following code in your source editor or console.
```R
chris_vector <-c(chris_vector, "pine")
chris_vector <-c("evans",chris_vector)
```
Once you've done this, you should see the values of chris_vector change in the environment pane.

Importantly, if you try to put data of different types into one vector, R will coerce them automatically to all be the same type.

Let's try creating a vector including the last name and age for two of the Hollywood Chris's. Basically, we are trying to make a vector with two strings and two integers.
```R
name_age_vector <- c("evans", 44, "pratt", 46)
```
What happens to the data in our vector? Call `str(name_age_vector)`. How has R changed it? 

???note "Solution"
    R will have coerced the vector into a character vector. This means that all four values, the ages included, will be treated as text. 

    When different data types are combined within a single atomic vector, R applies a coercion hierarchy to determine the resulting data type of the entire vector. Data are coerced from simplest to richest, followng the order of Logical -> Integer -> Numeric -> Complex -> Character. 
    
    For example: If a vector contains both logical and integer values, all logical values will be coerced to integer (e.g., TRUE becomes 1, FALSE becomes 0). Or, if a vector contains numeric and character values, all numeric values will be coerced to character (as happened in our example).

## Data frames

Data frames are another very common type of data structure used in R. A data frame is a two-dimensional tabular structure representing a grid of data, where each row represents an observation and each column represents a variable. 

R comes with a number of built-in data frames that you can use. For example, we can call the built-in data frame **iris**, which contains measurements of the length and width of petals and sepals for three species of iris flowers (setosa, versicolor, and virginica).

To do this, use the following function:
```R
data(iris)
```
The data frame should appear in your environment. You will also see a preview of the data appear in the console. 

<figure markdown="span">
    ![iris data](./content/builtin_data.jpg){width=800}
    <figcaption>A summary of your **iris** data will appear in the Environment.</figcaption>
</figure>

If you want to get a closer look at your data, you can either double click it in the environment pain, or run the command `view(iris)`. You can also import foreign data (data from outside of R) into RStudio. We'll cover how to do that later on in this workshop. 