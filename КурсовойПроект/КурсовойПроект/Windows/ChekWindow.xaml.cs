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
using КурсовойПроект.Windows;

namespace КурсовойПроект.Windows
{
    /// <summary>
    /// Логика взаимодействия для ChekWindow.xaml
    /// </summary>
    public partial class ChekWindow : Window
    {
        public ChekWindow()
        {
            InitializeComponent();
            double screenWidth = System.Windows.SystemParameters.PrimaryScreenWidth;
            double screenHeight = System.Windows.SystemParameters.PrimaryScreenHeight;
            double windowWidth = this.Width;
            double windowHeight = this.Height;
            this.Left = (screenWidth / 2) - (windowWidth / 2);
            this.Top = (screenHeight / 2) - (windowHeight / 2);
        }

        private void exit_Click(object sender, RoutedEventArgs e)
        {
            
            AddWindow taskWindow = new AddWindow();
            taskWindow.Show();
            this.Close();
        }

        private void rass_Click(object sender, RoutedEventArgs e)
        {
            new RessrochWindow().Show();
            this.Close();
        }

        private void edin_Click(object sender, RoutedEventArgs e)
        {
            new EdinWindow().Show();
            this.Close();
        }

        private void Vid_Click(object sender, RoutedEventArgs e)
        {
            Windows.VidWindow taskWindow = new Windows.VidWindow();
            taskWindow.Show();
            this.Close();
        }

        private void Str_Click(object sender, RoutedEventArgs e)
        {
            new StrahWindow().Show();
            this.Close();

        }
    }
}
