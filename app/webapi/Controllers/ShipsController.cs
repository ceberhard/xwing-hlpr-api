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
    public class ShipsController : Controller
    {
        // GET api/values
        [HttpGet]
        [Route("api/ships")]
        public IEnumerable<ShipDTO> Get()
        {
            return new ShipService().GetShips();
        }

        [HttpGet]
        [Route("api/shiplist/{shiplistid}")]
        public ShipListDTO GetList(int shiplistid)
        {
            return new ShipService().GetShipList(shiplistid);
        }
    }
}
