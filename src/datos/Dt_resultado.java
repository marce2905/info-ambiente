package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import entidades.Resultado;

public class Dt_resultado {
	//Declaración de variables
	PoolConexion pc = PoolConexion.getInstance();
	Connection cn = PoolConexion.getConnection();
	private ResultSet rs = null;
	
	public ArrayList<Resultado> listarResultados(String id, String annio)
	{
		ArrayList<Resultado> resultados = new ArrayList<>();
		String sql = "";
		
		sql = "select *from medioambiente.resultados where numResul like '"+id+"%' and numResul like '%"+annio+"';";
		
		System.out.println(sql);
		System.out.println("--------------------------------------------------------------------------------------");
		try {
			
			PreparedStatement ps = cn.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE, ResultSet.HOLD_CURSORS_OVER_COMMIT);
			rs = ps.executeQuery();
			
			while(rs.next()) 
			{
				Resultado resultado = new Resultado();
				resultado.setDescripcion(rs.getString("descripcion"));
				resultado.setNumResul(rs.getString("numResul"));
				resultado.setResultadoID(rs.getInt("resultadoID"));
				resultado.setUrlImg("");
				resultados.add(resultado);
				
				System.out.println("ID: "+resultado.getResultadoID()+" Descripcion: "+resultado.getDescripcion()+"MacroID: "+resultado.getNumResul());
			}
		} catch (Exception e) {

			System.out.println("Error en datos al listar las ciudades "+e.getMessage());
			 e.printStackTrace();
		}
		
		System.out.println("--------------------------------------------------------------------------------------");
		return resultados;
	}
}
