TTITLE 'ȸ���� ��ٱ��Ͽ� ����ϰ� �������� ���� ��ǰ�� �Ǹ��ϴ� ȸ���� �ּҿ��� ���� ����� ������ ����'

COLUMN pro_name HEADING '��ǰ�̸�'
COLUMN put_date HEADING '��� '
COLUMN price HEADING '����'

select P.pro_name as ��ǰ�̸�, B.put_date as ���, P.price 
as ����,S.store_address as �����ּ�
from buy B, product P,administrate A,store S
where  B.mem_num IN (SELECT mem_num
                      FROM member
                      WHERE mem_name LIKE '&mem_name%')
AND B.pur_date IS NULL
AND B.pro_num=P.pro_num
AND P.pro_num=A.pro_num
AND A.store_num=S.store_num
AND S.store_address LIKE '&address%';

TTITLE OFF
CLEAR COLUMN