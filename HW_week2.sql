-- 2주차 과제

SELECT TO_CHAR(ts, 'yyyy-mm') m, COUNT(DISTINCT userid)
FROM raw_data.session_timestamp
INNER JOIN raw_data.user_session_channel
USING(sessionid)
GROUP BY m
ORDER BY m;


/* <쇼핑몰 데이터 웨어하우스>

raw_data에 넣을 데이터

상품 구매 데이터  (product) 
- 구매된 상품명 등 방문자의 상품구매 정보
검색어 - 상품을 구매한 방문자가 검색창에 입력한 검색어에 대한 검색량
            - 기간 내 일별/검색어별 검색량
회원 - 방문자의 성별/연령 정보
세션 - 상품을 구매한 방문자의 세션 접속일, 총 세션시간, 세션 기준 발생지역 등
상품 - 상품명 등

analytics 
- 성별/나이 정보
- 매출 정보
- 구매 상품 정보
... */

