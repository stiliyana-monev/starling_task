/*
Report to provide the numer of races in which a horse hase participated and the number ofraces won
*/

{{
  config(
    materialized = 'view'
  )
}}


with races as (

select 
    unique_id
    , RaceID
    , HorseID 
    , Won
   

from {{ ref ('fact_race') }}

)
    , number_of_races as (

select 
    HorseID
    , count(RaceID) as total_number_of_races

from races

group by HorseID

                        )

    , number_of_races_won as (

select 
    HorseID
    , count(RaceID) total_races_won

from races
where won = 1
group by HorseID

                        ) 

select 
    all_races.HorseID
    , all_races.total_number_of_races
    , won_races.total_races_won

from number_of_races                all_races

inner join number_of_races_won      won_races

         on all_races.HorseID = won_races.HorseID