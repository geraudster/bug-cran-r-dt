# DT issue

## Reproduce

Build docker image:
```
docker build -t bug-r-cran-dt .
```

Run it:
```
docker run --rm -p 3838:3838 -it bug-r-cran-dt
```

Open http://localhost:3838, the table is not displayed and 404 error is raised when loading http://localhost:3838/dt-core-1.10.20/js/jquery.dataTables.min.js

In the console, sessionInfos gives:

```
R version 4.0.0 (2020-04-24)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Debian GNU/Linux bullseye/sid

Matrix products: default
BLAS:   /usr/lib/x86_64-linux-gnu/blas/libblas.so.3.9.0
LAPACK: /usr/lib/x86_64-linux-gnu/lapack/liblapack.so.3.9.0

locale:
 [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
 [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
 [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
 [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
 [9] LC_ADDRESS=C               LC_TELEPHONE=C            
[11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] DT_0.13       shiny_1.4.0.2

loaded via a namespace (and not attached):
 [1] htmlwidgets_1.5.1 compiler_4.0.0    fastmap_1.0.1     magrittr_1.5     
 [5] R6_2.4.1          promises_1.1.0    later_1.0.0       htmltools_0.4.0  
 [9] Rcpp_1.0.4.6      digest_0.6.25     xtable_1.8-4      httpuv_1.5.2     
[13] mime_0.9          rlang_0.4.6      
```

