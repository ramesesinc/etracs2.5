ActionExpression ae${index} = new ActionExpression();
ae${index}.setStatement("${action.params.expr.expr}");
ae${index}.setParams(binding);

${action.params.ledger.value}.setSefamnesty(ae${index}.getDoubleValue());
${action.params.ledger.value}.setSef( ${action.params.ledger.value}.getSef() - ae${index}.getDoubleValue());
