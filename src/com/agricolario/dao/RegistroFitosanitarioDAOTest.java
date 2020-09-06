package com.agricolario.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;

import org.dbunit.database.DatabaseConnection;
import org.dbunit.database.IDatabaseConnection;
import org.dbunit.dataset.IDataSet;
import org.dbunit.dataset.xml.FlatXmlDataSet;
import org.dbunit.dataset.xml.FlatXmlDataSetBuilder;
import org.dbunit.operation.DatabaseOperation;
import org.junit.After;
import org.junit.Before;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.agricolario.bean.RegistroFitosanitario;
import com.agricolario.bean.Trattamento;

class RegistroFitosanitarioDAOTest {

	private   IDataSet dataSet;
	private  IDatabaseConnection dbconnection;
	private FlatXmlDataSet loadedDataSer;
	private Connection connection;

	@Before
	protected IDataSet getDataSet() throws Exception {
		// TODO Auto-generated method stub
     loadedDataSer =   new FlatXmlDataSetBuilder().build(new FileInputStream("database.xml"));
     return loadedDataSer;
	}
    @Before
	protected void setUp() throws Exception
	    {
	       Class driverClass = Class.forName("com.mysql.cj.jdbc.Driver");
	       connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/agricolario?serverTimezone = EST5EDT", "root", "root");
	       dbconnection = new DatabaseConnection(connection);

	       dataSet = getDataSet();
	    }
    	@After
    	protected void tearDown() throws Exception {
		// TODO Auto-generated method stub
    		 DatabaseOperation.CLEAN_INSERT.execute(dbconnection, getDataSet());
        }
	@Test
	final void test() {
	
	
	
	RegistroFitosanitarioDAO dao= new RegistroFitosanitarioDAO();
	//RegistroFitosanitario reg = dao.getRegistro(1);
	  boolean valore =  dao.deleteRegistroId(5);
	   assertTrue(valore);

	
	
	
	}
	

}
