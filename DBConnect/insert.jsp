<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- send.jsp���� �Ѿ���� �����͸� DB�� ���� -->
<!-- 
		1. ������ �ޱ�
			- �ѱ�ó��? �ʿ��ϴٸ� �Ѵ�
			- �Ķ���� �ޱ�
			- ��ȿ�� �˻� : �������ϴٸ� ����(���̺� ��������)
			
		2. DB ���� 
			- ����̹� �˻� : ���� + ���
				������ ojdbc6.jar(ī�信 ����)
				��δ� oracle,jdbc.driver.OracleDriver
				
			- �α��� : java.sql.Connection, java.sql.DriverManager
				�ʿ��� ���� : ���� ���α׷� �ּ�, ���̵�, ��й�ȣ
				���� �����ϴ� ���� �ƴ϶� java.sql ��Ű�� ������
				���� ���α׷� �ּ�(����Ŭ 11g)
				-> jdbc:oracle:thin:@������:��Ʈ:xe
				-> jdbc:oracle:thin:@localhost:1521:xe
				
			- ������ ����
				�ʿ��� ���� : ������(insert, select, update, delete)
				���� ��� : ���� ���۹��(Statement Ŭ����) - ����
									���� ���۹��(PreparedStatement Ŭ����) - �ֽ�
				
				(���� ���) : ���� ���� ����
				String id = "�ں���";
				String sql = "insert into game values(game_seq.nextval, '"+id+"', ...);
				(���� ���) : �ڹٿ��� ���� ������ ��Ź
				String id = "�ں���";
				String sql = "insert into game values(game_seq.nextval, ?, ...);
				
			- ���� ��Ű�� ��� ��������
				insert ~ : int �� ���
				select ~ : ResultSet �ڷ��� ����
				update ~ : int �� ���
				delete ~ : int �� ���
				*���� �� ��ɾ �ڹٿ��� ���� ����
		
		3. ����� ������ ����ڿ��� �˷��ش�.
			- �˸�â �Ǵ� ���
-->