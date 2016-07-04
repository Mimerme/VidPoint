require 'streamio-ffmpeg'
require 'powerpoint'

##required arguments
#source.mp4
#destination.ppt
#frames to pass before saving as screenshot
#timeframe defined as frame
#resolution

movie = FFMPEG::Movie.new(ARGV[0])

movie.valid? # true (would be false if ffmpeg fails to read the movie)

video_length = movie.duration.to_i
frame_parse = ARGV[2].to_i
powerpoint = Powerpoint::Presentation.new
powerpoint.add_intro ARGV[0]
frame_time = ARGV[3].to_f

pre_frame_parse = 0
video_iterate = 0

screenshots = {}

while video_iterate < video_length do
  pre_frame_parse+=1
 
  if(pre_frame_parse === frame_parse)
    movie.screenshot("screenshot#{video_iterate}.png", seek_time: video_iterate, resolution: ARGV[4])
    powerpoint.add_pictorial_slide "screenshot#{video_iterate}" , "screenshot#{video_iterate}.png" , {x: 12700, y: 12700, cx: 9173600, cy: 6853600}
    screenshots[video_iterate] = "#{video_iterate}"
    pre_frame_parse = 0
  end
 video_iterate += frame_time
end

powerpoint.save(ARGV[1])

puts "Running clean up..."
screenshots.each do |key, pair|
  File.delete("screenshot" << pair << ".png")
end
