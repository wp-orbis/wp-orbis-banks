--
-- Query group totals.
--
SELECT
	transaction_group.id AS group_id,
	transaction_group.name AS group_name,
	SUM( transaction.amount ) AS group_total
FROM
	wp_orbis_bank_transaction_groups AS transaction_group
		LEFT JOIN
	wp_orbis_bank_transactions AS transaction
			ON transaction.group_id = transaction_group.id
GROUP BY
	transaction_group.id
;
