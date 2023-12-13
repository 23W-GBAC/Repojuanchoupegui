#!/bin/bash

# This script opens links of resources that I use each day. It is based on ECRI Schedule (HI-1), but manually made. Run 'chmod +x open_todays_links.sh' to make this file executable.

# Get the current day of the week
day=$(date +%A)

# Define links based on the day
case $day in
	"Monday")
		link1="https://ilearn.th-deg.de/course/view.php?id=17309"
		link2=""
		link3=""
		;;
	"Tuesday")
		link1="https://teams.microsoft.com/_#/conversations/General%20Business%20Administration%20and%20Accounting?threadId=19:4385ddd1b9b840e0a959c2e113026483@thread.tacv2&ctx=channel"
		link2="https://ilearn.th-deg.de/course/view.php?id=17809"
		link3="https://github.com/dashboard"
		;;
	"Wednesday")
		link1="https://ilearn.th-deg.de/course/view.php?id=17310"
		link2=""
		link3=""
		;;
	"Thursday")
		link1="https://ilearn.th-deg.de/course/view.php?id=18236"
		link2="https://ilearn.th-deg.de/course/view.php?id=17312"
		link3="https://jupyter.org/try-jupyter/lab/?path=notebooks%2FIntro.ipynb"
		;;
	"Friday")
		link1="https://ilearn.th-deg.de/course/view.php?id=17809"
		link2=""
		link3=""
		;;
	*)
		echo "No specific links for today."
		exit 1
		;;
esac

# Open the links in Microsoft Edge
cmd.exe /c start microsoft-edge:"$link1" "$link2" "$link3"