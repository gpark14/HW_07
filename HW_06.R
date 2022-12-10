

#1

combined <- data.frame(x = c(110.5, 105.4, 118.1, 104.5, 93.6, 84.1, 77.8, 75.6), y = c(5.755, 5.939, 6.010, 6.545, 6.730, 6.750, 6.899, 7.862))
coef(lm(combined))

anova(lm(combined))
summary(lm(combined))

plot(combined$x, combined$y, xlab = "Plant Height", ylab = "Grain Yield")
abline(lm(combined))
confint(lm(combined))
anova(lm(combined))

predict(lm(combined, newdata = data.frame(x = 100), interval = "prediction"))



combined_2 <- data.frame(x = c(1, 2, 3, 4, 5, 6, 7, 8, 9),y = c(-2.08, -0.72, 0.28, 0.92, 1.20, 1.12, 0.68, -0.12, -1.28))

plot(combined_2$x, combined_2$y, xlab = "Plant Height", ylab = "Grain Yield")
anova(lm(combined_2))
confint(lm(combined_2))


