import traceback
from datetime import time
from moviepy.editor import *
import sys
from pytube import YouTube, Playlist   


# ____________________________________________________________________________________ 영상URL로 고화질 다운로드[ feat sys.argv ]
directory_name = 'AI_youtube'
fpath = lambda x: './'+directory_name+'/' + x
DOWNLOAD_FOLDER = "downloaded"

os.chdir('..')  
os.chdir('..')  
os.chdir('`')
if os.path.exists(DOWNLOAD_FOLDER):
    pass
else:
    os.mkdir(DOWNLOAD_FOLDER)
os.chdir(DOWNLOAD_FOLDER)
# if os.path.exists(directory_name):
    # pass
# else:
    # os.mkdir(directory_name)
# os.chdir(directory_name)
# print(os.getcwd())
# os.chdir('..')  




# def ydown(url: str, prefix: str = "순수비디오_"):
def ydown(url: str, prefix: str = ""):
    yt = YouTube(url)
    vpath = (
        yt.streams.filter(adaptive=True, file_extension="mp4", only_video=True)
        .order_by("resolution")
        .desc()
        .first()
        .download(output_path=fpath("video/"), filename_prefix=f"{prefix} ")
    )
    apath = (
        # yt.streams.filter(adaptive=True, file_extension="mp3", only_audio=True)
        # yt.streams.filter(adaptive=True, file_extension="flac", only_audio=True)
        yt.streams.filter(adaptive=True, file_extension="mp4", only_audio=True)
        .order_by("abr")
        .desc()
        .first()
        # .download(output_path=fpath("audio/"), filename_prefix="순수음성_")
        .download(output_path=fpath("audio/"), filename_prefix="")
        # .download(output_path=fpath("audio/"), filename_suffix="_only_sound")
    )
    vfc = VideoFileClip(vpath)
    afc = AudioFileClip(apath)


    # vfc.audio = afc
    
    # print(yt.streams.all())
    # print("2"+str(yt.title)+'[DONE]')
    # vfc.write_videofile(yt.title[0:10]+str(time)+'.mp4')
   
   
    # vfc.write_videofile('from_youtube.mp4')
    # os.renames('from_youtube.mp4',str(yt.title)+'.mp4')



# print(str(sys.argv[1]))
try:
    for i in range(1, len(sys.argv)):
        # print(str(sys.argv[i]))
        ydown(str(sys.argv[i]) +'[TRIED_TO_DOWNLOAD]')
except Exception as e:
    print('______________________________________________________  error id 2023 02 18 16 28 s')
    traceback.print_exc(file=sys.stdout)
    print('______________________________________________________  error id 2023 02 18 16 28 e')