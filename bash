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
