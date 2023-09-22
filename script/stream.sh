ffmpeg -stream_loop -1 -re -i /app/video/video.mp4 -f lavfi -t 3600 -i anullsrc=r=44100:cl=stereo -f concat -safe 0 -stream_loop -1 -i /app/_audio_list.txt -filter_complex "[1:a]adelay=1000|1000[a1];[2:a]adelay=2000|2000[a2];[a1][a2]amix=inputs=2" -c:v libx264 -preset fast -pix_fmt yuv420p -s 1920x1080 -r 30 -g 60 -b:v 2500k -bufsize 512k -c:a aac -b:a 128k -ar 44100 -f flv $RTMP_PATH