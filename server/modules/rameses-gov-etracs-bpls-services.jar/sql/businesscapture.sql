#######################################
# BusinessCaptureService
#######################################
[getSearchList]
select
	b.ObjID as objid, t.strTaxpayer as owner_name, t.strTaxpayerID as owner_objid, t.strTaxpayerAddress as owner_address,  
	b.strTradeName as businessname, b.strTradeName as tradename, strBusinessAddress as businessaddress 
from tblBusiness b
  inner join  tblTaxpayer t on t.strTaxpayerID = b.strTaxpayerID 
  inner join tblBPLedger bpl on bpl.strBusinessID = b.ObjID 
 where t.strTaxpayerID LIKE $P{ownername}
 	and  b.strTradeName LIKE $P{tradename} 

[findBusinessInfo]
select
	b.ObjID, t.strTaxpayer as owner_name, t.strTaxpayerID as owner_objid, t.strTaxpayerAddress as owner_address,  
	null as barangay_objid, null as barangay_name, b.strTradeName as businessname,
	b.strTradeName as tradename, strBusinessAddress as businessaddress, 
	case strOrganizationTypeID 
		when 'S' then 'SING'
		when 'P' then 'PART'
		when 'FOUN' then 'FOUDN'
		else strOrganizationTypeID 
	end as orgtype, 
	intYearStarted as yearstarted, 'SYSTEM' AS user_objid, 
	(select MAX(intyear) from tblAssessment where strBusinessID = b. ObjID ) as activeyear, 
	null as bin, lngPIN as pin, null as tin, bpl.ObjID as ledgerid  
from tblBusiness b
  inner join  tblTaxpayer t on t.strTaxpayerID = b.strTaxpayerID 
  inner join tblBPLedger bpl on bpl.strBusinessID = b.ObjID 
 where b.ObjID=$P{objid}

 [findDeclaredCapital]
 




[findLOB]
SELECT * FROM lobmapping;