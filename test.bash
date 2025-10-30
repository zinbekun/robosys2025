#!/bin/bash -vx

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0
out=$(seq 5 | ./plus)
test "${out}" = 15.0 || ng "$LINENO"

out=$(echo あ | ./plus)
test "$?" = 1 || ng "$LINENO"
test "${out}" = "" || ng "$LINENO"

out=$(echo | ./plus)
test "$?" = 1 || ng "$LINENO"
test "${out}" = "" || ng "$LINENO"

test "${res}" = 0 && echo OK
exit $res
