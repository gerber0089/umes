using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using CapaDatos;

namespace CapaNegocio
{
    public class negcrearnuevoproducto
    {
        public static int producto(entcrearnuevoproducto obj)
        {
            return daocrearnuevoproducto.producto (obj);
        }
    }
}
