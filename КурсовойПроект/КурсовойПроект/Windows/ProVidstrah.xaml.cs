using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Windows;

namespace КурсовойПроект.Windows
{
    /// <summary>
    /// Логика взаимодействия для ProRass.xaml
    /// </summary>
    public partial class ProVid : Window
    {
        public ProVid()
        {
            InitializeComponent();   
            double screenWidth = System.Windows.SystemParameters.PrimaryScreenWidth;
            double screenHeight = System.Windows.SystemParameters.PrimaryScreenHeight;
            double windowWidth = this.Width;
            double windowHeight = this.Height;
            this.Left = (screenWidth / 2) - (windowWidth / 2);
            this.Top = (screenHeight / 2) - (windowHeight / 2);
            grid1.ItemsSource = db.strahovki.ToList(); 
            KategoriCombo.SelectedIndex = 0;
        }
        private void exit_Click(object sender, RoutedEventArgs e)
        {
            new AddWindow().Show();
            this.Close();
        }
        public static kursacEntities1 db = new kursacEntities1();
        private void rass_Click(object sender, RoutedEventArgs e)
        {
                        
        }

        private void edin_Click(object sender, RoutedEventArgs e)
        {
            new ProsmotrEdin().Show();
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

        private void change_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                grid1.UpdateLayout(); // Фиксируем изменения внесенные в DataTable
                db.SaveChanges();
                db.SaveChanges();
                MessageBox.Show("Изменение выполнено успешно!", "Успех");
            }
            catch(Exception ex)
            {
                MessageBox.Show("Ошибка, обратитесь к системному администратору \n Код ошибки: " + Convert.ToString(ex), "Ошибка, обратитесь к системному администратору");
            }
        }

        private void GetSort(string SortStrah = "0")
        {
            try
            {


                List<strahovki> SotrtList = db.strahovki.ToList();

                switch (SortStrah)
                {
                    case "1":
                        SotrtList = db.strahovki.Where(c => c.kategoria_str.Equals("Юр. Лица")).ToList();
                        break;
                    case "2":
                        SotrtList = db.strahovki.Where(c => c.kategoria_str.Equals("Здоровье")).ToList();
                        break;
                    case "3":
                        SotrtList = db.strahovki.Where(c => c.kategoria_str.Equals("Имущество")).ToList();
                        break;
                    case "4":
                        SotrtList = db.strahovki.Where(c => c.kategoria_str.Equals("Автомобиль")).ToList();
                        break;
                    case "5":
                        SotrtList = db.strahovki.Where(c => c.kategoria_str.Equals("Путешествия")).ToList();
                        break;
                    default:
                        break;
                }
                grid1.ItemsSource = SotrtList;
            }
            catch (Exception ex)
            {
                System.Windows.MessageBox.Show("Ошибка, обратитесь к системному администратору \n Код ошибки: " + Convert.ToString(ex), "Ошибка, обратитесь к системному администратору");
            }
        }
        
        private void KategoriCombo_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            GetSort(KategoriCombo.SelectedIndex.ToString());
        }
    }
}
