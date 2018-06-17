using System;
using System.Collections.Generic;
using System.Runtime.Serialization;

namespace common.DTOs
{
    [DataContract]
    public class ShipListDTO
    {
        [DataMember(Name = "id", Order = 1)]
        public int ShipListId {get;set;}

        [DataMember(Name = "name", Order = 2)]
        public string Name {get;set;}

        [DataMember(Name = "ships", Order = 3)]
        public ShipListItemDTO[] ListShips {get;set;}

    }
}