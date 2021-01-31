namespace OtobusBiletRezervasyonSistemi
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Rezervasyon")]
    public partial class Rezervasyon
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID { get; set; }

        [StringLength(50)]
        public string YolcuTC { get; set; }

        public int? SeferID { get; set; }

        public int? Koltuk { get; set; }

        public DateTime? RezervasyonTarihi { get; set; }

        public virtual Koltuk Koltuk1 { get; set; }

        public virtual Sefer Sefer { get; set; }

        public virtual Yolcu Yolcu { get; set; }
    }
}
