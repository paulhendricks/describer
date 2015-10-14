<!-- README.md is generated from README.Rmd. Please edit that file -->
describer
=========

[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/describer)](http://cran.r-project.org/package=describer) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/describer)](http://cran.rstudio.com/package=describer) [![Build Status](https://travis-ci.org/paulhendricks/describer.png?branch=master)](https://travis-ci.org/paulhendricks/describer) [![Build status](https://ci.appveyor.com/api/projects/status/jyh7mh23q1htalww/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/describer/branch/master) [![codecov.io](http://codecov.io/github/paulhendricks/describer/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/describer?branch=master) [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

`describer` quickly and easily describes data using common descriptive statistics.

Installation
------------

You can install:

-   the latest released version from CRAN:

    [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/describer)](http://cran.r-project.org/package=describer)

    ``` r
    install.packages("describer")
    ```

-   the latest development version from Github:

    [![GitHub version](https://badge.fury.io/gh/paulhendricks%2Fdescriber.svg)](http://badge.fury.io/gh/paulhendricks%2Fdescriber)

    ``` r
    if (packageVersion("devtools") < 1.6) {
      install.packages("devtools")
    }
    devtools::install_github("paulhendricks/describer")
    ```

If you encounter a clear bug, please file a minimal reproducible example on [github](https://github.com/paulhendricks/describer/issues).

API
---

``` r
library(dplyr, warn.conflicts = FALSE)
library(describer)

mtcars %>% 
  describe %>% 
  knitr::kable(format = "markdown")
```

| .column\_name |  .count\_elements|  .mean\_value|   .sd\_value|  .q0\_value|  .q25\_value|  .q50\_value|  .q75\_value|  .q100\_value|
|:--------------|-----------------:|-------------:|------------:|-----------:|------------:|------------:|------------:|-------------:|
| mpg           |                32|     20.090625|    6.0269481|      10.400|     15.42500|       19.200|        22.80|        33.900|
| cyl           |                32|      6.187500|    1.7859216|       4.000|      4.00000|        6.000|         8.00|         8.000|
| disp          |                32|    230.721875|  123.9386938|      71.100|    120.82500|      196.300|       326.00|       472.000|
| hp            |                32|    146.687500|   68.5628685|      52.000|     96.50000|      123.000|       180.00|       335.000|
| drat          |                32|      3.596563|    0.5346787|       2.760|      3.08000|        3.695|         3.92|         4.930|
| wt            |                32|      3.217250|    0.9784574|       1.513|      2.58125|        3.325|         3.61|         5.424|
| qsec          |                32|     17.848750|    1.7869432|      14.500|     16.89250|       17.710|        18.90|        22.900|
| vs            |                32|      0.437500|    0.5040161|       0.000|      0.00000|        0.000|         1.00|         1.000|
| am            |                32|      0.406250|    0.4989909|       0.000|      0.00000|        0.000|         1.00|         1.000|
| gear          |                32|      3.687500|    0.7378041|       3.000|      3.00000|        4.000|         4.00|         5.000|
| carb          |                32|      2.812500|    1.6152000|       1.000|      2.00000|        2.000|         4.00|         8.000|

``` r

mtcars %>% 
  group_by(cyl) %>% 
  do(describe(.)) %>% 
  knitr::kable(format = "markdown")
```

|  cyl| .column\_name |  .count\_elements|  .mean\_value|  .sd\_value|  .q0\_value|  .q25\_value|  .q50\_value|  .q75\_value|  .q100\_value|
|----:|:--------------|-----------------:|-------------:|-----------:|-----------:|------------:|------------:|------------:|-------------:|
|    4| mpg           |                11|    26.6636364|   4.5098277|      21.400|      22.8000|       26.000|     30.40000|        33.900|
|    4| cyl           |                11|     4.0000000|   0.0000000|       4.000|       4.0000|        4.000|      4.00000|         4.000|
|    4| disp          |                11|   105.1363636|  26.8715937|      71.100|      78.8500|      108.000|    120.65000|       146.700|
|    4| hp            |                11|    82.6363636|  20.9345300|      52.000|      65.5000|       91.000|     96.00000|       113.000|
|    4| drat          |                11|     4.0709091|   0.3654711|       3.690|       3.8100|        4.080|      4.16500|         4.930|
|    4| wt            |                11|     2.2857273|   0.5695637|       1.513|       1.8850|        2.200|      2.62250|         3.190|
|    4| qsec          |                11|    19.1372727|   1.6824452|      16.700|      18.5600|       18.900|     19.95000|        22.900|
|    4| vs            |                11|     0.9090909|   0.3015113|       0.000|       1.0000|        1.000|      1.00000|         1.000|
|    4| am            |                11|     0.7272727|   0.4670994|       0.000|       0.5000|        1.000|      1.00000|         1.000|
|    4| gear          |                11|     4.0909091|   0.5393599|       3.000|       4.0000|        4.000|      4.00000|         5.000|
|    4| carb          |                11|     1.5454545|   0.5222330|       1.000|       1.0000|        2.000|      2.00000|         2.000|
|    6| mpg           |                 7|    19.7428571|   1.4535670|      17.800|      18.6500|       19.700|     21.00000|        21.400|
|    6| cyl           |                 7|     6.0000000|   0.0000000|       6.000|       6.0000|        6.000|      6.00000|         6.000|
|    6| disp          |                 7|   183.3142857|  41.5624602|     145.000|     160.0000|      167.600|    196.30000|       258.000|
|    6| hp            |                 7|   122.2857143|  24.2604911|     105.000|     110.0000|      110.000|    123.00000|       175.000|
|    6| drat          |                 7|     3.5857143|   0.4760552|       2.760|       3.3500|        3.900|      3.91000|         3.920|
|    6| wt            |                 7|     3.1171429|   0.3563455|       2.620|       2.8225|        3.215|      3.44000|         3.460|
|    6| qsec          |                 7|    17.9771429|   1.7068657|      15.500|      16.7400|       18.300|     19.17000|        20.220|
|    6| vs            |                 7|     0.5714286|   0.5345225|       0.000|       0.0000|        1.000|      1.00000|         1.000|
|    6| am            |                 7|     0.4285714|   0.5345225|       0.000|       0.0000|        0.000|      1.00000|         1.000|
|    6| gear          |                 7|     3.8571429|   0.6900656|       3.000|       3.5000|        4.000|      4.00000|         5.000|
|    6| carb          |                 7|     3.4285714|   1.8126539|       1.000|       2.5000|        4.000|      4.00000|         6.000|
|    8| mpg           |                14|    15.1000000|   2.5600481|      10.400|      14.4000|       15.200|     16.25000|        19.200|
|    8| cyl           |                14|     8.0000000|   0.0000000|       8.000|       8.0000|        8.000|      8.00000|         8.000|
|    8| disp          |                14|   353.1000000|  67.7713236|     275.800|     301.7500|      350.500|    390.00000|       472.000|
|    8| hp            |                14|   209.2142857|  50.9768855|     150.000|     176.2500|      192.500|    241.25000|       335.000|
|    8| drat          |                14|     3.2292857|   0.3723618|       2.760|       3.0700|        3.115|      3.22500|         4.220|
|    8| wt            |                14|     3.9992143|   0.7594047|       3.170|       3.5325|        3.755|      4.01375|         5.424|
|    8| qsec          |                14|    16.7721429|   1.1960138|      14.500|      16.0975|       17.175|     17.55500|        18.000|
|    8| vs            |                14|     0.0000000|   0.0000000|       0.000|       0.0000|        0.000|      0.00000|         0.000|
|    8| am            |                14|     0.1428571|   0.3631365|       0.000|       0.0000|        0.000|      0.00000|         1.000|
|    8| gear          |                14|     3.2857143|   0.7262730|       3.000|       3.0000|        3.000|      3.00000|         5.000|
|    8| carb          |                14|     3.5000000|   1.5566236|       2.000|       2.2500|        3.500|      4.00000|         8.000|

To mimic the exact `pandas.describe()` behavior, use `pd_describe`.

``` r
library(reshape2)

pandas_describe_mtcars <- 
  mtcars %>% 
  pd_describe

pandas_describe_mtcars %>% 
  knitr::kable(format = "markdown")
```

| .variable        |          am|     carb|        cyl|      disp|        drat|        gear|         hp|        mpg|       qsec|          vs|          wt|
|:-----------------|-----------:|--------:|----------:|---------:|-----------:|-----------:|----------:|----------:|----------:|-----------:|-----------:|
| .count\_elements |  32.0000000|  32.0000|  32.000000|   32.0000|  32.0000000|  32.0000000|   32.00000|  32.000000|  32.000000|  32.0000000|  32.0000000|
| .mean\_value     |   0.4062500|   2.8125|   6.187500|  230.7219|   3.5965625|   3.6875000|  146.68750|  20.090625|  17.848750|   0.4375000|   3.2172500|
| .sd\_value       |   0.4989909|   1.6152|   1.785922|  123.9387|   0.5346787|   0.7378041|   68.56287|   6.026948|   1.786943|   0.5040161|   0.9784574|
| .q0\_value       |   0.0000000|   1.0000|   4.000000|   71.1000|   2.7600000|   3.0000000|   52.00000|  10.400000|  14.500000|   0.0000000|   1.5130000|
| .q25\_value      |   0.0000000|   2.0000|   4.000000|  120.8250|   3.0800000|   3.0000000|   96.50000|  15.425000|  16.892500|   0.0000000|   2.5812500|
| .q50\_value      |   0.0000000|   2.0000|   6.000000|  196.3000|   3.6950000|   4.0000000|  123.00000|  19.200000|  17.710000|   0.0000000|   3.3250000|
| .q75\_value      |   1.0000000|   4.0000|   8.000000|  326.0000|   3.9200000|   4.0000000|  180.00000|  22.800000|  18.900000|   1.0000000|   3.6100000|
| .q100\_value     |   1.0000000|   8.0000|   8.000000|  472.0000|   4.9300000|   5.0000000|  335.00000|  33.900000|  22.900000|   1.0000000|   5.4240000|

``` r

str(pandas_describe_mtcars)
#> 'data.frame':    8 obs. of  12 variables:
#>  $ .variable: chr  ".count_elements" ".mean_value" ".sd_value" ".q0_value" ...
#>  $ am       : num  32 0.406 0.499 0 0 ...
#>  $ carb     : num  32 2.81 1.62 1 2 ...
#>  $ cyl      : num  32 6.19 1.79 4 4 ...
#>  $ disp     : num  32 230.7 123.9 71.1 120.8 ...
#>  $ drat     : num  32 3.597 0.535 2.76 3.08 ...
#>  $ gear     : num  32 3.688 0.738 3 3 ...
#>  $ hp       : num  32 146.7 68.6 52 96.5 ...
#>  $ mpg      : num  32 20.09 6.03 10.4 15.43 ...
#>  $ qsec     : num  32 17.85 1.79 14.5 16.89 ...
#>  $ vs       : num  32 0.438 0.504 0 0 ...
#>  $ wt       : num  32 3.217 0.978 1.513 2.581 ...
```

People
------

-   The original author of `describer` is [Paul Hendricks](https://github.com/paulhendricks). [![Gratipay](https://img.shields.io/gratipay/JSFiddle.svg)](https://gratipay.com/~paulhendricks/)

-   The lead maintainer of `describer` is [Paul Hendricks](https://github.com/paulhendricks). [![Gratipay](https://img.shields.io/gratipay/JSFiddle.svg)](https://gratipay.com/~paulhendricks/)

License
-------

[![License](http://img.shields.io/:license-mit-blue.svg)](https://github.com/paulhendricks/describer/blob/master/LICENSE)
