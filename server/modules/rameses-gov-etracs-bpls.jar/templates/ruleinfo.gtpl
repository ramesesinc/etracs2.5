<b>${entity.name}</b>

<ul>
	<li><b>Conditions</b><a href="addCondition" name="condition">[Add]</a></li>
	<ul>
		<% entity.conditions.eachWithIndex { condition,pos->  %>
			<li>
				${condition.title}<a href="addConstraint" name="${condition.name}" pos="${pos}">[Add]</a> 
				<ul>	
					<% condition.constraints.eachWithIndex { c,i->  %>
						<li>${c.text} <a href="editConstraint" conditionpos="${pos}" pos="${i}">[Edit]</a>
						&nbsp;					
						<a href="removeConstraint" pos="${i}" conditionpos="${pos}" pos="${i}">[Remove]</a></li> 
					<% } %>	
				</ul>
			</li>		
		<% } %>
	</ul>

	<br>
	<li><b>Actions</b><a href="addAction">[Add]</a></li>
	<ul>
		<% entity.actions.eachWithIndex { action,pos->  %>
			<li>
				${action.title}<a href="editAction" pos="${pos}">[Edit]</a>&nbsp; 
				<a href="removeAction" pos="${pos}">[Remove]</a> 
				<ul>	
					<% action.params.eachWithIndex { c,i->  %>
						<li>${c.title}</li> 
					<% } %>	
				</ul>
			</li>		
		<% } %>
	</ul>

</ul>

