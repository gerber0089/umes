using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using CapaDatos;

namespace CapaNegocio
{
    public class negactivarusuario
    {

        public static int activarusuario(entactivacionusuario obj) {

            return daoactivacionusuario.activarusuario(obj);
        
        
        }
    }
}
