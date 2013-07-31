ActionExpression ae${index} = new ActionExpression();
ae${index}.setStatement("${action.params.expr.expr}");
ae${index}.setParams(binding);

${action.params.ledger.value}.setBasic(ae${index}.getDoubleValue());
${action.params.ledger.value}.setBasicacctid("${action.params.basicacct.value}");
