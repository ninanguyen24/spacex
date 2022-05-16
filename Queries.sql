select * from launch_spacex.launch_from_df_v3;
select * from launch_spacex.ship_from_df_v3;

# Find Successful landings of a ships
SELECT `ship_name`, `successful_landings`
FROM launch_spacex.ship_from_df_v3
WHERE `successful_landings` IS NOT NULL
ORDER BY `successful_landings` DESC;

# Find nation with most launch
SELECT `rocket.second_stage.payloads.nationality` as `Nationality` , count(`rocket.second_stage.payloads.nationality`) as `Count`
FROM launch_spacex.launch_from_df_v3
GROUP BY `rocket.second_stage.payloads.nationality`
ORDER BY count(`rocket.second_stage.payloads.nationality`) DESC;






