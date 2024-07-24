
<%@ include file="commons/header.jspf"%>
<%@ include file="commons/navigation.jspf"%>

<form:form method="post" commandName="todo">
	<form:hidden path="id"/>
	<fieldset class="form-group">
		<form:label path="desc">Description</form:label>
		<form:input path="desc" type="text" class="form-control" required="required"/>
		<form:errors path="desc" cssClass="text-warning" />
	</fieldset>
	<fieldset class="form-group">
           <form:label path="targetDate">Target Date</form:label>
           <form:input path="targetDate" type="text" class="form-control"
               required="required" />
           <form:errors path="targetDate" cssClass="text-warning" />
       </fieldset>
	<button class="btn btn-success" type="submit">Add</button>
</form:form>

<%@ include file="commons/footer.jspf"%>

<script>
     $('#targetDate').datepicker({
         format : 'dd/mm/yyyy'
     });
 </script>
