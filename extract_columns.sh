# !/bin/bash

csvcut -c positionDuelsLeaderboard,nick,countryCode,rating,divisionName,gameModeRatingsStandardduels,gameModeRatingsNomoveduels,gameModeRatingsNmpzduels,current_time leaderboard.csv > __filtered__

diff -q __filtered__ leaderboard_filtered.csv

if [ "X$?" == "X1" ]; then
	mv __filtered__ leaderboard_filtered.csv
else
	rm -f __filtered__
fi
