namespace OtobusBiletRezervasyonSistemi
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sefer")]
    public partial class Sefer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Sefer()
        {
            Koltuks = new HashSet<Koltuk>();
            Rezervasyons = new HashSet<Rezervasyon>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID { get; set; }

        public int? KalkisYeri { get; set; }

        public int? VarisYeri { get; set; }

        [Column(TypeName = "date")]
        public DateTime? Tarih {get;set;
        }


        public TimeSpan? KalkisSaati { get; set; }

        public int? GidisDonus { get; set; }

        [Column(TypeName = "money")]
        public decimal? Ucret { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Koltuk> Koltuks { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rezervasyon> Rezervasyons { get; set; }

        public virtual Sehir KalkisSehri { get; set; }

        public virtual Sehir VarisSehri { get; set; }
    }
}
