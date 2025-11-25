#!/bin/bash -vx

ng () {
        echo "${1}行目が違うよ"
        res=1
}

res=0

# 1 ドラえもん
out=$(printf "1\n" | python3 TVtimer.py)
echo "$out" | grep "ドラえもん" >/dev/null || ng "$LINENO"
echo "$out" | grep "次のドラえもんの放送開始まで" >/dev/null || ng "$LINENO"


# 2 クレヨンしんちゃん
out=$(printf "2\n" | python3 TVtimer.py)
echo "$out" | grep "クレヨンしんちゃん" >/dev/null || ng "$LINENO"
echo "$out" | grep "次のクレヨンしんちゃんの放送開始まで" >/dev/null || ng "$LINENO"


# 3 サザエさん
out=$(printf "3\n" | python3 TVtimer.py)
echo "$out" | grep "サザエさん" >/dev/null || ng "$LINENO"
echo "$out" | grep "次のサザエさんの放送まで開始" >/dev/null || ng "$LINENO"


# 4 ちびまる子ちゃん
out=$(printf "4\n" | python3 TVtimer.py)
echo "$out" | grep "ちびまる子ちゃん" >/dev/null || ng "$LINENO"
echo "$out" | grep "次のちびまる子ちゃんの放送開始まで" >/dev/null || ng "$LINENO"


# 5 その他 
out=$(printf "5\nTestTV\n5\n21\n15\n7\n" | python3 TVtimer.py)
echo "$out" | grep "TestTV" >/dev/null || ng "$LINENO"
echo "$out" | grep "次のTestTVの放送開始まで" >/dev/null || ng "$LINENO"


# 結果判定
test "${res}" = 0 && echo OK
exit $res

