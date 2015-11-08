<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 31 oct. 2015, 19:09:03
    Author     : Nico
--%>

<%--<sql:query var="categories" dataSource="jdbc/affablebean">
    SELECT * FROM category
</sql:query>--%>
            
            <div id="indexLeftColumn">
                <div id="welcomeText">
                    <p style="font-size: larger">Welcome to the online home of the Affable Bean Green Grocer.</p>

                    <p>Enjoy browsing and learning more about our unique home delivery
                        service bringing you fresh organic produce, dairy, meats, breads
                        and other delicious and healthy items to your doorstep.</p>
                </div>
            </div>
    
            <div id="indexRightColumn">
                <%--<c:forEach var="category" items="${categories.rows}">--%>
                <c:forEach var="category" items="${categories}">
                    <div class="categoryBox">
                        <%--<a href="category?${category.id}">--%>
                        <a href="<c:url value='category?${category.id}'/>">
                            <span class="categoryLabelText">${category.name}</span>
                            
                            <img src="${initParam.categoryImagePath}${category.name}.jpg"
                                 alt="${category.name}">
                        </a>
                    </div>
                </c:forEach>
            </div>