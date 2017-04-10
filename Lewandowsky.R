df=read.table('http://data.bris.ac.uk/datasets/swyt56qr4vaj17op9cw3sag7d/LskyetalPLOSONE.csv',
              header=TRUE,sep=',')
head(df)

lm.result=lm(conspiracist_avg~age,data=df)
summary(lm.result)
plot(df$age,df$conspiracist_avg)

max_age=120
min_age=18

df=subset(df,age>min_age&age<max_age)

stopifnot(max(df$age)<max_age)
stopifnot(min(df$age)>min_age)

plot(df$age,df$conspiracist_avg)
lm.result=lm(conspiracist_avg~age,data=df)
summary(lm.result)