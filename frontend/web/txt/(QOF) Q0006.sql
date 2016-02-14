/************************************** Workload **************************************/
/*********** Rigth = UC  and PT typaarea 1,3 AND Chronic DM and  Have Admission rate in complication disease ***********/

SET @ds1:='20150401',  /* Start date */
    @ds2:='20160331',  /* End date */ 
    @codeprocess:='qof_0006' ;     /* Code Process*/


SET @date_diag_start := '20140930';
SET @date_cal_age := '20140930';

SELECT b.hospcode
	,b.hospname
	,b.target
	,a.result
	,@codeprocess process_code
FROM (
	/* ตัวตั้ง */
	SELECT h.hoscode hospcode
		,h.hosname hospname
		,a.result
	FROM chospital_amp h
	INNER JOIN (
		SELECT p.hcode hospcode
			,COUNT(DISTINCT IF(d.DIAGCODE in ('E100','E101','E110','E111','E120','E121','E130','E131','E140','E141'),d.AN,NULL)) result
		FROM nhso_tmp_person_pop p
		LEFT JOIN nhso_tmp_qof_diag_ipd d ON d.cid=p.cid AND d.DIAGTYPE ='1'
							    AND d.DATETIME_ADMIT BETWEEN @ds1 AND @ds2
		WHERE p.CHRONIC_DM = 1
			AND p.DATE_DIAG_DM <= @date_diag_start /* ช่วงเวลา ณ สิ้นเดือนกันยาปีที่ผ่านมา */
			AND p.typearea IN ('1','3') 
			AND p.MAININSCL is not null
			AND p.discharge = '9' 
			AND p.maininscl in ('WEL', 'UCS')
			AND YEAR(@date_cal_age) - YEAR(p.birth) - (DATE_FORMAT(@date_cal_age, '%m%d') < DATE_FORMAT(p.birth, '%m%d')) >= 15
		GROUP BY p.hcode
	) a ON a.hospcode=h.hoscode
) a

RIGHT JOIN (
	/* ตัวหาร */
	SELECT h.hoscode hospcode
		,h.hosname hospname
		,a.target
	FROM chospital_amp h
	INNER JOIN (
		SELECT p.hcode hospcode
			,COUNT(DISTINCT p.cid) target
		FROM nhso_tmp_person_pop p
		WHERE p.CHRONIC_DM = 1
			AND p.DATE_DIAG_DM <= @date_diag_start  /* ช่วงเวลา ณ สิ้นเดือนกันยาปีที่ผ่านมา */
			AND p.typearea IN ('1','3') 
			AND p.MAININSCL is not null
			AND p.discharge = '9' 
			AND p.maininscl in ('WEL', 'UCS')
			AND YEAR(@date_cal_age) - YEAR(p.birth) - (DATE_FORMAT(@date_cal_age, '%m%d') < DATE_FORMAT(p.birth, '%m%d')) >= 15
		GROUP BY p.hcode
	) a ON a.hospcode=h.hoscode
) b ON a.hospcode = b.hospcode;
