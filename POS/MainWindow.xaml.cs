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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace POS
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

       
        public MainWindow()
        {
            InitializeComponent();
            
        }

        private void onLoginButtonClick(object sender, RoutedEventArgs e)
        {

            string usernamee = "itsatifsiddiqui@gmail.com";
            string pssword = "123456";

            Console.WriteLine(usertypecomboBox.SelectedIndex.ToString());

            if (emailField.Text != "" && passwordField.Password != "")
            {
                if (emailField.Text == usernamee && passwordField.Password == pssword)
                {
                    bool isUser = usertypecomboBox.SelectedIndex == 0 ? true : false;
                    home home = new home(isUser);
                    home.Show();
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Failed to login Try again\nIncorrect username or password", "Failed");
                }
            }
            else
            {
                MessageBox.Show("Please fill in the email and password.","Empty");
            }

        }
    }
}
