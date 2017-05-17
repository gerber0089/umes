using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using CapaEntidades;
using System.Data;

namespace CapaDatos
{
   public class daocrearnombreproducto
    {
        public static int crearnombre(entcrearnombreproducto obj) {
            
            int indicador = 1;
            SqlCommand cmd= null;
        
            try{
               Conexion cn = new Conexion();
               SqlConnection cnx = cn.conectar();

               cmd = new SqlCommand("crearnombreproducto_libreria", cnx);
               cmd.Parameters.AddWithValue("@idnombre", obj.idnombre);
               cmd.Parameters.AddWithValue("@nombre", obj.nombre);
               cmd.Parameters.AddWithValue("@presentacion", obj.presentacion);
               cmd.CommandType = CommandType.StoredProcedure;
               cnx.Open();
               cmd.ExecuteNonQuery();
               indicador = 1;

            
            
            }catch(Exception e){


                indicador = 0;
            
            
            }
            finally
            
            {

                cmd.Connection.Close();
            
            }
        
            return indicador;
        }
    }
}
