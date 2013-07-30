ActionExpression ae${index} = new ActionExpression();
ae${index}.setStatement("${action.params.expr.expr}");
ae${index}.setParams(binding);

${action.params.ledger.value}.setSef(ae${index}.getDoubleValue());
${action.params.ledger.value}.setSefacctid("${action.params.sefacct.value}");

