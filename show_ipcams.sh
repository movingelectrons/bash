4#!/bin/bash
mplayer -vf scale -zoom -xy 600 -geometry 100%:25% rtsp://192.168.1.110/user=admin_password=netshock_channel=1_stream=0.sdp?real_stream &
mplayer -vf scale -zoom -xy 600 -geometry 100%:75% rtsp://192.168.1.101/user=admin_password=netshock_channel=1_stream=0.sdp?real_stream
