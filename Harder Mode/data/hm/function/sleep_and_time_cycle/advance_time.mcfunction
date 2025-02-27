time add 1
execute unless predicate hm:day_cycle/is_day run schedule function hm:sleep_and_time_cycle/advance_time 2
execute if predicate hm:day_cycle/is_day run schedule function hm:sleep_and_time_cycle/advance_time 1