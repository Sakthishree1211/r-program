#install.package(devtools)
#INMPORTING LIBRARIES
library(rvest)
library(dplyr)
library(robotstxt)
library(stringr)

#Scraping Website
url<- "https://www.amazon.in/s?k=phones+under+25k%2B&crid=1SUJJEP4F7EWU&sprefix=phones+under+2%2Caps%2C516&ref=nb_sb_ss_mvt-t11-ranker_2_14"

#Allowability
path=paths_allowed(url)

#HTML from the website
Web=read_html(url)
View(web)

#Segregating Names
name<-web %>% html_nodes("")%>% html_text()
View(name)

price<-web %>% html_nodes("")%>% html_text()
View(price)

display<-web %>% html_nodes("")%>% html_text()
View(display)

processor<-web %>% html_nodes("")%>% html_text()
View(processor)

camera<-web %>% html_nodes("")%>% html_text()
View(camera)

#Creating Dataframe
mobile=data.frame(name,price,display,prosessor,camera)
View(mobile)

#Saving as csv file
write.csv(mobile,"Amazon_mobiles.csv")