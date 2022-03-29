using Pacientes.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Pacientes.Controllers
{
    public class PacientesController : ApiController
    {

        //Metodo Get, todo los pacientes
        public IHttpActionResult GetAllPacientes()
        {
            List<Paciente> Lst = null;
            using (var ctx = new PacientesEntities())
            {
                Lst = ctx.Paciente.ToList();
            }

            return Ok(Lst);
        }

        // Metodo get, un paciente
        public IHttpActionResult GetPaciente(int id)
        {
            Paciente paciente = null;
            using (var ctx = new PacientesEntities())
            {
                paciente = ctx.Paciente.Find(id);

                if (paciente == null)
                {
                    return BadRequest("Paciente no existe");
                }
            }

            return Ok(paciente);
        }

        //Metodo Post, añadir un paciente
        public IHttpActionResult PostPaciente(Paciente paciente)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest("No se pudo crear el paciente");
            }
            using (var ctx = new PacientesEntities())
            {
                ctx.Paciente.Add(new Paciente()
                {
                    Nombres = paciente.Nombres,
                    Apellidos = paciente.Apellidos,
                    direccion = paciente.direccion,
                    Telefono = paciente.Telefono,
                    Sexo = paciente.Sexo,
                    Edad = paciente.Edad,
                    Correo = paciente.Correo,
                    Pais = paciente.Pais,
                    Observaciones = paciente.Observaciones

                });

                ctx.SaveChanges();
            }


            return Ok($"Paciente {paciente.Nombres} { paciente.Apellidos } creado correctamente");
        }

        // Actualizar o Put paciente
        public IHttpActionResult PutPaciente(Paciente paciente)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest("No se pudo Actualizar el paciente");
            }
            using (var ctx = new PacientesEntities())
            {
                var pacienteExistente = ctx.Paciente.Find(paciente.Id);

                if (pacienteExistente == null)
                {
                    return BadRequest("No existe el paciente");
                }

                pacienteExistente.Id = paciente.Id;
                pacienteExistente.Nombres = paciente.Nombres;
                pacienteExistente.Apellidos = paciente.Apellidos;
                pacienteExistente.direccion = paciente.direccion;
                pacienteExistente.Telefono = paciente.Telefono;
                pacienteExistente.Sexo = paciente.Sexo;
                pacienteExistente.Edad = paciente.Edad;
                pacienteExistente.Correo = paciente.Correo;
                pacienteExistente.Pais = paciente.Pais;
                pacienteExistente.Observaciones = paciente.Observaciones;

                ctx.SaveChanges();
            }


            return Ok($"Paciente {paciente.Nombres} { paciente.Apellidos } Actualizado correctamente");
        }

        // Metodo eliminar
        public IHttpActionResult DeletePaciente(int id)
        {
            Paciente paciente = null;
            using (var ctx = new PacientesEntities())
            {
                paciente = ctx.Paciente.Find(id);

                if (paciente == null)
                {
                    return BadRequest("Paciente no existe");
                }

                ctx.Entry(paciente).State = System.Data.Entity.EntityState.Deleted;
                ctx.SaveChanges();
            }

            return Ok($"Paciente { paciente.Nombres } { paciente.Apellidos }, Eliminado Correctamente");
        }
    }
}
