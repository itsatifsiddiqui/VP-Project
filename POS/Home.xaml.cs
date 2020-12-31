using POS.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace POS
{
    /// <summary>
    /// Interaction logic for home.xaml
    /// </summary>
    public partial class home : Window , INotifyPropertyChanged
    {
     
         bool isUser;

        BindingList<ProductModel> cartProducts = new BindingList<ProductModel>();
        BindingList<ProductModel> allProducts = new BindingList<ProductModel>();

        public event PropertyChangedEventHandler PropertyChanged;
        private void NotifyPropertyChanged(string propertyName)
        {

            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
        public home(bool isUser) 
        {
            this.isUser = isUser;
            InitializeComponent();
            navigationRail.SelectedIndex = isUser ? 1 : 0;
            if (isUser)
            {
                navigationRail.Items.RemoveAt(0);
            }

            ProductsDatabaseEntities db = new ProductsDatabaseEntities();
            db.Products.ToList().ForEach((p) => allProducts.Add(new ProductModel { ProductId = p.ProductId, Quantity = p.Quantity, Price = p.Price, Name = p.Name, Description = p.Description, CoverImage = p.CoverImage })); 
            productsListView.ItemsSource = allProducts;

            Console.WriteLine(db);
            db.Products.ToList().ForEach((p) => Console.WriteLine(p.Name));


        }

        private void logoutButton_Click(object sender, RoutedEventArgs e)
        {
            MainWindow main = new MainWindow();
            main.Show();
            this.Close();
        }


        private void addToCartButton_Click(object sender, RoutedEventArgs e)
        {
            Console.WriteLine("ON TAPPED");

            var button = sender as Button;
            string id = button.ToolTip.ToString(); 
            if (cartProducts.Count == 0)
            {
                ProductModel selectedProduct = allProducts.Where((item) => item.ProductId.ToString() == id).ToList().First();
                cartProducts.Add(selectedProduct);
                cartColumn.Width = new GridLength(2, GridUnitType.Star);
            }
            else
            {
                ProductModel selectedProduct = allProducts.Where((item) => item.ProductId.ToString() == id).ToList().First();
                cartProducts.Add(selectedProduct);
               // cartColumn.Width = new GridLength(0, GridUnitType.Star);
            }

            cartItemsListView.ItemsSource = cartProducts;
            NotifyPropertyChanged("cartItemsListView");
            Console.WriteLine(cartProducts.Count);

            


        }

        private void removeitembutton_Click(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            string id = button.ToolTip.ToString();
            Console.WriteLine(id); 
            ProductModel selectedProduct = allProducts.Where((item) => item.ProductId.ToString() == id).ToList().First();
            Console.WriteLine(selectedProduct);
            cartProducts.Remove(selectedProduct);

            if (cartProducts.Count == 0)
            {
                cartColumn.Width = new GridLength(0, GridUnitType.Star);
            }

        }

        private void checkoutButton_Click(object sender, RoutedEventArgs e)
        {
            int total =   cartProducts.Sum((p) => p.Price);
            MessageBox.Show("YOUR BILL IS " + total);
            cartProducts.Clear();
            cartColumn.Width = new GridLength(0, GridUnitType.Star);

        }

        private void Exit_item_click(object sender, RoutedEventArgs e)
        {

            System.Windows.Application.Current.Shutdown();

        }


        private void About_item_click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("VP PROJECT CREATED BY MUHAMMAD ATIF SP18-BSE-078", "About");
        }

        private void Card_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            Console.WriteLine("CLICKED ON CARD");
        }
        

        private void addProductButton_Click(object sender, RoutedEventArgs e)
        {
            ProductForm form = new ProductForm(allProducts);
            form.Show();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ProductsDatabaseEntities db = new ProductsDatabaseEntities();
            allProducts.Clear();
            db.Products.ToList().ForEach((p) => allProducts.Add(new ProductModel { ProductId = p.ProductId, Quantity = p.Quantity, Price = p.Price, Name = p.Name, Description = p.Description, CoverImage = p.CoverImage }));
            productsListView.ItemsSource = allProducts;
            Console.WriteLine(db);
            db.Products.ToList().ForEach((p) => Console.WriteLine(p.Name));
        }

        private void productsTabItem_MouseDown(object sender, MouseButtonEventArgs e)
        {
            Console.WriteLine("TAPPED ON productsTabItem");

        }
    }
}
