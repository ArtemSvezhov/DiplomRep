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
    /// Логика взаимодействия для PlanPerMonthEdin.xaml
    /// </summary>
    public partial class PlanPerMonthEdin : Window
    {
        kursacEntities1 db = new kursacEntities1();
        public PlanPerMonthEdin()
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

                List<edinovr_oplata> listRsas = db.edinovr_oplata.ToList();
                DateTime DateNow = DateTime.Now;
                DateTime DateStart = DateTime.Parse("01/" + DateNow.Month + "/" + DateNow.Year);
                DateTime DateFin = DateTime.Parse("30/" + DateNow.Month + "/" + DateNow.Year);
                if (DateNow.Day >= 20)
                {
                    DateFin = DateTime.Parse("30/" + (DateNow.Month + 1) + "/" + DateNow.Year);
                }
                List<edinovr_oplata> dates = db.edinovr_oplata.ToList();
                dates = db.edinovr_oplata.Where(c => c.data_okonchanya >= DateStart && c.data_okonchanya <= DateFin).ToList();
                grid1.ItemsSource = dates.ToList();
            }
            catch(Exception ex)
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
