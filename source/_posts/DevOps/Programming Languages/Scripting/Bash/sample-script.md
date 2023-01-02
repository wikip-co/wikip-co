---
title: Sample Script
image: bash
tags:
-
---
## Description

A simple bash script that can be used to convert mp4/mkv/WebM media files to mp3 on Linux.

## Usage

This script can convert mp4, mkv and WebM video formats to mp3 audio format in few seconds.

### Requirements

- FFmpeg
- Lame (mp3)

### Option 1

You can run the script from inside the directory with the Video files you'd like to convert to mp3.

After a successful conversion, the resulting audio files will be saved under ~/Music directory with folder name being the name of the previous folder containing video files with the extension -mp3 at the end.

### Option 2

Alternatively you can run the script and specify the directory with the Video files you'd like to convert to mp3.

After a successful conversion, the resulting audio files will be saved under ~/Music directory with folder name being the name of the previous folder containing video files with the extension -mp3 at the end.

```
#!/usr/bin/env bash

# My bash Script to convert mp4 to mp3
# By NerdJK23
# web: www.computingforgeeks.com
# email: kiplangatmtai@gmail.com

# Requires
# ffmpeg installed
# lame installed
# Check https://computingforgeeks.com/how-to-convert-mp4-to-mp3-on-linux/

echo -ne """
1: Current directory
2: Provide directory
"""
echo ""
echo -n "Selection : "
read selection

case $selection in
    1)
	echo "Okay.."
	echo ""
	echo "Current dir is `pwd` "
	;;
    2)
    echo ""
    echo -n "Give diretory name: "
    read dir_name

# Check if given directory is valid
if [ -d $dir_name ]; then
    
    cd "${$dir_name}"
    echo "Current directory is `pwd` "
    echo 
else
    echo "Invalid directory, exiting.."
    echo ""
    exit 10
fi

    echo
    ;;
    
   *)
       echo
       echo "Wrong selection"
       exit 11
       ;;
esac

echo ""

# Create dir to store mp3 files if it doesn't exist
# First get the current directory name

current_dir=`pwd`
base_name=` basename "$current_dir"`

if [[ ! -d "$base_name"-mp3 ]]; then
    
echo "$base_name" | xargs  -d "\n" -I {} mkdir {}-mp3
    echo ""
fi
echo ""


# Bigin to covert videos to mp3 audio files
# -d "\n" > Change delimiter from any whitespace to end of line character 

find . -name "*.mp4" -o -name "*.mkv" -o -name "*.webm" | xargs  -d "\n"  -I {} ffmpeg -i {} -b:a 320K -vn "$base_name"-mp3/{}.mp3 

# remove video extensions

cd "${base_name}"-mp3

for file_name in *; do      
    mv "$file_name" "`echo $file_name | sed  "s/.mp4//g;s/.mkv//g;s/.webm//g"`";
done

# Move audio directory to ~/Music

if [[ ! -d ~/Music ]]; then
    mkdir ~/Music
fi
cd ..

mv  "$base_name"-mp3 ~/Music/

# Check if conversion successfull

echo ""

if [[ $? -eq "0" ]];then
    echo " All files converted successfully"
else
    echo "Conversation failed"
    exit 1
fi
```

Make the script executable:

```
chmod +x mp3con.sh
```

[^1]

[^1]: https://computingforgeeks.com/how-to-convert-mp4-to-mp3-on-linux/