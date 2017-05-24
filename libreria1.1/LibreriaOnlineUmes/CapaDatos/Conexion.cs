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
<<<<<<< HEAD
            cn.ConnectionString = "Data Source=173.208.236.163;Initial Catalog=libreria;User ID=sa;Password=umes123!";
=======
            cn.ConnectionString = "Data Source=USUARIO;Initial Catalog=libreria;User ID=sa;Password=angel555.";
>>>>>>> be2292678815b0c1a1366618db0a74549df8c958
            return cn;
        
        }
    }
}
