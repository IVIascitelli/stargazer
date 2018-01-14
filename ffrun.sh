fuser -k 8090/tcp
fuser -k 8090/tcp

ffserver -f /etc/ffserver.conf \
& ffmpeg -v verbose -r 30 -s 352x288 \
-f video4linux2 -i /dev/video0 http://localhost:8090/feed1.ffm
