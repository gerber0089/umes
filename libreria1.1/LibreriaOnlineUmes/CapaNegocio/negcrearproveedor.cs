using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using CapaDatos;

namespace CapaNegocio
{
    public class negcrearproveedor
    {
        public static int cproveedor(entcrearproveedor obj) {

            return daocrearproveedor.cproveedor(obj);
        
       }


    }
}
