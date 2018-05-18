using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using common.DTOs;

namespace modules.domainobjects
{
    [Table("faction_ship_pilot")]
    public class FactionShipPilot
    {
        [Key]
        [Column("faction_ship_pilot_id")]
        [Required]
        public int Id { get; set; }
        
        [Column("pilot_skill")]
        [Required]
        public int PilotSkill { get; set; }

        public Faction Faction { get; set; }

        public Ship Ship { get; set; }

        public Pilot Pilot { get; set; }

        public static List<FactionShipDTO> ExtractFactionShipDTO(List<FactionShipPilot> factionships)
        {
            List<FactionShipDTO> returnvals = new List<FactionShipDTO>();
            List<Faction> factions = factionships.Select(x => x.Faction).Distinct().ToList();
            factions.ForEach(f => {
                returnvals.Add(new FactionShipDTO
                {
                    Faction = f.Name,
                    Ships = factionships
                        .Where(fs => fs.Faction.Id == f.Id)
                        .Select(fs => new __ShipPilotDTO{
                            Ship = fs.Ship.Name,
                            Pilot = fs.Pilot.Name,
                            PilotSkill = fs.PilotSkill
                        }).ToList()
                });
            });
            return returnvals;
        }
    }
}