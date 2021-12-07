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
    /// Логика взаимодействия для ProsmotrStrahovatel.xaml
    /// </summary>
    public partial class ProsmotrStrahovatel : Window
    {
        kursacEntities1 db = new kursacEntities1();
        public ProsmotrStrahovatel()
        {
            InitializeComponent();
            double screenWidth = System.Windows.SystemParameters.PrimaryScreenWidth;
            double screenHeight = System.Windows.SystemParameters.PrimaryScreenHeight;
            double windowWidth = this.Width;
            double windowHeight = this.Height;
            this.Left = (screenWidth / 2) - (windowWidth / 2);
            this.Top = (screenHeight / 2) - (windowHeight / 2);
            grid1.ItemsSource = db.strahovately.ToList();
        }

        private void exit_Click(object sender, RoutedEventArgs e)
        {
            AddWindow taskWindow = new AddWindow();
            taskWindow.Show();
            this.Close();
        }

        private void Страховки_Click(object sender, RoutedEventArgs e)
        {
            new ProVid().Show();
            this.Close();

        }

        private void edin_Click(object sender, RoutedEventArgs e)
        {
            new ProsmotrEdin().Show();
            this.Close();
        }

        private void rass_Click_1(object sender, RoutedEventArgs e)
        {
            new ProsmotrRassroch().Show();
            this.Close();
        }

        private void change_Click(object sender, RoutedEventArgs e)
        {
            db.SaveChanges();
            MessageBox.Show("Изменение выполнено успешно!", "Успех");
        }
    }
}
