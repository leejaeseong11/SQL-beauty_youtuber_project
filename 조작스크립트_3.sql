
TTITLE 'Ư�� ��ǰ ������ ������ ����� �̸��� �ּ�'

COLUMN mem_name HEADING 'ȸ�� �̸�'
COLUMN address HEADING 'ȸ�� �ּ�'
COLUMN pro_name HEADING '��ǰ �̸�'

SELECT	m.mem_name, m.address, p.pro_name
FROM	member m, buy b, product p
WHERE	p.kind IN '&kind'
AND	b.pro_num=p.pro_num
AND	b.mem_num=m.mem_num;

TTITLE OFF
CLEAR COLUMN