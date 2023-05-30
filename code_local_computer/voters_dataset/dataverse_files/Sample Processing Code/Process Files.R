# first names
data.first <- read.csv(paste("PATH_TO_OUTPUT_DIRECTORY", "nameCounts_first.csv", sep = ""))
data.first.fmtd <- data.frame("First.Name" = data.first$Name,
                              "whi" = data.first$White.Self.Reported,
                              "bla" = data.first$African.or.Af.Am.Self.Reported, 
                              "his" = data.first$Hispanic,
                              "asi" = data.first$East.Asian,
                              "oth" = data.first$Native.American..self.reported. + 
                                      data.first$Other.Undefined.Race)
save(data.first.fmtd, file = paste("PATH_TO_DICTIONARIES", "first_raw.rData", sep = ""))

# middle names
data.mid <- read.csv(paste("PATH_TO_OUTPUT_DIRECTORY", "nameCounts_middle.csv", sep = ""))
data.mid.fmtd <- data.frame("Middle.Name" = data.mid$Name,
                             "whi" = data.mid$White.Self.Reported,
                             "bla" = data.mid$African.or.Af.Am.Self.Reported, 
                             "his" = data.mid$Hispanic,
                             "asi" = data.mid$East.Asian,
                             "oth" = data.mid$Native.American..self.reported. + 
                                    data.mid$Other.Undefined.Race)
save(data.first.fmtd, file = paste("PATH_TO_DICTIONARIES", "middle_raw.rData", sep = ""))

# last names
data.last <- read.csv(paste("PATH_TO_OUTPUT_DIRECTORY", "nameCounts_last.csv", sep = ""))
data.last.fmtd <- data.frame("Last.Name" = data.last$Name,
                             "whi" = data.last$White.Self.Reported,
                             "bla" = data.last$African.or.Af.Am.Self.Reported, 
                             "his" = data.last$Hispanic,
                             "asi" = data.last$East.Asian,
                             "oth" = data.last$Native.American..self.reported. + 
                                    data.last$Other.Undefined.Race)

save(data.first.fmtd, file = paste("PATH_TO_DICTIONARIES", "last_raw.rData", sep = ""))
