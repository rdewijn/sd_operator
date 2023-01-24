# sd operator

##### Description
`pooled_sd` operator computes the pooled standard deviation of a set of data points divided in N groups.

##### Usage

Input projection|.
---|---
`y-axis`        | is the input data for the pooled sd, per cell 
`x-axis`        | is the groups to use for the pooled sd

Output relations|.
---|---
`pooled.sd`          | numeric, pooled sd of the input values

##### Details
The operator takes all the values of a cell and calculates their standard deviation. The computation is done per cell. There is one value calculated and returned for each of the input cell.

#### References
The calculation is performed according to the method described here:
https://www.statisticshowto.com/pooled-standard-deviation/

##### See Also



