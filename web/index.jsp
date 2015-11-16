<%--<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>--%>
<%-- 
    Document   : index
    Created on : 31 oct. 2015, 19:09:03
    Author     : Nico
--%>

<%--<sql:query var="categories" dataSource="jdbc/affablebean">
    SELECT * FROM category
</sql:query>--%>

<%-- Set session-scoped variable to track the view user is coming from.
     This is used by the language mechanism in the Controller so that
     users view the same page when switching between English and Czech. --%>
<c:set var='view' value='/index' scope='session' />
            
            <div id="indexLeftColumn">
                <div id="welcomeText">
                    <p style="font-size: larger"><fmt:message key='greeting'/></p>

                    <p><fmt:message key='introText'/></p>
                </div>
            </div>
    
            <div id="indexRightColumn">
                <%--<c:forEach var="category" items="${categories.rows}">--%>
                <c:forEach var="category" items="${categories}">
                    <div class="categoryBox">
                        <%--<a href="category?${category.id}">--%>
                        <a href="<c:url value='category?${category.id}'/>">
                            <span class="categoryLabel"></span>
                            <span class="categoryLabelText"><fmt:message key='${category.name}'/></span>
                            <img src="${initParam.categoryImagePath}${category.name}.jpg"
                                 alt="<fmt:message key='${category.name}'/>">
                        </a>
                    </div>
                </c:forEach>
            </div>