using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using CapaDatos;

namespace CapaNegocio
{
    public class negcrearnombreproducto
    {
        public static int crearnombre(entcrearnombreproducto obj)
        {
            return daocrearnombreproducto.crearnombre(obj);
        }
    }
}
