with raw_reviews as (
    select *
    from {{ ref('src_reviews') }}
)
select
    listing_id, 
	date as review_date,
	reviewer_name,
	COMMENTS as review_text ,
	SENTIMENT as review_sentiment
FROM 
    RAW_REVIEWS