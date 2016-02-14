
/************************************** Workload **************************************/
/*************** All PT Typearea 1,3 have Disease Asthma and Admit *******************/

SET @ds1:='20150401',  /* Start date */
    @ds2:='20160331',  /* End date */
    @codeprocess:='qof_0005' ;     /* Code Process*/
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
			,COUNT(d.an) result
		FROM nhso_tmp_qof_person_pop p 
		INNER JOIN nhso_tmp_person_admit_asthma d on d.cid = p.cid
		
		WHERE  p.typearea IN ('1','3') 
			and p.MAININSCL is not null
			and p.maininscl in ('WEL', 'UCS')
			and p.discharge = '9'
			and d.DIAG_ASTHMA = 1
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
			,COUNT(distinct p.cid) target
		FROM nhso_tmp_qof_person_pop p 
		WHERE  p.typearea IN ('1','3') 
			and p.MAININSCL is not null
			and p.maininscl in ('WEL', 'UCS')
			and p.discharge = '9'
			and (p.DIAG_ASTHMA = 1 or p.CHRONIC_ASTHMA = 1)  /*  Have Process To Be Asthma */
		GROUP BY p.hcode
	) a ON a.hospcode=h.hoscode
) b ON a.hospcode = b.hospcode;



