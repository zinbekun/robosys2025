#!/bin/bash

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0
out=$(seq 5 | ./plus)
test "${out}" = 15.0 || ng "$LINENO"

test "${res}" = 0 && echo OK
exit $res
