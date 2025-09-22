# FJ-21 Agenda

This is a simple contact agenda web application developed using Java Servlets, JSP, and JDBC. The project is part of the Caelum FJ-21 course.

## 📝 Features

*   List contacts
*   Add new contacts
*   Update existing contacts
*   Delete contacts

## 🛠️ Technologies Used

*   Java
*   Servlets
*   JSP (JavaServer Pages)
*   JSTL (JavaServer Pages Standard Tag Library)
*   JDBC (Java Database Connectivity)
*   MySQL

## 🚀 How to Run

1.  **Database Setup:**
    *   Create a MySQL database named `fj21`.
    *   Create a table named `contatos` with the following structure:

        ```sql
        CREATE TABLE `contatos` (
          `id` bigint(20) NOT NULL AUTO_INCREMENT,
          `nome` varchar(255) DEFAULT NULL,
          `email` varchar(255) DEFAULT NULL,
          `endereco` varchar(255) DEFAULT NULL,
          `dataNascimento` date DEFAULT NULL,
          PRIMARY KEY (`id`)
        );
        ```

2.  **Database Connection:**
    *   Update the database credentials in `src/br/com/caelum/jdbc/ConnectionFactory.java`.

3.  **Build and Deploy:**
    *   This project can be built and deployed on a servlet container like Apache Tomcat.
    *   You will need to add the MySQL JDBC driver to your server's classpath. The version used in this project is `mysql-connector-java-5.1.38-bin.jar`.

## 🏛️ Architecture

The application follows the MVC (Model-View-Controller) pattern:

*   **Model:** The `Contato` class represents the data.
*   **View:** The JSP files (`.jsp`) are responsible for the presentation layer.
*   **Controller:** The `ControllerServlet` acts as a Front Controller, delegating the request to the appropriate `Logica` class. The `Logica` classes contain the business logic.