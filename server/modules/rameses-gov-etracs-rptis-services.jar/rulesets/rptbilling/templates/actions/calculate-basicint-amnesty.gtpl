ActionExpression ae${index} = new ActionExpression();
ae${index}.setStatement("${action.params.expr.expr}");
ae${index}.setParams(binding);

${action.params.ledger.value}.setBasicintamnesty(ae${index}.getDoubleValue());
${action.params.ledger.value}.setBasicint( ${action.params.ledger.value}.getBasicint() - ae${index}.getDoubleValue());

