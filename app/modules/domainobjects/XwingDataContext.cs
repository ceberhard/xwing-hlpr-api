using System;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;

namespace modules.domainobjects
{
    public class XwingDataContext : DbContext
    {
        public DbSet<Faction> Faction { get;set; }
        public DbSet<FactionShipPilot> FactionShipPilot { get;set; }
        public DbSet<Pilot> Pilot { get;set; }
        public DbSet<Ship> Ship { get;set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlite("Data Source=../../xwing.db");
        }

        protected override void OnModelCreating(ModelBuilder modelBuiler)
        {
            modelBuiler.Entity<FactionShipPilot>()
                .HasOne(f => f.Faction)
                .WithMany()
                .IsRequired()
                .HasForeignKey("faction_id")
                .OnDelete(DeleteBehavior.Restrict);

            modelBuiler.Entity<FactionShipPilot>()
                .HasOne(f => f.Ship)
                .WithMany()
                .IsRequired()
                .HasForeignKey("ship_id")
                .OnDelete(DeleteBehavior.Restrict);

            modelBuiler.Entity<FactionShipPilot>()
                .HasOne(f => f.Pilot)
                .WithMany()
                .IsRequired()
                .HasForeignKey("pilot_id")
                .OnDelete(DeleteBehavior.Restrict);
        }
    }
}
