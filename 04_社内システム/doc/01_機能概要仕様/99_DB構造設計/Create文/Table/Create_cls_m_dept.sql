------------------------------------------------------------------------------------------
-- �yEMS�z�e�[�u���쐬SQL�iCreateTable)
--
-- ���́F�g�D�}�X�^
-- ID  �Fems_m_dept
--
------------------------------------------------------------------------------------------

Drop Table If Exists ems_m_dept;

Create table
	ems_m_dept
	(
		cre_ymd									timestamp		default current_timestamp
		,cre_user_cd							varchar(10)
		,upd_ymd								timestamp		default current_timestamp
		,upd_user_cd							varchar(10)

		,dept_cd								varchar(10)
		,dept_name								varchar(30)
	)
;

alter table ems_m_dept
	add constraint ems_m_dept_pk
		primary key
		(
			dept_cd
		)
;


Comment on Table ems_m_dept is '�g�D�}�X�^';

Comment on Column ems_m_dept.cre_ymd is '�o�^�N����';
Comment on Column ems_m_dept.cre_user_cd is '�o�^�҃R�[�h';
Comment on Column ems_m_dept.upd_ymd is '�X�V�N����';
Comment on Column ems_m_dept.upd_user_cd is '�X�V�҃R�[�h';

Comment on Column ems_m_dept.dept_cd is '�g�D�R�[�h';
Comment on Column ems_m_dept.dept_name is '�g�D��';
