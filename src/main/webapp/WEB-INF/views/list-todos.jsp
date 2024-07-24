<%@ include file="commons/header.jspf"%>
<%@ include file="commons/navigation.jspf"%>

<div class="container">
	<table class="table table-striped">
		<caption><spring:message code="todo.caption" /></caption>
		<thead>
			<tr>
				<th>Description</th>
				<th>Target date</th>
				<th>Completed?</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.desc}</td>
					<td>
						<fmt:formatDate pattern="dd/MM/yyyy"
							value="${todo.targetDate}" />
					</td>
					<td>${todo.done}</td>
					<td>
						<a type="button" class="btn btn-primary" 
							href="/update-todo?id=${todo.id}">Edit</a>
						<a type="button" class="btn btn-warning" 
							href="/delete-todo?id=${todo.id}">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<a class="button" href="/add-todo">Add new</a>
	</div>
</div>

<%@ include file="commons/footer.jspf"%>