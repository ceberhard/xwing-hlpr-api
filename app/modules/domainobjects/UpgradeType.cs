using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using common.DTOs;

namespace modules.domainobjects
{
    [Table("upgrade_type")]
    public class UpgradeType
    {
        [Key]
        [Column("upgrade_type_id")]
        [Required]
        public int Id { get; set; }

        [Column("name")]
        [Required]
        [StringLength(100)]
        public string Name { get; set; }
    }
}