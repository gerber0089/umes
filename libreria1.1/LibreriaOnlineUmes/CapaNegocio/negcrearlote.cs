using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;
using CapaEntidades;

namespace CapaNegocio
{
    public class negcrearlote
    {
        public static int crearlote(entcrearlote obj) {

            return daocrearlote.crearlote(obj);
        
        }
    }
}
