1 June 2021

pwd - print working directory

to get to home/struent
  cd ~
  cd
  cd $HOME
  
man pages
  "/" allows you to search for a string, "n" goes to next instance of that string
  
alt-f => forward in one word
alt-b => back one word
ctl-l => clears error
ctl-a =>
clt-e =>

relative vs. absolute paths

mkdir => makes a directory
rm -r => remove directory and files in it

locate find | grep /usr/bin

whereis grep

apropos => searches manual pages

find => super useful

  find . -name => "." is current directory
  find / inum 38 2>/dev/nul => "/" is root directory...... 2>dev/null gets ride of error messages

  find / -size 10c => exactly 10 byts
  find / -size -1G => files smaller than 1 GB
  
  find / -user
  find / -type
    -d => directories
    -f => files
    -p => named pipes
  -maxdepth 2
  -ctime 3 => created in the last 3 days
  -mtime 3 => modified in the last 3 days
  -mmin -60 => modified in the last hour
  -empty => will find an empty file which does take up size on the system
  -ececutable
  
  find / [options] -exec [command] {} \;
  
  find / -type d -iname log 2>/dev/null -exec ls -l {} \;
  
  find /var/log -iname *.log 2>/dev/null -printf "%i %f\n"
  
  touch text{1..10}.txt
  
  cat /etc/passwd | egrep "/bin/bash|/bin/false"
  
  ======================================================================
  regexr.com and regex101.com 
  ======================================================================
  
  cat /etc/passwd | grep -C3 /home/
   -V => give me everything that doesn't match
   
   tail /etc/passwd | cut -d: -f2
   tail /etc/passwd | cut -d: -f2-4
   tail /etc/passwd | cut -d: -f2,6
   cat /etc/passwd | cut -d, -f1- -s => "-s" only some me lines with this delimiter in it.
   cat /etc/passwd | cut -d" " -f1- -s
   
   echo "rebel vader empire" | cut -d " " -f2 --complement
   
   
   -----------------------------------------------------------------------------------------------
   2 June 2021
   -----------------------------------------------------------------------------------------------
   
   cat /etc/passwd | awk -F: '{print $1}'
   cat /etc/passwd | awk -F/ '{print $2}'
   
   cat /etc/passwd | awk -F: '{print $1,$6}'
   cat /etc/passwd | awk -F: '{print $6,$1}'
   
   cat /etc/passwd | awk -F: '{print $NF}'
   
   cat /etc/passwd | awk -F: '($3 >= 103) {print $0}'
   
   cat /etc/passwd | awk -F: ' BEGIN {OFS="#"} {print $0}'
   cat /etc/passwd | awk -F: 'BEGIN {OFS=" => "} {print $1,$3}' | sort -n 
   
   cat sort.txt | awk -F: '{print $1}' | sort -u => "-u" unique items only, no duplicates
   
   cat sort.txt | awk -F: '{print $1}' | sort | uniq -c => same as above, but give a count of each item
   
   cat sort.txt | awk -F: '{print $1}' | sort -n -k 2 => sorts by alphanumeric and by second column
   
   cat (find . -name "*.txt") => finds all the txt files and cats them out
   
   A=$(tail /etc/passwd) => command substitution
   
   cat /etc/passwd | awk -F: '($3 >= 103) {print $1,$3}'
   
   sed 's/replacethis/withthis/'
   sed 's/usr/loser/' sedpasswd.txt => only first instance in every line
   sed 's/usr/loser/g' sedpasswd.txt => replaces all instances
   
   sed 's/\/bin\/bash/\/bin\/better/g' sedpasswd.txt
   sed '/^d/d' sedpasswd.txt => delete the first line that starts with the letter "d"
   sed -e '/^d/d' -e 's/usr/loser/' -e 's/u/fuck/g' sedpasswd.txt
   
   find / -iname *.bin 2>/dev/null | awk 'BEGIN{FS=OFS="/"}{NF--; print}' | sort | uniq -c
   
   awk -F: '{ print $1}' /etc/passwd
   
   route -n | awk -F" "  '{print $2}' | sed -n 3,5p
   
   
   
  
