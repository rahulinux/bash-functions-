function CheckDiskSpace() {

local Partition=$1
awk -v p=$Partition 'BEGIN{
  threshold=80
  cmd = "LC_ALL=C df -Ph "p
  while( cmd | getline ) {
 
    used=$5 # Usage in % of 5th colume
 
    if ( $1 != "Filesystem" && int(used) >= threshold ) {
   
      exit 1
 
     }
   }
 }'
}
