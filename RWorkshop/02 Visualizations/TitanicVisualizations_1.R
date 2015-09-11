df1 <- df
require(extrafont)
require(ggplot2)

ggplot() + 
  coord_cartesian() + 
  scale_x_continuous() +
  scale_y_continuous() +
  labs(title='Titanic') +
  labs(x="Age", y=paste("Fare")) +
  layer(data=df1, 
        mapping=aes(x=as.numeric(as.character(AGE)), y=as.numeric(as.character(FARE)), color=SEX), 
        stat="identity", 
        stat_params=list(), 
        geom="point",
        geom_params=list(), 
        position=position_jitter(width=0.3, height=0)
  )

#Not sure what this plot is, its not required just keeping it here as a guide to look at also it gives errors but finishes.
# ggplot() + 
#   coord_cartesian() + 
#   scale_x_discrete() +
#   scale_y_continuous() +
#   #facet_grid(PCLASS~SURVIVED) +
#   labs(title='Titanic') +
#   labs(x="SURVIVED", y=paste("FARE")) +
#   layer(data=df, 
#         mapping=aes(x=SEX, y=as.numeric(as.character(FARE)), color=as.character(SURVIVED)), 
#         stat="identity", 
#         stat_params=list(), 
#         geom="point",
#         geom_params=list(), 
#         #position=position_identity()
#         position=position_jitter(width=0.3, height=0)
#   )
