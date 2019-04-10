using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using common.DTOs;

namespace modules.domainobjects
{
    [Table("ship_list_item")]
    public class ShipListItem
    {
        [Key]
        [Column("ship_list_item_id")]
        [Required]
        public int Id { get; set; }

        [Column("ship_list_id")]
        [Required]
        public int ShipListId {get;set;}

        public FactionShipPilot ShipPilot {get;set;}

        public Upgrade Upgrade {get;set;}
    }
}