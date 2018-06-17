using System;
using System.Collections.Generic;
using System.Runtime.Serialization;

namespace common.DTOs
{
    [DataContract]
    public class ShipDTO
    {
        [DataMember(Name = "id", Order = 1)]
        public int Id { get; set; }

        [DataMember(Name = "name", Order = 2)]
        public string Name { get; set; }
    }
}