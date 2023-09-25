------------------------------------------------------------------------------------------
-- �yEMS�z�e�[�u���쐬SQL�iCreateTable)
--
-- ���́F�A�N�Z�X�����}�X�^
-- ID  �Fems_t_paid_holiday
--
------------------------------------------------------------------------------------------

Drop Table If Exists ems_t_paid_holiday;

Create table
	ems_t_paid_holiday
	(
		cre_ymd									timestamp		default current_timestamp
		,cre_user_cd							varchar(10)
		,upd_ymd								timestamp		default current_timestamp
		,upd_user_cd							varchar(10)

		,apply_no								varchar(15)
		,user_cd								varchar(10)
		,apply_ymd								varchar(8)
		,workflow_status						varchar(1)
		,paid_holiday_ymd						varchar(8)
		,paid_holiday_type						varchar(1)
		,paid_holiday_reason					varchar(50)
		,paid_holiday_before					numeric(3,1)
		,paid_holiday_after						numeric(3,1)
	)
;

alter table ems_t_paid_holiday
	add constraint ems_t_paid_holiday_pk
		primary key
		(
			apply_no
		)
;


Comment on Table ems_t_paid_holiday is '�A�N�Z�X�����}�X�^';

Comment on Column ems_t_paid_holiday.cre_ymd is '�o�^�N����';
Comment on Column ems_t_paid_holiday.cre_user_cd is '�o�^�҃R�[�h';
Comment on Column ems_t_paid_holiday.upd_ymd is '�X�V�N����';
Comment on Column ems_t_paid_holiday.upd_user_cd is '�X�V�҃R�[�h';

Comment on Column ems_t_paid_holiday.apply_no is '�\���ԍ�';
Comment on Column ems_t_paid_holiday.user_cd is '���[�U�[�R�[�h';
Comment on Column ems_t_paid_holiday.apply_ymd is '�\����';
Comment on Column ems_t_paid_holiday.workflow_status is '�X�e�[�^�X';
Comment on Column ems_t_paid_holiday.paid_holiday_ymd is '�L���x�Ɏ擾��';
Comment on Column ems_t_paid_holiday.paid_holiday_type is '�敪';
Comment on Column ems_t_paid_holiday.paid_holiday_reason is '�擾���R';
Comment on Column ems_t_paid_holiday.paid_holiday_before is '�L���x�Ɏc��(���F�O)';
Comment on Column ems_t_paid_holiday.paid_holiday_after is '�L���x�Ɏc��(���F��)';
