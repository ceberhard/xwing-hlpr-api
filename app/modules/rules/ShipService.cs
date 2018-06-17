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
        public List<ShipDTO> GetShips()
        {
            List<ShipDTO> returnvals = new List<ShipDTO>();
            using (var context = new XwingDataContext())
            {
                List<Ship> ships = context.Ship.Select(s => s).ToList();
                returnvals = ships.Select(s => s.ExtractDTO()).ToList();
            }
            return returnvals;
        }
        
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