var builder = WebApplication.CreateBuilder(args);

// Agregar servicios al contenedor (soporte para Controladores y Vistas MVC)
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configuración del pipeline de solicitudes HTTP
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}

app.UseStaticFiles();

app.UseRouting();

// Configuración de la ruta por defecto: Controlador 'Home', Acción 'Index'
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
