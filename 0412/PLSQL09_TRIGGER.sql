--트리거 관리
--트리거 정보 조회 USER_TRIGGERS
SELECT trigger_name,
       trigger_type,
       triggering_event,
       table_name,
       status
FROM user_triggers
;

