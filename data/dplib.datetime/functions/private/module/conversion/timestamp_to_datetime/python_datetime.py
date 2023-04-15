# Python3 program for the above approach

# Unix time is in seconds and
# Humar Readable Format:
# (YEAR, MONTH, DATE, HOUR, MINUTES, SECONDS)
# Start of unix time:01 Jan 1970, 00:00:00

# Function to convert unix time to
# Human readable format


def unixTimeToHumanReadable(seconds):

    # Number of days in month
    # in normal year
    daysOfMonth = [31, 28, 31, 30, 31, 30,
                   31, 31, 30, 31, 30, 31]

    (currYear, daysTillNow, extraTime,
     extraDays, index, date, month, hours,
     minutes, secondss, flag) = (0, 0, 0, 0, 0,
                                 0, 0, 0, 0, 0, 0)

    # Calculate total days unix time T
    daysTillNow = seconds // (24 * 60 * 60)
    extraTime = seconds % (24 * 60 * 60)
    currYear = 1970

    # Calculating current year
    while (daysTillNow >= 365):
        if (currYear % 400 == 0 or
            (currYear % 4 == 0 and
                currYear % 100 != 0)):
          if daysTillNow < 366:
            break
          daysTillNow -= 366

        else:
            daysTillNow -= 365

        currYear += 1

    # Updating extradays because it
    # will give days till previous day
    # and we have include current day
    extraDays = daysTillNow + 1

    if (currYear % 400 == 0 or
        (currYear % 4 == 0 and
            currYear % 100 != 0)):
        flag = 1

    # Calculating MONTH and DATE
    month = 0
    index = 0

    if (flag == 1):
        while (True):

            if (index == 1):
                if (extraDays - 29 < 0):
                    break

                month += 1
                extraDays -= 29

            else:
                if (extraDays - daysOfMonth[index] < 0):
                    break

                month += 1
                extraDays -= daysOfMonth[index]

            index += 1

    else:
        while (True):
            if (extraDays - daysOfMonth[index] < 0):
                break

            month += 1
            extraDays -= daysOfMonth[index]
            index += 1

    # Current Month
    if (extraDays > 0):
        month += 1
        date = extraDays

    else:
        if (month == 2 and flag == 1):
            date = 29
        else:
            date = daysOfMonth[month - 1]

    # Calculating HH:MM:YYYY
    hours = extraTime // 3600
    minutes = (extraTime % 3600) // 60
    secondss = (extraTime % 3600) % 60

    return currYear, month, date, hours, minutes, secondss


# Driver code
if __name__ == "__main__":

    # Given unix time
    T = 4115037183

    # Function call to convert unix
    # time to human read able
    ans = unixTimeToHumanReadable(T)

    # Print time in format
    # (YEAR, MONTH, DATE, HOUR, MINUTES, SECONDS)
    print(ans)

# This code is contributed by rutvik_56