library(purrr)
library(devtools)
library(usethis)

poisson  <- list(distribution = "poisson", lambda = 2.0, obs = 20)
normal <- list(distribution = "normal", mu = 1.2, sigma2 = 1.0, obs = 25)
bernoulli <- list(distribution = "bernoulli", p = 0.3, obs = 30)


#Generate_Sample <- function(distribution){
#  if(distribution == "poisson"){
#    dist = dpois(x = seq(1,poisson$obs, 1), lambda = poisson$lambda)
#    print(dist)
#  }
#  else if(distribution == "normal"){
#    dist = rnorm(n = normal$obs, mean = normal$mu, sd=sqrt(normal$sigma2))
#    print(dist)
#  }
#  else if(distribution == "bernoulli"){
#    dist = rbinom(n = bernoulli$obs, size = 1, prob = bernoulli$p)
#    print(dist)
#  }}

Generate_Sample <- function(distribution){
  ifelse(distribution == "poisson", 
         print(dpois(x = seq(1,poisson$obs, 1),lambda = poisson$lambda)),
         ifelse(distribution == "normal", 
                print(rnorm(n = normal$obs, mean = normal$mu, sd=sqrt(normal$sigma2))),
                print(rbinom(n = bernoulli$obs, size = 1, prob = bernoulli$p))))}

