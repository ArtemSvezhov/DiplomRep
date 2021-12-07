using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using Xamarin.Forms;

namespace КурсовойПроект.Windows
{
    /// <summary>
    /// Логика взаимодействия для ProsmotrEdin.xaml
    /// </summary>
    public partial class ProsmotrEdin : Window
    {
        kursacEntities1 db = new kursacEntities1();
        public ProsmotrEdin()
        {

            InitializeComponent();
            double screenWidth = System.Windows.SystemParameters.PrimaryScreenWidth;
            double screenHeight = System.Windows.SystemParameters.PrimaryScreenHeight;
            double windowWidth = this.Width;
            double windowHeight = this.Height;
            this.Left = (screenWidth / 2) - (windowWidth / 2);
            this.Top = (screenHeight / 2) - (windowHeight / 2);
            grid1.ItemsSource = db.edinovr_oplata.ToList();
            // Забиваю комбо со страховой
            string[] str = db.strahovaya
              .Select(c => c.naimenovStrahovaya)
              .ToArray();

            for (int i = 0; i < str.Length; i++)
            {
                comboStrahov.Items.Add(str[i]);
            }
            comboStrahov.SelectedIndex = 0;
            ComboMonth.SelectedIndex = 12;
        }

        private void Страховки_Click(object sender, RoutedEventArgs e)
        {
            new ProVid().Show();
            this.Close();
        }

        private void strah_Click(object sender, RoutedEventArgs e)
        {
            new ProsmotrStrahovatel().Show();
            this.Close();
        }

        private void rass_Click_1(object sender, RoutedEventArgs e)
        {
            new ProsmotrRassroch().Show();
            this.Close();
        }

        private void exit_Click(object sender, RoutedEventArgs e)
        {
            new AddWindow().Show();
            this.Close();
        }

        private void change_Click(object sender, RoutedEventArgs e)
        {
            db.SaveChanges();
            MessageBox.Show("Изменение выполнено успешно!", "Успех");
        }

        private void SortClass(string SortStrah = "Все", string SortMonth = "12")
        {
            try 
            { 
            List<edinovr_oplata> SotrtList = db.edinovr_oplata.ToList();

            switch (SortStrah)
            {
                case "РЕСО":
                    SotrtList = SotrtList.Where(c => c.idstrahovaya.Equals(1)).ToList();
                    break;
                case "РЕНЕССАНС":
                    SotrtList = SotrtList.Where(c => c.idstrahovaya.Equals(2)).ToList();
                    break;
                case "РОСГОССТРАХ":
                    SotrtList = SotrtList.Where(c => c.idstrahovaya.Equals(3)).ToList();
                    break;
                case "ГАЙДЕ":
                    SotrtList = SotrtList.Where(c => c.idstrahovaya.Equals(4)).ToList();
                    break;
                case "ВСК":
                    SotrtList = SotrtList.Where(c => c.idstrahovaya.Equals(5)).ToList();
                    break;
                case "Другое":
                    SotrtList = SotrtList.Where(c => c.idstrahovaya.Equals(6)).ToList();
                    break;
                default:
                    break;
            }

            DateTime dt = DateTime.Now;
            DateTime x1;
            DateTime x2;

            switch (SortMonth)
            {
                case "0":
                    x1 = DateTime.Parse("01/01/" + dt.Year);
                    x2 = DateTime.Parse("30/01/" + dt.Year);
                    SotrtList = db.edinovr_oplata.Where(c => c.data_nachala >= x1 && c.data_nachala <= x2).ToList();
                    break;
                case "1":
                    x1 = DateTime.Parse("01/02/" + dt.Year);
                    x2 = DateTime.Parse("28/02/" + dt.Year);
                    SotrtList = db.edinovr_oplata.Where(c => c.data_nachala >= x1 && c.data_nachala <= x2).ToList();
                    break;
                case "2":
                    x1 = DateTime.Parse("01/03/" + dt.Year);
                    x2 = DateTime.Parse("30/03/" + dt.Year);
                    SotrtList = db.edinovr_oplata.Where(c => c.data_nachala >= x1 && c.data_nachala <= x2).ToList();
                    break;
                case "3":
                    x1 = DateTime.Parse("01/04/" + dt.Year);
                    x2 = DateTime.Parse("30/04/" + dt.Year);
                    SotrtList = db.edinovr_oplata.Where(c => c.data_nachala >= x1 && c.data_nachala <= x2).ToList();
                    break;
                case "4":
                    x1 = DateTime.Parse("01/05/" + dt.Year);
                    x2 = DateTime.Parse("30/05/" + dt.Year);
                    SotrtList = db.edinovr_oplata.Where(c => c.data_nachala >= x1 && c.data_nachala <= x2).ToList();
                    break;
                case "5":
                    x1 = DateTime.Parse("01/06/" + dt.Year);
                    x2 = DateTime.Parse("30/06/" + dt.Year);
                    SotrtList = db.edinovr_oplata.Where(c => c.data_nachala >= x1 && c.data_nachala <= x2).ToList();
                    break;
                case "6":
                    x1 = DateTime.Parse("01/07/" + dt.Year);
                    x2 = DateTime.Parse("30/07/" + dt.Year);
                    SotrtList = db.edinovr_oplata.Where(c => c.data_nachala >= x1 && c.data_nachala <= x2).ToList();
                    break;
                case "7":
                    x1 = DateTime.Parse("01/08/" + dt.Year);
                    x2 = DateTime.Parse("30/08/" + dt.Year);
                    SotrtList = db.edinovr_oplata.Where(c => c.data_nachala >= x1 && c.data_nachala <= x2).ToList();
                    break;
                case "8":
                    x1 = DateTime.Parse("01/09/" + dt.Year);
                    x2 = DateTime.Parse("30/09/" + dt.Year);
                    SotrtList = db.edinovr_oplata.Where(c => c.data_nachala >= x1 && c.data_nachala <= x2).ToList();
                    break;
                case "9":
                    x1 = DateTime.Parse("01/10/" + dt.Year);
                    x2 = DateTime.Parse("30/10/" + dt.Year);
                    SotrtList = db.edinovr_oplata.Where(c => c.data_nachala >= x1 && c.data_nachala <= x2).ToList();
                    break;
                case "10":
                    x1 = DateTime.Parse("01/11/" + dt.Year);
                    x2 = DateTime.Parse("30/11/" + dt.Year);
                    SotrtList = db.edinovr_oplata.Where(c => c.data_nachala >= x1 && c.data_nachala <= x2).ToList();
                    break;
                case "11":
                    x1 = DateTime.Parse("01/12/" + dt.Year);
                    x2 = DateTime.Parse("30/12/" + dt.Year);
                    SotrtList = db.edinovr_oplata.Where(c => c.data_nachala >= x1 && c.data_nachala <= x2).ToList();
                    break;
                default:
                    break;
            }
            grid1.ItemsSource = SotrtList;
        }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка, обратитесь к системному администратору \n Код ошибки: " + Convert.ToString(ex), "Ошибка, обратитесь к системному администратору");
            }

        }

        private void comboStrahov_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            SortClass(comboStrahov.SelectedItem.ToString(),ComboMonth.SelectedIndex.ToString());
        }

        private void ComboMonth_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            SortClass(comboStrahov.SelectedItem.ToString(), ComboMonth.SelectedIndex.ToString());
        }
    }
}
