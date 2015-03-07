library("plyr")
library("dplyr")
library("tidyr")


T1 <- aircraft %>% group_by(AIRCRAFT_COUNTRY_AREA) %>% summarise(NUMBER_DATAPOINTS=n()); T2 <- ammo %>% group_by(AMMO_COUNTRY_AREA) %>% summarise(NUMBER_DATAPOINTS=n()); T3 <- leather %>% group_by(AL_COUNTRY_AREA) %>% summarise(NUMBER_DATAPOINTS=n()); G1 <- inner_join(T1,T2,by="NUMBER_DATAPOINTS") %>% inner_join(.,T3,by="NUMBER_DATAPOINTS") %>% arrange(NUMBER_DATAPOINTS)  %>% select(NUMBER_DATAPOINTS,AIRCRAFT_COUNTRY_AREA,AMMO_COUNTRY_AREA,AL_COUNTRY_AREA)
tbl_df(G1)

S1 <- aircraft %>% group_by(AIRCRAFT_COUNTRY_AREA) %>% summarise(NUMBER_DATAPOINTS=n()); S2 <- ammo %>% group_by(AMMO_COUNTRY_AREA) %>% summarise(NUMBER_DATAPOINTS=n()); S3 <- leather %>% group_by(AL_COUNTRY_AREA) %>% summarise(NUMBER_DATAPOINTS=n()); G2 <- full_join(T1,T2,by="NUMBER_DATAPOINTS") %>% full_join(.,T3,by="NUMBER_DATAPOINTS") %>% arrange(NUMBER_DATAPOINTS) %>% select(NUMBER_DATAPOINTS,AIRCRAFT_COUNTRY_AREA,AMMO_COUNTRY_AREA,AL_COUNTRY_AREA) 
tbl_df(G2)

R1 <- aircraft %>% select(AIRCRAFT_YEAR,AIRCRAFT_COUNTRY_AREA) %>% distinct() %>% mutate(YEAR=as.character(AIRCRAFT_YEAR)) %>% mutate(COUNTRY=as.character(AIRCRAFT_COUNTRY_AREA)) %>% select(YEAR,COUNTRY); R2 <- ammo %>% select(AMMO_YEAR,AMMO_COUNTRY_AREA) %>% distinct() %>% mutate(YEAR=as.character(AMMO_YEAR)) %>% mutate(COUNTRY=as.character(AMMO_COUNTRY_AREA)) %>% select(YEAR,COUNTRY); R3 <- leather %>% select(AL_YEAR,AL_COUNTRY_AREA) %>% distinct() %>% mutate(YEAR=as.character(AL_YEAR)) %>% mutate(COUNTRY=as.character(AL_COUNTRY_AREA)) %>% select(YEAR,COUNTRY); G3 <- intersect(R1,R2) %>% intersect(.,R3) %>% arrange(YEAR) %>% arrange(COUNTRY)
tbl_df(G3)

aircrafttrades <- G2 %>% select(NUMBER_DATAPOINTS, AIRCRAFT_COUNTRY_AREA) %>% filter(!is.na(AIRCRAFT_COUNTRY_AREA)) %>% slice(208:213)
tbl_df(aircrafttrades)

ammotrades <- G2 %>% select(NUMBER_DATAPOINTS, AMMO_COUNTRY_AREA) %>% filter(!is.na(AMMO_COUNTRY_AREA)) %>% slice(198:206)
tbl_df(ammotrades)

altrades <- G2 %>% select(NUMBER_DATAPOINTS, AL_COUNTRY_AREA) %>% filter(!is.na(AL_COUNTRY_AREA)) %>% slice(207:212)
tbl_df(altrades)

yc1<- G3 %>% group_by(COUNTRY,YEAR) %>% summarise(countries=n_distinct(YEAR)) %>% slice(300:318.5)

tbl_df(yc1)


