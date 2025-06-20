using Ecommerce.Model;
using Microsoft.EntityFrameworkCore;

namespace Ecommerce.OrderService.Data
{
    public class OrderDbContext : DbContext
    {
        public OrderDbContext(DbContextOptions<OrderDbContext> options):base(options)
        {
            Database.EnsureCreated();
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
           /* modelBuilder.Entity<OrderModel>().HasData(new OrderModel { Id = 1, CustomerName="order_one", OrderDate = DateTime.UtcNow, ProductId = 1, Quantity = 23 });
            modelBuilder.Entity<OrderModel>().HasData(new OrderModel { Id = 2, CustomerName="order_two", OrderDate = DateTime.UtcNow, ProductId = 3, Quantity = 60 });
            modelBuilder.Entity<OrderModel>().HasData(new OrderModel { Id = 3, CustomerName="order_tree", OrderDate = DateTime.UtcNow, ProductId = 2, Quantity = 49 });*/
            base.OnModelCreating(modelBuilder);
        }
        public DbSet<OrderModel> Orders { get; set; }
    }
}
