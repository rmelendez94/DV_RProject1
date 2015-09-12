#Copy original data frame excluding null sex
df4 <- subset(df, SEX == 'female' | SEX == 'male')
require(extrafont)
require(ggplot2)

#Create Point Plot; Survived/Fare/Sex/PClass
ggplot() + 
  coord_cartesian() + 
  scale_x_discrete() +
  scale_y_continuous() +
  facet_grid(PCLASS~SURVIVED, labeller=label_both) +
  labs(title='Titanic') +
  labs(x="SURVIVED", y=paste("FARE")) +
  layer(data=df4, 
        mapping=aes(x=SEX, y=as.numeric(as.character(FARE)), color=SEX), 
        stat="identity", 
        stat_params=list(), 
        geom="point",
        geom_params=list(), 
        position=position_jitter(width=.3, height=0)
  )
