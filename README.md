UX Cheatsheet

Estimating confidence intervals:
- for success rates, use `confidence_adjusted_wald()`
- for continuous data, `confidence_t()` is advised
- for positively skewed data, e.g. task times, use `confidence_log()`
- for computing confidence interval for the median, use `confidence_percentile()` with 50th percentile
