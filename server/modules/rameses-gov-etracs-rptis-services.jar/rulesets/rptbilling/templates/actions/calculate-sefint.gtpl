ActionExpression ae${index} = new ActionExpression();
ae${index}.setStatement("${action.params.expr.expr}");
ae${index}.setParams(binding);

${action.params.ledger.value}.setSefint(ae${index}.getDoubleValue());
${action.params.ledger.value}.setSefintacctid("${action.params.sefintacct.value}");

