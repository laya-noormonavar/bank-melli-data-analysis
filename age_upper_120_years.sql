SELECT 
  national_code,
  birth_date,
  EXTRACT(YEAR FROM AGE(CURRENT_DATE, birth_date))::INT - 622 AS corrected_age
FROM cleaned_data
WHERE birth_date IS NOT NULL
ORDER BY birth_date ASC
LIMIT 20;
