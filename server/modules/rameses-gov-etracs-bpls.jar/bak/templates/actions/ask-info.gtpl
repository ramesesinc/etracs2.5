
Map m${index} = new HashMap();
m${index}.put("name", "${action.params.var.value.name}" );
m${index}.put("varid", "${action.params.var.value.objid}" );
m${index}.put("title", "${action.params.var.value.caption}" );
m${index}.put("type", "${action.params.var.value.datatype}" );
m${index}.put("lobid", ${action.params.lob.value}.getObjid() );
action.execute( "ask-info", m${index}, drools);
