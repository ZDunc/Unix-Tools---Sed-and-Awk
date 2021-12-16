#!/bin/sed -f

#PROGRAM DESCRIPTION:
#Replace sensitive information before donating an email
#Run program on a file to replace all instances of a personal email to a generic
#email (account@example.com), and replace a specific IP address to an example IP
#NOTE: this program is coded to cater a specific email (zduncan@cs.fsu.edu) but
#can be manipulated easily to work with any email desired

s/zduncan@cs\.fsu\.edu/account@example.com/g
s/cs\.fsu\.edu/example.com/g
s/128\.186\.120\.196/192\.100\.100\.100/g
