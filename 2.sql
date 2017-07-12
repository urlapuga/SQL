SELECT
projects_has_developers.projects_id
FROM
projects_has_developers
LEFT JOIN developers ON developers.id = projects_has_developers.developers_id
ORDER BY
developers.salary DESC LIMIT 1
