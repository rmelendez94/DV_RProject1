#in 1911 Life Expectancy was 52 average, we chose a number to try and get the upper quartile of those onboard.
df6 <- subset(df, as.numeric(as.character(AGE)) >= 40 & (SEX == 'female' | SEX == 'male'))

require(extrafont)
require(ggplot2)

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
