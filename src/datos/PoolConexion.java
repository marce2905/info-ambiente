package datos;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import javax.swing.JOptionPane;
import datos.PoolConexion;

public class PoolConexion 
{

	private static PoolConexion INSTANCE = null;
	private static Connection con = null;
	private static DataSource dataSource;
	private static String db = "medioambiente";
	private static String url = "jdbc:mysql://localhost:3306/"+db;
	private static String user = "root";
	private static String pass = "@8o89381183M";
	
	private PoolConexion()
    {
		inicializaDataSource();
    }
	
	private synchronized static void createInstance()
	{
		if(INSTANCE==null)
		{
			INSTANCE = new PoolConexion();
		}
	}
	
	public static PoolConexion getInstance()
	{
		if(INSTANCE == null)
		{
			createInstance();
		}
		return INSTANCE;
	}
	

	 public final void inicializaDataSource()
	    {
		 	org.apache.commons.dbcp.BasicDataSource basicDataSource = new org.apache.commons.dbcp.BasicDataSource();
	        basicDataSource.setDriverClassName("org.gjt.mm.mysql.Driver");
	        basicDataSource.setUsername(user);
	        basicDataSource.setPassword(pass);
	        basicDataSource.setUrl(url);
	        basicDataSource.setMaxActive(50);
	        dataSource = basicDataSource;
	    }
	
	 
	 public static boolean estaConectado()
	    {
	    	boolean resp = false;
	    	try
	    	{
	    		con = PoolConexion.dataSource.getConnection();
	    		if ((con==null) || (con.isClosed()))
	    			resp = false;
	    		else
	    			resp = true;
	    	}
	    	catch(Exception e)
	    	{
	    		e.printStackTrace();
	    		System.out.println(e.getMessage());
	    	}
	    	
	    	return resp;
	    }

	    public static Connection getConnection() 
	    {	
		   if (estaConectado()==false) 
			   {
			   		try 
			   		{
						con = PoolConexion.dataSource.getConnection();
					} 
			   		catch (SQLException e) 
			   		{
						// TODO Auto-generated catch block
			   			e.printStackTrace();
			   			System.out.println(e.getMessage());
					}
			   }
		   return con;
	    }
	    
	    
	    public static void main(String[] args) throws SQLException 
		{
			// TODO Auto-generated method stub
			PoolConexion.getInstance();
			Connection con = null;
	        
	        try 
	        {
		    	con = PoolConexion.getConnection();
		    	if(con!=null)
		    	{
		    		JOptionPane.showMessageDialog(null, "Conectado a DB!");
		    		System.out.println("Conectado a DB!!!");
		    	}
		    	else
		    	{
		    		JOptionPane.showMessageDialog(null, "Error al Conectar a DB!!!");
		    		System.out.println("Error al Conectar a DB!!!");
		    	}
	        }
	        finally
	        {
	            try 
	            {
	               con.close();
	               System.out.println("Se desconecto de DB!!!");
	            } 
	            catch (SQLException ex) 
	            {
	            	ex.printStackTrace();
	                System.out.println(ex.getMessage());
	            }
	        }

		}
}
