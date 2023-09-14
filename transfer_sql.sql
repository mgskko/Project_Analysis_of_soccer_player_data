SELECT *
FROM transfer

SELECT * FROM TRANSFER
ORDER BY CAST(SUBSTR(몸값, 2, LENGTH(몸값) - 2) AS DECIMAL) DESC;

SELECT
    국가,
    CONCAT('€', AVG(CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(몸값, '€', -1), 'm', 1) AS DECIMAL)), 'M') AS 평균_몸값
FROM
    TRANSFER
GROUP BY
    국가
ORDER BY
    평균_몸값 DESC;

SELECT
    순위,
    이름,
    포지션,
    나이,
    국가,
    팀,
    몸값
FROM
    TRANSFER
WHERE
    나이 >= 25 AND CAST(SUBSTR(몸값, 2, LENGTH(몸값) - 2) AS DECIMAL) >= 100.0;


SELECT
    국가,
    AVG(나이) AS 평균나이,
    AVG(CAST(SUBSTR(몸값, 2) AS DECIMAL)) AS 평균몸값
FROM
    TRANSFER
GROUP BY
    국가



