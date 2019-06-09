TTITLE '�ֱ� �����ϰ� ������ ���ε��� �������߿��� ������ ������ ȸ��'

COLUMN youtuber_nickname HEADING '��Ʃ�� �г���'
COLUMN youtuber_name HEADING '��Ʃ�� �̸�'
COLUMN subscription_date HEADING '����'
COLUMN mem_name HEADING 'ȸ�� �̸�'

SELECT distinct  Y.youtuber_nickname, Y.youtuber_name, S.subscription_date, M.mem_name        
FROM   youtuber Y, member M, video V, subscribe S
WHERE   V.youtuber_num = Y.youtuber_num
AND   Y.youtuber_num = S.youtuber_num
AND   S.mem_num = M.mem_num
AND  V.video_upload_date  BETWEEN (SYSDATE - 7) AND SYSDATE
AND  S.subscription_date  BETWEEN (SYSDATE - 7) AND SYSDATE
ORDER BY S.subscription_date ;

TTITLE OFF
CLEAR COLUMN