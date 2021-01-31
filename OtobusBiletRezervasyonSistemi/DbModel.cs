namespace OtobusBiletRezervasyonSistemi
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class DbModel : DbContext
    {
        public DbModel()
            : base("name=DbModel")
        {
        }
        public int getSehirID(string sehirAdi)
        {
            Sehir arananSehir = this.Sehirler.Where(sehir => sehir.SehirAdi == sehirAdi).ToList()[0];
            return arananSehir == null ? -1 : arananSehir.ID;
        }
        public virtual DbSet<Koltuk> Koltuklar { get; set; }
        public virtual DbSet<Rezervasyon> Rezervasyonlar { get; set; }
        public virtual DbSet<Sefer> Seferler { get; set; }
        public virtual DbSet<Sehir> Sehirler { get; set; }
        public virtual DbSet<Yolcu> Yolcular { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Koltuk>()
                .HasMany(e => e.Rezervasyons)
                .WithOptional(e => e.Koltuk1)
                .HasForeignKey(e => e.Koltuk);

            modelBuilder.Entity<Sefer>()
                .Property(e => e.Ucret)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Sehir>()
                .HasMany(e => e.Sefers)
                .WithOptional(e => e.KalkisSehri)
                .HasForeignKey(e => e.KalkisYeri);

            modelBuilder.Entity<Sehir>()
                .HasMany(e => e.Sefers1)
                .WithOptional(e => e.VarisSehri)
                .HasForeignKey(e => e.VarisYeri);
        }
    }
}
