using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using System.Data.SqlClient;
using System.Data;

namespace CapaDatos
{
    public class daoingresosaldolote
    {

        public static int entradasaldoprod(entingresosaldolote obj)
        {
            int indicador = 0;
            SqlCommand cmd = null;

            try
            {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();
                cmd = new SqlCommand("entradaproducto913", cnx);
                cmd.Parameters.AddWithValue("@lote", obj.lote);
                cmd.Parameters.AddWithValue("@fechaop", obj.fechaop);
                cmd.Parameters.AddWithValue("@facturaproveedor", obj.facturaproveedor);
                cmd.Parameters.AddWithValue("@proveedor", obj.proveedor);
                cmd.Parameters.AddWithValue("@entrada", obj.entrada);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                cmd.ExecuteNonQuery();
                indicador = 1;

            }
            catch (Exception e)
            {
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
