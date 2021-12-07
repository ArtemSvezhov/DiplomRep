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

namespace КурсовойПроект.Windows
{
    /// <summary>
    /// Логика взаимодействия для AddWindow.xaml
    /// </summary>
    public partial class AddWindow : Window
    {
        public AddWindow()
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
            this.Close();
        }

        private void chek_Click(object sender, RoutedEventArgs e)
        {
            
            new Windows.ProVid().Show();
            this.Close();

        }

        private void add_Click(object sender, RoutedEventArgs e)
        {
            ChekWindow taskWindow = new ChekWindow();
            taskWindow.Show();
            this.Close();
        }

        private void PlanRass_Click(object sender, RoutedEventArgs e)
        {
            new PlanPerMonthe().Show();
            this.Close();
        }

        private void PlanEdin_Click(object sender, RoutedEventArgs e)
        {
            new PlanPerMonthEdin().Show();
            this.Close();
        }
    }
}
