# UX Cheatsheet

## Metrics:
### Net Promoter Score
- for estimating NPS from ratings, use `nps_estimator()`
- to get the detailed group sizes, use it with `detail = TRUE` parameter

## Benchmark tests:
- for small samples, use `benchmark_test_small_sample()`
- for large samples, use `benchmark_test_large_sample()`
- for continuous data, use `benchmark_continuous()`
- for task times, and other right tailed data, use `benchmark_task_time()`

## Estimating confidence intervals:
- for success rates, use `confidence_adjusted_wald()`
- for continuous data, `confidence_t()` is advised
- for positively skewed data, e.g. task times, use `confidence_log()`
- for computing confidence interval for the median, use `confidence_percentile()` with 50th percentile
