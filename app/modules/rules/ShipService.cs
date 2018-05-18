using System;
using System.Linq;
using System.Collections.Generic;
using modules.domainobjects;
using common.DTOs;
using Microsoft.EntityFrameworkCore;

namespace modules.rules
{
    public class ShipService
    {
        public List<FactionShipDTO> GetFactionShips()
        {
            List<FactionShipDTO> returnvals = new List<FactionShipDTO>();
            using (var context = new XwingDataContext())
            {
                List<FactionShipPilot> factionships = context.FactionShipPilot
                    .Select(f => f)
                    .Include(f => f.Faction)
                    .Include(f => f.Ship)
                    .Include(f => f.Pilot)
                    .ToList();
                returnvals = FactionShipPilot.ExtractFactionShipDTO(factionships);
            }
            return returnvals;
        }
    }
}