library("plyr")
library("dplyr")
library("tidyr")

View(aircraft)
View(ammo)

T1 <- aircraft %>% group_by(AIRCRAFT_COUNTRY_AREA) %>% summarise(NUMBER_DATAPOINTS=n()); T2 <- ammo %>% group_by(AMMO_COUNTRY_AREA) %>% summarise(NUMBER_DATAPOINTS=n()); T3 <- leather %>% group_by(AL_COUNTRY_AREA) %>% summarise(NUMBER_DATAPOINTS=n()); G1 <- inner_join(T1,T2,by="NUMBER_DATAPOINTS") %>% inner_join(.,T3,by="NUMBER_DATAPOINTS")
tbl_df(G1)

S1 <- aircraft %>% group_by(AIRCRAFT_COUNTRY_AREA) %>% summarise(NUMBER_DATAPOINTS=n()); S2 <- ammo %>% group_by(AMMO_COUNTRY_AREA) %>% summarise(NUMBER_DATAPOINTS=n()); S3 <- leather %>% group_by(AL_COUNTRY_AREA) %>% summarise(NUMBER_DATAPOINTS=n()); G2 <- full_join(T1,T2,by="NUMBER_DATAPOINTS") %>% full_join(.,T3,by="NUMBER_DATAPOINTS")
tbl_df(G2)

R1 <- aircraft %>% select(AIRCRAFT_YEAR,AIRCRAFT_COUNTRY_AREA) %>% distinct() %>% mutate(YEAR=as.character(AIRCRAFT_YEAR)) %>% mutate(COUNTRY=as.character(AIRCRAFT_COUNTRY_AREA)) %>% select(YEAR,COUNTRY); R2 <- ammo %>% select(AMMO_YEAR,AMMO_COUNTRY_AREA) %>% distinct() %>% mutate(YEAR=as.character(AMMO_YEAR)) %>% mutate(COUNTRY=as.character(AMMO_COUNTRY_AREA)) %>% select(YEAR,COUNTRY); R3 <- leather %>% select(AL_YEAR,AL_COUNTRY_AREA) %>% distinct() %>% mutate(YEAR=as.character(AL_YEAR)) %>% mutate(COUNTRY=as.character(AL_COUNTRY_AREA)) %>% select(YEAR,COUNTRY); G3 <- intersect(R1,R2) %>% intersect(.,R3)
tbl_df(G3)