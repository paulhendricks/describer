<!-- README.md is generated from README.Rmd. Please edit that file -->
describer
=========

[![Build Status](https://travis-ci.org/paulhendricks/describer.png?branch=master)](https://travis-ci.org/paulhendricks/describer) [![Build status](https://ci.appveyor.com/api/projects/status/jyh7mh23q1htalww/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/describer/branch/master) [![codecov.io](http://codecov.io/github/paulhendricks/describer/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/describer?branch=master) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/describer)](http://cran.r-project.org/package=describer) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/describer)](http://cran.rstudio.com/package=describer) [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

`describer` does something.

Installation
------------

You can install:

-   the latest released version from CRAN with

    ``` r
    install.packages("describer")
    ```

-   the latest development version from github with

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

| column\_name | column\_class | column\_type |  .count\_elements|  .count\_nulls|  .q0\_value|  .q25\_value|  .q50\_value|  .q75\_value|  .q100\_value|  .mean\_value|   .sd\_value|
|:-------------|:--------------|:-------------|-----------------:|--------------:|-----------:|------------:|------------:|------------:|-------------:|-------------:|------------:|
| mpg          | numeric       | double       |                32|              0|      10.400|     15.42500|       19.200|        22.80|        33.900|     20.090625|    6.0269481|
| cyl          | numeric       | double       |                32|              0|       4.000|      4.00000|        6.000|         8.00|         8.000|      6.187500|    1.7859216|
| disp         | numeric       | double       |                32|              0|      71.100|    120.82500|      196.300|       326.00|       472.000|    230.721875|  123.9386938|
| hp           | numeric       | double       |                32|              0|      52.000|     96.50000|      123.000|       180.00|       335.000|    146.687500|   68.5628685|
| drat         | numeric       | double       |                32|              0|       2.760|      3.08000|        3.695|         3.92|         4.930|      3.596563|    0.5346787|
| wt           | numeric       | double       |                32|              0|       1.513|      2.58125|        3.325|         3.61|         5.424|      3.217250|    0.9784574|
| qsec         | numeric       | double       |                32|              0|      14.500|     16.89250|       17.710|        18.90|        22.900|     17.848750|    1.7869432|
| vs           | numeric       | double       |                32|              0|       0.000|      0.00000|        0.000|         1.00|         1.000|      0.437500|    0.5040161|
| am           | numeric       | double       |                32|              0|       0.000|      0.00000|        0.000|         1.00|         1.000|      0.406250|    0.4989909|
| gear         | numeric       | double       |                32|              0|       3.000|      3.00000|        4.000|         4.00|         5.000|      3.687500|    0.7378041|
| carb         | numeric       | double       |                32|              0|       1.000|      2.00000|        2.000|         4.00|         8.000|      2.812500|    1.6152000|

``` r

mtcars %>% 
  group_by(cyl) %>% 
  do(describe(.)) %>% 
  knitr::kable(format = "markdown")
```

|  cyl| column\_name | column\_class | column\_type |  .count\_elements|  .count\_nulls|  .q0\_value|  .q25\_value|  .q50\_value|  .q75\_value|  .q100\_value|  .mean\_value|  .sd\_value|
|----:|:-------------|:--------------|:-------------|-----------------:|--------------:|-----------:|------------:|------------:|------------:|-------------:|-------------:|-----------:|
|    4| mpg          | numeric       | double       |                11|              0|      21.400|      22.8000|       26.000|     30.40000|        33.900|    26.6636364|   4.5098277|
|    4| cyl          | numeric       | double       |                11|              0|       4.000|       4.0000|        4.000|      4.00000|         4.000|     4.0000000|   0.0000000|
|    4| disp         | numeric       | double       |                11|              0|      71.100|      78.8500|      108.000|    120.65000|       146.700|   105.1363636|  26.8715937|
|    4| hp           | numeric       | double       |                11|              0|      52.000|      65.5000|       91.000|     96.00000|       113.000|    82.6363636|  20.9345300|
|    4| drat         | numeric       | double       |                11|              0|       3.690|       3.8100|        4.080|      4.16500|         4.930|     4.0709091|   0.3654711|
|    4| wt           | numeric       | double       |                11|              0|       1.513|       1.8850|        2.200|      2.62250|         3.190|     2.2857273|   0.5695637|
|    4| qsec         | numeric       | double       |                11|              0|      16.700|      18.5600|       18.900|     19.95000|        22.900|    19.1372727|   1.6824452|
|    4| vs           | numeric       | double       |                11|              0|       0.000|       1.0000|        1.000|      1.00000|         1.000|     0.9090909|   0.3015113|
|    4| am           | numeric       | double       |                11|              0|       0.000|       0.5000|        1.000|      1.00000|         1.000|     0.7272727|   0.4670994|
|    4| gear         | numeric       | double       |                11|              0|       3.000|       4.0000|        4.000|      4.00000|         5.000|     4.0909091|   0.5393599|
|    4| carb         | numeric       | double       |                11|              0|       1.000|       1.0000|        2.000|      2.00000|         2.000|     1.5454545|   0.5222330|
|    6| mpg          | numeric       | double       |                 7|              0|      17.800|      18.6500|       19.700|     21.00000|        21.400|    19.7428571|   1.4535670|
|    6| cyl          | numeric       | double       |                 7|              0|       6.000|       6.0000|        6.000|      6.00000|         6.000|     6.0000000|   0.0000000|
|    6| disp         | numeric       | double       |                 7|              0|     145.000|     160.0000|      167.600|    196.30000|       258.000|   183.3142857|  41.5624602|
|    6| hp           | numeric       | double       |                 7|              0|     105.000|     110.0000|      110.000|    123.00000|       175.000|   122.2857143|  24.2604911|
|    6| drat         | numeric       | double       |                 7|              0|       2.760|       3.3500|        3.900|      3.91000|         3.920|     3.5857143|   0.4760552|
|    6| wt           | numeric       | double       |                 7|              0|       2.620|       2.8225|        3.215|      3.44000|         3.460|     3.1171429|   0.3563455|
|    6| qsec         | numeric       | double       |                 7|              0|      15.500|      16.7400|       18.300|     19.17000|        20.220|    17.9771429|   1.7068657|
|    6| vs           | numeric       | double       |                 7|              0|       0.000|       0.0000|        1.000|      1.00000|         1.000|     0.5714286|   0.5345225|
|    6| am           | numeric       | double       |                 7|              0|       0.000|       0.0000|        0.000|      1.00000|         1.000|     0.4285714|   0.5345225|
|    6| gear         | numeric       | double       |                 7|              0|       3.000|       3.5000|        4.000|      4.00000|         5.000|     3.8571429|   0.6900656|
|    6| carb         | numeric       | double       |                 7|              0|       1.000|       2.5000|        4.000|      4.00000|         6.000|     3.4285714|   1.8126539|
|    8| mpg          | numeric       | double       |                14|              0|      10.400|      14.4000|       15.200|     16.25000|        19.200|    15.1000000|   2.5600481|
|    8| cyl          | numeric       | double       |                14|              0|       8.000|       8.0000|        8.000|      8.00000|         8.000|     8.0000000|   0.0000000|
|    8| disp         | numeric       | double       |                14|              0|     275.800|     301.7500|      350.500|    390.00000|       472.000|   353.1000000|  67.7713236|
|    8| hp           | numeric       | double       |                14|              0|     150.000|     176.2500|      192.500|    241.25000|       335.000|   209.2142857|  50.9768855|
|    8| drat         | numeric       | double       |                14|              0|       2.760|       3.0700|        3.115|      3.22500|         4.220|     3.2292857|   0.3723618|
|    8| wt           | numeric       | double       |                14|              0|       3.170|       3.5325|        3.755|      4.01375|         5.424|     3.9992143|   0.7594047|
|    8| qsec         | numeric       | double       |                14|              0|      14.500|      16.0975|       17.175|     17.55500|        18.000|    16.7721429|   1.1960138|
|    8| vs           | numeric       | double       |                14|              0|       0.000|       0.0000|        0.000|      0.00000|         0.000|     0.0000000|   0.0000000|
|    8| am           | numeric       | double       |                14|              0|       0.000|       0.0000|        0.000|      0.00000|         1.000|     0.1428571|   0.3631365|
|    8| gear         | numeric       | double       |                14|              0|       3.000|       3.0000|        3.000|      3.00000|         5.000|     3.2857143|   0.7262730|
|    8| carb         | numeric       | double       |                14|              0|       2.000|       2.2500|        3.500|      4.00000|         8.000|     3.5000000|   1.5566236|
