using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using common.DTOs;

namespace modules.domainobjects
{
    [Table("ship")]
    public class Ship
    {
        [Key]
        [Column("ship_id")]
        [Required]
        public int Id { get; set; }

        [Column("name")]
        [Required]
        [StringLength(100)]
        public string Name { get; set; }
   
        public ShipDTO ExtractDTO()
        {
            return new ShipDTO
            {
                Id = this.Id,
                Name = this.Name
            };
        }
    }
}