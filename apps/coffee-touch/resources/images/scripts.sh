#Replace black with 'rgb(123,71,20)'
convert angel.jpg -fill 'rgb(123,71,20)' -opaque black angel_brown.jpg

#Make file have only two colors
convert angel.jpg -colors 2 -normalize angel_out.jpg

#Fill the area around the pixel 500,500 with the rgb(123,71,20) color
convert angel.jpg -fill 'rgb(123,71,20)' -fuzz 10% -draw "color 500,500 floodfill" output.jpg


#Source of cliparts
http://www.clipartsfree.net/
