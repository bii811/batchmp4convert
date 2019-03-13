
for file in input/*
do
	filename=${file#input/}
	name=${filename%.mp4}
	name=${name%.mov}
	name=${name%.flv}
	echo $name
	ffmpeg -i $file -vcodec h264 -acodec aac -strict -2 output/$name.mp4
done
