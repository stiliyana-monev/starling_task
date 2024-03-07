/*
Creating a fact view for Races with all the attributes that I have identified to apply to the Race, 
this is non-agreggated view
*/

{{
  config(
    materialized = 'view'
  )
}}

with races as (

select 
    {{surrogate_key(['RaceID', 'HorseID'])}} as unique_id
    , RaceID
    , HorseID 
    , JockeyID --assuming that the Jockey might be different from race to race
    , MeetingID
    , CourseID
    , Cloth --appear to vary from race to race
    , Stall --appear to vary from race to race
    , Blinkers  --appear to vary from race to race
    , WeightValue --appear to vary from race to race
    , Hood
    , Visor 
    , EyeShield 
    , Eyecover 
    , TongueStrap 
    , CheekPieces 
    , RaceNumber
    , HorseCount
    , RaceType
    , Runners
    , MeetingDate
    , Won
    , Going 
    , Weather 
    , ScheduledTime 
    , StartingPrice
    , ForecastPrice -- I assume that is the forcased value of the horse at the time of race fpr example
    , eligibility  --I work under the assumption that the race is for horses of sertain age range

from {{ source('data', 'Horses') }}

)

select * 

from races