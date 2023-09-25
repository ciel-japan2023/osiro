------------------------------------------------------------------------------------------
-- �yEMS�z�e�[�u���쐬SQL�iCreateTable)
--
-- ���́F�R�[�h�}�X�^
-- ID  �Fems_m_code
--
------------------------------------------------------------------------------------------

Drop Table If Exists ems_m_code;

Create Table
	ems_m_code
	(
		cre_ymd									timestamp		default current_timestamp
		,cre_user_cd							varchar(10)
		,upd_ymd								timestamp		default current_timestamp
		,upd_user_cd							varchar(10)

		,code_type								varchar(30) 
		,code_value								varchar(50)
		,code_name								varchar(50)
		,code_shortname							varchar(20)
		,sort_key								numeric(3,2)
	)
;

alter table ems_m_code
	add constraint ems_m_code_pk
		primary key
		(
			code_type
			,code_value
		)
;

Comment on Table ems_m_code is '�A�N�Z�X�����}�X�^';

Comment on Column ems_m_code.cre_ymd is '�o�^�N����';
Comment on Column ems_m_code.cre_user_cd is '�o�^�҃R�[�h';
Comment on Column ems_m_code.upd_ymd is '�X�V�N����';
Comment on Column ems_m_code.upd_user_cd is '�X�V�҃R�[�h';

Comment on Column ems_m_code.code_type is '�R�[�h����';
Comment on Column ems_m_code.code_value is '�R�[�h�l';
Comment on Column ems_m_code.code_name is '�R�[�h����';
Comment on Column ems_m_code.code_shortname is '�R�[�h����';
Comment on Column ems_m_code.sort_key is '�\�[�g�L�[';
