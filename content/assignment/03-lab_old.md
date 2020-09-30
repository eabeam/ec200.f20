---
title: "Lab 3: Regression - OLD "
linktitle: "Lab 3 - OLD"
date: "2020-12-28"
due_date: "2020-10-05"
due_time: "2:20 PM"
menu:
  assignment:
    parent: Labs
    weight: 3
type: docs
toc: true

editor_options: 
  chunk_output_type: console
---

## Objectives {#objectives .unnumbered}

By the end of this tutorial you should be able to complete the following
tasks in Stata:

-   Estimate a simple (two-variable) linear regression in levels

-   Identify $\hat{\beta_0}$, $\hat{\beta_1}$ standard errors, $SST$,
    $SSE$, $SSR$, and $R^2$ in Stata output and interpret them

-   Create scatter plots

-   Estimate a multivariate linear regression

## Key commands  {#key-commands .unnumbered}


|command|description|
| :------------- | ----------: |  
 |`regress var1 var2...`| Estimate a regression, with
`var1` as the dependent variable and all others as the independent
variable(s)|
|`correlate var1 var2 ...`|Calculate correlation coefficients of all listed variables.|
| `graph twoway scatter var1 var2 `| make a scatter plot with `var1` on the y-axis and `var2` on the x-axis.|
| `predict newvar, xb `| Use estimated regression coefficients to predict $\widehat{y}$. It will generate `newvar`, where $\widehat{newvar_i} = \widehat{y_i} = \widehat{\beta_0} + \widehat{\beta_1}x_i$|
| `predict newvar, residuals` | Use estimated regression coefficients to predict residuals. It will generate `newvar`, where $\widehat{newvar_i} = u_i =  y_i - \widehat{\beta_0} + \widehat{\beta_1}x_i$|

## Lab 3 Worksheet {#lab-3-worksheet .unnumbered}

Today we're going to work with a different data set,
`ceosal2_clean.dta`, which contains information on CEO pay and some
characteristics of the CEOs and their firms. It is an old data set

1.  Start a new do-file. Within the do-file, add the commands to begin a
    new log and close it. Remember to put your commands in between these
    two lines of code!

2.  Open `ceosal2_clean.dta`. What is mean CEO salary? What is mean CEO
    compensation?

3.  Write out a population model to determine the relationship between
    CEO tenure and salary. Which is your dependent variable? Which is
    your independent variable?

4.  Make a scatter plot of the relationship between CEO tenure and
    compensation (Include this in your submitted problem set). Report
    the associated correlation coefficient.

5.  Estimate the relationship between $X$ and $Y$ using simple linear
    regression. Write the estimated equation and fill in the chart below
    with your estimates.


|Variable|Estimate|Variable|Estimate|
| :------------- | ----------: |   ----------: |  ----------: |  
  |  $\hat{\beta_0}$ ||$\hat{\beta_1}$ ||
  |  $R^2$ || $TSS$||
  |  $ESS$ || $SSR$ ||
  |  d.f. || $SER$||

6.  Generate a new variable, `predict_sal` equal to the predicted
    salary. Generate a second variable, `resid_sal` equal to the
    residual.

7.  What is the mean of each variable? How does the mean predicted
    salary compare to mean salary overall in your sample?

8.  Predict salary for the largest firm (by market value) in your
    sample. What is its residual?

9.  When we estimate a linear regression with no coefficients, sometimes
    we'll say we are "regressing on a constant." Regress CEO salary
    *only* on a constant. What is $\hat{\beta_0}$, and how does it
    compare to overall mean salary? Why might these be so close?\

10. For our estimates of $\beta_0$ and $\beta_1$ to be unbiased, it must
    be the case that $E[u_i|x] = 0$ (among other assumptions). What
    possible factors might make the relationship between salary and
    tenure biased?

11. One way to address the potential bias of omitted factors is to
    include them in your regression. Estimate your previous regression
    from question 3, but also include sales and market value in your
    model.

    1.  Population model:

    2.  Estimated results (equation form):

    3.  Comparing your results with your earlier model, was your first
        estimate of $\hat{\beta_1}$ likely to be biased? Explain.
