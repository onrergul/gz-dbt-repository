with 

source as (

    select * from {{ source('raw', 'bing') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        camPGN_name as campaign_name,
        SAFE_CAST(ads_cost AS FLOAT64) AS ads_cost,
        impression as impressions,
        click as clicks

    from source

)

select * from renamed