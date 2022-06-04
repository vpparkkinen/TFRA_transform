# Totally fuzzy and relative alternative (TFRA) specification (Filippone, Cheli, & D'Agostino (2001))

`TFRA_transform()` applies the alternative specification of TFR by Filippone, Cheli, & Agostino to a numeric vector and returns
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
Ref.:

Andrea Filippone, Bruno Cheli, Antonella D ’Agostino (October 2001) ‘Addressing the
Interpretation and the Aggregation Problems in Totally Fuzzy and Relative Poverty Measures’,
Working Papers of the Institute for Social and Economic Research , paper 2001-22. Colchester:
University of Essex.
