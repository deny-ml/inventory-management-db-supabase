-- Monthly Transaction Report
SELECT 
    DATE_TRUNC('month', st.created_at) AS month,
    SUM(CASE WHEN st.transaction_type = 'IN' THEN st.quantity ELSE 0 END) AS total_in,
    SUM(CASE WHEN st.transaction_type = 'OUT' THEN st.quantity ELSE 0 END) AS total_out,
    COUNT(*) AS total_transactions
FROM stock_transactions st
GROUP BY month
ORDER BY month DESC;
