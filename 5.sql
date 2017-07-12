
SELECT company_id,customers_id,MIN(summ) FROM(
SELECT
companies.id as company_id,
customers_has_projects.customers_id as customers_id,
SUM(projects.cost) as summ
FROM
companies
LEFT JOIN companies_has_projects ON companies_has_projects.companies_id = companies.id
LEFT JOIN customers_has_projects ON customers_has_projects.projects_id = companies_has_projects.projects_id
LEFT JOIN projects ON projects.id = customers_has_projects.projects_id
GROUP BY 1,2 )as select_name GROUP BY 1
