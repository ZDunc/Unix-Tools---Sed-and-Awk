#!/bin/awk -f

#PROGRAM DESCRIPTION:
#Add an index page to a book
#This program will take in a file, identify every words found in the file (and
#every line number on which each word is found), sort the words alphabetically,
#and print words and associated line numbers to the screen

{
	gsub(/\//, " ")               #Words separated by slashes become two words
	gsub(/[[:punct:]]/, "")       #All remaining punctuation removed
                                 #NOTE: If there were any words with apostrophes,
                                 # an additional gsub function would be needed
	for (i=1; i <= NF; ++i) {     #Put each word in an array
                                 #Line numbers assigned to words, all lowercase
		words[tolower($i)] = words[tolower($i)] ? words[tolower($i)]", "FNR : FNR
	}
}
END {
	n=asorti(words, sorted)       #Create sorted array
	for (i=1; i<=n; i++) {        #Loop through array
                                 #Print out words, colon, and line numbers
		print sorted[i]": "words[sorted[i]]
	}
}
