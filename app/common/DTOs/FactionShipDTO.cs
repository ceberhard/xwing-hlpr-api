using System;
using System.Collections.Generic;
using System.Runtime.Serialization;

namespace common.DTOs
{
    [DataContract]
    public class FactionShipDTO
    {
        [DataMember(Name = "faction", Order = 1)]
        public string Faction { get; set; }

        [DataMember(Name = "ships", Order = 2)]
        public List<__ShipPilotDTO> Ships { get; set; }
    }

    [DataContract]
    public class __ShipPilotDTO
    {
        [DataMember(Name = "ship", Order = 1)]
        public string Ship { get; set; }

        [DataMember(Name = "pilot", Order = 2)]
        public string Pilot { get; set; }

        [DataMember(Name = "pilot_skill", Order = 3)]
        public int PilotSkill { get; set; }
    }
}