[findAfSerialControl]
SELECT * FROM afserial_control WHERE controlid = $P{controlid}

[findAfSerialInventory]
SELECT * FROM afserial_inventory WHERE objid = $P{controlid}

[getAfSerialInventoryDetails]
SELECT * FROM afserial_inventory_detail WHERE controlid = $P{controlid}


[updateAfSerialStateToRemote]
UPDATE afserial_control SET txnmode = 'REMOTE' WHERE controlid = $P{controlid}



[insertAfSerialControl]
INSERT INTO afserial_control(
	  controlid
	 ,txnmode
	 ,assignee_objid
	 ,assignee_name
	 ,currentseries
	 ,qtyissued
	 ,active
	 ,org_objid
	 ,org_name
 )
 VALUES (
	  $P{controlid}
	 ,$P{txnmode}
	 ,$P{assignee_objid}
	 ,$P{assignee_name}
	 ,$P{currentseries}
	 ,$P{qtyissued}
	 ,$P{active}
	 ,$P{org_objid}
	 ,$P{org_name}
)
  

[insertAfSerialInventory]
INSERT INTO afserial_inventory(
  objid
  ,afid
  ,respcenter_objid
  ,respcenter_name
  ,respcenter_type
  ,startseries
  ,endseries
  ,currentseries
  ,startstub
  ,endstub
  ,currentstub
  ,prefix
  ,suffix
  ,unit
  ,qtyin
  ,qtyout
  ,qtycancelled
  ,qtybalance
  ,currentlineno
 )
VALUES (
   $P{objid}
  ,$P{afid}
  ,$P{respcenter_objid}
  ,$P{respcenter_name}
  ,$P{respcenter_type}
  ,$P{startseries}
  ,$P{endseries}
  ,$P{currentseries}
  ,$P{startstub}
  ,$P{endstub}
  ,$P{currentstub}
  ,$P{prefix}
  ,$P{suffix}
  ,$P{unit}
  ,$P{qtyin}
  ,$P{qtyout}
  ,$P{qtycancelled}
  ,$P{qtybalance}
  ,$P{currentlineno}
)
           

[insertAfSerialInventoryDetails]
INSERT INTO afserial_inventory_detail(
  objid
  ,controlid
  ,[lineno]
  ,refid
  ,refno
  ,reftype
  ,refdate
  ,txndate
  ,txntype
  ,receivedstartseries
  ,receivedendseries
  ,beginstartseries
  ,beginendseries
  ,issuedstartseries
  ,issuedendseries
  ,endingstartseries
  ,endingendseries
  ,cancelledstartseries
  ,cancelledendseries
  ,qtyreceived
  ,qtybegin
  ,qtyissued
  ,qtyending
  ,qtycancelled
  ,remarks
)
VALUES (
   $P{objid}
  ,$P{controlid}
  ,$P{lineno}
  ,$P{refid}
  ,$P{refno}
  ,$P{reftype}
  ,$P{refdate}
  ,$P{txndate}
  ,$P{txntype}
  ,$P{receivedstartseries}
  ,$P{receivedendseries}
  ,$P{beginstartseries}
  ,$P{beginendseries}
  ,$P{issuedstartseries}
  ,$P{issuedendseries}
  ,$P{endingstartseries}
  ,$P{endingendseries}
  ,$P{cancelledstartseries}
  ,$P{cancelledendseries}
  ,$P{qtyreceived}
  ,$P{qtybegin}
  ,$P{qtyissued}
  ,$P{qtyending}
  ,$P{qtycancelled}
  ,$P{remarks}
)
