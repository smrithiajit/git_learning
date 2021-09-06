# Read the data into the dataframe
df=read.csv('/cloud/project/iris.csv')
#Drop or omit nullvalues
df1=na.omit(df)

#OR

df2=df1[!(is.na(df1$species) | df1$species==""),]

