﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using System.Data.SqlClient;
using System.Data;

namespace CapaDatos
{
    public class daocrearproveedor
    {

        public static int cproveedor(entcrearproveedor obj) {


            int indicador = 1;
            SqlCommand cmd = null;

            try {
                Conexion cn = new Conexion();
                SqlConnection cnx = cn.conectar();

                cmd = new SqlCommand("insproveedor", cnx);
                cmd.Parameters.AddWithValue("@idproveedor", obj.idproveedor);
                cmd.Parameters.AddWithValue("@nombre", obj.nombre);
                cmd.CommandType = CommandType.StoredProcedure;
                cnx.Open();
                cmd.ExecuteNonQuery();
                indicador = 1;

            
            }catch(Exception e){

                indicador = 0;
            
            
            }finally{

                cmd.Connection.Close();

            
            }return indicador;
        }
    }
}
