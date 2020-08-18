---
title: "Lab 2: Do-files"
linktitle: "Lab 2"
date: "2020-06-15"
due_date: "2020-06-15"
due_time: "11:59 PM"
menu:
  assignment:
    parent: Labs
    weight: 2
type: docs

editor_options: 
  chunk_output_type: console
---

## Objectives {#objectives .unnumbered}


By the end of this tutorial you should be able to complete the following
tasks in Stata:

-   Create and save a do-file

-   Explore variables and generate new ones

-   Be able to find help with Stata issues - find new commands, check
    and debug your work, etc.

## Key commands  {#key-commands .unnumbered}

|command|description|
| :------------- | ----------: |  
|`tabstat var1`| calculate mean of `var1`|
|`tabstat var1,by(var2)`| calculate mean of `var1` separately for each value of `var2`|
| `gen newvar =var1` | generate a new variable, `newvar`, and set it equal to values of ` var1`|
| `gen newvar =1 if var2 == exp` | generate a new variable, `newvar`, and set it equal to 1 if ` var2 equals some expression, and missing otherwise`|
| `gen newvar = var2 == exp` | generate a new variable, `newvar`, and  set it equal to 1 if ` var2 equals some expression, and 0 otherwise`|
|`drop var1 var2 `| drop the variables ` var1` and ` var2`.|
|`drop if exp` | drop observations for which `exp` is true|
|`keep var1 var2` | drop everything but ` var1` and ` var2`.|
|`keep if exp` | drop all observations unless `exp` is true|

Suppose I asked you to recreate your analysis from our last lab. How
long would it take you? If you used a do-file, you would just have to
click a button, because your analysis would be replicable. We're going
to learn about the glory of do-files and a few other descriptive
statistics tricks.

The instant gratification of the Command window is tempting, but getting
comfortable with do-files will save you lots of time, make collaboration
easier, and reduce errors!

## Do-files and the Do-file editor

You can get pretty far in Stata relying on the Command and Review
window, but we may want a record of the commands we want to run for our
analysis. One thing that makes Stata different from a program like Excel
is that you can create do-files, essentially small programs that will
run your analysis again and again, in exactly the same way. For
econometric analysis this is CRUCIAL.

A do-file can be written in any text file and then saved with the
extension `.do`, but we'll use the do-file editor. Open a new do-file by
clicking on the do-file button. Save it as "StataLab1.do"

The do-file editor is where we will write our programs, and it has some
nice color coding to help us avoid mistakes. For your problem sets and
papers, you must ALWAYS submit a do-file along with your results. Some
people will like to practice in the Command window and then copy the
commands they're satisfied with to the do-file, while others will prefer
to work entirely in the do-file. It's your call, though the second one
is a little less risky.

### Do-file Etiquette


Do-files are used to record your past work and possibly to share your
work with others. It's important to properly **document** your work
using comments. There are three ways to comment

-   Comment the whole line with an asterisk

-   Comment the whole line or part of a line with two forward slashes

-   Use slash-asterisk to open and close a comment section

The do-file editor will turn all your comments green so you don't get
confused.


## Programming tips


-   **Put everything in a do-file!** An important feature of any good
    research project is that the results should be reproducible. For
    Stata the easiest way to do this is to create a text file that lists
    all your commands in order, so anyone can re-run all your Stata work
    on a project anytime. Such text files that are produced within Stata
    or linked to Stata are called do-files, because they have an
    extension .do (like intro_exercise.do). These files feed commands
    directly into Stata without you having to type or copy them into the
    command window.

    Imagine you're just about done with the analysis for your research
    paper. While working on the final regression, you discover that one
    of your variables wasn't cleaned properly, and you need to drop some
    outliers from the data. Do you correct it and redo everything from
    scratch? Could you even do that? How long would it take?

    With a set of do-files, all you have to do is correct the variable
    early in the code, and re-run everything. If your code is quick, it
    will take just a few minutes. Easy!

    An added bonus is that having do-files makes it very easy to fix
    your typos, re-order commands, and create more complicated chains of
    commands that wouldn't work otherwise. You can now quickly reproduce
    your work, correct it, adjust it, and build on it.

-   **Log your results.** Maintaining logs can help you quickly retrieve
    results and serve as a record of past work in case you accidentally
    overwrite commands. Logs contain the commands *and* the results.

-   **Never overwrite your original files.** A good do-file structure
    starts with your original, raw data, then cleans and analyzes it to
    get your final results. A "master" do-file can piece all these
    together.

-   **Replicability is key.** Your code should be replicable to someone
    else who picks up your raw files and code.

-   **Comment, comment, comment!** Clear commenting is essential to help
    others understand your code and to remember what you did.

## Finding new commands


One of the strengths of Stata is that complicated processes can be
completed with simple commands. One of its weaknesses is that it's not
always obvious what those specific commands are. In our problem sets and
your research paper, you will (I promise) have to calculate or estimate
something in a way we haven't covered.

-   Stata help file: `help command`

-   Search Stata documentation: `finidit keyword`

-   Google the thing you are trying to do: *i.e.: make scatterplot
    Stata, turn rows into columns Stata, cluster standard errors Stata,
    etc.*
    
## Lab Exercise 2 {#lab-2 .unnumbered}


1.  Download `acs2014_all.dta` and `labtemplate.do` from Blackboard.

2.  Move these files to your Z-drive (or wherever you store your files).

3.  Open `labtemplate.do` and run it. Does it work?

4.  Drop some variables we don't need: `gq`, `serial`, and `hhwt`. How
    many variables remain?

5.  What is the age distribution of the sample? Specifically, report the
    mean, median, minimum, and maximum age of the sample.

6.  Because very young workers might be still in school, drop anyone in
    your sample who is less than 23 years old. (Maintain this sample
    restriction for the rest of the lab). How many people are left in
    your sample?

7.  Generate a new variable, `lt35` that is equal to one if a person is
    less than 35 years old and 0 otherwise. What is the mean of `lt35`?

8.  Using the `tabstat` command, find the average income and wages for
    those under age 35 and those at least age 35.

9.  Using the `tabstat` command, find the average income and wages for
    men and women.

10. There are several reasons why men might earn more than women. One
    reason might be that men are better educated than women; and workers
    with higher wages earn more. We will test this in two ways.

    1.  First, generate a variable equal to one if a person has
        completed at least some post-secondary education, and zero
        otherwise. What is the mean of this variable?

    2.  What share of men have at least some post-secondary education?
        What about women?

    3.  We can also see if gender-wage gaps are bigger for lower vs.
        higher-educated workers. For those without post-secondary
        education, what is the average wage gap? For those with
        post-secondary education, what is the average wage gap?

    ```{=html}
    <!-- -->
    ```
    1.  Name **two** additional reasons that may explain why men's
        income is higher than women's income on average. How would you
        test each one? (You do not have to actually do this test, ju
        describe in as much detail as possible. You can assume you have
        additional data beyond what is provided here.)

    2.  Make a two histograms, one of the income distribution for men
        and one of the income distribution for women. Make sure the
        y-axis indicates the "fraction" of individuals, not the density.
        Print it out and include with your log file.

