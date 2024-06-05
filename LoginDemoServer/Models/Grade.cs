using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace LoginDemoServer.Models;

[Keyless]
public partial class Grade
{
    [Column(TypeName = "datetime")]
    public DateTime TestDate { get; set; }

    [StringLength(50)]
    public string SubjectName { get; set; } = null!;

    [Column("Grade")]
    public int Grade1 { get; set; }

    [StringLength(100)]
    public string? StudentEmail { get; set; }

    [ForeignKey("StudentEmail")]
    public virtual User? StudentEmailNavigation { get; set; }
}
