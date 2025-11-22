#!/usr/bin/python3
# SPDX-FileCopyrightText: 2025 Zinbekun
# SPDX-License-Identifier: GPL-3.0-only


from datetime  import datetime, timedelta

print("下記の中から次回の放送までの期間が気になるものを番号で選んでください")
print("1:ドラえもん, 2:クレヨンしんちゃん, 3:サザエさん, 4:ちびまる子ちゃん, 5:その他")
select = int(input("番号を入力してください: "))

while select < 1 or select > 5:
    print("ERROR:指定されていない番号が入力されました")
    select = int(input("番号を再入力してください: "))

#ドラえもん
if select == 1:    
    doraemon_time = datetime(2025, 11, 22, 17)
    now = datetime.now()
    while now > doraemon_time:
        doraemon_time = doraemon_time + timedelta(days = 7)
    count = doraemon_time - now
    count_hour = count.seconds // 3600
    count_minutes = (count.seconds // 60) - ((count.seconds // 3600) * 60)
    count_second = count.seconds - ((count.seconds // 3600) * 3600) - (count_minutes * 60)
    print(f"次のドラえもんの放送開始まで{count.days}日と{count_hour}時間{count_minutes}分{count_second}秒です")

#クレヨンしんちゃん
if select == 2:
    shintyan_time = datetime(2025, 11, 22, 16, 30)
    now = datetime.now()
    while now > shintyan_time:
        shintyan_time = shinyan_time + timedelta(days = 7)
    count = shintyan_time - now
    count_hour = count.seconds // 3600
    count_minutes = (count.seconds // 60) - ((count.seconds // 3600) * 60)
    count_second = count.seconds - ((count.seconds // 3600) * 3600) - (count_minutes * 60)
    print(f"次のクレヨンしんちゃんの放送開始まで{count.days}日と{count_hour}時間{count_minutes}分{count_second}秒です")

#サザエさん
if select == 3:
    sazae_time = datetime(2025, 11, 23, 18, 30)
    now = datetime.now()
    while now > sazae_time:
        sazae_time = sazae_time + timedelta(days = 7)
    count = sazae_time - now
    count_hour = count.seconds // 3600
    count_minutes = (count.seconds // 60) - ((count.seconds // 3600) * 60)
    count_second = count.seconds - ((count.seconds // 3600) * 3600) - (count_minutes * 60)
    print(f"次のサザエさんの放送まで開始{count.days}日と{count_hour}時間{count_minutes}分{count_second}秒です")    

#ちびまる子ちゃん
if select == 4:
    maruko_time = datetime(2025, 11, 23, 18)
    now = datetime.now()
    while now > maruko_time:
        maruko_time = maruko_time + timedelta(days = 7)
    count = maruko_time - now
    count_hour = count.seconds // 3600
    count_minutes = (count.seconds // 60) - ((count.seconds // 3600) * 60)
    count_second = count.seconds - ((count.seconds // 3600) * 3600) - (count_minutes * 60)
    print(f"次のちびまる子ちゃんの放送開始まで{count.days}日と{count_hour}時間{count_minutes}分{count_second}秒です")

#その他
if select == 5:

    #番組名入力
    another_title = input("番組名を入力してください: ")

    #放送曜日選択
    print("0:月, 1:火, 2:水, 3:木, 4:金, 5:土, 6:日")
    another_weekday_str = input("上記の中から次の放送曜日の番号を入力してください: ")
    while not another_weekday_str.isdigit() or not (0 <= int(another_weekday_str) <= 6):
        print("ERROR:指定されていない番号が入力されました")
        another_weekday_str = input("番号を再入力してください: ")
    another_weekday = int(another_weekday_str)

    #放送時間(hour)入力
    another_hour_str = input("放送時間(hour)を数字のみで入力してください(24時と入力するときは0と入力してください): ")
    while not another_hour_str.isdigit() or not (0 <= int(another_hour_str) <= 23):
        print("ERROR:存在しない時間が入力されました")
        another_hour_str = input("時間(hour)を再入力してください: ")
    another_hour = int(another_hour_str)

    #放送時間(minutes)入力
    another_minutes_str = input("放送時間(minutes)を数字のみで入力してください: ")
    while not another_minutes_str.isdigit() or not (0 <= int(another_minutes_str) <= 59):
        print("ERROR:存在しない時間が入力されました")
        another_minutes_str = input("時間(minutes)を再入力してください: ")
    another_minutes = int(another_minutes_str)

    #放送間隔入力
    another_interval_str = input("放送間隔(何日ごとに放送するのか)を数字のみで入力してください: ")
    while not another_interval_str.isdigit() or (int(another_weekday_str) < 0):
        print("ERROR:表現できない間隔が入力されました")
        another_interval_str = input("1日以上の間隔を再入力してください: ")
    another_interval = int(another_interval_str)

    #入力された情報から放送日を計算
    now = datetime.now()
    now_weekday = now.weekday()
    diffweekday = (another_weekday - now_weekday) % 7
    another_day = now + timedelta(days = diffweekday)
    another_datetime = datetime(another_day.year, another_day.month, another_day.day,another_hour, another_minutes)

    while another_datetime < now:
        another_datetime = another_datetime + timedelta(days = another_interval)

    count = another_datetime - now
    count_hour = count.seconds // 3600
    count_minutes = (count.seconds // 60) - ((count.seconds // 3600) * 60)
    count_second = count.seconds - ((count.seconds // 3600) * 3600) - (count_minutes * 60)
    print(f"次の{another_title}の放送開始まで{count.days}日と{count_hour}時間{count_minutes}分{count_second}秒です")

