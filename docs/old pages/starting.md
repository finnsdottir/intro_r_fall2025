# Getting Started

We're now going to put some of these functions and operations into practice, and use them to explore our dataset of movies. 

## Creating a project

Start by creating a new project. To do this, navigate to **File** and select **New Project**. From there, you will be given the option to create a project from a new or existing directory. Select **New Directory** and then **New Project**. 

You will then be able to give your new project a directory name; I'm going to name mine *unmessy_movies*. You also have the option of creating the project as a subdirectory of another directory. I am going to create my project as a subdirectory of `~/Documents/R` (a folder I created to store my R work), but you can put yours where you like, or even leave it blank.

<figure markdown="span">
    ![image of new project box](./content/new_project.jpg){width=800}
    <figcaption>You can determine the name and location of your new project</figcaption>
</figure>

## Setting a working directory

It is always a good idea to set up an organized working directory. The working directory refers to the location on your computer where R will be reading and writing files. 

We're going to set up a fairly simple organization scheme, with separate file folders for:

- `data/` to store your raw data and intermediate datasets. For the sake of transparency and provenance, you should always keep a copy of your raw data accessible and do as much of your data cleanup and preprocessing programmatically (i.e., with scripts, rather than manually) as possible,
- `data_output/` to store modified data separtely from the original datasets,
- `fig_output/` to store any graphics we generate, and
- `scripts/` to store our R scripts.

To create these four folders, run the following code:

```R
dir.create('data')
dir.create('data_output')
dir.create('fig_output')
dir.create('scripts')
```

!!!note "Note"
    You can check your working directory by running the command `getwd()`. If you are not where you'd like to be working, you can set your working directory by running the command `setwd('my/path')` where 'my/path' is the filepath to your desired directory. Try running `getwd()`. Is the output what you expected?

## Importing data

Now that we have our working directory set up, we can import our [unmessy_movies.csv](./content/unmessy_movies.csv) data. 

There are two ways to import data. The simplest way is to navigate to the **Import Dataset** dropdown menu in the toolbar of the **Environment** tab. From there, select the appropriate source (in this case, **From Text(base)...**). That will open a pop up window where you can navigate to, and select, your data. 

Alternatively, you can run code to import the data. Run the code below, after updating the filepath with one that locates the data on your computer.
```R
#I use a macbook, so to run this on PC you will need to update the filepath to begin with a "C:" 

unmessy_movies <- read.csv("~/Downloads/unmessy_movies/data/unmessy_movies.csv")
```
Now that our data is loaded in R, we will want to save it. To do so, run the following line of code: 
```R
write.csv(unmessy_movies,"./data/original_unmessy_movies.csv")
```

