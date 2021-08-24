# linear regression example
x=1:10
y=c(1,3,5,8,11,14,18,21,25,28)
res=lm(y~x)

# HW
X = rbind(c(1,1,1^2),c(1,2,2^2),c(1,3,3^2),c(1,4,4^2),c(1,5,5^2),c(1,6,6^2),c(1,7,7^2),c(1,8,8^2),c(1,9,9^2),c(1,10,10^2))
print(t(X) %*% X)
Y=c(1,3,5,8,11,14,18,21,25,28)
beta_estimated = solve(t(X) %*% X) %*% t(X) %*% Y 
  # solve(X) is inverse(X)
