#!/bin/bash -vx
# SPDX-FileCopyrightText: 2025 Zinbekun
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# 1 ドラえもん
out=$(python3 ./TVtimer 1)
echo "$out" | grep "days" >/dev/null || ng "$LINENO"

# 2 クレヨンしんちゃん
out=$(python3 ./TVtimer 2)
echo "$out" | grep "days" >/dev/null || ng "$LINENO"

# 3 サザエさん
out=$(python3 ./TVtimer 3)
echo "$out" | grep "days" >/dev/null || ng "$LINENO"

# 4 ちびまる子ちゃん
out=$(python3 ./TVtimer 4)
echo "$out" | grep "days" >/dev/null || ng "$LINENO"

# 5 その他（任意の曜日・時刻・周期）
# 引数: 5 曜日 時 分 周期
# 例: 月曜日=0, 15:21, 7日周期
out=$(python3 ./TVtimer 5 0 15 21 7)
echo "$out" | grep "days" >/dev/null || ng "$LINENO"

#errror
out=$(python3 ./TVtimer 6)
echo "$out" | grep "ERROR:Specify a number (1–5)" >/dev/null || ng "$LINENO"

out=$(python3 ./TVtimer 2 5)
echo "$out" | grep "ERROR:Only one entry is allowed" >/dev/null || ng "$LINENO"

out=$(python3 ./TVtimer a)
echo "$out" | grep "ERROR:Enter the number using digits" >/dev/null || ng "$LINENO"

out=$(python3 ./TVtimer @)
echo "$out" | grep "ERROR:Enter the number using digits" >/dev/null || ng "$LINENO"

out=$(python3 ./TVtimer )
echo "$out" | grep "ERROR:Select a TVprogram [1-5]" >/dev/null || ng "$LINENO"

out=$(python3 ./TVtimer 5 8 20 20 7)
echo "$out" | grep "ERROR:Specify the day of the week (0 = Monday, 6 = Sunday)" >/dev/null || ng "$LINENO"

out=$(python3 ./TVtimer 5 5 30 20 7)
echo "$out" | grep "ERROR:Specify the hour (0–23)" >/dev/null || ng "$LINENO"

out=$(python3 ./TVtimer 5 5 20 80 7)
echo "$out" | grep "ERROR:Specify the minutes (0–59)" >/dev/null || ng "$LINENO"

out=$(python3 ./TVtimer 5 5 30 20)
echo "$out" | grep "ERROR:Please enter only the correct information for weekday, hour, minute, and interval" >/dev/null || ng "$LINENO"

out=$(python3 ./TVtimer 5 5 30 20 7 9)
echo "$out" | grep "ERROR:Please enter only the correct information for weekday, hour, minute, and interval" >/dev/null || ng "$LINENO"

out=$(python3 ./TVtimer 5 a 20 30 7)
echo "$out" | grep "ERROR:Enter the number using digits" >/dev/null || ng "$LINENO"

out=$(python3 ./TVtimer 5 5 @ 30 7)
echo "$out" | grep "ERROR:Enter the number using digits" >/dev/null || ng "$LINENO"

out=$(python3 ./TVtimer 5 5 20 b 7)
echo "$out" | grep "ERROR:Enter the number using digits" >/dev/null || ng "$LINENO"

out=$(python3 ./TVtimer 5 5 20 80 z)
echo "$out" | grep "ERROR:Enter the number using digits" >/dev/null || ng "$LINENO"

test "${res}" = 0 && echo OK
exit $res


