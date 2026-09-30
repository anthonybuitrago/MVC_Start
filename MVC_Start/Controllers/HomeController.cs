using Microsoft.AspNetCore.Mvc;
using MVC_Start.Models;

namespace MVC_Start.Controllers
{
    public class HomeController : Controller
    {
        // GET: /Home/Index
        public IActionResult Index()
        {
            // 1. MODELO: Creamos u obtenemos los datos
            var invitado = new GuestContact
            {
                Name = "Anthony Buitrago",
                Email = "anthonybuitrago8@gmail.com",
                Phone = "+1 829 324 2330"
            };

            // 2. VISTA: Enviamos el modelo como parámetro a la vista
            return View(invitado);
        }
    }
}