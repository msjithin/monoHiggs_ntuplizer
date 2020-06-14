import os
import sys
import fileinput 


infile=open('status.out','r')

with open('out_.txt','w') as write_obj:
    previous_line = ""
    for current_line in infile:
        if 'SUBMITFAILED' in previous_line:
            print current_line
            write_obj.write(current_line)
        previous_line = current_line
        
infile.close()
