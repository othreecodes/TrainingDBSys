<%@ include file="/common/taglibs.jsp"%>


<s:if test="%{top instanceof org.iita.util.PagedResult}">


	<div class="page-header" style="margin:  -5px;">
		<h3>
			<s:text name="search.paging.title" />
		</h3>
	</div>

	<nav aria-label="Search results page" class="text-center">
		<ul class="pagination">

			<c:if test="${page>10}">
				<li><a href="?${param.href}"
					style="color: Blue; font-weight: bold;"><s:text
							name="search.paging.first" /></a></li>
			</c:if>

			<c:if test="${page>1}">
				<li><a href="?startAt=${(page-2)*pageSize}&${param.href}"
					style="color: Blue; font-weight: bold;"><s:text
							name="search.paging.previous" /></a></li>
			</c:if>
			<c:forEach var="i" begin="${page>10 ? page-10 : 1}"
				end="${pages-page>10 ? page+9 : pages}">
				<li <c:if test="${page==i}"> class="active"</c:if> ><a
					href="?startAt=<c:out value="${(i-1)*pageSize}" />&${param.href}"
					><c:out
							value="${i}" /></a></li>
			</c:forEach>
			<c:if test="${0+page<0+pages}">
				<li><a href="?startAt=${(page)*pageSize}&${param.href}"
					style="color: Blue; font-weight: bold;"><s:text
							name="search.paging.next" /></a></li>
			</c:if>


			<c:if test="${0+page<0+pages}">
				<a href="?startAt=${(pages-1)*pageSize}&${param.href}"
					style="color: Blue; font-weight: bold;"><s:text
						name="search.paging.last" /></a>
			</c:if>

			<span style="margin-left: 10px;">Total: <s:property
					value="totalHits" /></span>

		</ul>
	</nav>
</s:if>
<s:else>
	<c:if test="${0+param.page <= 0+param.pages}">

		<div class="page-header" style="margin: -5px;">
			<h3>
				<s:text name="search.paging.title" />
			</h3>
		</div>

		<nav aria-label="Search results page" class="text-center">
			<ul class="pagination">

				<c:if test="${param.page>10}">
					<li><a href="?${param.href}"
						style="color: Blue; font-weight: bold;"><s:text
								name="search.paging.first" /></a></li>
				</c:if>
				
				<c:if test="${param.page>1}">
					<li><a
						href="?startAt=${(param.page-2)*param.pageSize}&${param.href}"
						style="color: Blue; font-weight: bold;"><s:text
								name="search.paging.previous" /></a></li>
				</c:if>
				
				<c:forEach var="i" begin="${param.page>10 ? param.page-10 : 1}"
					end="${param.pages-param.page>10 ? param.page+9 : param.pages}">
					<li <c:if test="${param.page==i}">  class="active" </c:if> ><a
						href="?startAt=<c:out value="${(i-1)*param.pageSize}" />&${param.href}"><c:out
								value="${i}" /></a></li>
				</c:forEach>
				
				<c:if test="${0+param.page<0+param.pages}">
					<li><a
						href="?startAt=${(param.page)*param.pageSize}&${param.href}"
						style="color: Blue; font-weight: bold;"><s:text
								name="search.paging.next" /></a></li>
				</c:if>
				
				<c:if test="${0+param.page<0+param.pages}">
					<li><a
						href="?startAt=${(param.pages-1)*param.pageSize}&${param.href}"
						style="color: Blue; font-weight: bold;"><s:text
								name="search.paging.last" /></a></li>
				</c:if>

			</ul>
		</nav>

	</c:if>
</s:else>