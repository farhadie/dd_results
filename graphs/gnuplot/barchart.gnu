# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
# set output 'boxclusters.1.png'
set bar 1.000000 front
unset border
set boxwidth 1 absolute
set style fill   solid 1.00 border lt -1
set style circle radius graph 0.02, first 0.00000, 0.00000 
set style ellipse size graph 0.05, 0.03, first 0.00000 angle 0 units xy
set grid nopolar
set grid noxtics nomxtics ytics nomytics noztics nomztics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   linecolor rgb "grey40"  linewidth 0.750 dashtype ".",  linecolor rgb "grey40"  linewidth 0.500 dashtype "."
set raxis
set key inside right top vertical Right noreverse enhanced autotitle nobox
unset key
set style textbox opaque margins  1.0,  1.0 noborder
unset logscale
set style data lines
set xtics border in scale 0,0 mirror norotate  autojustify
set xtics  norangelimit 
set xtics   ("Yan" 5.00000, "Tan" 20.0000, "Tethera" 35.0000, "Methera" 50.0000)
set ytics border in scale 0,0 nomirror norotate  autojustify
unset paxis 1 tics
unset paxis 2 tics
unset paxis 3 tics
unset paxis 4 tics
unset paxis 5 tics
unset paxis 6 tics
unset paxis 7 tics
set title "Clustered bar graph with individual colors\nspecified vis plotstyle 'boxes'" 
set title  offset character 0, -3, 0 font ",15" norotate
set xrange [ -2.00000 : 60.0000 ] noreverse nowriteback
set ylabel  font "" textcolor lt -1 rotate by -270
set y2label  font "" textcolor lt -1 rotate by -270
set yrange [ 0.00000 : 7.00000 ] noreverse nowriteback
set cblabel  font "" textcolor lt -1 rotate by -270
set bmargin at screen 0.2
set tmargin at screen 0.9
set palette cubehelix start 0.5 cycles -1.5 saturation 1
set colorbox user
set colorbox horizontal origin screen 0.05, 0.05, 0 size screen 0.9, 0.05, 0 front  noinvert bdefault
xcoord(i) =  i*ClusterSize + column(1)
color(i)  = rand(0)
ClusterSize = 15
category = "Yan Tan Tethera Methera Pimp"
i = 4
GPFUN_xcoord = "xcoord(i) =  i*ClusterSize + column(1)"
GPFUN_color = "color(i)  = rand(0)"
x = 0.0
## Last datafile plotted: "candlesticks.dat"
plot for [i=0:3] 'candlesticks.dat'      using (xcoord(i)):(column(i+2)):(color(i)) with boxes lc palette z
