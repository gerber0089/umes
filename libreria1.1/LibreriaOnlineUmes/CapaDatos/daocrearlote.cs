using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using System.Data.SqlClient;
using System.Data;

namespace CapaDatos
{
    public class daocrearlote
    {
        public static int crearlote(entcrearlote obj) {

            int indicador = 1;
            SqlCommand cmd = null;

            try {

                Conexion cn = new Conexion();
                SqlConnection cnx =  cn.conectar();

                cmd = new SqlCommand("ingresolotesuper3", cnx);
                cmd.Parameters.AddWithValue("@idlote", obj.idlote);
                cmd.Parameters.AddWithValue("@codprod", obj.codprod);
                cmd.Parameters.AddWithValue("@saldo", obj.saldo);
                cmd.Parameters.AddWithValue("@precioprod", obj.preciomed);
                cmd.Parameters.AddWithValue("@preciocompra", obj.preciocompra);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                cmd.ExecuteNonQuery();
                indicador = 1;

            
            }
            catch (Exception e) {


                indicador = 0;
            
            }
            finally {

                cmd.Connection.Close();
            
            
            } return indicador;

        
        }
    }
}
