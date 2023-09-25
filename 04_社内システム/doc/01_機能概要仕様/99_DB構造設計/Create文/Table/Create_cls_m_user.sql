------------------------------------------------------------------------------------------
-- �yEMS�z�e�[�u���쐬SQL�iCreateTable)
--
-- ���́F���[�U�[�}�X�^
-- ID  �Fems_m_user
--
------------------------------------------------------------------------------------------

Drop Table If Exists ems_m_user;

Create table
	ems_m_user
	(
		cre_ymd									timestamp		default current_timestamp
		,cre_user_cd							varchar(10)
		,upd_ymd								timestamp		default current_timestamp
		,upd_user_cd							varchar(10)

		,user_cd								varchar(10)
		,user_name								varchar(30)
		,user_password							varchar(20)
		,dept_cd								varchar(10)
		,join_ymd								varchar(8)
		,user_position							varchar(2)
	)
;

alter table ems_m_user
	add constraint ems_m_user_pk
		primary key
		(
			user_cd
		)
;


Comment on Table ems_m_user is '���[�U�[�}�X�^';

Comment on Column ems_m_user.cre_ymd is '�o�^�N����';
Comment on Column ems_m_user.cre_user_cd is '�o�^�҃R�[�h';
Comment on Column ems_m_user.upd_ymd is '�X�V�N����';
Comment on Column ems_m_user.upd_user_cd is '�X�V�҃R�[�h';

Comment on Column ems_m_user.user_cd is '���[�U�[�R�[�h';
Comment on Column ems_m_user.user_name is '���[�U�[��';
Comment on Column ems_m_user.user_password is '�p�X���[�h';
Comment on Column ems_m_user.dept_cd is '�g�D�R�[�h';
Comment on Column ems_m_user.join_ymd is '���ДN����';
Comment on Column ems_m_user.user_position is '��E';
