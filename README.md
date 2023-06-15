# DotFiles
My fun little files

Three changes in the cygwin environment: 
  /etc/nsswitch.conf:
  db_home: /%H
  
  /etc/fstab:
  none / cygdrive binary 0 0
  
  lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg
  install apt-cyg /bin

This has only happened to me once, but if Cygwin starts complaining about line endings for things that have been checked out with Git or curl (since I assume curl uses git internally), then it might be because git is downloading with Dos style special chars; try 'git config --global core.autocrlf false'
