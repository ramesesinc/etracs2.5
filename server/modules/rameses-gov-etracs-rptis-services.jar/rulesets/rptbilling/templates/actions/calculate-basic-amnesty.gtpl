ActionExpression ae${index} = new ActionExpression();
ae${index}.setStatement("${action.params.expr.expr}");
ae${index}.setParams(binding);

${action.params.ledger.value}.setBasicamnesty(ae${index}.getDoubleValue());
${action.params.ledger.value}.setBasic(${action.params.ledger.value}.getBasic() - ae${index}.getDoubleValue());

