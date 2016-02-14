/************************************************ Workload ***********************************************************/
/************************************** All PT Woman Typearea 1,3 First ANC <= 12 Week  ******************************/

SET @ds1:='20150401',  /* Start date */
    @ds2:='20160331',  /* End date */
    @codeprocess:='qof_0001' ;     /* Code Process*/

SELECT h.hoscode hospcode
	,h.hosname hospname
	,a.target
	,a.result
	,@codeprocess qof_code
FROM chospital_amp h
INNER JOIN (
	SELECT l.hospcode
		,COUNT(DISTINCT l.cid) target
		,COUNT(DISTINCT IF(a.ga<=12 and a.ancno = '1',a.cid,NULL)) result
	FROM nhso_tmp_labor l
	LEFT JOIN nhso_tmp_person_pop p ON p.cid=l.cid 
	LEFT JOIN nhso_tmp_anc a ON a.cid=l.cid and a.GRAVIDA = l.GRAVIDA
	WHERE l.bdate BETWEEN @ds1 AND @ds2
			/*AND p.DISCHARGE = '9'*/ /* approve by meeting 28 DEC 58 */
			AND p.typearea IN ('1','3') 
			/*AND p.MAININSCL is not null*/ /* because found maininscl is null and typearea = 1,3 too much */
	GROUP BY l.hospcode
) a ON a.hospcode=h.hoscode;

