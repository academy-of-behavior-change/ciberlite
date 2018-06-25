data <- read.csv("survey_675712_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE)


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: A
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "Dit is een onderzoek naar acht soorten gedrag. Over elk gedrag worden zeven vragen gesteld om in kaart te brengen hoe u over het gedrag denkt. Het doel van het onderzoek is om te kijken of de redenen die mensen voor elk gedrag geven ongeveer hetzelfde zijn. Is het bijvoorbeeld voor elk gedrag even belangrijk hoe prettig mensen het vinden, of wat andere mensen doen?	Deze studie is zo opgezet dat alle data anoniem worden verzameld. Deze zijn dus nooit naar u te herleiden. Bovendien kunt u op elk moment stoppen. Als u nog vragen heeft kunt u die altijd stellen via ciberlite@a-bc.eu. Alleen personen van 18 jaar en ouder mogen meedoen aan deze studie.	Door akkoord te gaan met deelname geeft u aan bovenstaande tekst te hebben gelezen en begrepen, geeft u aan dat u 18 jaar of ouder bent, en geeft u toestemming om uw data, die anoniem zullen worden verzameld, te gebruiken voor wetenschappelijk onderzoek."
data[, 5] <- factor(data[, 5], levels=c("yes","no"),labels=c("Ja, ik ga akkoord met deelname.", "Nee, ik ga niet akkoord met deelname."))
names(data)[5] <- "informedConsent"
# LimeSurvey Field type: A
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "Jammer dat u heeft besloten niet mee te doen met deze studie. Wij zijn heel benieuwd waarom: als u wilt kunt u de reden hiervoor hieronder aangeven."
names(data)[6] <- "noConsentReason"
# LimeSurvey Field type: F
data[, 7] <- as.numeric(data[, 7])
attributes(data)$variable.labels[7] <- "[Ik ben van plan om de komende minuten een vragenlijst in te vullen.Absoluut niet | Absoluut wel] 	Dit is een oefenvraag, om te wennen aan de vragen die we stellen.	Deze vragen gaan over de komende minuten een vragenlijst invullen.	 "
data[, 7] <- factor(data[, 7], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[7] <- "practiceBehavior_intention"
# LimeSurvey Field type: F
data[, 8] <- as.numeric(data[, 8])
attributes(data)$variable.labels[8] <- "[Voor mijzelf is de komende minuten een vragenlijst invullen ...Slecht | Goed] 	Dit is een oefenvraag, om te wennen aan de vragen die we stellen.	Deze vragen gaan over de komende minuten een vragenlijst invullen.	 "
data[, 8] <- factor(data[, 8], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[8] <- "practiceBehavior_attInstrumental"
# LimeSurvey Field type: F
data[, 9] <- as.numeric(data[, 9])
attributes(data)$variable.labels[9] <- "[Voor mijzelf is de komende minuten een vragenlijst invullen ...Onprettig | Prettig] 	Dit is een oefenvraag, om te wennen aan de vragen die we stellen.	Deze vragen gaan over de komende minuten een vragenlijst invullen.	 "
data[, 9] <- factor(data[, 9], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[9] <- "practiceBehavior_attExperiential"
# LimeSurvey Field type: F
data[, 10] <- as.numeric(data[, 10])
attributes(data)$variable.labels[10] <- "[Als ik de komende minuten een vragenlijst invul, dan keuren de meeste mensen die belangrijk voor mij zijn dat ...Af | Goed] 	Dit is een oefenvraag, om te wennen aan de vragen die we stellen.	Deze vragen gaan over de komende minuten een vragenlijst invullen.	 "
data[, 10] <- factor(data[, 10], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[10] <- "practiceBehavior_pnInjunctive"
# LimeSurvey Field type: F
data[, 11] <- as.numeric(data[, 11])
attributes(data)$variable.labels[11] <- "[Hoeveel van de mensen die zijn zoals jij vullen de komende minuten een vragenlijst in?Niemand | Iedereen] 	Dit is een oefenvraag, om te wennen aan de vragen die we stellen.	Deze vragen gaan over de komende minuten een vragenlijst invullen.	 "
data[, 11] <- factor(data[, 11], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[11] <- "practiceBehavior_pnDescriptive"
# LimeSurvey Field type: F
data[, 12] <- as.numeric(data[, 12])
attributes(data)$variable.labels[12] <- "[Ik heb er vertrouwen in dat als ik dat wil, ik de komende minuten een vragenlijst in kan vullen.Helemaal geen vertrouwen | Heel veel vertrouwen] 	Dit is een oefenvraag, om te wennen aan de vragen die we stellen.	Deze vragen gaan over de komende minuten een vragenlijst invullen.	 "
data[, 12] <- factor(data[, 12], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[12] <- "practiceBehavior_pbcCapacity"
# LimeSurvey Field type: F
data[, 13] <- as.numeric(data[, 13])
attributes(data)$variable.labels[13] <- "[Of ik de komende minuten een vragenlijst invul, bepaal ik ...Helemaal niet zelf | Helemaal zelf] 	Dit is een oefenvraag, om te wennen aan de vragen die we stellen.	Deze vragen gaan over de komende minuten een vragenlijst invullen.	 "
data[, 13] <- factor(data[, 13], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[13] <- "practiceBehavior_pbcControl"
# LimeSurvey Field type: F
data[, 14] <- as.numeric(data[, 14])
attributes(data)$variable.labels[14] <- "[Ik ben van plan om de komende maand helemaal geen koffie te drinken.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 14] <- factor(data[, 14], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[14] <- "coffee_intention"
# LimeSurvey Field type: F
data[, 15] <- as.numeric(data[, 15])
attributes(data)$variable.labels[15] <- "[Voor mijzelf is de komende maand helemaal geen koffie drinken ...Slecht | Goed] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 15] <- factor(data[, 15], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[15] <- "coffee_attInstrumental"
# LimeSurvey Field type: F
data[, 16] <- as.numeric(data[, 16])
attributes(data)$variable.labels[16] <- "[Voor mijzelf is de komende maand helemaal geen koffie drinken ...Onprettig | Prettig] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 16] <- factor(data[, 16], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[16] <- "coffee_attExperiential"
# LimeSurvey Field type: F
data[, 17] <- as.numeric(data[, 17])
attributes(data)$variable.labels[17] <- "[Als ik de komende maand helemaal geen koffie drink, dan keuren de meeste mensen die belangrijk voor mij zijn dat ...Af | Goed] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 17] <- factor(data[, 17], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[17] <- "coffee_pnInjunctive"
# LimeSurvey Field type: F
data[, 18] <- as.numeric(data[, 18])
attributes(data)$variable.labels[18] <- "[Hoeveel van de mensen die zijn zoals jij drinken de komende maand helemaal geen koffie?Niemand | Iedereen] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 18] <- factor(data[, 18], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[18] <- "coffee_pnDescriptive"
# LimeSurvey Field type: F
data[, 19] <- as.numeric(data[, 19])
attributes(data)$variable.labels[19] <- "[Ik heb er vertrouwen in dat als ik dat wil, ik de komende maand helemaal geen koffie kan drinken.Helemaal geen vertrouwen | Heel veel vertrouwen] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 19] <- factor(data[, 19], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[19] <- "coffee_pbcCapacity"
# LimeSurvey Field type: F
data[, 20] <- as.numeric(data[, 20])
attributes(data)$variable.labels[20] <- "[Of ik de komende maand helemaal geen koffie drink, bepaal ik ...Helemaal niet zelf | Helemaal zelf] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 20] <- factor(data[, 20], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[20] <- "coffee_pbcControl"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "{self.gseq + 1}"
names(data)[21] <- "coffeeOrder"
# LimeSurvey Field type: F
data[, 22] <- as.numeric(data[, 22])
attributes(data)$variable.labels[22] <- "[Ik ben van plan om de komende maand vooral met het openbaar vervoer te reizen.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand vooral met het openbaar vervoer reizen."
data[, 22] <- factor(data[, 22], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[22] <- "publicTransport_intention"
# LimeSurvey Field type: F
data[, 23] <- as.numeric(data[, 23])
attributes(data)$variable.labels[23] <- "[Voor mijzelf is de komende maand vooral met het openbaar vervoer reizen ...Slecht | Goed] Deze vragen gaan over de komende maand vooral met het openbaar vervoer reizen."
data[, 23] <- factor(data[, 23], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[23] <- "publicTransport_attInstrumental"
# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[Voor mijzelf is de komende maand vooral met het openbaar vervoer reizen ...Onprettig | Prettig] Deze vragen gaan over de komende maand vooral met het openbaar vervoer reizen."
data[, 24] <- factor(data[, 24], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[24] <- "publicTransport_attExperiential"
# LimeSurvey Field type: F
data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[Als ik de komende maand vooral met het openbaar vervoer zou reizen, dan keuren de meeste mensen die belangrijk voor mij zijn dat ...Af | Goed] Deze vragen gaan over de komende maand vooral met het openbaar vervoer reizen."
data[, 25] <- factor(data[, 25], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[25] <- "publicTransport_pnInjunctive"
# LimeSurvey Field type: F
data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "[Hoeveel van de mensen die zijn zoals jij reizen de komende maand vooral met het openbaar vervoer?Niemand | Iedereen] Deze vragen gaan over de komende maand vooral met het openbaar vervoer reizen."
data[, 26] <- factor(data[, 26], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[26] <- "publicTransport_pnDescriptive"
# LimeSurvey Field type: F
data[, 27] <- as.numeric(data[, 27])
attributes(data)$variable.labels[27] <- "[Ik heb er vertrouwen in dat als ik dat wil, ik de komende maand vooral met het openbaar vervoer kan reizen.Helemaal geen vertrouwen | Heel veel vertrouwen] Deze vragen gaan over de komende maand vooral met het openbaar vervoer reizen."
data[, 27] <- factor(data[, 27], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[27] <- "publicTransport_pbcCapacity"
# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "[Of ik de komende maand vooral met het openbaar vervoer reis, bepaal ik ...Helemaal niet zelf | Helemaal zelf] Deze vragen gaan over de komende maand vooral met het openbaar vervoer reizen."
data[, 28] <- factor(data[, 28], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[28] <- "publicTransport_pbcControl"
# LimeSurvey Field type: A
data[, 29] <- as.character(data[, 29])
attributes(data)$variable.labels[29] <- "{self.gseq + 1}"
names(data)[29] <- "publicTransportOrder"
# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "[Ik ben van plan om de komende maand soms door rood licht te fietsen.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand soms door rood licht fietsen."
data[, 30] <- factor(data[, 30], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[30] <- "runRedLight_intention"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[Voor mijzelf is de komende maand soms door rood licht fietsen ...Slecht | Goed] Deze vragen gaan over de komende maand soms door rood licht fietsen."
data[, 31] <- factor(data[, 31], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[31] <- "runRedLight_attInstrumental"
# LimeSurvey Field type: F
data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[Voor mijzelf is de komende maand soms door rood licht fietsen ...Onprettig | Prettig] Deze vragen gaan over de komende maand soms door rood licht fietsen."
data[, 32] <- factor(data[, 32], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[32] <- "runRedLight_attExperiential"
# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[Als ik de komende maand soms door rood licht fiets, dan keuren de meeste mensen die belangrijk voor mij zijn dat ...Af | Goed] Deze vragen gaan over de komende maand soms door rood licht fietsen."
data[, 33] <- factor(data[, 33], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[33] <- "runRedLight_pnInjunctive"
# LimeSurvey Field type: F
data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "[Hoeveel van de mensen die zijn zoals jij fietsen de komende maand soms door rood licht?Niemand | Iedereen] Deze vragen gaan over de komende maand soms door rood licht fietsen."
data[, 34] <- factor(data[, 34], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[34] <- "runRedLight_pnDescriptive"
# LimeSurvey Field type: F
data[, 35] <- as.numeric(data[, 35])
attributes(data)$variable.labels[35] <- "[Ik heb er vertrouwen in dat als ik dat wil, ik de komende maand soms door rood licht kan fietsen.Helemaal geen vertrouwen | Heel veel vertrouwen] Deze vragen gaan over de komende maand soms door rood licht fietsen."
data[, 35] <- factor(data[, 35], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[35] <- "runRedLight_pbcCapacity"
# LimeSurvey Field type: F
data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- "[Of ik de komende maand soms door rood licht fiets, bepaal ik ...Helemaal niet zelf | Helemaal zelf] Deze vragen gaan over de komende maand soms door rood licht fietsen."
data[, 36] <- factor(data[, 36], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[36] <- "runRedLight_pbcControl"
# LimeSurvey Field type: A
data[, 37] <- as.character(data[, 37])
attributes(data)$variable.labels[37] <- "{self.gseq + 1}"
names(data)[37] <- "runRedLightOrder"
# LimeSurvey Field type: F
data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- "[Ik ben van plan om de komende maand mijn afval altijd nauwkeurig te scheiden.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand uw afval altijd nauwkeurig scheiden."
data[, 38] <- factor(data[, 38], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[38] <- "wasteSeparation_intention"
# LimeSurvey Field type: F
data[, 39] <- as.numeric(data[, 39])
attributes(data)$variable.labels[39] <- "[Voor mijzelf is de komende maand mijn afval altijd nauwkeurig scheiden ...Slecht | Goed] Deze vragen gaan over de komende maand uw afval altijd nauwkeurig scheiden."
data[, 39] <- factor(data[, 39], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[39] <- "wasteSeparation_attInstrumental"
# LimeSurvey Field type: F
data[, 40] <- as.numeric(data[, 40])
attributes(data)$variable.labels[40] <- "[Voor mijzelf is de komende maand mijn afval altijd nauwkeurig scheiden ...Onprettig | Prettig] Deze vragen gaan over de komende maand uw afval altijd nauwkeurig scheiden."
data[, 40] <- factor(data[, 40], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[40] <- "wasteSeparation_attExperiential"
# LimeSurvey Field type: F
data[, 41] <- as.numeric(data[, 41])
attributes(data)$variable.labels[41] <- "[Als ik de komende maand mijn afval altijd nauwkeurig scheid, dan keuren de meeste mensen die belangrijk voor mij zijn dat ...Af | Goed] Deze vragen gaan over de komende maand uw afval altijd nauwkeurig scheiden."
data[, 41] <- factor(data[, 41], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[41] <- "wasteSeparation_pnInjunctive"
# LimeSurvey Field type: F
data[, 42] <- as.numeric(data[, 42])
attributes(data)$variable.labels[42] <- "[Hoeveel van de mensen die zijn zoals jij scheiden de komende maand hun afval altijd nauwkeurig?Niemand | Iedereen] Deze vragen gaan over de komende maand uw afval altijd nauwkeurig scheiden."
data[, 42] <- factor(data[, 42], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[42] <- "wasteSeparation_pnDescriptive"
# LimeSurvey Field type: F
data[, 43] <- as.numeric(data[, 43])
attributes(data)$variable.labels[43] <- "[Ik heb er vertrouwen in dat als ik dat wil, ik de komende maand mijn afval altijd nauwkeurig kan scheiden.Helemaal geen vertrouwen | Heel veel vertrouwen] Deze vragen gaan over de komende maand uw afval altijd nauwkeurig scheiden."
data[, 43] <- factor(data[, 43], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[43] <- "wasteSeparation_pbcCapacity"
# LimeSurvey Field type: F
data[, 44] <- as.numeric(data[, 44])
attributes(data)$variable.labels[44] <- "[Of ik de komende maand mijn afval altijd nauwkeurig scheid, bepaal ik ...Helemaal niet zelf | Helemaal zelf] Deze vragen gaan over de komende maand uw afval altijd nauwkeurig scheiden."
data[, 44] <- factor(data[, 44], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[44] <- "wasteSeparation_pbcControl"
# LimeSurvey Field type: A
data[, 45] <- as.character(data[, 45])
attributes(data)$variable.labels[45] <- "{self.gseq + 1}"
names(data)[45] <- "wasteSeparationOrder"
# LimeSurvey Field type: F
data[, 46] <- as.numeric(data[, 46])
attributes(data)$variable.labels[46] <- "[Ik ben van plan om de komende maand iemand voor 10.000 euro op te lichten.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand iemand voor 10.000 euro oplichten."
data[, 46] <- factor(data[, 46], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[46] <- "conSomebody_intention"
# LimeSurvey Field type: F
data[, 47] <- as.numeric(data[, 47])
attributes(data)$variable.labels[47] <- "[Voor mijzelf is de komende maand iemand voor 10.000 euro oplichten ...Slecht | Goed] Deze vragen gaan over de komende maand iemand voor 10.000 euro oplichten."
data[, 47] <- factor(data[, 47], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[47] <- "conSomebody_attInstrumental"
# LimeSurvey Field type: F
data[, 48] <- as.numeric(data[, 48])
attributes(data)$variable.labels[48] <- "[Voor mijzelf is de komende maand iemand voor 10.000 euro oplichten ...Onprettig | Prettig] Deze vragen gaan over de komende maand iemand voor 10.000 euro oplichten."
data[, 48] <- factor(data[, 48], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[48] <- "conSomebody_attExperiential"
# LimeSurvey Field type: F
data[, 49] <- as.numeric(data[, 49])
attributes(data)$variable.labels[49] <- "[Als ik de komende maand iemand voor 10.000 euro oplicht, dan keuren de meeste mensen die belangrijk voor mij zijn dat ...Af | Goed] Deze vragen gaan over de komende maand iemand voor 10.000 euro oplichten."
data[, 49] <- factor(data[, 49], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[49] <- "conSomebody_pnInjunctive"
# LimeSurvey Field type: F
data[, 50] <- as.numeric(data[, 50])
attributes(data)$variable.labels[50] <- "[Hoeveel van de mensen die zijn zoals jij lichten de komende maand iemand voor 10.000 euro op?Niemand | Iedereen] Deze vragen gaan over de komende maand iemand voor 10.000 euro oplichten."
data[, 50] <- factor(data[, 50], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[50] <- "conSomebody_pnDescriptive"
# LimeSurvey Field type: F
data[, 51] <- as.numeric(data[, 51])
attributes(data)$variable.labels[51] <- "[Ik heb er vertrouwen in dat als ik dat wil, ik de komende maand iemand voor 10.000 euro kan oplichten.Helemaal geen vertrouwen | Heel veel vertrouwen] Deze vragen gaan over de komende maand iemand voor 10.000 euro oplichten."
data[, 51] <- factor(data[, 51], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[51] <- "conSomebody_pbcCapacity"
# LimeSurvey Field type: F
data[, 52] <- as.numeric(data[, 52])
attributes(data)$variable.labels[52] <- "[Of ik de komende maand iemand voor 10.000 euro oplicht, bepaal ik ...Helemaal niet zelf | Helemaal zelf] Deze vragen gaan over de komende maand iemand voor 10.000 euro oplichten."
data[, 52] <- factor(data[, 52], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[52] <- "conSomebody_pbcControl"
# LimeSurvey Field type: A
data[, 53] <- as.character(data[, 53])
attributes(data)$variable.labels[53] <- "{self.gseq + 1}"
names(data)[53] <- "conSomebodyOrder"
# LimeSurvey Field type: F
data[, 54] <- as.numeric(data[, 54])
attributes(data)$variable.labels[54] <- "[Ik ben van plan om de komende maand een marathon uit te lopen.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 54] <- factor(data[, 54], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[54] <- "marathon_intention"
# LimeSurvey Field type: F
data[, 55] <- as.numeric(data[, 55])
attributes(data)$variable.labels[55] <- "[Voor mijzelf is de komende maand een marathon uitlopen ...Slecht | Goed] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 55] <- factor(data[, 55], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[55] <- "marathon_attInstrumental"
# LimeSurvey Field type: F
data[, 56] <- as.numeric(data[, 56])
attributes(data)$variable.labels[56] <- "[Voor mijzelf is de komende maand een marathon uitlopen ...Onprettig | Prettig] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 56] <- factor(data[, 56], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[56] <- "marathon_attExperiential"
# LimeSurvey Field type: F
data[, 57] <- as.numeric(data[, 57])
attributes(data)$variable.labels[57] <- "[Als ik de komende maand een marathon uitloop, dan keuren de meeste mensen die belangrijk voor mij zijn dat ...Af | Goed] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 57] <- factor(data[, 57], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[57] <- "marathon_pnInjunctive"
# LimeSurvey Field type: F
data[, 58] <- as.numeric(data[, 58])
attributes(data)$variable.labels[58] <- "[Hoeveel van de mensen die zijn zoals jij lopen de komende maand een marathon uit?Niemand | Iedereen] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 58] <- factor(data[, 58], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[58] <- "marathon_pnDescriptive"
# LimeSurvey Field type: F
data[, 59] <- as.numeric(data[, 59])
attributes(data)$variable.labels[59] <- "[Ik heb er vertrouwen in dat als ik dat wil, ik de komende maand een marathon kan uitlopen.Helemaal geen vertrouwen | Heel veel vertrouwen] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 59] <- factor(data[, 59], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[59] <- "marathon_pbcCapacity"
# LimeSurvey Field type: F
data[, 60] <- as.numeric(data[, 60])
attributes(data)$variable.labels[60] <- "[Of ik de komende maand een marathon uitloop, bepaal ik ...Helemaal niet zelf | Helemaal zelf] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 60] <- factor(data[, 60], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[60] <- "marathon_pbcControl"
# LimeSurvey Field type: A
data[, 61] <- as.character(data[, 61])
attributes(data)$variable.labels[61] <- "{self.gseq + 1}"
names(data)[61] <- "marathonOrder"
# LimeSurvey Field type: F
data[, 62] <- as.numeric(data[, 62])
attributes(data)$variable.labels[62] <- "[Ik ben van plan om de komende maand vaak extra lang te douchen.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand vaak extra lang douchen."
data[, 62] <- factor(data[, 62], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[62] <- "longShower_intention"
# LimeSurvey Field type: F
data[, 63] <- as.numeric(data[, 63])
attributes(data)$variable.labels[63] <- "[Voor mijzelf is de komende maand vaak extra lang douchen ...Slecht | Goed] Deze vragen gaan over de komende maand vaak extra lang douchen."
data[, 63] <- factor(data[, 63], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[63] <- "longShower_attInstrumental"
# LimeSurvey Field type: F
data[, 64] <- as.numeric(data[, 64])
attributes(data)$variable.labels[64] <- "[Voor mijzelf is de komende maand vaak extra lang douchen ...Onprettig | Prettig] Deze vragen gaan over de komende maand vaak extra lang douchen."
data[, 64] <- factor(data[, 64], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[64] <- "longShower_attExperiential"
# LimeSurvey Field type: F
data[, 65] <- as.numeric(data[, 65])
attributes(data)$variable.labels[65] <- "[Als ik de komende maand vaak extra lang douche, dan keuren de meeste mensen die belangrijk voor mij zijn dat ...Af | Goed] Deze vragen gaan over de komende maand vaak extra lang douchen."
data[, 65] <- factor(data[, 65], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[65] <- "longShower_pnInjunctive"
# LimeSurvey Field type: F
data[, 66] <- as.numeric(data[, 66])
attributes(data)$variable.labels[66] <- "[Hoeveel van de mensen die zijn zoals jij douchen de komende maand vaak extra lang?Niemand | Iedereen] Deze vragen gaan over de komende maand vaak extra lang douchen."
data[, 66] <- factor(data[, 66], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[66] <- "longShower_pnDescriptive"
# LimeSurvey Field type: F
data[, 67] <- as.numeric(data[, 67])
attributes(data)$variable.labels[67] <- "[Ik heb er vertrouwen in dat als ik dat wil, ik de komende maand vaak extra lang kan douchen.Helemaal geen vertrouwen | Heel veel vertrouwen] Deze vragen gaan over de komende maand vaak extra lang douchen."
data[, 67] <- factor(data[, 67], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[67] <- "longShower_pbcCapacity"
# LimeSurvey Field type: F
data[, 68] <- as.numeric(data[, 68])
attributes(data)$variable.labels[68] <- "[Of ik de komende maand vaak extra lang douche, bepaal ik ...Helemaal niet zelf | Helemaal zelf] Deze vragen gaan over de komende maand vaak extra lang douchen."
data[, 68] <- factor(data[, 68], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[68] <- "longShower_pbcControl"
# LimeSurvey Field type: A
data[, 69] <- as.character(data[, 69])
attributes(data)$variable.labels[69] <- "{self.gseq + 1}"
names(data)[69] <- "longShowerOrder"
# LimeSurvey Field type: F
data[, 70] <- as.numeric(data[, 70])
attributes(data)$variable.labels[70] <- "[Ik ben van plan om de komende maand elke dag mijn tanden te poetsen.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand elke dag je tanden poetsen."
data[, 70] <- factor(data[, 70], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[70] <- "brushingTeeth_intention"
# LimeSurvey Field type: F
data[, 71] <- as.numeric(data[, 71])
attributes(data)$variable.labels[71] <- "[Voor mijzelf is de komende maand elke dag mijn tanden poetsen ...Slecht | Goed] Deze vragen gaan over de komende maand elke dag je tanden poetsen."
data[, 71] <- factor(data[, 71], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[71] <- "brushingTeeth_attInstrumental"
# LimeSurvey Field type: F
data[, 72] <- as.numeric(data[, 72])
attributes(data)$variable.labels[72] <- "[Voor mijzelf is de komende maand elke dag mijn tanden poetsen ...Onprettig | Prettig] Deze vragen gaan over de komende maand elke dag je tanden poetsen."
data[, 72] <- factor(data[, 72], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[72] <- "brushingTeeth_attExperiential"
# LimeSurvey Field type: F
data[, 73] <- as.numeric(data[, 73])
attributes(data)$variable.labels[73] <- "[Als ik de komende maand elke dag mijn tanden poets, dan keuren de meeste mensen die belangrijk voor mij zijn dat ...Af | Goed] Deze vragen gaan over de komende maand elke dag je tanden poetsen."
data[, 73] <- factor(data[, 73], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[73] <- "brushingTeeth_pnInjunctive"
# LimeSurvey Field type: F
data[, 74] <- as.numeric(data[, 74])
attributes(data)$variable.labels[74] <- "[Hoeveel van de mensen die zijn zoals jij poetsen de komende maand elke dag hun tanden?Niemand | Iedereen] Deze vragen gaan over de komende maand elke dag je tanden poetsen."
data[, 74] <- factor(data[, 74], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[74] <- "brushingTeeth_pnDescriptive"
# LimeSurvey Field type: F
data[, 75] <- as.numeric(data[, 75])
attributes(data)$variable.labels[75] <- "[Ik heb er vertrouwen in dat als ik dat wil, ik de komende maand elke dag mijn tanden kan poetsen.Helemaal geen vertrouwen | Heel veel vertrouwen] Deze vragen gaan over de komende maand elke dag je tanden poetsen."
data[, 75] <- factor(data[, 75], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[75] <- "brushingTeeth_pbcCapacity"
# LimeSurvey Field type: F
data[, 76] <- as.numeric(data[, 76])
attributes(data)$variable.labels[76] <- "[Of ik de komende maand elke dag mijn tanden poets, bepaal ik ...Helemaal niet zelf | Helemaal zelf] Deze vragen gaan over de komende maand elke dag je tanden poetsen."
data[, 76] <- factor(data[, 76], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[76] <- "brushingTeeth_pbcControl"
# LimeSurvey Field type: A
data[, 77] <- as.character(data[, 77])
attributes(data)$variable.labels[77] <- "{self.gseq + 1}"
names(data)[77] <- "brushingTeethOrder"
# LimeSurvey Field type: F
data[, 78] <- as.numeric(data[, 78])
attributes(data)$variable.labels[78] <- "Hoe oud bent u?"
names(data)[78] <- "age"
# LimeSurvey Field type: A
data[, 79] <- as.character(data[, 79])
attributes(data)$variable.labels[79] <- "Wat is uw geslacht?"
data[, 79] <- factor(data[, 79], levels=c("femal","male"),labels=c("Vrouw", "Man"))
names(data)[79] <- "sex"
# LimeSurvey Field type: F
data[, 80] <- as.numeric(data[, 80])
attributes(data)$variable.labels[80] <- "[Andere] Wat is uw geslacht?"
names(data)[80] <- "sex_other"
# LimeSurvey Field type: F
data[, 81] <- as.numeric(data[, 81])
attributes(data)$variable.labels[81] <- "Wat is de hoogste opleiding die u heeft afgerond of nu volgt?"
data[, 81] <- factor(data[, 81], levels=c(1,2,3,4,5,6),labels=c("Basisonderwijs", "VMBO (bijvoorbeeld praktijkonderwijs)", "HAVO / VWO", "MBO (bijvoorbeeld een ROC)", "HBO", "WO (bijvoorbeeld een MSc of PhD)"))
names(data)[81] <- "education"
# LimeSurvey Field type: A
data[, 82] <- as.character(data[, 82])
attributes(data)$variable.labels[82] <- "[Andere] Wat is de hoogste opleiding die u heeft afgerond of nu volgt?"
names(data)[82] <- "education_other"
# LimeSurvey Field type: F
data[, 83] <- as.numeric(data[, 83])
attributes(data)$variable.labels[83] <- "In welk land woont u?"
data[, 83] <- factor(data[, 83], levels=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249),labels=c("Nederland", "België", "Afghanistan", "Åland", "Albanië", "Algerije", "Amerikaanse Maagdeneilanden", "Amerikaans-Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua en Barbuda", "Argentinië", "Armenië", "Aruba", "Australië", "Azerbeidzjan", "Bahama\'s", "Bahrein", "Bangladesh", "Barbados", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Caribisch Nederland", "Bosnië en Herzegovina", "Botswana", "Bouveteiland", "Brazilië", "Britse Maagdeneilanden", "Brits Indische Oceaanterritorium", "Brunei", "Bulgarije", "Burkina Faso", "Burundi", "Cambodja", "Canada", "Centraal-Afrikaanse Republiek", "Chili", "China", "Christmaseiland", "Cocoseilanden", "Colombia", "Comoren", "Congo-Brazzaville", "Congo-Kinshasa", "Cookeilanden", "Costa Rica", "Cuba", "Curaçao", "Cyprus", "Denemarken", "Djibouti", "Dominica", "Dominicaanse Republiek", "Duitsland", "Ecuador", "Egypte", "El Salvador", "Equatoriaal-Guinea", "Eritrea", "Estland", "Ethiopië", "Faeröer", "Falklandeilanden", "Fiji", "Filipijnen", "Finland", "Frankrijk", "Franse Zuidelijke en Antarctische Gebieden", "Frans-Guyana", "Frans-Polynesië", "Gabon", "Gambia", "Georgië", "Ghana", "Gibraltar", "Grenada", "Griekenland", "Groenland", "Guadeloupe", "Guam", "Guatemala", "Guernsey", "Guinee", "Guinee-Bissau", "Guyana", "Haïti", "Heard en McDonaldeilanden", "Honduras", "Hongarije", "Hongkong", "Ierland", "IJsland", "India", "Indonesië", "Irak", "Iran", "Israël", "Italië", "Ivoorkust", "Jamaica", "Japan", "Jemen", "Jersey", "Jordanië", "Kaaimaneilanden", "Kaapverdië", "Kameroen", "Kazachstan", "Kenia", "Kirgizië", "Kiribati", "Kleine afgelegen eilanden van de Verenigde Staten", "Koeweit", "Kroatië", "Laos", "Lesotho", "Letland", "Libanon", "Liberia", "Libië", "Liechtenstein", "Litouwen", "Luxemburg", "Macau", "Macedonië", "Madagaskar", "Malawi", "Maldiven", "Maleisië", "Mali", "Malta", "Man", "Marokko", "Marshalleilanden", "Martinique", "Mauritanië", "Mauritius", "Mayotte", "Mexico", "Micronesia", "Moldavië", "Monaco", "Mongolië", "Montenegro", "Montserrat", "Mozambique", "Myanmar", "Namibië", "Nauru", "Nepal", "Nicaragua", "Nieuw-Caledonië", "Nieuw-Zeeland", "Niger", "Nigeria", "Niue", "Noordelijke Marianen", "Noord-Korea", "Noorwegen", "Norfolk", "Oeganda", "Oekraïne", "Oezbekistan", "Oman", "Oostenrijk", "Oost-Timor", "Pakistan", "Palau", "Palestina", "Panama", "Papoea-Nieuw-Guinea", "Paraguay", "Peru", "Pitcairneilanden", "Polen", "Portugal", "Puerto Rico", "Qatar", "Réunion", "Roemenië", "Rusland", "Rwanda", "Saint-Barthélemy", "Saint Kitts en Nevis", "Saint Lucia", "Saint-Pierre en Miquelon", "Saint Vincent en de Grenadines", "Salomonseilanden", "Samoa", "San Marino", "Saoedi-Arabië", "Sao Tomé en Principe", "Senegal", "Servië", "Seychellen", "Sierra Leone", "Singapore", "Sint-Helena, Ascension en Tristan da Cunha", "Sint-Maarten", "Sint Maarten", "Slovenië", "Slowakije", "Soedan", "Somalië", "Spanje", "Spitsbergen en Jan Mayen", "Sri Lanka", "Suriname", "Swaziland", "Syrië", "Tadzjikistan", "Taiwan", "Tanzania", "Thailand", "Togo", "Tokelau", "Tonga", "Trinidad en Tobago", "Tsjaad", "Tsjechië", "Tunesië", "Turkije", "Turkmenistan", "Turks- en Caicoseilanden", "Tuvalu", "Uruguay", "Vanuatu", "Vaticaanstad", "Venezuela", "Verenigde Arabische Emiraten", "Verenigde Staten", "Verenigd Koninkrijk", "Vietnam", "Wallis en Futuna", "Westelijke Sahara", "Wit-Rusland", "Zambia", "Zimbabwe", "Zuid-Afrika", "Zuid-Georgia en de Zuidelijke Sandwicheilanden", "Zuid-Korea", "Zuid-Soedan", "Zweden", "Zwitserland"))
names(data)[83] <- "country"
# LimeSurvey Field type: F
data[, 84] <- as.numeric(data[, 84])
attributes(data)$variable.labels[84] <- "Wat zijn de eerste twee cijfers van uw postcode?"
names(data)[84] <- "region"
# LimeSurvey Field type: A
data[, 85] <- as.character(data[, 85])
attributes(data)$variable.labels[85] <- "Als u wilt, kunt u hier uw onderzoekscode invoeren. Dat maakt het mogelijk om uw data te koppelen over vragenlijsten. Bovendien kunt u hiermee uw eigen data terugvinden als u dat wilt, zonder dat uw anonimiteit wordt aangetast.	U kunt uw onderzoekscode genereren op https://onderzoekscode.nl. Met deze code van 6 tekens (2 letters, 2 cijfers, 2 letters) blijft u anoniem: hij is alleen te genereren op basis van uw persoonlijke informatie, en zelfs als iemand die bemachtigt en daarmee uw onderzoekscode genereert, dan is nog steeds niet zeker dat de antwoorden in de vragenlijst de uwe zijn, omdat verschillende combinaties van persoonlijke gegevens tot dezelfde onderzoekscode kunnen leiden."
names(data)[85] <- "researchCode"
# LimeSurvey Field type: F
data[, 86] <- as.numeric(data[, 86])
attributes(data)$variable.labels[86] <- "[Ik geef geen toestemming voor het gebruik van mijn data, en ik wil dat mijn data worden verwijderd.] Omdat deze studie in het Virtueel Laboratorium is opgenomen, is deelname primair educatief. Als u er bezwaar tegen heeft dat uw data worden gebruikt voor wetenschappelijke (of andere) doeleinden, dan kunt u dat hier aangeven."
data[, 86] <- factor(data[, 86], levels=c(1,0),labels=c("Ja", "Niet geselecteerd"))
names(data)[86] <- "dataMustBeDeleted_delete"
# LimeSurvey Field type: 
data[, 87] <- as.numeric(data[, 87])
attributes(data)$variable.labels[87] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 88] <- as.numeric(data[, 88])
attributes(data)$variable.labels[88] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 89] <- as.numeric(data[, 89])
attributes(data)$variable.labels[89] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 90] <- as.numeric(data[, 90])
attributes(data)$variable.labels[90] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 91] <- as.numeric(data[, 91])
attributes(data)$variable.labels[91] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 92] <- as.numeric(data[, 92])
attributes(data)$variable.labels[92] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 93] <- as.numeric(data[, 93])
attributes(data)$variable.labels[93] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 94] <- as.numeric(data[, 94])
attributes(data)$variable.labels[94] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 95] <- as.numeric(data[, 95])
attributes(data)$variable.labels[95] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 96] <- as.numeric(data[, 96])
attributes(data)$variable.labels[96] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 97] <- as.numeric(data[, 97])
attributes(data)$variable.labels[97] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 98] <- as.numeric(data[, 98])
attributes(data)$variable.labels[98] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 99] <- as.numeric(data[, 99])
attributes(data)$variable.labels[99] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 100] <- as.numeric(data[, 100])
attributes(data)$variable.labels[100] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 101] <- as.numeric(data[, 101])
attributes(data)$variable.labels[101] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 102] <- as.numeric(data[, 102])
attributes(data)$variable.labels[102] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 103] <- as.numeric(data[, 103])
attributes(data)$variable.labels[103] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 104] <- as.numeric(data[, 104])
attributes(data)$variable.labels[104] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 105] <- as.numeric(data[, 105])
attributes(data)$variable.labels[105] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 106] <- as.numeric(data[, 106])
attributes(data)$variable.labels[106] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 107] <- as.numeric(data[, 107])
attributes(data)$variable.labels[107] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 108] <- as.numeric(data[, 108])
attributes(data)$variable.labels[108] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 109] <- as.numeric(data[, 109])
attributes(data)$variable.labels[109] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 110] <- as.numeric(data[, 110])
attributes(data)$variable.labels[110] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 111] <- as.numeric(data[, 111])
attributes(data)$variable.labels[111] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 112] <- as.numeric(data[, 112])
attributes(data)$variable.labels[112] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 113] <- as.numeric(data[, 113])
attributes(data)$variable.labels[113] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 114] <- as.numeric(data[, 114])
attributes(data)$variable.labels[114] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 115] <- as.numeric(data[, 115])
attributes(data)$variable.labels[115] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 116] <- as.numeric(data[, 116])
attributes(data)$variable.labels[116] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 117] <- as.numeric(data[, 117])
attributes(data)$variable.labels[117] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 118] <- as.numeric(data[, 118])
attributes(data)$variable.labels[118] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 119] <- as.numeric(data[, 119])
attributes(data)$variable.labels[119] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 120] <- as.numeric(data[, 120])
attributes(data)$variable.labels[120] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 121] <- as.numeric(data[, 121])
attributes(data)$variable.labels[121] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 122] <- as.numeric(data[, 122])
attributes(data)$variable.labels[122] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 123] <- as.numeric(data[, 123])
attributes(data)$variable.labels[123] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 124] <- as.numeric(data[, 124])
attributes(data)$variable.labels[124] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 125] <- as.numeric(data[, 125])
attributes(data)$variable.labels[125] <- ""
#sql_name not set
