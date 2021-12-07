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
    /// Логика взаимодействия для PlanPerMonthe.xaml
    /// </summary>
    public partial class PlanPerMonthe : Window

    {
        kursacEntities1 db = new kursacEntities1();
        public PlanPerMonthe()
        {
            try
            {
            InitializeComponent();
            double screenWidth = System.Windows.SystemParameters.PrimaryScreenWidth;
            double screenHeight = System.Windows.SystemParameters.PrimaryScreenHeight;
            double windowWidth = this.Width;
            double windowHeight = this.Height;
            this.Left = (screenWidth / 2) - (windowWidth / 2);
            this.Top = (screenHeight / 2) - (windowHeight / 2);

            List<rassrochka> listRsas = db.rassrochka.ToList();
            DateTime dt = DateTime.Now;
            DateTime x1 = DateTime.Parse("01/" + dt.Month + "/" + dt.Year);
            DateTime x2 = DateTime.Parse("29/" + dt.Month + "/" + dt.Year);
            if (dt.Day >= 20)
            {
                x2 = DateTime.Parse("29/" + (dt.Month + 1) + "/" + dt.Year);
            }
            List<rassrochka> dates = db.rassrochka.ToList();
            dates = db.rassrochka.Where(c => c.data_okonchanya >= x1 && c.data_okonchanya <= x2).ToList();
            grid1.ItemsSource = dates.ToList();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка, обратитесь к системному администратору \n Код ошибки: " + Convert.ToString(ex), "Ошибка, обратитесь к системному администратору");
            }
        }

        private void exit_Click(object sender, RoutedEventArgs e)
        {
            new AddWindow().Show();
            this.Close();
        }
    }
}
