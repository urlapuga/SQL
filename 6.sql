SELECT
projects.id,
AVG(developers.salary) as avg_salary
FROM
projects
LEFT JOIN projects_has_developers ON projects_has_developers.projects_id = projects.id
LEFT JOIN developers ON developers.id = projects_has_developers.developers_id
GROUP BY 1
ORDER BY 2 asc LIMIT 1