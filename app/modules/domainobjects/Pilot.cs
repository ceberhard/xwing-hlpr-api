using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace modules.domainobjects
{
    [Table("pilot")]
    public class Pilot
    {
        [Key]
        [Column("pilot_id")]
        [Required]
        public int Id { get; set; }

        [Column("name")]
        [Required]
        [StringLength(100)]
        public string Name { get; set; }
    }
}