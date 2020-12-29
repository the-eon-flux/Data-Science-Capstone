# q1 : 200 mb
file.info("./Resources/final/en_US/en_US.blogs.txt")$size/1e6

# q2 over 2 million & q3 40K in blog
IFile <- file("./Resources/final/en_US/en_US.twitter.txt", "r")
Text <- readLines(IFile)
close(IFile)

Len = sapply(Text, nchar)
TLong <- NA

Files <- list.files("./Resources/final/en_US/")

for(i in Files){
        Fi <- paste("./Resources/final/en_US/", i, sep="")
        print(paste(i, " present - ",file.exists(Fi), sep=""))
        IFile <- file(Fi, "r")
        Text <- readLines(IFile)
        Len = sapply(Text, nchar)
        print(max(Len))
        TLong[i] = c(TLong, max(Len))
        print(TLong[i])
        rm(Len)
        close(IFile)
}

# q4 : 4.0
File <- file(paste("./Resources/final/en_US/", Files[3],sep=""), "r")
Text <- readLines(File)

len_Love <- length(grep("love", Text, fixed = T))
len_Hate <- length(grep("hate", Text, fixed = T))

len_Love/ len_Hate

# q5 : Not studied yet
Text[grep("biostats", Text ,fixed = T)]

# q6 : 3
length(grep("A computer once beat me at chess, but it was no match for me at kickboxing", Text, fixed = T))





