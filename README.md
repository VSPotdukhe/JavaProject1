# JavaProject1

Software configuration used:
-------------------------------------------------------------------------------------------------------
Windows 10 64-bit Operating System, 
Eclipse IDE EE: 2020-09 (4.17.0), 
Java (jdk-15.0.1), 
Apache Tomcat v9.0, 
MySQL Workbench 8.0.22 (mysql-connector-java-8.0.22.jar), 
JavaServer Pages Standard Tag Library (jstl-1.2.jar)



Implementation:
-------------------------------------------------------------------------------------------------------
<b>Home Page: </b>
Current date and time is displayed by using scriptlet.

<b>Login Page: </b>
Once the user enters login and password, the details are passed through form validation as it will cross check with the User details which are earlier registered and stored on MySQL local server. If the user entered incorrect details, then it will ask for login again or if the account is not yet created, then it will recommend to go for Sign up option which is implemented with the help of LoginController. "Logout" option is also executed after successful logged in.

<b>Register Page: </b>
Before entering any details on Login Page, user need to first Sign up on this page. Once the details are entered, on clicking "Sign up" it will pass through form validation which on further the data get stored inside Customer table on MySQL local server under database JDBCDemos and after this, it will display the welcome message as well as logout option.

<b>Product Page: </b>
User without login can directly submit the Product details in the form present on this page. On clicking "Submit", the details are first validated and then it get stored on MySQL local server inside Product table under database JDBCDemos. After submitting the details, all the data rows of Product table which are present on MySQL local server are displayed and can be deleted directly. After deleting any row manually, the updated Product table is displayed again. All these funstionalities are managed as well as implemented by using Product Model, ProductDAO, ProductController and DeleteProductController.

<b>About Us, Contact Us Page: </b>
Intentionally left blank and an alert box is displayed for the same with the help of script.
