# 쿼리를 작성하는 목표, 확인할 지표 : 중복 이메일 찾기
# 쿼리 계산 방법 : GROUP BY, HAVING
# 사용할 테이블 : Person

SELECT
    email AS Email
FROM
    Person
GROUP BY Email
HAVING COUNT(email) > 1;