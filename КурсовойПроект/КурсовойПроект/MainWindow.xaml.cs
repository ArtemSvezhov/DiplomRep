using System;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Windows;
using КурсовойПроект;

namespace КурсовойПроект
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    /// 
    public partial class MainWindow : Window
    {
        System.Windows.Threading.DispatcherTimer timer = new System.Windows.Threading.DispatcherTimer();
        private void CenterWindowOnScreen()
        {
            double screenWidth = System.Windows.SystemParameters.PrimaryScreenWidth;
            double screenHeight = System.Windows.SystemParameters.PrimaryScreenHeight;
            double windowWidth = this.Width;
            double windowHeight = this.Height;
            this.Left = (screenWidth / 2) - (windowWidth / 2);
            this.Top = (screenHeight / 2) - (windowHeight / 2);
        }

        public MainWindow()
        {
            InitializeComponent();
        }
        public static kursacEntities1 db = new kursacEntities1();
        int logFail = 0;

        private void timerTick(object sender, EventArgs e)
        {
            login.Visibility = Visibility.Visible;
            logFail = 0;
        }
        private void login_Click(object sender, RoutedEventArgs e)
        {
            string s = pass.Password;
            string abc = "qwertyuiopasdfghjklzxcvbnm123456789";
            //abc наш алфавит
            int len = 4;
            //len - число сдвигов в сторону
            int a;
            string code = string.Empty;
            for (int i = 0; i < s.Length; i++)
            {
                int pos;
                char c = s[i];
                pos = abc.IndexOf(c);
                a = pos + len;
                if (a > 34) a -= 35;
                code += abc[a];
            }
            if (logFail == 3)
            {
                timer.Tick += new EventHandler(timerTick);
                timer.Interval = new TimeSpan(0, 0, 5);
                timer.Start();
                login.Visibility = Visibility.Hidden;
                MessageBox.Show("Ошибка", "Привышено количество вводов", MessageBoxButton.OK, MessageBoxImage.Error);
            
            }
            else
            {
                if (String.IsNullOrWhiteSpace(log.Text) || (String.IsNullOrWhiteSpace(pass.Password))) // Проверяю есть ли данные
                {
                    MessageBox.Show("Введите данные", "Ошибка");
                    log.Clear();
                    pass.Clear();
                    logFail += 1;
                    return;
                }

                var t = MainWindow.db.agent.ToList().Find(c => c.agent_login == log.Text.Trim() && c.agent_parol == code); //Создание запроса на поиск
                if ((log.Text == "") || (code == "") || (t == null)) // проверка пороля
                {
                    MessageBox.Show("Неверные данные", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    log.Clear(); // Очиска полей
                    pass.Clear();
                    logFail += 1;
                }
                else
                {
                    new Windows.AddWindow().Show(); // Закрытие окна
                    this.Close();
                }
            }
           
        }

        private void exit_Click(object sender, RoutedEventArgs e)
        {
            this.Close();

        }


    }
}
