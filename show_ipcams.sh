#!/bin/bash
mplayer -vf scale -zoom -xy 600 -geometry 100%:0%  -bandwidth 256 rtsp://192.168.1.112/user=admin_password=netshock_channel=1_stream=0.sdp?real_stream &
mplayer -vf scale -zoom -xy 600 -geometry 100%:87% -bandwidth 256 rtsp://192.168.1.114/user=admin_password=netshock_channel=1_stream=0.sdp?real_stream & 
mplayer -vf scale -zoom -xy 600 -geometry  20%:0%  -bandwidth 256 rtsp://192.168.1.103/user=admin_password=netshock_channel=1_stream=0.sdp?real_stream &

#&src=rtmp://192.168.1.103:1935/flash/11:admin:netshock&autoHideControlBar=true&streamType=live&autoPlay=true
