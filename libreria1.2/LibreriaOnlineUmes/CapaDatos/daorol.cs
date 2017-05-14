using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using System.Data.SqlClient;
using System.Data;

namespace CapaDatos
{
    public class daorol
    {
        public static entrol Roles(String usuario)
        {


            entrol obj1 = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;

            try
            {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("Verificacionrol", cnx);
                cmd.Parameters.AddWithValue("@Usuario", usuario);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                dr = cmd.ExecuteReader();
                obj1 = new entrol();
                dr.Read();
                obj1.rol = Convert.ToInt32(dr["rol"].ToString());
                obj1.nombre = dr["nombre"].ToString();
                obj1.usuario = Convert.ToInt32(dr["usuario"].ToString());
               

            }
            catch (Exception e)
            {
                obj1= null;

            }
            finally
            {

                cmd.Connection.Close();

            }
            return obj1;
        }
    }
}
