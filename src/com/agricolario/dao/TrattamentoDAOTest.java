package com.agricolario.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;

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

import com.agricolario.bean.ProdottoFitosanitario;
import com.agricolario.functionality.ParseDate;

class TrattamentoDAOTest {
	
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

	   ProdottoFitosanitario p= new ProdottoFitosanitarioDAO().getProdotto("Centurion 240 Neo");
	  
	   
	   boolean valore = new TrattamentoDAO().deleteTrattamentoByIdRegistro(3);
	   assertTrue(valore);
	   
	   
	
	
	
	
	}

}
