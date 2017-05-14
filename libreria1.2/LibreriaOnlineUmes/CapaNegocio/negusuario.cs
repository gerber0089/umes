using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using CapaDatos;

namespace CapaNegocio
{
    public class negusuario
    {
        public static entusuario Login(String usuario, String password)
        {
            return daousuario.Login(usuario, password);

        }
    }
}
