for f in ../"PSD files"/*.psd; do
	fname=$(basename "$f")
	echo "Converting $fname..."
	convert -units PixelsPerInch "$f"[0] -monochrome +dither -colors 16 -resize 600x800 -density 72 "$fname.png"
done