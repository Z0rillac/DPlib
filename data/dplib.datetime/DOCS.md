# dplib.datetime
dplib.datetime is a module for obtaining real-life time information.  
It does not calculate time information in Minecraft, and cannot measure time below the second.  
Although the documentation mentions a "request", you do not need to set up an external server to run the module. It depends on the Minecraft Java skin servers (textures.minecraft.net).

## Warning
This module cannot be deleted or disabled after it has been loaded once. It adds a new dimension that is absolutely necessary to measure time and avoid polluting the default dimension with blocks.  
A warning about this will be displayed if you try to uninstall dplib.datetime. It is not recommended to remove this warning from the code, unless you want to modify it or warn with your own datapack that it should not be disabled or removed.

## Setup
At the beginning of your load (or init/reset) file:
```mcfunction
function dplib.datetime:load
```
At the beginning of your tick file:
```mcfunction
function dplib.datetime:tick
```
In your uninstall file:
```mcfunction
function dplib.datetime:uninstall
```

## Index
### Variables
[dplib.datetime.main **local_seconds**](DOCS.md#dplibdatetimemain-local_seconds)

[dplib.datetime.main **local_minutes**](DOCS.md#dplibdatetimemain-local_minutes)

[dplib.datetime.main **local_hours**](DOCS.md#dplibdatetimemain-local_hours)

[dplib.datetime.main **unix_timestamp**](DOCS.md#dplibdatetimemain-unix_timestamp)

[dplib.datetime.main **request.state**](DOCS.md#dplibdatetimemain-requeststate)

[dplib.datetime.main **request.slot**](DOCS.md#dplibdatetimemain-requestslot)

### Functions
[dplib.datetime:conversion/**timestamp_to_datetime**](DOCS.md#dplibdatetimeconversiontimestamp_to_datetime)

## Variables
### dplib.datetime.main **local_seconds**
The seconds of the local time of the server

***

### dplib.datetime.main **local_minutes**
The minutes of the local time of the server

***

### dplib.datetime.main **local_hours**
The hours of the local time of the server

***

### dplib.datetime.main **unix_timestamp**
Current seconds since the Unix epoch (January 1, 1970, 00:00:00 UTC)

Updated every tick.  
This data is not directly available when the datapack is loaded, it takes up to two real seconds on average to get it from the internet, and up to 20 seconds to get it successfully on extremely limited internet connections. In any case it is impossible to get this information without an internet connection.  
You can know when the timestamp is available with the `request.state` variable.

***

### dplib.datetime.main **request.state**
The state of the request to obtain the timestamp.  
It can take these values:
- `#request.sending dplib.enum`: The request will be sent.
- `#request.waiting dplib.enum`: The module is waiting for a response.
- `#request.received dplib.enum`: The request has been received and will be processed.
- `#request.done dplib.enum`: The request has been processed
- `#request.timeout dplib.enum`: The request did not receive a response within 20 seconds, the server is likely not connected to the internet.

***

### dplib.datetime.main **request.slot**
The slot currently used to download the timestamp.

The total number of slots is 8192. We refer to "slot" here because, due to Minecraft's limitations, it is not possible to execute commands dynamically, and each different slot can only be used once per month. 8192 is normally sufficient for one month, but if you see that you have used all the slots in less than a month, or that the timestamp is necessarily incorrect, delete the 'usercache.json' file from your server folder or your .minecraft folder.

## Functions
### dplib.datetime:conversion/**timestamp_to_datetime**
Returns the date and time of `$timestamp`.

Parameters -> score `dplib.datetime.in` :  
- `$timestamp` : the timestamp to be converted

Output -> score `dplib.datetime.out` :  
- `$year` : the year
- `$month` : the month
- `$date` : the day
- `$hour` : the hour
- `$minutes` : the minute
- `$seconds` : the second

Example code :  
```mcfunction
# display the current datetime
scoreboard players operation $timestamp dplib.datetime.in = unix_timestamp dplib.datetime.main
function dplib.datetime:conversion/timestamp_to_datetime
tellraw @a ["",{"text":"year = "},{"score":{"name":"$year","objective":"dplib.datetime.out"}},{"text":"\nmonth = "},{"score":{"name":"$month","objective":"dplib.datetime.out"}},{"text":"\ndate = "},{"score":{"name":"$date","objective":"dplib.datetime.out"}},{"text":"\nhour = "},{"score":{"name":"$hour","objective":"dplib.datetime.out"}},{"text":"\nminutes = "},{"score":{"name":"$minutes","objective":"dplib.datetime.out"}},{"text":"\nseconds = "},{"score":{"name":"$seconds","objective":"dplib.datetime.out"}}]
```

***