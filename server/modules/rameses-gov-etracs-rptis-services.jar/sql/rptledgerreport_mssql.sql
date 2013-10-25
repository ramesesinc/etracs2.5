[getDelinquentLedgers]
SELECT
	t.objid,
	f.tdno,
	r.rputype,
	r.fullpin,
	r.totalareasqm,
	r.totalav,
	b.name AS barangay,
	SUM(t.amtdue) AS amtdue,
	CASE
		WHEN MIN(t.fromyear) = MAX(t.toyear) AND MIN(t.fromqtr) = 1 AND MAX(t.toqtr) = 4 
			THEN 'FULL ' + CONVERT(VARCHAR(4),MAX(t.toyear))
		WHEN MIN(t.fromyear) = MAX(t.toyear) AND MIN(t.fromqtr) = MAX(t.toqtr)
			THEN CONVERT(VARCHAR(1),MAX(t.toqtr)) + 'Q, ' + CONVERT(VARCHAR(4),MAX(t.toyear))
		WHEN MIN(t.fromyear) = MAX(t.toyear) 
			THEN CONVERT(VARCHAR(1),MIN(t.fromqtr)) + CONVERT(VARCHAR(1),MAX(t.toqtr)) + 'Q, ' + CONVERT(VARCHAR(4),MAX(t.toyear))

		WHEN MIN(t.fromqtr) = 1 AND MAX(t.toqtr) = 4
			THEN 'FULL ' + CONVERT(VARCHAR(4),MIN(t.fromyear)) + '-' + CONVERT(VARCHAR(4),MAX(t.toyear))
		WHEN MIN(t.fromqtr) = 1 AND MAX(t.toqtr) <> 4
			THEN CONVERT(VARCHAR(4),MIN(t.fromyear)) + '-' + CONVERT(VARCHAR(1),MAX(t.toqtr)) + 'Q,' + CONVERT(VARCHAR(4),MAX(t.toyear))
		WHEN MIN(t.fromqtr) <> 1 AND MAX(t.toqtr) = 4
			THEN CONVERT(VARCHAR(1),MIN(t.fromqtr)) + 'Q,' + CONVERT(VARCHAR(4),MIN(t.fromyear)) + '-' + CONVERT(VARCHAR(4),MAX(t.toyear))
		ELSE
			CONVERT(VARCHAR(1),MIN(t.fromqtr)) + 'Q,' + CONVERT(VARCHAR(4),MIN(t.fromyear)) + '-' + CONVERT(VARCHAR(1),MAX(t.toqtr)) + 'Q,' + CONVERT(VARCHAR(4),MAX(t.toyear))
	END AS period
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid
	INNER JOIN barangay b ON rp.barangayid = b.objid,
	(
		SELECT
			rl.objid,
			rl.faasid,
			MIN(rli.year) AS  fromyear,
			1 AS fromqtr,
			MAX(rli.year) AS toyear,
			4 AS toqtr,
			SUM(rli.basic + rli.basicint - rli.basicdisc - rli.basicdisctaken - rli.basicpaid - rli.basicintpaid +
				rli.sef + rli.sefint - rli.sefdisc - rli.sefdisctaken - rli.sefpaid - rli.sefintpaid +
				rli.firecode - rli.firecodepaid
			) AS amtdue
		FROM rptledger rl
			INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
			INNER JOIN faas f ON rl.faasid = f.objid 
		WHERE ${filters}
		  AND rl.state = 'APPROVED'
		  AND rli.state = 'OPEN'
		  AND rli.year <= ${cy}
		  AND rli.qtrly = 0
		GROUP BY rl.objid, rl.faasid 
		
		
		UNION ALL
		
		SELECT 
			rl.objid,
			rl.faasid,
			MIN(rliq.year) AS  fromyear,
			MIN(rliq.qtr) AS fromqtr,
			MAX(rliq.year) AS toyear,
			MAX(rliq.qtr) AS toqtr,
			SUM(rliq.basic + rliq.basicint - rliq.basicdisc - rliq.basicdisctaken - rliq.basicpaid - rliq.basicintpaid +
			    rliq.sef + rliq.sefint - rliq.sefdisc - rliq.sefdisctaken - rliq.sefpaid - rliq.sefintpaid +
				rliq.firecode - rliq.firecodepaid
			) AS amtdue
		FROM rptledger rl 
			INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
			INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid 
			INNER JOIN faas f ON rl.faasid = f.objid 
		WHERE ${filters}
		 AND rl.state = 'APPROVED'
		 AND rli.year <= ${cy}
		 AND rli.qtrly = 1 
		 AND rliq.state = 'OPEN'
		GROUP BY  rl.objid, rl.faasid
	) t
WHERE f.objid = t.faasid 
GROUP BY 
	t.objid,
	f.tdno,
	r.rputype,
	r.fullpin,
	r.totalareasqm,
	r.totalav,
	b.name
ORDER BY f.tdno 