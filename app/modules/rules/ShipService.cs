using System;
using System.Linq;
using System.Collections.Generic;
using modules.domainobjects;

namespace modules.rules
{
    public class ShipService
    {
        public List<Ship> get_ships()
        {
            using (var context = new XwingDataContext())
            {
                return context.Ship.OrderBy(s => s.Name).ToList();
            }
        }
    }
}