
<!-- README.md is generated from README.Rmd. Please edit that file -->
describer
=========

[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/describer)](http://cran.r-project.org/package=describer) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/describer)](http://cran.rstudio.com/package=describer) [![Build Status](https://travis-ci.org/paulhendricks/describer.png?branch=master)](https://travis-ci.org/paulhendricks/describer) [![Build status](https://ci.appveyor.com/api/projects/status/jyh7mh23q1htalww/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/describer/branch/master) [![codecov.io](http://codecov.io/github/paulhendricks/describer/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/describer?branch=master) [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

`describer` quickly and easily describes data using common descriptive statistics.

Installation
------------

You can install the latest development version from CRAN:

``` r
install.packages("describer")
```

Or from GitHub with:

``` r
if (packageVersion("devtools") < 1.6) {
  install.packages("devtools")
}
devtools::install_github("paulhendricks/describer")
```

If you encounter a clear bug, please file a [minimal reproducible example](http://stackoverflow.com/questions/5963269/how-to-make-a-great-r-reproducible-example) on [GitHub](https://github.com/paulhendricks/describer/issues).

API
---

``` r
library(dplyr, warn.conflicts = FALSE)
library(describer)

mtcars %>% 
  describe %>% 
  knitr::kable(format = "markdown")
```

<table style="width:100%;">
<colgroup>
<col width="11%" />
<col width="14%" />
<col width="11%" />
<col width="11%" />
<col width="9%" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
<col width="11%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">.column_name</th>
<th align="right">.count_elements</th>
<th align="right">.mean_value</th>
<th align="right">.sd_value</th>
<th align="right">.q0_value</th>
<th align="right">.q25_value</th>
<th align="right">.q50_value</th>
<th align="right">.q75_value</th>
<th align="right">.q100_value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">mpg</td>
<td align="right">32</td>
<td align="right">20.090625</td>
<td align="right">6.0269481</td>
<td align="right">10.400</td>
<td align="right">15.42500</td>
<td align="right">19.200</td>
<td align="right">22.80</td>
<td align="right">33.900</td>
</tr>
<tr class="even">
<td align="left">cyl</td>
<td align="right">32</td>
<td align="right">6.187500</td>
<td align="right">1.7859216</td>
<td align="right">4.000</td>
<td align="right">4.00000</td>
<td align="right">6.000</td>
<td align="right">8.00</td>
<td align="right">8.000</td>
</tr>
<tr class="odd">
<td align="left">disp</td>
<td align="right">32</td>
<td align="right">230.721875</td>
<td align="right">123.9386938</td>
<td align="right">71.100</td>
<td align="right">120.82500</td>
<td align="right">196.300</td>
<td align="right">326.00</td>
<td align="right">472.000</td>
</tr>
<tr class="even">
<td align="left">hp</td>
<td align="right">32</td>
<td align="right">146.687500</td>
<td align="right">68.5628685</td>
<td align="right">52.000</td>
<td align="right">96.50000</td>
<td align="right">123.000</td>
<td align="right">180.00</td>
<td align="right">335.000</td>
</tr>
<tr class="odd">
<td align="left">drat</td>
<td align="right">32</td>
<td align="right">3.596563</td>
<td align="right">0.5346787</td>
<td align="right">2.760</td>
<td align="right">3.08000</td>
<td align="right">3.695</td>
<td align="right">3.92</td>
<td align="right">4.930</td>
</tr>
<tr class="even">
<td align="left">wt</td>
<td align="right">32</td>
<td align="right">3.217250</td>
<td align="right">0.9784574</td>
<td align="right">1.513</td>
<td align="right">2.58125</td>
<td align="right">3.325</td>
<td align="right">3.61</td>
<td align="right">5.424</td>
</tr>
<tr class="odd">
<td align="left">qsec</td>
<td align="right">32</td>
<td align="right">17.848750</td>
<td align="right">1.7869432</td>
<td align="right">14.500</td>
<td align="right">16.89250</td>
<td align="right">17.710</td>
<td align="right">18.90</td>
<td align="right">22.900</td>
</tr>
<tr class="even">
<td align="left">vs</td>
<td align="right">32</td>
<td align="right">0.437500</td>
<td align="right">0.5040161</td>
<td align="right">0.000</td>
<td align="right">0.00000</td>
<td align="right">0.000</td>
<td align="right">1.00</td>
<td align="right">1.000</td>
</tr>
<tr class="odd">
<td align="left">am</td>
<td align="right">32</td>
<td align="right">0.406250</td>
<td align="right">0.4989909</td>
<td align="right">0.000</td>
<td align="right">0.00000</td>
<td align="right">0.000</td>
<td align="right">1.00</td>
<td align="right">1.000</td>
</tr>
<tr class="even">
<td align="left">gear</td>
<td align="right">32</td>
<td align="right">3.687500</td>
<td align="right">0.7378041</td>
<td align="right">3.000</td>
<td align="right">3.00000</td>
<td align="right">4.000</td>
<td align="right">4.00</td>
<td align="right">5.000</td>
</tr>
<tr class="odd">
<td align="left">carb</td>
<td align="right">32</td>
<td align="right">2.812500</td>
<td align="right">1.6152000</td>
<td align="right">1.000</td>
<td align="right">2.00000</td>
<td align="right">2.000</td>
<td align="right">4.00</td>
<td align="right">8.000</td>
</tr>
</tbody>
</table>

``` r

mtcars %>% 
  group_by(cyl) %>% 
  do(describe(.)) %>% 
  knitr::kable(format = "markdown")
```

<table style="width:100%;">
<colgroup>
<col width="4%" />
<col width="11%" />
<col width="14%" />
<col width="10%" />
<col width="9%" />
<col width="9%" />
<col width="9%" />
<col width="9%" />
<col width="9%" />
<col width="10%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">cyl</th>
<th align="left">.column_name</th>
<th align="right">.count_elements</th>
<th align="right">.mean_value</th>
<th align="right">.sd_value</th>
<th align="right">.q0_value</th>
<th align="right">.q25_value</th>
<th align="right">.q50_value</th>
<th align="right">.q75_value</th>
<th align="right">.q100_value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">4</td>
<td align="left">mpg</td>
<td align="right">11</td>
<td align="right">26.6636364</td>
<td align="right">4.5098277</td>
<td align="right">21.400</td>
<td align="right">22.8000</td>
<td align="right">26.000</td>
<td align="right">30.40000</td>
<td align="right">33.900</td>
</tr>
<tr class="even">
<td align="right">4</td>
<td align="left">cyl</td>
<td align="right">11</td>
<td align="right">4.0000000</td>
<td align="right">0.0000000</td>
<td align="right">4.000</td>
<td align="right">4.0000</td>
<td align="right">4.000</td>
<td align="right">4.00000</td>
<td align="right">4.000</td>
</tr>
<tr class="odd">
<td align="right">4</td>
<td align="left">disp</td>
<td align="right">11</td>
<td align="right">105.1363636</td>
<td align="right">26.8715937</td>
<td align="right">71.100</td>
<td align="right">78.8500</td>
<td align="right">108.000</td>
<td align="right">120.65000</td>
<td align="right">146.700</td>
</tr>
<tr class="even">
<td align="right">4</td>
<td align="left">hp</td>
<td align="right">11</td>
<td align="right">82.6363636</td>
<td align="right">20.9345300</td>
<td align="right">52.000</td>
<td align="right">65.5000</td>
<td align="right">91.000</td>
<td align="right">96.00000</td>
<td align="right">113.000</td>
</tr>
<tr class="odd">
<td align="right">4</td>
<td align="left">drat</td>
<td align="right">11</td>
<td align="right">4.0709091</td>
<td align="right">0.3654711</td>
<td align="right">3.690</td>
<td align="right">3.8100</td>
<td align="right">4.080</td>
<td align="right">4.16500</td>
<td align="right">4.930</td>
</tr>
<tr class="even">
<td align="right">4</td>
<td align="left">wt</td>
<td align="right">11</td>
<td align="right">2.2857273</td>
<td align="right">0.5695637</td>
<td align="right">1.513</td>
<td align="right">1.8850</td>
<td align="right">2.200</td>
<td align="right">2.62250</td>
<td align="right">3.190</td>
</tr>
<tr class="odd">
<td align="right">4</td>
<td align="left">qsec</td>
<td align="right">11</td>
<td align="right">19.1372727</td>
<td align="right">1.6824452</td>
<td align="right">16.700</td>
<td align="right">18.5600</td>
<td align="right">18.900</td>
<td align="right">19.95000</td>
<td align="right">22.900</td>
</tr>
<tr class="even">
<td align="right">4</td>
<td align="left">vs</td>
<td align="right">11</td>
<td align="right">0.9090909</td>
<td align="right">0.3015113</td>
<td align="right">0.000</td>
<td align="right">1.0000</td>
<td align="right">1.000</td>
<td align="right">1.00000</td>
<td align="right">1.000</td>
</tr>
<tr class="odd">
<td align="right">4</td>
<td align="left">am</td>
<td align="right">11</td>
<td align="right">0.7272727</td>
<td align="right">0.4670994</td>
<td align="right">0.000</td>
<td align="right">0.5000</td>
<td align="right">1.000</td>
<td align="right">1.00000</td>
<td align="right">1.000</td>
</tr>
<tr class="even">
<td align="right">4</td>
<td align="left">gear</td>
<td align="right">11</td>
<td align="right">4.0909091</td>
<td align="right">0.5393599</td>
<td align="right">3.000</td>
<td align="right">4.0000</td>
<td align="right">4.000</td>
<td align="right">4.00000</td>
<td align="right">5.000</td>
</tr>
<tr class="odd">
<td align="right">4</td>
<td align="left">carb</td>
<td align="right">11</td>
<td align="right">1.5454545</td>
<td align="right">0.5222330</td>
<td align="right">1.000</td>
<td align="right">1.0000</td>
<td align="right">2.000</td>
<td align="right">2.00000</td>
<td align="right">2.000</td>
</tr>
<tr class="even">
<td align="right">6</td>
<td align="left">mpg</td>
<td align="right">7</td>
<td align="right">19.7428571</td>
<td align="right">1.4535670</td>
<td align="right">17.800</td>
<td align="right">18.6500</td>
<td align="right">19.700</td>
<td align="right">21.00000</td>
<td align="right">21.400</td>
</tr>
<tr class="odd">
<td align="right">6</td>
<td align="left">cyl</td>
<td align="right">7</td>
<td align="right">6.0000000</td>
<td align="right">0.0000000</td>
<td align="right">6.000</td>
<td align="right">6.0000</td>
<td align="right">6.000</td>
<td align="right">6.00000</td>
<td align="right">6.000</td>
</tr>
<tr class="even">
<td align="right">6</td>
<td align="left">disp</td>
<td align="right">7</td>
<td align="right">183.3142857</td>
<td align="right">41.5624602</td>
<td align="right">145.000</td>
<td align="right">160.0000</td>
<td align="right">167.600</td>
<td align="right">196.30000</td>
<td align="right">258.000</td>
</tr>
<tr class="odd">
<td align="right">6</td>
<td align="left">hp</td>
<td align="right">7</td>
<td align="right">122.2857143</td>
<td align="right">24.2604911</td>
<td align="right">105.000</td>
<td align="right">110.0000</td>
<td align="right">110.000</td>
<td align="right">123.00000</td>
<td align="right">175.000</td>
</tr>
<tr class="even">
<td align="right">6</td>
<td align="left">drat</td>
<td align="right">7</td>
<td align="right">3.5857143</td>
<td align="right">0.4760552</td>
<td align="right">2.760</td>
<td align="right">3.3500</td>
<td align="right">3.900</td>
<td align="right">3.91000</td>
<td align="right">3.920</td>
</tr>
<tr class="odd">
<td align="right">6</td>
<td align="left">wt</td>
<td align="right">7</td>
<td align="right">3.1171429</td>
<td align="right">0.3563455</td>
<td align="right">2.620</td>
<td align="right">2.8225</td>
<td align="right">3.215</td>
<td align="right">3.44000</td>
<td align="right">3.460</td>
</tr>
<tr class="even">
<td align="right">6</td>
<td align="left">qsec</td>
<td align="right">7</td>
<td align="right">17.9771429</td>
<td align="right">1.7068657</td>
<td align="right">15.500</td>
<td align="right">16.7400</td>
<td align="right">18.300</td>
<td align="right">19.17000</td>
<td align="right">20.220</td>
</tr>
<tr class="odd">
<td align="right">6</td>
<td align="left">vs</td>
<td align="right">7</td>
<td align="right">0.5714286</td>
<td align="right">0.5345225</td>
<td align="right">0.000</td>
<td align="right">0.0000</td>
<td align="right">1.000</td>
<td align="right">1.00000</td>
<td align="right">1.000</td>
</tr>
<tr class="even">
<td align="right">6</td>
<td align="left">am</td>
<td align="right">7</td>
<td align="right">0.4285714</td>
<td align="right">0.5345225</td>
<td align="right">0.000</td>
<td align="right">0.0000</td>
<td align="right">0.000</td>
<td align="right">1.00000</td>
<td align="right">1.000</td>
</tr>
<tr class="odd">
<td align="right">6</td>
<td align="left">gear</td>
<td align="right">7</td>
<td align="right">3.8571429</td>
<td align="right">0.6900656</td>
<td align="right">3.000</td>
<td align="right">3.5000</td>
<td align="right">4.000</td>
<td align="right">4.00000</td>
<td align="right">5.000</td>
</tr>
<tr class="even">
<td align="right">6</td>
<td align="left">carb</td>
<td align="right">7</td>
<td align="right">3.4285714</td>
<td align="right">1.8126539</td>
<td align="right">1.000</td>
<td align="right">2.5000</td>
<td align="right">4.000</td>
<td align="right">4.00000</td>
<td align="right">6.000</td>
</tr>
<tr class="odd">
<td align="right">8</td>
<td align="left">mpg</td>
<td align="right">14</td>
<td align="right">15.1000000</td>
<td align="right">2.5600481</td>
<td align="right">10.400</td>
<td align="right">14.4000</td>
<td align="right">15.200</td>
<td align="right">16.25000</td>
<td align="right">19.200</td>
</tr>
<tr class="even">
<td align="right">8</td>
<td align="left">cyl</td>
<td align="right">14</td>
<td align="right">8.0000000</td>
<td align="right">0.0000000</td>
<td align="right">8.000</td>
<td align="right">8.0000</td>
<td align="right">8.000</td>
<td align="right">8.00000</td>
<td align="right">8.000</td>
</tr>
<tr class="odd">
<td align="right">8</td>
<td align="left">disp</td>
<td align="right">14</td>
<td align="right">353.1000000</td>
<td align="right">67.7713236</td>
<td align="right">275.800</td>
<td align="right">301.7500</td>
<td align="right">350.500</td>
<td align="right">390.00000</td>
<td align="right">472.000</td>
</tr>
<tr class="even">
<td align="right">8</td>
<td align="left">hp</td>
<td align="right">14</td>
<td align="right">209.2142857</td>
<td align="right">50.9768855</td>
<td align="right">150.000</td>
<td align="right">176.2500</td>
<td align="right">192.500</td>
<td align="right">241.25000</td>
<td align="right">335.000</td>
</tr>
<tr class="odd">
<td align="right">8</td>
<td align="left">drat</td>
<td align="right">14</td>
<td align="right">3.2292857</td>
<td align="right">0.3723618</td>
<td align="right">2.760</td>
<td align="right">3.0700</td>
<td align="right">3.115</td>
<td align="right">3.22500</td>
<td align="right">4.220</td>
</tr>
<tr class="even">
<td align="right">8</td>
<td align="left">wt</td>
<td align="right">14</td>
<td align="right">3.9992143</td>
<td align="right">0.7594047</td>
<td align="right">3.170</td>
<td align="right">3.5325</td>
<td align="right">3.755</td>
<td align="right">4.01375</td>
<td align="right">5.424</td>
</tr>
<tr class="odd">
<td align="right">8</td>
<td align="left">qsec</td>
<td align="right">14</td>
<td align="right">16.7721429</td>
<td align="right">1.1960138</td>
<td align="right">14.500</td>
<td align="right">16.0975</td>
<td align="right">17.175</td>
<td align="right">17.55500</td>
<td align="right">18.000</td>
</tr>
<tr class="even">
<td align="right">8</td>
<td align="left">vs</td>
<td align="right">14</td>
<td align="right">0.0000000</td>
<td align="right">0.0000000</td>
<td align="right">0.000</td>
<td align="right">0.0000</td>
<td align="right">0.000</td>
<td align="right">0.00000</td>
<td align="right">0.000</td>
</tr>
<tr class="odd">
<td align="right">8</td>
<td align="left">am</td>
<td align="right">14</td>
<td align="right">0.1428571</td>
<td align="right">0.3631365</td>
<td align="right">0.000</td>
<td align="right">0.0000</td>
<td align="right">0.000</td>
<td align="right">0.00000</td>
<td align="right">1.000</td>
</tr>
<tr class="even">
<td align="right">8</td>
<td align="left">gear</td>
<td align="right">14</td>
<td align="right">3.2857143</td>
<td align="right">0.7262730</td>
<td align="right">3.000</td>
<td align="right">3.0000</td>
<td align="right">3.000</td>
<td align="right">3.00000</td>
<td align="right">5.000</td>
</tr>
<tr class="odd">
<td align="right">8</td>
<td align="left">carb</td>
<td align="right">14</td>
<td align="right">3.5000000</td>
<td align="right">1.5566236</td>
<td align="right">2.000</td>
<td align="right">2.2500</td>
<td align="right">3.500</td>
<td align="right">4.00000</td>
<td align="right">8.000</td>
</tr>
</tbody>
</table>

To mimic the exact `pandas.describe()` behavior, use `pd_describe`.

``` r
library(reshape2)

pandas_describe_mtcars <- 
  mtcars %>% 
  pd_describe

pandas_describe_mtcars %>% 
  knitr::kable(format = "markdown")
```

<table style="width:100%;">
<colgroup>
<col width="12%" />
<col width="8%" />
<col width="6%" />
<col width="7%" />
<col width="7%" />
<col width="8%" />
<col width="8%" />
<col width="7%" />
<col width="7%" />
<col width="7%" />
<col width="8%" />
<col width="8%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">.variable</th>
<th align="right">am</th>
<th align="right">carb</th>
<th align="right">cyl</th>
<th align="right">disp</th>
<th align="right">drat</th>
<th align="right">gear</th>
<th align="right">hp</th>
<th align="right">mpg</th>
<th align="right">qsec</th>
<th align="right">vs</th>
<th align="right">wt</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">.count_elements</td>
<td align="right">32.0000000</td>
<td align="right">32.0000</td>
<td align="right">32.000000</td>
<td align="right">32.0000</td>
<td align="right">32.0000000</td>
<td align="right">32.0000000</td>
<td align="right">32.00000</td>
<td align="right">32.000000</td>
<td align="right">32.000000</td>
<td align="right">32.0000000</td>
<td align="right">32.0000000</td>
</tr>
<tr class="even">
<td align="left">.mean_value</td>
<td align="right">0.4062500</td>
<td align="right">2.8125</td>
<td align="right">6.187500</td>
<td align="right">230.7219</td>
<td align="right">3.5965625</td>
<td align="right">3.6875000</td>
<td align="right">146.68750</td>
<td align="right">20.090625</td>
<td align="right">17.848750</td>
<td align="right">0.4375000</td>
<td align="right">3.2172500</td>
</tr>
<tr class="odd">
<td align="left">.sd_value</td>
<td align="right">0.4989909</td>
<td align="right">1.6152</td>
<td align="right">1.785922</td>
<td align="right">123.9387</td>
<td align="right">0.5346787</td>
<td align="right">0.7378041</td>
<td align="right">68.56287</td>
<td align="right">6.026948</td>
<td align="right">1.786943</td>
<td align="right">0.5040161</td>
<td align="right">0.9784574</td>
</tr>
<tr class="even">
<td align="left">.q0_value</td>
<td align="right">0.0000000</td>
<td align="right">1.0000</td>
<td align="right">4.000000</td>
<td align="right">71.1000</td>
<td align="right">2.7600000</td>
<td align="right">3.0000000</td>
<td align="right">52.00000</td>
<td align="right">10.400000</td>
<td align="right">14.500000</td>
<td align="right">0.0000000</td>
<td align="right">1.5130000</td>
</tr>
<tr class="odd">
<td align="left">.q25_value</td>
<td align="right">0.0000000</td>
<td align="right">2.0000</td>
<td align="right">4.000000</td>
<td align="right">120.8250</td>
<td align="right">3.0800000</td>
<td align="right">3.0000000</td>
<td align="right">96.50000</td>
<td align="right">15.425000</td>
<td align="right">16.892500</td>
<td align="right">0.0000000</td>
<td align="right">2.5812500</td>
</tr>
<tr class="even">
<td align="left">.q50_value</td>
<td align="right">0.0000000</td>
<td align="right">2.0000</td>
<td align="right">6.000000</td>
<td align="right">196.3000</td>
<td align="right">3.6950000</td>
<td align="right">4.0000000</td>
<td align="right">123.00000</td>
<td align="right">19.200000</td>
<td align="right">17.710000</td>
<td align="right">0.0000000</td>
<td align="right">3.3250000</td>
</tr>
<tr class="odd">
<td align="left">.q75_value</td>
<td align="right">1.0000000</td>
<td align="right">4.0000</td>
<td align="right">8.000000</td>
<td align="right">326.0000</td>
<td align="right">3.9200000</td>
<td align="right">4.0000000</td>
<td align="right">180.00000</td>
<td align="right">22.800000</td>
<td align="right">18.900000</td>
<td align="right">1.0000000</td>
<td align="right">3.6100000</td>
</tr>
<tr class="even">
<td align="left">.q100_value</td>
<td align="right">1.0000000</td>
<td align="right">8.0000</td>
<td align="right">8.000000</td>
<td align="right">472.0000</td>
<td align="right">4.9300000</td>
<td align="right">5.0000000</td>
<td align="right">335.00000</td>
<td align="right">33.900000</td>
<td align="right">22.900000</td>
<td align="right">1.0000000</td>
<td align="right">5.4240000</td>
</tr>
</tbody>
</table>

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

Citation
--------

To cite package ‘describer’ in publications use:

    Paul Hendricks (2015). describer: Describe Data in R Using Common Descriptive Statistics. R package version 0.2.0. https://CRAN.R-project.org/package=describer

A BibTeX entry for LaTeX users is

    @Manual{,
      title = {describer: Describe Data in R Using Common Descriptive Statistics},
      author = {Paul Hendricks},
      year = {2015},
      note = {R package version 0.2.0},
      url = {https://CRAN.R-project.org/package=describer},
    }
