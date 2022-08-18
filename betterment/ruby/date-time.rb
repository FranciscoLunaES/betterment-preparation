# 3 active support methods en date and time
# strftime on a date
# This functions only work with active support

Time.now.next_day(1)
Time.current
Time.now.prev_day(100)

Time.now.strftime("Today is %A")
Time.now.strftime("%d-%m-%Y at %I:%M %p")