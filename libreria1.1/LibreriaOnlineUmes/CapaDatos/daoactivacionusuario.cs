using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using System.Data.SqlClient;
using System.Data;

namespace CapaDatos
{
    public class daoactivacionusuario
    {
         public static int activarusuario(entactivacionusuario obj)
         {
            int indicador = 1;
            SqlCommand cmd = null;

            try {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("usuarioactualizar", cnx);
                cmd.Parameters.AddWithValue("@idUsuario", obj.idUsuario);
                cmd.Parameters.AddWithValue("@estado", obj.estado);
                cmd.Parameters.AddWithValue("@Rol", obj.Rol);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                cmd.ExecuteNonQuery();
                indicador = 1;

            }
            catch (Exception e){

                indicador = 0;
            
            }
            finally {

                cmd.Connection.Close();

            }
            return indicador;
       }
    }
}
