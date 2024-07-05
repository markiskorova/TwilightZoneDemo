using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using CatalogAPI.Data.Entities;

namespace CatalogAPI.Data
{
    public class CatalogAPIContext : DbContext
    {
        public CatalogAPIContext (DbContextOptions<CatalogAPIContext> options)
            : base(options)
        {
        }

        public DbSet<CatalogAPI.Data.Entities.Episode> Episode { get; set; } = default!;
    }
}
