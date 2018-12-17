<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="hot_sale">
	<h2>Hot Sale</h2>
	<ul>
		<%-- <c:if test=""> --%>
			<c:forEach items="${requestScope.hotlist}" var="p" end="4">
				<li>
					<dl>
						<dt>
							<a href="pview?pid=${p.hp_id}" target="_self"><img
								src="${p.hp_file_name}" /></a>
						</dt>
						<dd class="p_name">
							<a href="pview?pid=${p.hp_id}" target="_self">${p.hp_name}</a>
						</dd>
						<dd class="price">￥${p.hp_price}</dd>
					</dl>
				</li>
			</c:forEach>
		<%-- </c:if> --%>
	</ul>
</div>
