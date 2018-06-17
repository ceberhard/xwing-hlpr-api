using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using common.DTOs;
using Microsoft.AspNetCore.Mvc;
using modules.domainobjects;
using modules.rules;

namespace webapi.Controllers
{
    [Route("api/[controller]")]
    public class ShipsController : Controller
    {
        // GET api/values
        [HttpGet]
        public IEnumerable<ShipDTO> Get()
        {
            return new ShipService().GetShips();
        }
    }
}
