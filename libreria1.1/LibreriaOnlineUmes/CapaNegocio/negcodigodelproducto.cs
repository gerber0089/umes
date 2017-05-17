using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaEntidades;
using CapaDatos;

namespace CapaNegocio
{
    public class negcodigodelproducto
    {
        public static int codigoproducto(entcodigodelproducto obj) {

            return daocodigodelproducto.codigoproducto(obj);
        }

    }
}
