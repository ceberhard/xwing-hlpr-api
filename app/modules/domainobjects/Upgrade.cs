using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using common.DTOs;

namespace modules.domainobjects
{
    [Table("upgrade")]
    public class Upgrade
    {
        [Key]
        [Column("upgrade_id")]
        [Required]
        public int Id { get; set; }

        [Column("upgrade_type_id")]
        [Required]
        public int UpgradeTypeId {get;set;}

        [Column("name")]
        [Required]
        [StringLength(100)]
        public string Name { get; set; }

        [Column("description")]
        [Required]
        [StringLength(1000)]
        public string Description { get; set; }
    }
}