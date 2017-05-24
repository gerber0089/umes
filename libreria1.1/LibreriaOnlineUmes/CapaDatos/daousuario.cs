using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using System.Data.SqlClient;
using System.Data;
<<<<<<< HEAD
using CapaDatos;


namespace CapaNegocio
=======

namespace CapaDatos
>>>>>>> be2292678815b0c1a1366618db0a74549df8c958
{
    public class daousuario
    {
        public static entusuario Login(String usuario, String password)
        {

            entusuario obj = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;

            try
            {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("VerificacioUsuario", cnx);
                cmd.Parameters.AddWithValue("@Usuario", usuario);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                dr = cmd.ExecuteReader();
                obj = new entusuario();
                dr.Read();
                obj.Apellido = dr["Apellido"].ToString();
                obj.idUsuario = Convert.ToInt32(dr["idUsuario"].ToString());
                obj.Nombre = dr["Nombre"].ToString();
                obj.Password = dr["Password"].ToString();
                obj.Usuario = dr["Password"].ToString();
<<<<<<< HEAD
                obj.estado = Convert.ToInt32(dr["estado"].ToString());
                obj.Rol = Convert.ToInt32(dr["Rol"].ToString());
=======
>>>>>>> be2292678815b0c1a1366618db0a74549df8c958






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
<<<<<<< HEAD

}
=======
}
>>>>>>> be2292678815b0c1a1366618db0a74549df8c958
