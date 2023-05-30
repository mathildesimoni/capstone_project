rm(list = ls())

#####################################################
##           first name dictionary fixes           ##
#####################################################

setwd("PATH_TO_DICTIONARIES")
load("first_raw.rData")

# cast names to upper
firstNameDictionary$first_name <- toupper(iconv(firstNameDictionary$first_name))

# collapse all the NAs to a single name
naNames <- firstNameDictionary[is.na(firstNameDictionary),]
firstNameDictionary <- firstNameDictionary[!is.na(firstNameDictionary$first_name),]
firstNameDictionary <- rbind(firstNameDictionary, c(NA, colSums(naNames[,-1])))

# cast to a tibble
firstNameDictionary <- tibble(firstNameDictionary)

# remove empty rows
firstNameDictionary <- firstNameDictionary[rowSums(firstNameDictionary[,-1]) > 0,]

# save it
save(firstNameDictionary, file = 'first.rData')

######################################################
##           middle name dictionary fixes           ##
######################################################

load("middle_raw.rData")

# cast names to upper
middleNameDictionary$middle_name <- toupper(iconv(middleNameDictionary$middle_name))

# collapse all the NAs to a single name
naNames <- middleNameDictionary[is.na(middleNameDictionary),]
middleNameDictionary <- middleNameDictionary[!is.na(middleNameDictionary$middle_name),]
middleNameDictionary <- rbind(middleNameDictionary, c(NA, colSums(naNames[,-1])))

# cast to a tibble
middleNameDictionary <- tibble(middleNameDictionary)
middleNameDictionary <- middleNameDictionary[c(nrow(middleNameDictionary), 1:(nrow(middleNameDictionary) - 1)),]

# remove empty rows
middleNameDictionary <- middleNameDictionary[rowSums(middleNameDictionary[,-1]) > 0,]

# save it
save(middleNameDictionary, file = 'middle.rData')

######################################################
##            last name dictionary fixes            ##
######################################################

load("last_raw.rData")

# cast names to upper
lastNameDictionary$last_name <- toupper(iconv(lastNameDictionary$last_name))

# collapse all the NAs to a single name
naNames <- lastNameDictionary[is.na(lastNameDictionary),]
lastNameDictionary <- lastNameDictionary[!is.na(lastNameDictionary$last_name),]
lastNameDictionary <- rbind(lastNameDictionary, c(NA, colSums(naNames[,-1])))

# cast to a tibble
lastNameDictionary <- tibble(lastNameDictionary)

# remove empty rows
lastNameDictionary <- lastNameDictionary[rowSums(lastNameDictionary[,-1]) > 0,]

# save it
save(lastNameDictionary, file = 'last.rData')

