﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using CapaEntidades;
using System.Data;

namespace CapaDatos
{
    public class daocodigodelproducto
    {
        public static int codigoproducto(entcodigodelproducto obj) {

            int indicador = 1;
            SqlCommand cmd = null;

            try {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();

                cmd = new SqlCommand("crearnuevoproducto_libreria", cnx);
                cmd.Parameters.AddWithValue("@codprod",obj.codprod );
                cmd.Parameters.AddWithValue("@nombre", obj.nombre);
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
            }
            return indicador;
        }
    }
}
