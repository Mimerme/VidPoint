# VidPoint
Vidpoint is a simple script that converts video files into powerpoints by reading the video frame by frame and puting each frame onto individual slides on a powerpoint file.

##Usage
```
ruby VidPoint.rb source.mp4 dest.ppt [frames to pass before saving a screenshot] [definition of how many seconds equals 1 frame] [resolution]
```

###Example
```
ruby VidPoint.rb meme.mp4 meme.ppt 10 2 640x380
```

##Setup
- Clone the Github repository or download the repository as a zip

```
git clone https://github.com/Mimerme/VidPoint
```

- Vidpoint requires the ffmpeg binary to be installed. On Ubuntu/Debian this can be installed with

```
sudo apt-get install ffmpeg
```

- Vidpoint requires some Ruby gems to function. To resolve the dependencies install Bundler with

```
gem install bundler
```

and the following command after the installation 

```
bundle install
```
