case "$1" in
"-backlog")
  google-chrome "http://.backlog.jp"
  ;;
"-jenk")
  google-chrome "http:///jenkins/"
  ;;
"-monju")
  google-chrome "https://sites.google.com/a/.co.jp/monjue"
  ;;
"-b")
  numero=0
  while read line
   do
    if [ "$2" -eq "$numero" ]
      then
        google-chrome "$line"
        exit 0 
    fi
    numero=$((numero+1))
   done < /bash/bookmarks.db
  ;;
"-q")
  $que=""
  for var in "$@"
   do
     que="$que$var+"
   done
  echo $que
  google-chrome google.com/search?q="$que" &
;;
"-l") 
  google-chrome "http://$2" 
;;
*) 
  echo "No Arguments Provided."
;;
esac
