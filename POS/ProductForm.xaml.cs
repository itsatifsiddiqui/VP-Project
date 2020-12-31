using System;
using System.Collections.Generic;
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
using System.Text.RegularExpressions;
using Microsoft.Win32;
using System.ComponentModel;
using System.Data.Entity.Validation;
using POS.Models;

namespace POS
{
    /// <summary>
    /// Interaction logic for ProductForm.xaml
    /// </summary>
    public partial class ProductForm : Window, INotifyPropertyChanged
    {
        string profilePhotoString;

        BindingList<ProductModel> passedProducts;
        public ProductForm(BindingList<ProductModel> products)
        {
            this.passedProducts = products;
            InitializeComponent();

        }

        public event PropertyChangedEventHandler PropertyChanged;
        private void NotifyPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        private void NumberValidationTextBox(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^0-9]+");
            e.Handled = regex.IsMatch(e.Text);
        }

        private void addproductbutton_Click(object sender, RoutedEventArgs e)
        {

            if (profilePhotoString == null)
            {
                MessageBox.Show("Please Select Image First");
                return;
            }

            Console.WriteLine(productName.Text);
            Console.WriteLine(productPrice.Text);
            Console.WriteLine(productQuantity.Text);
            Console.WriteLine(productDescription.Text);
            Console.WriteLine(profilePhotoString);

            Product product = new Product() {
                Name = productName.Text,
                Price = int.Parse(productPrice.Text),
                Quantity = int.Parse(productQuantity.Text),
                Description = productDescription.Text,
                CoverImage = profilePhotoString
            };

            try
            {
                ProductsDatabaseEntities db = new ProductsDatabaseEntities();

                db.Products.Add(product);
                passedProducts.Add(ProductModel.productModelFromProduct(product));
                Console.WriteLine(db.Products.ToList().Count);
                db.SaveChanges();
                Close();
            }
            catch (DbEntityValidationException error)
            {
                foreach (var eve in error.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }

         
            
        }

        private void selectPicture_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog fileDialog = new OpenFileDialog();
            fileDialog.Multiselect = false;
            fileDialog.Filter = "Image files(*.jpg, *.png) | *.jpg; *.png";
            Nullable<bool> dialogOK = fileDialog.ShowDialog();

            if (dialogOK == true)
            {
                var profilePhotoo = fileDialog.FileName;
                profilePhoto.Source = new BitmapImage(new Uri(profilePhotoo));
                profilePhotoString = profilePhoto.Source.ToString();
                NotifyPropertyChanged("profilePhoto");
                Console.WriteLine(fileDialog.FileName);
            }
        }
    }
}
/*"{Binding Path=profilePhoto,UpdateSourceTrigger=PropertyChanged}*/