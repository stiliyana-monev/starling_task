TASK 1 - DATA DISCOVERY

Horses data set contains data around Races, the race cource and the horses that are taking part in a race. I as part of my initial exploration I have tried to divide the available columns into groups- Measures that relate to the Race, attributes that relate to the individual Horse and few attributes that relate to the Race Cource.

Data Quality Observation:

I am noticing that 'Forcast Pice' and 'Starting Price' contain data with inconsistent data type and are not integers or float data typess. For that reason I have left them out from my model.
'ScheduledTime' appears to be masked, therefore I am leaving it out of my model
There are a number of columns that appear to be attributes to the Horse (ex.'Hood', 'Visor'), therefore I have added them to my dim model. There is some ambiguity about these fields , as they might be also considered to vary from Race to Race.
Coulmns that would need more context about:

There thee columns ('DamID', 'SireId', 'DamSireID') that I I am not sure how to use and would need more context, but they seem to be more horse related that Race related.
Similar to the above in regards to 'AllowanceValue' and 'OverweightValue' fields.
Following the above observation I have decided to create a model , which is described in the graph added here called - 'Horces_data_model'

TASK 2 -MOdeling - please see attached diagram

TASK 3 - Please view report.sql file
