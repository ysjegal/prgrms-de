-- 2주차 과제

/* 코딩 숙제: SQL이나  Python으로 Monthly Active User 세보기
 - 앞서 주어진 두개의 테이블 (raw_data.session_timestamp, raw_data.user_session_channel)을 바탕으로 월별마다 액티브한 사용자들의 수를 카운트한다.
 - 여기서 중요한 점은 세션의 수를 세는 것이 아니라 사용자의 수를 카운트한다는 점이다.
 - 결과는 예를 들면 아래와 같은 식이 되어야 한다:
   - 2019-05: 400
   - 2019-06: 500
   - 2019-07: 600
   - ... */

SELECT TO_CHAR(ts, 'yyyy-mm') m, COUNT(DISTINCT userid)
FROM raw_data.session_timestamp
INNER JOIN raw_data.user_session_channel
USING(sessionid)
GROUP BY m
ORDER BY m;
