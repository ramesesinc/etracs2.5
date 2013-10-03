ActionExpression ae${index} = new ActionExpression();
ae${index}.setStatement("${action.params.expr.expr}");
ae${index}.setParams(binding);

${action.params.ledger.value}.setFirecode(ae${index}.getDoubleValue());
${action.params.ledger.value}.setFirecodeacctid("${action.params.firecodeacct.value}");
