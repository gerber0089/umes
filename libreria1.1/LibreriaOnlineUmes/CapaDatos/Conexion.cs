using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace CapaDatos
{
    public class Conexion
    {
        public SqlConnection conectar() {

            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=USUARIO;Initial Catalog=libreria;User ID=sa;Password=angel555.";
            return cn;
        
        }
    }
}
