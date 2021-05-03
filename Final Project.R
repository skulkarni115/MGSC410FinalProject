library(tidyverse)
library(ggplot2)
library(lme4)
subscriber_info <- read.csv("SubscriberClean.csv")
#subscriber_info <- subscriber_info %>% filter(Currency == "USD")
#subscriber_info <- subscriber_info %>% filter(Purchase.Amount > 1)
#subscriber_info <- subscriber_info %>% filter(Purchase.Amount < 299)
#subscriber_info <-  subscriber_info[!complete.cases(subscriber_info)] 
#subscriber_info <- subscriber_info[!subscriber_info$Purchase.Amount == "null", ]
#subscriber_info <- subscriber_info[!subscriber_info$Purchase.Amount == "0", ]
#subscriber_info <- subscriber_info[!subscriber_info$Purchase.Amount < "299", ]
model <- lm(formula = Days.Subscribed ~ Subscription.Type + Demo.User + Auto.Renew + Free.Trial.User + Email.Subscriber, data = subscriber_info)
summary(model)

plot <- ggplot(lm)
