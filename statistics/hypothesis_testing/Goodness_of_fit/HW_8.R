#unbiased sample variance (MLE)
sample_variance = sum((X-mean(X))^2) / (length(X)-1)

#Goodness of fit test (discrete distribution; Chi-square test)
n = 275
p_hat = c(205, 26, 25, 19)/275
p_naught = c(0.72, 0.07, 0.12, 0.09)
T_n = n * sum((p_hat - p_naught)^2 / p_naught)
p_value = 1- pchisq(T_n, df=3, lower.tail = TRUE)
p_value = pchisq(T_n, df=3, lower.tail = FALSE)


#KS Test
X = sort(c(0.28, 0.2, 0.01, 0.80, 0.1))
F_naught_X = X #uniform distribution
F_naught_X = pnorm(X, mean=0.278, sd=0.09552^(1/2)) #CMD of normal distribution
n = length(X)

##to get test static
T_n = rep(0,n)
for (i in 1:n){
    T_n[i] = max(abs((i-1)/n - F_naught_X[i]), abs(i/n - F_naught_X[i]))
}
T_n = sqrt(n) * max(T_n)
