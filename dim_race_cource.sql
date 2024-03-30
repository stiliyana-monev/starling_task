/*
Creating a dim table for Horces with all the attributes that I have identified to apply to the Race Cource, or assumed so
*/

{{
  config(
    materialized = 'view'
  )
}}

with race_cource as (

select  distinct
     CourseID
    , Course_Distance
    , StatCourse 
    , StatDistance
    , StatCourseDistance

from {{ source('data', 'Horses') }}

)

select * 

from race_cource