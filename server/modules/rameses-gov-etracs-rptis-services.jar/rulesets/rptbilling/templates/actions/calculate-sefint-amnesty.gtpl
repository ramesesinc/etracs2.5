ActionExpression ae${index} = new ActionExpression();
ae${index}.setStatement("${action.params.expr.expr}");
ae${index}.setParams(binding);

${action.params.ledger.value}.setSefintamnesty(ae${index}.getDoubleValue());
${action.params.ledger.value}.setSefint( ${action.params.ledger.value}.getSefint() - ae${index}.getDoubleValue());

