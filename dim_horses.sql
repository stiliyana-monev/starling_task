/*
Creating a dim table for Horces with all the attributes that I have identified to apply to the Horce, or assumed so
*/

{{
  config(
    materialized = 'view'
  )
}}

with horses as (

select  distinct
    HorseID 
    , OwnerID
    , TrainerID
    , Bred
    , Sex 
    , Colour

from {{ source('data', 'Horses') }}

)

select * 

from horses