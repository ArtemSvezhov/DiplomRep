   M S B A M L   `   `   `  ����W  SКурсовойПроект, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:КурсовойПроектКурсовойПроект  5   	   -    'КурсовойПроект.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:КурсовойПроект     5   	     � Title$  Окно входа��5   	   $��311.5��6   $	��256��6+   $��311.5��67   $	��256��6I   $��311.5��6X   $	��256��6j    � Icon$ BestIco_1.ico��6z    � WindowStartupLocation$ CenterScreen=�6�   .��5	      �  � RowDefinitions 5
   
   �� 5       � ColumnDefinitions 5   
   �� 5      .+�5   
   �� -   5        $��login��5       $��Вход��6   $
��Left=�6-   $��34��6H   $��141,236,0,0q�6T   $	��Top=�6i   $��92��6�   6�   �� 5   
   -   5        $
��exit��5   !   $��
Выход��6   $
��Left=�6-   $��34��6H   $��
10,236,0,0q�6T   $	��Top=�6h   $��92��6�   6�   �� 5   
   -   5        $	��log��5      $��26��6   $��
10,41,15,0q�6*    �� TextWrapping$
 Wrap=�6>   $�� ��6R   $	��Top=�6Z   
�������6r   G� 5   
   -   5        $
��pass��5      $��26��6"   $��10,151,15,0q�6.   $	��Top=�6C   
�������6[   �� 5   
   -   5        $
��lbl1��5      $!��Введите пароль��6   $
��Left=�65   $��
10,120,0,0q�6P   $	��Top=�6d   $��26��6|   $��97��6�   �� 5   
   $��Введите логин��6   $
��Left=�6(   $��	10,10,0,0q�6C   $	��Top=�6V   $��26��6n   $��89��6z   �� 5   
   -   5         ��Name$ 
TimerCount��5      $,��&До повторного входа: ��6$   $
��Left=�6D   $��
30,205,0,0q�6_   $	��Top=�6s   $��26��6�   $��97��6�   $y�Hidden=�6�   5      5      