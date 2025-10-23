#!/usr/bin/python3
# SPDX-FileCopyrightText: 2025 Zinbekun
import sys

ans = 0
for line in sys.stdin:
    try: 
        ans += int(line)            
    except:
        ans += float(line)

print(ans)


