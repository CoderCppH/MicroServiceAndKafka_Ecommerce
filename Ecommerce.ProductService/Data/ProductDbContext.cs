using Ecommerce.Model;
using Microsoft.EntityFrameworkCore;

namespace Ecommerce.ProductService.Data
{
    public class ProductDbContext : DbContext
    {
        public ProductDbContext(DbContextOptions<ProductDbContext> options): base(options)
        {
            Database.EnsureCreated();
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            /*modelBuilder.Entity<ProductModel>().HasData(new ProductModel {Id = 1, Name= "Product_one", Price = 120, Quantity = 20 });
            modelBuilder.Entity<ProductModel>().HasData(new ProductModel {Id = 2, Name= "Product_two", Price = 220, Quantity = 35 });
            modelBuilder.Entity<ProductModel>().HasData(new ProductModel {Id = 3, Name= "Product_tree", Price = 159, Quantity = 12 });*/
            base.OnModelCreating(modelBuilder);
        }
        public DbSet<ProductModel> Products { get; set; }
    }
}
