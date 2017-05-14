using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using CapaDatos;

namespace CapaNegocio
{
    public class negregistrousuario
    {
        public static int ingresousuario(entregistrousuario obj)
        {

            return daoregistrousuario.usuarioregistro(obj);

        }

    }
}
