ActionExpression ae${index} = new ActionExpression();
ae${index}.setStatement("${action.params.expr.expr}");
ae${index}.setParams(binding);

${action.params.ledger.value}.setSefdisc(ae${index}.getDoubleValue());
update(${action.params.ledger.value});

