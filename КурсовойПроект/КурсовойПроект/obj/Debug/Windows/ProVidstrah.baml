   M S B A M L   `   `   `  ����W  SКурсовойПроект, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:КурсовойПроект.Windows$КурсовойПроект.Windows  5   	   1    +КурсовойПроект.Windows.ProVid   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:КурсовойПроект.Windows     5   	     � Title$?  9Окно просмотра видов страховок��5   	   $	��600��60   $	��515��6=    � Icon$; 5/КурсовойПроект;component/BestIco_1.ico��6I   .��5	      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ grid1��5         AutoGenerateColumns .  $��
10,97,10,0q�6>      CanUserAddRows .     CanUserDeleteRows .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$+ %Индекс страхователя��6C      Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToCells 6`   	   
IsReadOnly	 . 1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6%   �� *	index_str+6t     5      $ Наименование��6F   $ SizeToCells 6\   	 .  
 6%   �� *naimenov_str+6p     5      $ Категория��6G   $ 80 6Z   	 .  
 6%   �� *kategoria_str+6e   5      �� 5   
   -   5         ��Name$
 exit��5   !   $��
Назад��6   $��	10,50,0,0q�6/   $	��Top=�6B   $��34��6Z   $
��Left=�6y   $��92��6�   �� 5   
   -   5        $
 rass��5   %   $��Рассрочка��6   $��34��63   $	��Top=�6?   $��	10,10,0,0q�6X   $
��Left=�6�   $��92��6�   �� 5   
   -   5        $
 edin��5   *   $"��Единовременная��6   $��34��68   $	��Top=�6D   $��
107,10,0,0q�6]   $
��Left=�6�   $��97��6�   �� 5   
   -   5        $ strah��5   (   $��Страхователи��6   $��34��67   $	��Top=�6C   $��
209,10,0,0q�6\   $
��Left=�6�   $��92��6�   �� 5   
   -   5        $ change��5   $   $��Изменить��6   $��
107,50,0,0q�64   $	��Top=�6H   $��34��6`   $
��Left=�6�   $��97��6�   �� 5   
   $��Категория: ��6   $
��Left=�6&   $	��Top=�6A   $��
234,58,0,0q�6Y   �� 5   
   -   5        $��KategoriCombo��5      $	��Top=�6(   $��311,62,38,0q�6@   .@�5      �� .��6   Все5      �� 5      .��6   Юр. Лица5       �� 5!      .��6   Здоровье5#      �� 5$      .��6   Имущество5&      �� 5'      .��6   Автомобиль5)      �� 5*      .��6   Путешествия5,      5-      5/      50      