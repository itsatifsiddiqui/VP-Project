using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POS.Models
{
    public class ProductModel
    {
        public int ProductId { get; set; }
        public int Price { get; set; }
        public int Quantity { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string CoverImage { get; set; }




        public static ProductModel productModelFromProduct(Product product)
        {
            return new ProductModel { ProductId = product.ProductId, Quantity = product.Quantity, Price = product.Price, Name = product.Name, Description = product.Description, CoverImage = product.CoverImage };
        }

    }

    public class ProductManager
    {
        public static BindingList<ProductModel> GetProducts()
        {
            BindingList<ProductModel> products = new BindingList<ProductModel>
            {
                new ProductModel { ProductId = 1, Quantity = 120, Price = 1200, Name = "Shoe 1", Description = "Black Shoes", CoverImage = "ProductImages/p1.jpg" },
                new ProductModel { ProductId = 2, Quantity = 12, Price = 1500, Name = "Shoe 2", Description = "Green Shoes", CoverImage = "ProductImages/p2.jpg" },
                new ProductModel { ProductId = 3, Quantity = 4, Price = 2000, Name = "Shoe 3", Description = "Sneakers", CoverImage = "ProductImages/p3.jpg" },
                new ProductModel { ProductId = 4, Quantity = 6, Price = 2500, Name = "Bag 1", Description = "Blue Shoes", CoverImage = "ProductImages/p4.jpg" },
                new ProductModel { ProductId = 5, Quantity = 12, Price = 1500, Name = "Bag 2", Description = "White Bag", CoverImage = "ProductImages/p5.jpg" },
                new ProductModel { ProductId = 6, Quantity = 2, Price = 12000, Name = "Cloths", Description = "Fashion Collection", CoverImage = "ProductImages/p6.jpg" },
                new ProductModel { ProductId = 7, Quantity = 123, Price = 8000, Name = "Sneakers 1", Description = "White Sneaksers", CoverImage = "ProductImages/p7.jpg" },
                new ProductModel { ProductId = 8, Quantity = 32, Price = 600, Name = "Snearkers 2", Description = "Jogger Sneakers", CoverImage = "ProductImages/p8.jpg" },
                new ProductModel { ProductId = 9, Quantity = 12, Price = 2399, Name = "Sneakers 3", Description = "Oraneg Snaeaker", CoverImage = "ProductImages/p9.jpg" },
                new ProductModel { ProductId = 10, Quantity = 2, Price = 108000, Name = "Iphone XR", Description = "Blue Apple Iphone XR 64GB", CoverImage = "ProductImages/p10.jpg" },
                new ProductModel { ProductId = 11, Quantity = 4, Price = 208000, Name = "Galaxy Note 20 Ultra", Description = "Purple Samsung Galaxy Note 20 Ultra", CoverImage = "ProductImages/p11.jpg" },
                new ProductModel { ProductId = 12, Quantity = 120, Price = 450, Name = "Iphone 11 Pro Case", Description = "Black Matt", CoverImage = "ProductImages/p12.jpg" },
                new ProductModel { ProductId = 13, Quantity = 150, Price = 600, Name = "Iphone 11 Pro Case cover", Description = "Black Cover", CoverImage = "ProductImages/p13.jpg" },
                new ProductModel { ProductId = 14, Quantity = 12, Price = 12000, Name = "AirBuds", Description = "Black Buds", CoverImage = "ProductImages/p14.jpg" },
                new ProductModel { ProductId = 15, Quantity = 140, Price = 2000, Name = "Charging Dock", Description = "Dock", CoverImage = "ProductImages/p15.jpg" },
                new ProductModel { ProductId = 16, Quantity = 180, Price = 4500, Name = "Wirelsess Chargig Dock", Description = "Wireless Dock", CoverImage = "ProductImages/p16.jpg" }
            };

            return products;
        }
    }
}
