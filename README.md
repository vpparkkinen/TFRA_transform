# Totally fuzzy and relative alternative (TFRA) specification,Filippone A, Cheli B, D'Agostino A (2001)

`TFRA_transform()` applies TFRA to a numeric vector and returns
a transformed vector. Not thoroughly tested, please
test yourself first if you use this for serious work.
Does no checks whatsoever, please make sure you give
the function the right kind of input.

Example

```
fake_data <- data.frame(A=c(2,2,2,2,3,1,1), B=c(2,2,3,2,3,2,2))
fake_data

# transform data
tr_dat <- as.data.frame(apply(fake_data, 2, TFRA_transform))

# Check that all column means are 0.5
colMeans(tr_dat) # OK!

```
