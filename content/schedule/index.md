---
title: "Schedule"
slug: schedule
---

Here's your roadmap for the semester!

- [**Content**](/content/) (<i class="fas fa-book-reader"></i>): This page contains the readings, slides, and recorded lectures for the topic. Read and watch these first.
- [**Assignment**](/assignment/) (<i class="fas fa-pencil-ruler"></i>): This page contains the instructions for each assignment. **Assignments are due by 11:59 PM on the day they're listed.**


|Week|Date| Day|Topic|Readings|PS|Lab|Paper|
| :------------- | ----------: | :------------- | :------------- | ----------: | :------------- | :------------- | ----------: |
| 1 | 31 August | M | [Probability/stats review](/01-content/) | CH2 | | | |
|  | 02 Sept | W | Lab 1 |  | | | |
|  | 04 Sept | F | Q \& A |  |<i class="fas fa-pencil-ruler"></i> | | |


|`tabstat var1`| calculate mean of `var1`|
|`tabstat var1,by(var2)`| calculate mean of `var1` separately for each value of `var2`|
| `gen newvar =var1` | generate a new variable, `newvar`, and set it equal to values of ` var1`|
| `gen newvar =1 if var2 == exp` | generate a new variable, `newvar`, and set it equal to 1 if ` var2 equals some expression, and missing otherwise`|
| `gen newvar = var2 == exp` | generate a new variable, `newvar`, and  set it equal to 1 if ` var2 equals some expression, and 0 otherwise`|
|`drop var1 var2 `| drop the variables ` var1` and ` var2`.|
|`drop if exp` | drop observations for which `exp` is true|
|`keep var1 var2` | drop everything but ` var1` and ` var2`.|
|`keep if exp` | drop all observations unless `exp` is true|

`r blogdown::shortcode("schedule")`
