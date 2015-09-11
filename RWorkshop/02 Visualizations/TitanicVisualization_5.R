df5 <- subset(df, as.numeric(as.character(AGE)) <= 10 & (SEX == 'female' | SEX == 'male'))
require(extrafont)
require(ggplot2)

ggplot() + 
  coord_cartesian() + 
  scale_x_discrete() +
  scale_y_continuous() +
  facet_grid(PCLASS~SURVIVED, labeller=label_both) +
  labs(title='Titanic where age <=10') +
  labs(x="SURVIVED", y=paste("FARE")) +
  layer(data=df5, 
        mapping=aes(x=SEX, y=as.numeric(as.character(FARE)), color=SEX), 
        stat="identity", 
        stat_params=list(), 
        geom="point",
        geom_params=list(), 
        position=position_jitter(width=.3, height=0)
  )
