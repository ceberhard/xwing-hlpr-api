using System;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;

namespace modules.domainobjects
{
    public class XwingDataContext : DbContext
    {
        public DbSet<Ship> Ship { get;set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlite("Data Source=../../xwing.db");
        }
    }
}
