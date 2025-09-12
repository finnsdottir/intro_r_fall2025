# Functions

A function is a 'canned script' that automates a block of code that performs a specifc task and can be easily called and executed by the user. Functions are an essential component of programming in R. 

When R is installed, it comes with the default package `base` which contains a number of built-in functions. These include:

- `mean()` calculates the mean of a vector of numbers
- `sd()` calculates the standard deviation of a vector of numbers
- `str()` displays the structure of an R object
- `table()` creates a frequency table of a vector or factor
- `plot()` creates a basic plot of data

Try calculating the average age of the Hollywood Chris's using some of R's built-in functions. What function will you use? What output do you get? 
???note "Output"
    ```R
    > mean(chris_age_vector)
    [1] 44.25
    ```

## Packages

Different packages in R will come with their own built-in functions. Packages are collections of data, functions, and documentation. Packages are how we expand R beyond the base package. 

R packages are developed by the user community, and are all available for free. The **Packages** tab in RStudio lists all packages already installed in your R instance. 

<figure markdown="span">
    ![r packages](./content/packages_tab.jpg){width=800}
    <figcaption>All already installed packages are listed under the Packages tab.</figcaption>
</figure>

For a full list of all published packages, you can check out the [R website](https://cran.r-project.org/web/packages/available_packages_by_name.html).

Packages only need to be installed once. Once they're installed, though, you do need to call them before you can use them and their built-in functions. Let's practice installing and calling packages with [`tidyverse`](https://cran.r-project.org/web/packages/tidyverse/index.html), a very common R package for simple data work. 
```R
#installing a package
install.packages('tidyverse')

##calling a package
library(tidyverse)
```
Now you should see `tidyverse` appear in the Packages tab. 

Alternatively, you can install a package by clicking the **Install** button on the top left of the Packages pane. Similarly, you can load a package by checking the box beside the installed package. In both cases, you will see the work that R is doing to install and load the package in the Console. 
