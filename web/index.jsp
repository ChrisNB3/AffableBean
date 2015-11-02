<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 31 oct. 2015, 19:09:03
    Author     : Nico
--%>

<sql:query var="categories" dataSource="jdbc/affablebean">
    SELECT * FROM category
</sql:query>
            
            <div id="indexLeftColumn">
                <p>[ welcome text]</p>
                
                <!-- test to access context parameters -->
                categoryImagePath: ${initParam.categoryImagePath}
                productImagePath: ${initParam.productImagePath}
            </div>
            <div id="indexRightColumn">
                <c:forEach var="category" items="${categories.rows}">
                    <div class="categoryBox">
                        <a href="category?${category.id}">
                            <span class="categoryLabelText">${category.name}</span>
                            
                            <img src="${initParam.categoryImagePath}${category.name}.jpg"
                                 alt="${category.name}">
                        </a>
                    </div>
                </c:forEach>
            </div>