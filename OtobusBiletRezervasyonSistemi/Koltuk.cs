namespace OtobusBiletRezervasyonSistemi
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Koltuk")]
    public partial class Koltuk
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Koltuk()
        {
            Rezervasyons = new HashSet<Rezervasyon>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int No { get; set; }

        public int? SeferID { get; set; }

        [StringLength(50)]
        public string YolcuTC { get; set; }

        public virtual Sefer Sefer { get; set; }

        public virtual Yolcu Yolcu { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rezervasyon> Rezervasyons { get; set; }
    }
}
