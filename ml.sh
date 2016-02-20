export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME gnome-session)/environ)
#! /bin/bash
#Set time, currently runs for 96 rounds of 15 mins gap = 24 hrs
 for j in `seq 1 96`; do 
rm -rf *.txt
echo -ne '\n r A Q' |/usr/bin/newsbeuter
echo -ne '\n \ns11\nJs12\nJs13\nJs14\nJs15\nJs16\nJs17\nJs18\nJs19\nJs20\nJs21\nJs22\nJs23\nJs24\nJs25\nJs26\nJs27\nJs28\nJs29\nJs30\nJs31\nJs32\nJs33\nJs34\nJs35\nJs36\nJs37\nJs38\nJs39\nJs40\nQ' |/usr/bin/newsbeuter
for j in `seq 11 40`; do
for i in $( ls $j*.txt ); do
	echo $i>>abc.mm
	echo $j>>abc.mm
	head -n 1 a.sh >>abc.mm
	head -n 1 $i|grep "comment">>comments.txt ##Create custom filters
	head -n 1 $i|grep "like">>like.txt
	head -n 1 $i|grep "Why so CS??">>IMP.txt 
	head -n 1 $i>>all.txt	
	k=$(($j-10))
	k+="p"
	sed -n $k < all.txt | while read OUTPUT; do notify-send "$OUTPUT" ; done #put the text file to notify from
done
done
sleep 900
done
