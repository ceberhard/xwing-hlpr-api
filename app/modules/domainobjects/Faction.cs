using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace modules.domainobjects
{
    [Table("faction")]
    public class Faction
    {
        [Key]
        [Column("faction_id")]
        [Required]
        public int Id { get; set; }

        [Column("name")]
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
    }
}