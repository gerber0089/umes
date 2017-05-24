using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using System.Data.SqlClient;
using System.Data;

namespace CapaDatos
{
    public class daoverificarcorreo
    {
        public static entverificarcorreo verificarcorreo(String usuario)
        {

            entverificarcorreo obj = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;

            try
            {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("VerificarCorreo", cnx);
                cmd.Parameters.AddWithValue("@Usuario", usuario);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                dr = cmd.ExecuteReader();
                obj = new entverificarcorreo();
                dr.Read();
                obj.Apellido = dr["Apellido"].ToString();
                obj.idUsuario = Convert.ToInt32(dr["idUsuario"].ToString());
                obj.Nombre = dr["Nombre"].ToString();
                obj.Password = dr["Password"].ToString();
                obj.Usuario = dr["Usuario"].ToString();
                obj.estado = Convert.ToInt32(dr["estado"].ToString());
                obj.Rol = Convert.ToInt32(dr["Rol"].ToString());


            }
            catch (Exception e)
            {
                obj = null;

            }
            finally
            {

                cmd.Connection.Close();

            }
            return obj;
        }
    }
}
