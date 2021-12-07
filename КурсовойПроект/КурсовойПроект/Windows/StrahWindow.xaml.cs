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
    /// Логика взаимодействия для StrahWindow.xaml
    /// </summary>
    public partial class StrahWindow : Window
    {
        public StrahWindow()
        {
            InitializeComponent();
            double screenWidth = System.Windows.SystemParameters.PrimaryScreenWidth;
            double screenHeight = System.Windows.SystemParameters.PrimaryScreenHeight;
            double windowWidth = this.Width;
            double windowHeight = this.Height;
            this.Left = (screenWidth / 2) - (windowWidth / 2);
            this.Top = (screenHeight / 2) - (windowHeight / 2);
            kombobomba.SelectedIndex = 0;
        }

        private void exit_Click(object sender, RoutedEventArgs e)
        {
            new ChekWindow().Show();
            this.Close();
        }
        public static kursacEntities1 db = new kursacEntities1();
        private void addbt_Click(object sender, RoutedEventArgs e)
        {
            try
            {

                if (FIO.Text == "" || mob1tb.Text == "8 (___) ___ __-__" || adresstb.Text == "")
                {
                    System.Windows.MessageBox.Show("Одно или несколько обязательных полей не заполнено!", "Ошибка");
                }

                else
                {
                    string mobile1 = ""; string mobile2 = "";
                    if (mob1tb.Text == "8 (___) ___ __-__")
                    {
                        mobile1 = "";
                    }
                    else
                    {
                        mobile1 = rabteltb.Text;
                    }
                    if (mob2tb.Text == "8 (___) ___ __-__")
                    {
                        mobile2 = "";
                    }
                    else
                    {
                        mobile2 = mob2tb.Text;
                    }


                    if (Datetb.Text == "__.__.____")
                    {
                        var strahovately1 = new strahovately()
                        {
                            FIO_Namenov = FIO.Text,
                            address = adresstb.Text,
                            rab_telefon = mobile1,
                            mob_telefon_1 = mob1tb.Text,
                            mob_telefon_2 = mobile2,
                            dom_telefon = domtel.Text,
                            kategorya = kombobomba.Text.ToString(),
                            primechanya = prim.Text
                        };

                        db.strahovately.Add(strahovately1);
                        MessageBox.Show("Добавлено", "Успех");
                        // Сохранить изменения в базе данных
                        db.SaveChanges();

                    }
                    else
                    {
                        var strahovately1 = new strahovately()
                        {


                            FIO_Namenov = FIO.Text,
                            data_rozden = DateTime.Parse(Datetb.Text),
                            address = adresstb.Text,
                            rab_telefon = mobile1,
                            mob_telefon_1 = mob1tb.Text,
                            mob_telefon_2 = mobile2,
                            dom_telefon = domtel.Text,
                            kategorya = kombobomba.Text.ToString(),
                            primechanya = prim.Text
                        };

                        db.strahovately.Add(strahovately1);
                        MessageBox.Show("Добавлено", "Успех");
                        // Сохранить изменения в базе данных
                        db.SaveChanges();
                    }
                    new AddWindow().Show();
                    this.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка, обратитесь к системному администратору \n Код ошибки: " + Convert.ToString(ex), "Ошибка, обратитесь к системному администратору");
            }

        }

    }

}

