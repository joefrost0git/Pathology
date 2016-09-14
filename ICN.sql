select * from src.request where specimen_number = '4,16.0012116.Q'
select * from src.MicroSuffix where request_row_id = '["MICNEW"]MCF||76748||Qrryyz'
select * from src.MicroTabular where micro_suffix_row_id = '["MICNEW"]MCF||76748||Qrryyz||A' order by tabular_id
select * from src.MicroSingleton where micro_suffix_row_id = '["MICNEW"]MCF||76748||Qrryyz||A' 
select * from src.MicroInvestigation where micro_suffix_row_id = '["MICNEW"]MCF||76748||Qrryyz||A' 


select * from ref.Location where location_row_id = 'MICNEW||CCW'


select * from openquery(telepath,'select * from micro_suffix where micro_suffix_row_id = ''["MICNEW"]MCF||5||Qrvzzu||A'' ')


alter table src.MicroTabular alter column tabular_id SMALLINT





SELECT * FROM openquery(telepath,'
SELECT Request_Row_id
	, Specimen_Number
	, Registration_Number
	, NHS_Number
	, DOB
	, Surname
	, Forename
	, patient.Sex
	, patient.Patient_category_Row_ID
	, Date_Time_Collected
	, Date_Time_Received
	, request.Location_Row_ID
	, request.Consultant_row_ID
	, request.Medical_Specialty
FROM request
INNER JOIN patient
ON request.Patient_Row_ID = patient.Patient_Row_ID
INNER JOIN Date_Authorised_Index
')


