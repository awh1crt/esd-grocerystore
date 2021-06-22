<%@ include file="layout/header.jsp"%>



<div class="container">
  <div class="row">
    <div class="col-md-5">
  
 	<h3>Products</h3>
     <form action="productDetails" method = "GET">
<table class ="table">
      <thead>
      
      <tr>
      	<th> Name </th>
      	<th> Description </th>
      	<th> Price </th>
      	<th> Stock </th>
      	
      </tr>
      </thead>
      <tbody>
      <c:forEach var = "product" items="${products}">
         <tr>
	         <td><c:out value ="${ product.productName}" /> </td>
	         <td> <c:out value ="${ product.productDescription}" /></td>
	          <td> <c:out value ="${ product.productPrice}" /></td>
	           <td> <c:out value ="${ product.productStock}" /></td>
	         <td><a type="button" class="btn btn-warning" href="/deleteProduct?id=${ product.productId}">Delete ${product.productId}</a></td>
         <td><a type="button" class="btn btn-success" href="/selectProduct?id=${ product.productId}">Select ${product.productId}</a></td>
         </tr>
      
      </c:forEach>
      </tbody>
      </table>
 </form>   
          
      
    </div>

    <div class="col-med-2">
    
    <a type="button" class="btn btn-warning" href="/logout">Logout</a>
    </div>
   
  </div>
</div>

</body>
</html>