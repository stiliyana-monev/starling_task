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
    , CourseID
    , JockeyID --Jockey can be different from race to race
    , RaceNumber
    , HorseCount
    , RaceType
    , Runners
    , Going 
    , Weather 
    , Eligibility  --I work under the assumption that the race is for horses of sertain age range
    , Age --this is the age at date of the race
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
    , LastRunDaysFlat
    , TrackType
    , Won

from {{ source('data', 'Horses') }}

)

select * 

from races