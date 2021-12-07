using System;
using System.Windows;

namespace КурсовойПроект.Windows
{
    /// <summary>
    /// Логика взаимодействия для VidWindow.xaml
    /// </summary>
    public partial class VidWindow : Window
    {
        public static kursacEntities1 db = new kursacEntities1();
        public VidWindow()
        {
            InitializeComponent();
            double screenWidth = System.Windows.SystemParameters.PrimaryScreenWidth;
            double screenHeight = System.Windows.SystemParameters.PrimaryScreenHeight;
            double windowWidth = this.Width;
            double windowHeight = this.Height;
            this.Left = (screenWidth / 2) - (windowWidth / 2);
            this.Top = (screenHeight / 2) - (windowHeight / 2);
            kat.SelectedIndex = 0;
        }

        private void exit_Click(object sender, RoutedEventArgs e)
        {
            new ChekWindow().Show();
            this.Close();
        }
        
        private void add_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (index.Text == "" || naim.Text == "")
                {
                    System.Windows.MessageBox.Show("Одно или несколько обязательных полей не заполнено!", "Ошибка");
                }

                else
                {
                    var strahovki = new strahovki()
                    {
                        index_str = index.Text,
                        naimenov_str = naim.Text,
                        kategoria_str = kat.Text.ToString()
                    };
                    db.strahovki.Add(strahovki);
                    db.SaveChanges();

                    MessageBox.Show("Добавлено", "Успех");

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка, обратитесь к системному администратору \n Код ошибки: " + Convert.ToString(ex), "Ошибка, обратитесь к системному администратору");
            }

        }
    }
}
