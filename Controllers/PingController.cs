using Microsoft.AspNetCore.Mvc;

namespace TodoApp.Controllers;

[Route("[controller]")]
[ApiController]
public class PingController : ControllerBase
{
    // GET: /ping
    [HttpGet]
    public string Ping()
    {
        return "pong";
    }
}