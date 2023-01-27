#Create a vector and convert that vecto into factor
sname <- c("DDoS","DoS","MiM","MiM","DDoS")
# Check sname for factor
print(is.factor(sname))
#covertsname into factor
sname_fact <- factor(sname)
sname_fact
print(is.factor(sname_fact))

#Change 4th element of factor with backdoor  
sname_fact[4]   
sname_fact[4] = "DIS"
print(sname_fact)

#Generating Factor Levels

#R provides gl() function to generate factor levels. This function takes three arguments i.e., n, k, and labels. 
#gl(n, k, labels)  
#n indicates the number of levels.
#k indicates the number of replications.
#labels is a vector of labels for the resulting factor levels.
gen_factor<- gl(3,2,labels=c("BCA","MCA","B.Tech"))  
gen_factor  

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
music_genre[4] <- "Jazz"
music_genre