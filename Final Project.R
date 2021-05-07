library(tidyverse)
library(ggplot2)
library(lme4)
library(partykit)
library(randomForest)
subscriber_info <- read.csv("SubscriberClean.csv")
#subscriber_info <- subscriber_info %>% filter(Currency == "USD")
#subscriber_info <- subscriber_info %>% filter(Purchase.Amount > 1)
#subscriber_info <- subscriber_info %>% filter(Purchase.Amount < 299)
#subscriber_info <-  subscriber_info[!complete.cases(subscriber_info)] 
#subscriber_info <- subscriber_info[!subscriber_info$Purchase.Amount == "null", ]
#subscriber_info <- subscriber_info[!subscriber_info$Purchase.Amount == "0", ]
#subscriber_info <- subscriber_info[!subscriber_info$Purchase.Amount < "299", ]
model <- lm(formula = Days.Subscribed ~ Subscription.Type + Demo.User + 
              Auto.Renew + Free.Trial.User + Email.Subscriber, data = subscriber_info)
summary(model)

model2 <- lm(formula = Purchase.Amount ~ Subscription.Type + Demo.User + 
              Auto.Renew + Free.Trial.User + Email.Subscriber, data = subscriber_info)
summary(model2)

#plot <- ggplot(lm)
#ggplot(data = subscriber_info, mapping = aes(x = Subscription.Type, y = Days.Subscribed)) + geom_point() + stat_smooth()

subscriber_lessthan1yr <- read.csv("SubscriberCleanUnder1Year.csv")
model2 <- lm(formula = Days.Subscribed ~ Demo.User + Auto.Renew + Free.Trial.User 
             + Email.Subscriber + Open.Count + Subscription.Event.Type + Send.Count.Group
             + Click.Count.Group + Unique.Open.Count.Group , data = subscriber_lessthan1yr)
summary(model2)
