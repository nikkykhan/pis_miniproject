REQUIREMENTS:
1.	Eclipse IDE- Fro configuring the Servlet, JSP, CSS files.
2.	Apache-Tomcat server version 9.0- For hosting the website on local network.
3.	MySql Workbench-For string the databse.

*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*

CONFIGURING THE CODE FILES IN ECLIPSE IDE:
1.	Import the project NITKWebsite into eclipse.
2.	Right click on project in visible in project explorer and click on build path, then add new path, then click on Add External Jars and locate and select the jar file “mysql-connector-java-8.0.22.jar” and click apply. This will import the Mysql connector used for managing database from Servlet.
3.	Repeat step 2 for “FileUpload.jar” and “servlet-api.jar”.
4.	Copy these files inside Apache Tomcat’s lib folder.
5.	For adding the server to IDE click on Servers in console, right click and then add new server, select the desired server and locate its bin folder in the system. Click apply your server will be added to the IDE.

*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*

HOSTING THE WEBSITE:
1.	Right click on the HTML.jsp inside WebContent folder of the project, select run as, select run on server and then click on the Tomcat server. Your website will be launched in the default browser set by you in IDE.
