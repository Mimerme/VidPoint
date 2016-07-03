# VidPoint
Vidpoint is a simple script that converts video files into powerpoints by reading the video frame by frame and puting each frame onto individual slides on a powerpoint file.

##Usage
```
ruby VidPoint.rb source.mp4 dest.ppt [frames to pass before saving a screenshot] [definition of how many seconds equals 1 frame] [resolution]
```

###example
```
ruby VidPoint.rb meme.mp4 meme.ppt 10 2 640x380
```
