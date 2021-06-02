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
  
  cat /etc/passwd | egep "/bin/bash|/bin/false"
  
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
   
  
