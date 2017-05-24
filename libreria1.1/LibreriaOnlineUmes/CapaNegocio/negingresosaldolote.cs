using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;
using CapaEntidades;

namespace CapaNegocio
{
    public class negingresosaldolote
    {
        public static int entradasaldoprod(entingresosaldolote obj) {

            return daoingresosaldolote.entradasaldoprod(obj);
        
        }
    }
}
