
TTITLE '������ ���� 100�� �̻� 1000�� �̸��� ��Ʃ���� �ַ� ����ϴ� ��ǰ�� ����'

COLUMN PRO_NAME HEADING '��ǰ �̸�'
COLUMN price HEADING '����'
COLUMN basic_usage HEADING '��ǰ �⺻ ����'

SELECT    A.pro_name, A.price, A.basic_usage
FROM    PRODUCT A, PREFER_PRO B
WHERE   B.youtuber_num
   IN (SELECT youtuber_num
        FROM youtuber
        WHERE subscriber_cnt  BETWEEN 1000000 AND 9999999) 
AND   A.pro_num = B.pro_num;

TTITLE OFF
CLEAR COLUMN