   M S B A M L   `   `   `  ����W  SКурсовойПроект, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:КурсовойПроект.Windows$КурсовойПроект.Windows  5   	   ;    5КурсовойПроект.Windows.PlanPerMonthEdin   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:КурсовойПроект.Windows     5   	     � Title$  План на месяц��5   	   $	��450��6   $	��800��6,   .��5	      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ grid1��5         AutoGenerateColumns .  $��
10,49,10,0q�6>      CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly .     Header$% ФИО/Наименование��6e   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 SizeToCells 6   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 68   �� *strahovately.FIO_Namenov+6     5       .  $ Индекс��6V   $	 40 6f   
 68   �� *	index_str+6f     5       .  $ Дата начала��6r   $	 SizeToCells 6�   
 68   �� *data_nachala+ �� StringFormat$ 
MM/dd/yyyy��6�     5       .  $ Объект��6T   $	 80 6d   
 68   �� *	objecti+6d     5       .  $ Страховая��6j   $		 100 6}   
 68   �� *strahovaya.naimenovStrahovaya+6}     5       .  $! Дата окончания��6u   $	 SizeToCells 6�   
 68   �� *data_okonchanya+$ 
MM/dd/yyyy��6�     5       .  $! Номер договора��6[   $	 80 6s   
 68   �� *nomer_dogovora+6s     5       .  $' !Оплаченная премия��6Z   $	 80 6u   
 68   �� *oplach_premya+6u     5       .  $ Банк поср.��6V   $	 80 6j   
 68   �� *	bank_posr+6j     5       .  $ Примечание��6X   $	 SizeToCells 6l   
 68   �� *primechanya+6l   5      �� 5   
   -   5         ��Name$
 exit��5   !   $��
Назад��6   $
��Left=�6/   $��	10,10,0,0q�6J   $��95��6]   $	��Top=�6{   $��34��6�   5      5      