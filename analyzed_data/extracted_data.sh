#!/bin/bash
(echo "The top 10 highest temperatures are: "
echo ""
tail -n +2 satelite_temperature_data.csv | cut -d ',' -f 3 | sort -nr | head -n 10
echo ""
echo "Results grouped according to humidity amount in descending order for Botswana"
echo ""
head -n 1 satelite_temperature_data.csv && grep "Botswana" satelite_temperature_data.csv | sort -t',' -k4 -rn) > combined_results
