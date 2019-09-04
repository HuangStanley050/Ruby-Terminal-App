## Fetch a random Chuck Norris joke from API and displays on Terminal.

- confirm that we can make http request with HTTParty
- confirm that we can parse the JSON result back into ruby hash information
- handles error if the http request fails
- confirm that the fallback joke will return a result once http call fails
- confirm that the loading bar will display and finish once http fulfills request

|                    Task                     | Duration | Deadline   | Priority |
| :-----------------------------------------: | -------- | ---------- | -------- |
|        http request to external api         | unknown  | 2019-09-06 | High     |
|         parse json result into hash         | unknown  | 2019-09-06 | High     |
|             handle http failure             | unknown  | 2019-09-06 | Medium   |
| fallback joke will run if http request fals | unknown  | 2019-09-06 | High     |
|     loading bar gets displayed properly     | unknown  | 2019-09-06 | low      |

## Fetch a random Chuck Norris joke and save to a folder called **"chuck_norris_jokes"** in the current directory, if it's not there it's created on the fly

- confirm that we can make http request to api
- confirm that we can handle error
- confirm that we can make a new directory
- confirm that we can save the file into the given directory
- confirm we can make an unique filename
- confirm we can handle error when saving to local file system

## Run both features from above without going into the app from the CLI with appropriate argument option of either **'-R'** or **'-W'**

- confirm http call request works for both get joke
- confirm program ends after result is printed on screen
- confirm we can handle invalid argument
- confirm http call works for save joke
- checking to see if there's any argument

## Generate a random string and append the date the file is created to give unique file name

- confirm we can generate a random string
- confirm we can get the current date
- confirm we can format the date correctly
- confirm we can pass in the string to the File class to generate the file

## Offline support when the fetching api call fails

- confirm that the fallback function runs if fetch api calls fails
- confirm that the value is correct from the hard coded jokes
- confirm that app ends after the result is printed
