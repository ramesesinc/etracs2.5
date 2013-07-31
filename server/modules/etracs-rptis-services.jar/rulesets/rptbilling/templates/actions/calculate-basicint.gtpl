ActionExpression ae${index} = new ActionExpression();
ae${index}.setStatement("${action.params.expr.expr}");
ae${index}.setParams(binding);

${action.params.ledger.value}.setBasicint(ae${index}.getDoubleValue());
${action.params.ledger.value}.setBasicintacctid("${action.params.basicintacct.value}");

