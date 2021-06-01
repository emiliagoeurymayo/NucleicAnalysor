set terminal postscript eps enhanced solid color
set output 'dist.eps'

set tmargin 3
set bmargin 3
set lmargin 3
set rmargin 3

unset xtics
unset ytics

set style fill solid 1.0 noborder
set boxwidth ARG2 absolute

bin_width = ARG2;

bin_number(x) = floor(x/bin_width)
rounded(x) = bin_width * ( bin_number(x) + 0.5 )

set key font ",14"
set key left width 2

set auto x
set xtics nomirror
set xtics font ",14"

set auto y
set ytics nomirror

plot ARG1 using (rounded($1)):(1) smooth frequency with boxes lt rgb "#2E49F4" title "Distance"