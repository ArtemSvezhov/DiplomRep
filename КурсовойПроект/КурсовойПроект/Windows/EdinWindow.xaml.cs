using System;
using System.Linq;
using System.Windows;

namespace КурсовойПроект.Windows
{
    /// <summary>
    /// Логика взаимодействия для EdinWindow.xaml
    /// </summary>
    public partial class EdinWindow : Window
    {
        public EdinWindow()
        {
           
            InitializeComponent();

            double screenWidth = System.Windows.SystemParameters.PrimaryScreenWidth;
            double screenHeight = System.Windows.SystemParameters.PrimaryScreenHeight;
            double windowWidth = this.Width;
            double windowHeight = this.Height;
            this.Left = (screenWidth / 2) - (windowWidth / 2);
            this.Top = (screenHeight / 2) - (windowHeight / 2);

            string[] strahovatelCB = db.strahovately
              .Select(c => c.FIO_Namenov)
              .ToArray();

            for (int i = 0; i < strahovatelCB.Length; i++)
            {
                cmdkt.Items.Add(strahovatelCB[i]);
            }
            string[] strahovaya = db.strahovaya
              .Select(c => c.naimenovStrahovaya)
              .ToArray();

            for (int i = 0; i < strahovaya.Length; i++)
            {
                strahovayaCombo.Items.Add(strahovaya[i]);
            }

            string[] str = db.strahovki
              .Select(c => c.index_str)
              .ToArray();

            for (int i = 0; i < str.Length; i++)
            {
                indstr.Items.Add(str[i]);
            }
            cmdkt.SelectedIndex = 0;
            indstr.SelectedIndex = 0;
            strahovayaCombo.SelectedIndex = 0;
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
                if (nomer_dogovora.Text == "" || date_start.Text == "__.__.____" || date_finish.Text == "__.__.____" || premiaNach.Text == "" || premiaFin.Text == "")
                {
                    System.Windows.MessageBox.Show("Одно или несколько обязательных полей не заполнено!", "Ошибка");
                }

                else
                {

                    // ID по ФИО
                    int ID = db.strahovately
                  .Where(c => c.FIO_Namenov == cmdkt.Text)
                  .Select(c => c.idstrahovately)
                  .FirstOrDefault();

                    //ID для новой записи
                    int[] IDoplata = db.edinovr_oplata
                      .Select(c => c.idedinovr_oplata)
                      .ToArray();
                    int OpLaTa = Convert.ToInt32(IDoplata.Length) + 1;

                    // ID по Страховой
                    int IDstrahovaya = db.strahovaya
                      .Where(c => c.naimenovStrahovaya == strahovayaCombo.Text)
                      .Select(c => c.idstrahovaya)
                      .FirstOrDefault();

                    var oplata = new edinovr_oplata() //Добавление в базу
                    {
                        idedinovr_oplata = OpLaTa,
                        idagent = Convert.ToInt32(1),
                        index_str = indstr.Text,
                        idstrahovately = Convert.ToInt32(ID),
                        nomer_dogovora = nomer_dogovora.Text,
                        data_nachala = DateTime.Parse(date_start.Text),
                        data_okonchanya = DateTime.Parse(date_finish.Text),
                        nachisl_str_perem = Convert.ToDecimal(premiaNach.Text),
                        oplach_premya = Convert.ToDecimal(premiaFin.Text),
                        bank_posr = bank.Text,
                        primechanya = prim.Text,
                        objecti = objectStr.Text,
                        idstrahovaya = Convert.ToInt32(IDstrahovaya),
                    };
                    db.edinovr_oplata.Add(oplata); // Сохранение запроса
                    db.SaveChanges(); // Сохранние данных в базе

                    MessageBox.Show("Добавлено", "Успех"); 

                    new AddWindow().Show();
                    this.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка, обратитесь к системному администратору \n Код ошибки: "+Convert.ToString(ex),"Ошибка, обратитесь к системному администратору");
            }
        }
    }
}
