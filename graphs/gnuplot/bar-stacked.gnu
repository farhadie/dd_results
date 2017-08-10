# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
# set output 'histograms.8.png'
set bar 1.000000 front
set border 3 front lt black linewidth 1.000 dashtype solid
set boxwidth 0.8 absolute
set style fill   solid 1.00 noborder
set style circle radius graph 0.02, first 0.00000, 0.00000 
set style ellipse size graph 0.05, 0.03, first 0.00000 angle 0 units xy
set grid nopolar
set grid noxtics nomxtics ytics nomytics noztics nomztics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   lt 0 linewidth 0.500,  lt 0 linewidth 0.500
set key bmargin center horizontal Left reverse noenhanced autotitle columnhead nobox
set style histogram rowstacked title textcolor lt -1 offset character 2, 0.25, 0
set style textbox transparent margins  1.0,  1.0 border
unset logscale
set datafile missing '-'
set style data histograms
set xtics border in scale 0,0 nomirror rotate by -45  autojustify
set xtics  norangelimit  font ",8"
set xtics   ()
set ytics border in scale 0,0 mirror norotate  autojustify
set ytics  norangelimit autofreq  font ",8"
set ztics border in scale 0,0 nomirror norotate  autojustify
set cbtics border in scale 0,0 mirror norotate  autojustify
set rtics axis in scale 0,0 nomirror norotate  autojustify
set paxis 1 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 1 tics  rangelimit autofreq 
set paxis 2 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 2 tics  rangelimit autofreq 
set paxis 3 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 3 tics  rangelimit autofreq 
set paxis 4 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 4 tics  rangelimit autofreq 
set paxis 5 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 5 tics  rangelimit autofreq 
set paxis 6 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 6 tics  rangelimit autofreq 
set paxis 7 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 7 tics  rangelimit autofreq 
set title "Immigration from different regions\n(give each histogram a separate title)" 
set xlabel "(Same plot using rowstacked rather than clustered histogram)" 
set xlabel  offset character 0, -2, 0 font "" textcolor lt -1 norotate
set ylabel "Immigration by decade" 
set yrange [ 0.00000 : 900000. ] noreverse nowriteback
set paxis 1 range [ * : * ] noreverse nowriteback
set paxis 2 range [ * : * ] noreverse nowriteback
set paxis 3 range [ * : * ] noreverse nowriteback
set paxis 4 range [ * : * ] noreverse nowriteback
set paxis 5 range [ * : * ] noreverse nowriteback
set paxis 6 range [ * : * ] noreverse nowriteback
set paxis 7 range [ * : * ] noreverse nowriteback
set colorbox vertical origin screen 0.9, 0.2, 0 size screen 0.05, 0.6, 0 front  noinvert bdefault
x = 0.0
i = 24
## Last datafile plotted: "immigration.dat"
plot newhistogram "Northern Europe", 'immigration.dat' using "Sweden":xtic(1) t col, '' u "Denmark" t col, '' u "Norway" t col, newhistogram "Southern Europe", '' u "Greece":xtic(1) t col, '' u "Romania" t col, '' u "Yugoslavia" t col, newhistogram "British Isles", '' u "Ireland":xtic(1) t col, '' u "United_Kingdom" t col
