import traceback
from datetime import time

from moviepy.editor import *
import sys
from pytube import YouTube, Playlist 
# ____________________________________________________________________________________ 채널리스트로 다운로드[대기]
chnnelURL='{{유튜브 채널리스트}}'


playlist =Playlist(chnnelURL)
print('Number of videos in playlist: %s' % len(playlist.video_urls))


for video in playlist.videos:
    try:
        print(video.streams.filter(file_extension='mp4'))
        stream = video.streams.get_by_itag(137) # 137 = 1080P30
        stream.download()
    except AttributeError:
        stream = video.streams.get_by_itag(22) # 22, 136 = 720P30; if 22 still don't work, try 136
        stream.download()
        print("except with AttributeError")
    except:
        print("download failed")
