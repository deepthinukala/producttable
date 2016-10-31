###Config
- ApplicationContextConfig.java : Contains datasource information and hibernate configuration and an instance to open connection of database.

###Controllers 
 All the classes are annotated with @Controller and @RestController so that they can be scanned by spring MVC
 -	AdminControl :Maps to a landing page when the dispatcher servlet first dispatches.
 -	Home Control : Contains MVC controller methods for population of products in front page.
 -	Product Control: Consists of mvc controller methods to perform Crud operations by admin for products.
 -	Category Control: Consists of mvc controller methods to perform Crud operations by admin for categories.
 -	Supplier Control: Consists of mvc controller methods to perform Crud operations by admin for suppliers.
 -	CartController : MVC controller methods for user Cart functions.
 - UserControl : MVC controller methods for login depending upon role and registration for new user.
 
 
###Models
 Contains all model classes.These models will be scanned by hibernate, so as to facilitate easy data persistance and logical operation using Hibernate ORM in database.
 -   Cart.java
 -   Checkout.java
 -   Category.java
 -   Product.java
 -   Supplier.java
 -   UsersDetails.java
 
###DAO 
 Contains all DAO interfaces and DAOImpls containing RAW persistence Logic. 
 Thus using DAO implementation is being hidden making interface methods accessible to user.
 - CartDAO.java
 - CartImpl.java
 - CheckoutDAO.java
 - CheckoutImpl.java
 - CategoryDAO.java
 - CategoryImpl.java
 - ProductDAO.java
 - ProductImpl.java
 - SupplierDAO.java
 - SupplierImpl.java
 - UsersDetailsDAO.java
 - UsersDetailsImpl.java
