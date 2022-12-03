# Dockerized vdjtools

- OS debian:7
- R 3.1.0(rocker/r-ver:3.1.0)

[https://vdjtools-doc.readthedocs.io/en/master/install.html](https://vdjtools-doc.readthedocs.io/en/master/install.html)

sometimes `yyasumizu/vdjtools` fails to draw plots due to the R version. In that case, Re-run the R command with `yyasumizu/vdjtools-r`.

r-ver:3.1.0 uses the old OpenBlas and OS. Many errors would occur when you edit the `Dockerfile`. Users cannot run it HPC which has >64 cores.