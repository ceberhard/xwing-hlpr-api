using System;
using System.Collections.Generic;
using System.Runtime.Serialization;

namespace common.DTOs
{
    public class ShipListItemDTO
    {
        [DataMember(Name = "id", Order = 1)]
        public int ShipListItemId {get;set;}

        [DataMember(Name = "ship_faction", Order = 2)]
        public string ShipFaction {get;set;}

        [DataMember(Name = "ship_name", Order = 3)]
        public string ShipName {get;set;}

        [DataMember(Name = "pilot_name", Order = 4)]
        public string PilotName {get;set;}

        // [DataMember(Name = "upgrades", Order = 5)]
        

    }
}