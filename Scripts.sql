use[ProjetoIBM]

SELECT 
    d.department AS Department,
    SUM(CASE WHEN a.attrition = 'Yes' THEN 1 ELSE 0 END) AS Yes,
    SUM(CASE WHEN a.attrition = 'No' THEN 1 ELSE 0 END) AS  No
FROM 
    employee e
JOIN 
    department d ON e.departmentid = d.departmentid
JOIN 
    attrition a ON e.attritionid = a.attritionid
GROUP BY 
    d.department
ORDER BY 
    d.department; 


SELECT
    d.department AS Departamento,
    FORMAT(ROUND(AVG(s.monthlyincome), 2), 'N2', 'pt-PT') + ' €' AS MédiaSalarial,
    FORMAT(MAX(s.monthlyincome), 'N2', 'pt-PT') + ' €' AS SalárioMáximo,
    FORMAT(MIN(s.monthlyincome), 'N2', 'pt-PT') + ' €' AS SalárioMínimo
FROM
    employee e
JOIN
    department d ON e.departmentid = d.departmentid
JOIN
    attrition a ON e.attritionid = a.attritionid
JOIN
    salary s ON e.employeeid = s.employeeid
WHERE
    a.attrition = 'No'
GROUP BY
    d.department
ORDER BY
    d.department,
    MédiaSalarial
DESC;


SELECT 
    d.department AS Departamento,
    o.overtime AS OverTime,
    COUNT(*) AS Totalfuncionarios
FROM 
    employee e
JOIN 
    department d ON e.departmentid = d.departmentid
JOIN 
    job j ON e.jobid = j.jobid
JOIN 
    overtime o ON j.OverTimeID = o.OvertimeID
GROUP BY 
    d.department, 
	o.overtime
ORDER BY 
    d.department,
	o.overtime;



SELECT
    d.department AS Departamento,
    m.maritalstatus AS MaritalStatus,
    ROUND(AVG(p.age), 2) AS MediaIdade
FROM
    personalinfo p
JOIN
    employee e ON p.employeeid = e.employeeid
JOIN
    department d ON e.departmentid = d.departmentid
JOIN
    maritalstatus m ON p.maritalstatusid = m.maritalstatusid
GROUP BY
    d.department,
    m.maritalstatus
ORDER BY
    d.department,
    m.maritalstatus;




SELECT 
    CASE 
        WHEN p.age BETWEEN 18 AND 25 THEN '18-25'
        WHEN p.age BETWEEN 26 AND 35 THEN '26-35'
        WHEN p.age BETWEEN 36 AND 45 THEN '36-45'
        WHEN p.age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END AS AgeGroup,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN a.attrition = 'Yes' THEN 1 ELSE 0 END) AS TotalAttrition,
    FORMAT(
        CAST(SUM(CASE WHEN a.attrition = 'Yes' THEN 1 ELSE 0 END) AS DECIMAL(10,2)) / 
        CAST(COUNT(*) AS DECIMAL(10,2)),
        'P0'
    ) AS GroupAttritionRate
FROM 
    employee e
JOIN 
    personalinfo p ON e.employeeid = p.employeeid
JOIN 
    attrition a ON e.attritionid = a.attritionid
GROUP BY 
    CASE 
        WHEN p.age BETWEEN 18 AND 25 THEN '18-25'
        WHEN p.age BETWEEN 26 AND 35 THEN '26-35'
        WHEN p.age BETWEEN 36 AND 45 THEN '36-45'
        WHEN p.age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END
ORDER BY 
    MIN(p.age);



SELECT
    d.department AS Departamento,
    FORMAT(ROUND(AVG(s.monthlyincome), 2), 'N2', 'pt-PT') + ' €' AS MédiaSalarial,
    FORMAT(MAX(s.monthlyincome), 'N2', 'pt-PT') + ' €' AS SalárioMáximo,
    FORMAT(MIN(s.monthlyincome), 'N2', 'pt-PT') + ' €' AS SalárioMínimo,
    COUNT(*) AS TotalFuncionários,
    SUM(CASE WHEN a.attrition = 'Yes' THEN 1 ELSE 0 END) AS FuncionáriosAttrition,
    FORMAT(CAST(SUM(CASE WHEN a.attrition = 'Yes' THEN 1 ELSE 0 END) AS DECIMAL(10,2)) / 
           CAST(COUNT(*) AS DECIMAL(10,2)), 'P0', 'pt-PT') AS TaxaAttrition
FROM
    employee e
JOIN
    department d ON e.departmentid = d.departmentid
JOIN
    attrition a ON e.attritionid = a.attritionid
JOIN
    salary s ON e.employeeid = s.employeeid
GROUP BY
    d.department
ORDER BY
    d.department;




