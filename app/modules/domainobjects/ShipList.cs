using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using common.DTOs;

namespace modules.domainobjects
{
    [Table("ship_list")]
    public class ShipList
    {
        [Key]
        [Column("ship_list_id")]
        [Required]
        public int Id { get; set; }

        [Column("name")]
        [Required]
        [StringLength(200)]
        public string Name { get; set; }

        

        public ShipListDTO ExtractDTO()
        {
            return new ShipListDTO
            {
                ShipListId = this.Id,
                Name = this.Name,
                ListShips = null
            };
        }
    }
}
