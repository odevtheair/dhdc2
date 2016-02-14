/************************************************ Workload ************************************************/
/********** ALL PT Typearea 1,3 and Age 1 year AND have VACCINETYPE = 061 OR 073 OR 074 OR 076  ***********/

SET @ds1:='20150401',  /* Start date */
    @ds2:='20160331',  /* End date */
    @codeprocess:='qof_0008' ;     /* Code Process*/

SET @birth_st:='20140401',
    @birth_en:='20150331';
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
			,COUNT(distinct epi.cid) result
		FROM nhso_tmp_person_pop p
		LEFT JOIN nhso_tmp_qof_epi epi on epi.cid = p.cid             
		WHERE p.birth between @birth_st and @birth_en
			AND p.discharge = '9' 
			AND p.typearea in ('1','3')
			AND epi.date_serv between @ds1 and @ds2
			AND epi.vaccinetype in ('061','073','074','076')   
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
		WHERE birth between @birth_st and @birth_en  /* PT Age 1 Year */
                      AND p.discharge = '9' 
		      AND p.typearea in ('1','3')
		GROUP BY p.hcode
	) a ON a.hospcode=h.hoscode
) b ON a.hospcode = b.hospcode;
