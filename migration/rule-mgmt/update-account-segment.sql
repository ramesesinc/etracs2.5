ALTER TABLE account_segment ADD lookuphandler varchar(50);

UPDATE account_segment 
SET lookuphandler='accountdetail:lookup',sortorder=0,source='account' 
WHERE name='account' AND objectname = 'revenueitem';
  
UPDATE account_segment 
SET lookuphandler='subaccount:lookup',sortorder=1,source='account' 
WHERE name='subaccount' AND objectname = 'revenueitem';
  
UPDATE account_segment 
SET lookuphandler='sreaccount:lookup',sortorder=2,source='sreaccount' 
WHERE name='sreaccount' AND objectname = 'revenueitem';
  
UPDATE account_segment 
SET lookuphandler='sresubacct:lookup',sortorder=3,source='sreaccount' 
WHERE name='sresubacct' AND objectname = 'revenueitem';

