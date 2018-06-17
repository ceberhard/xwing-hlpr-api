using System;
using System.Collections.Generic;
using System.Runtime.Serialization;

namespace common.DTOs
{
    [DataContract]
    public class UpgradeDTO
    {
        [DataMember(Name = "id", Order = 1)]
        public int UpgradeId {get;set;}

        [DataMember(Name = "type", Order = 2)]
        public string UpgradeType {get;set;}

        [DataMember(Name = "name", Order = 3)]
        public string Name {get;set;}

        [DataMember(Name = "description", Order = 4)]
        public string Description {get;set;}
    }
}