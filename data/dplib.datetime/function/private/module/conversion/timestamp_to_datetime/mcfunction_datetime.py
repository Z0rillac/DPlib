# Python3 program for the above approach

# Unix time is in seconds and
# Humar Readable Format:
# (YEAR, MONTH, DATE, HOUR, MINUTES, SECONDS)
# Start of unix time:01 Jan 1970, 00:00:00

# Function to convert unix time to
# Human readable format

def days_of_month(nmonth):
    # Number of days in month
    # in normal year
    if nmonth == 0: days_of_month_out = 31
    if nmonth == 1: days_of_month_out = 28
    if nmonth == 2: days_of_month_out = 31
    if nmonth == 3: days_of_month_out = 30
    if nmonth == 4: days_of_month_out = 31
    if nmonth == 5: days_of_month_out = 30
    if nmonth == 6: days_of_month_out = 31
    if nmonth == 7: days_of_month_out = 31
    if nmonth == 8: days_of_month_out = 30
    if nmonth == 9: days_of_month_out = 31
    if nmonth == 10: days_of_month_out = 30
    if nmonth == 11: days_of_month_out = 31
    return days_of_month_out

def unixTimeToHumanReadable(unix_timestamp):

    current_year = 0
    days_since_epoch = 0
    extra_time = 0
    extra_days = 0
    index = 0
    date = 0
    month = 0
    hours = 0
    minutes = 0
    seconds = 0
    flag = 0

    # Calculate total days unix time T
    days_since_epoch = unix_timestamp
    days_since_epoch //= 86400
    extra_time = unix_timestamp
    extra_time %= 86400
    current_year = 1970

    # Calculating current year
    loop = 1
    while days_since_epoch >= 365 and loop == 1:
        current_year400 = current_year
        current_year400 %= 400
        current_year100 = current_year
        current_year100 %= 100
        current_year4 = current_year
        current_year4 %= 4
        test_current_year400 = 0
        test_current_year4100 = 0
        if current_year400 == 0: test_current_year400 = 1
        if current_year4 == 0 and not current_year100 == 0: test_current_year4100 = 1
        is_leap = test_current_year400
        is_leap += test_current_year4100

        if is_leap > 0 and days_since_epoch < 366: loop = 0
        if is_leap > 0 and not days_since_epoch < 366: days_since_epoch -= 366

        if not is_leap > 0: days_since_epoch -= 365

        current_year += 1

    # Updating extra_days because it
    # will give days till previous day
    # and we have include current day
    extra_days = days_since_epoch
    extra_days += 1

    current_year400 = current_year
    current_year400 %= 400
    current_year100 = current_year
    current_year100 %= 100
    current_year4 = current_year
    current_year4 %= 4
    test_current_year400 = 0
    test_current_year4100 = 0
    if current_year400 == 0: test_current_year400 = 1
    if current_year4 == 0 and not current_year100 == 0: test_current_year4100 = 1
    is_leap = test_current_year400
    is_leap += test_current_year4100

    if is_leap > 0: flag = 1

    # Calculating MONTH and DATE
    month = 0
    index = 0

    if flag == 1:
        loop = 1
        while loop == 1:

            extra_days29 = extra_days
            extra_days29 -= 29
            if loop == 1 and index == 1 and extra_days29 < 0: loop = 0

            if loop == 1 and index == 1: month += 1
            if loop == 1 and index == 1: extra_days -= 29

            days_of_index = days_of_month(index)
            if loop == 1 and not index == 1 and extra_days - days_of_index < 0: loop = 0
            
            
            if loop == 1 and not index == 1: month += 1
            if loop == 1 and not index == 1: days_of_index = days_of_month(index)
            if loop == 1 and not index == 1: extra_days -= days_of_index

            if loop == 1: index += 1

    if not flag == 1:
        loop = 1
        while loop == 1:
            days_of_index = days_of_month(index)
            if extra_days-days_of_index < 0: loop = 0
            if loop == 1: month += 1
            if loop == 1: days_of_index = days_of_month(index)
            if loop == 1: extra_days -= days_of_index
            if loop == 1: index += 1

    # Current Month

    if extra_days > 0: month += 1
    if extra_days > 0: date = extra_days

    if not extra_days > 0 and month == 2 and flag == 1: date = 29
    if not extra_days > 0 and not month == 2 and not flag == 1: 
        index = month
        index -= 1
        days_of_index = days_of_month(index)
        date = days_of_index

    # Calculating HH:MM:YYYY
    hours = extra_time
    hours //= 3600
    minutes = extra_time
    minutes %= 3600
    minutes //= 60
    seconds = extra_time
    seconds %= 3600
    seconds %= 60

    return current_year, month, date, hours, minutes, seconds


# Driver code
if __name__ == "__main__":

    # Given unix time
    T = 1723993351

    # Function call to convert unix
    # time to human read able
    ans = unixTimeToHumanReadable(T)

    # Print time in format
    # (YEAR, MONTH, DATE, HOUR, MINUTES, SECONDS)
    print(ans)

# This code is contributed by rutvik_56