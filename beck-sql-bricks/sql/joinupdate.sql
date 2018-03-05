#table join update
UPDATE activity
SET activity.creation_date = now(),activity.shop_id = (
	SELECT
		s.shop_id
	FROM
		tmp_auto_review_shop s
	WHERE
		activity.id % 7143 = s.id
)
where activity.id < 2