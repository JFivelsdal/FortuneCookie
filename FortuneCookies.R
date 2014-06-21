fCookie <- function()
{

#Fortune cookie script

fortuneCookie <- read.csv("FortuneCookie.csv",header = FALSE) #loads the file where the messages are stored

cookieString <- paste0(as.character(fortuneCookie[1][[1]]),as.character(fortuneCookie[2][[1]])) #pastes the columns that store the strings to get the full sentence 


emptyPos <- which(nchar(cookieString) == 0) #Finds where there are empty strings

cookieString <- cookieString[-emptyPos] #removes the empty entries

messageID <- 0 #index number for fortune cookie strings 


#While loop makes sure that the generated messageID is within the length 
#of the fortune cookie list
while(messageID < 1  | messageID > length(cookieString))
{

messageID <- round(rnorm(1,mean = 35,sd = 30))  #Generates index number of fortune cookie message
                                                #The message id is a random number 
                                                #drawn from a normal distribution
                                                #with a mean of 35 and 
                                                #a standard deviation of 30

}



print(cookieString[messageID]) #Prints out your fortune cookie message

}