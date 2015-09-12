#In 1911 Life Expectancy was 52 years average, we chose a number to try and get the upper quartile of those onboard.

#Copy original data frame excluding null sex and age 39-
df6 <- subset(df, as.numeric(as.character(AGE)) >= 40 & (SEX == 'female' | SEX == 'male'))

require(extrafont)
require(ggplot2)

#Create the Bar Plot; Survived/Sex/Count/PClass/Age(40+)
ggplot() + 
  coord_cartesian() + 
  scale_x_discrete() +
  scale_y_continuous() +
  facet_grid(PCLASS~SURVIVED, labeller=label_both) +
  labs(title='Titanic Seniors (Age >= 40)') +
  labs(x="SURVIVED", y=paste("COUNT")) +
  layer(data=df6, 
        mapping=aes(x=SEX, color=SEX, fill=SEX), 
        stat="bin", 
        stat_params=list(), 
        geom="bar",
        geom_params = list(), 
        position = position_identity()
  )
