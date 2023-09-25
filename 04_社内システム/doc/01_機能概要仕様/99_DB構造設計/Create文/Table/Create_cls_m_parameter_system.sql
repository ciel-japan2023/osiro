------------------------------------------------------------------------------------------
-- �yEMS�z�e�[�u���쐬SQL�iCreateTable)
--
-- ���́F�V�X�e���p�����[�^
-- ID  �Fems_m_parameter_system
--
------------------------------------------------------------------------------------------

Drop Table If Exists ems_m_parameter_system;

Create table
	ems_m_parameter_system
	(
		cre_ymd									timestamp		default current_timestamp
		,cre_user_cd							varchar(10)
		,upd_ymd								timestamp		default current_timestamp
		,upd_user_cd							varchar(10)

		,parameter_key							varchar(30)
		,parameter_value						varchar(50)
		,note_text								varchar(50)
	)
;

alter table ems_m_parameter_system
	add constraint ems_m_parameter_system_pk
		primary key
		(
			parameter_key
		)
;


Comment on Table ems_m_parameter_system is '�V�X�e���p�����[�^';

Comment on Column ems_m_parameter_system.cre_ymd is '�o�^�N����';
Comment on Column ems_m_parameter_system.cre_user_cd is '�o�^�҃R�[�h';
Comment on Column ems_m_parameter_system.upd_ymd is '�X�V�N����';
Comment on Column ems_m_parameter_system.upd_user_cd is '�X�V�҃R�[�h';

Comment on Column ems_m_parameter_system.parameter_key is '�p�����[�^�L�[';
Comment on Column ems_m_parameter_system.parameter_value is '�p�����[�^�l';
Comment on Column ems_m_parameter_system.note_text is '�p�����[�^����';
