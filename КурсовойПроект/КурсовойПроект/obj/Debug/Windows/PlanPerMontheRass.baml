   M S B A M L   `   `   `  ����W  SКурсовойПроект, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:КурсовойПроект.Windows$КурсовойПроект.Windows  5   	   8    2КурсовойПроект.Windows.PlanPerMonthe   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:КурсовойПроект.Windows     5   	     � Title$  План на месяц��5   	   $	��450��6   $	��800��6,    � Icon$C =/КурсовойПроект;component/AppData/BestIco_1.ico��68   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ grid1��5
         AutoGenerateColumns .  $��
10,49,10,0q�6>      CanUserAddRows .     CanUserDeleteRows .     CanUserResizeRows .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly .  	   Header$%	 ФИО/Наименование��6e   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 SizeToCells 6   1  +System.Windows.Controls.DataGridBoundColumn   Binding 68   �� *strahovately.FIO_Namenov+6     5       .  $	 Индекс��6V   $
 60 6f    68   �� *	index_str+6f     5       .  $	 Дата начала��6r   $
 SizeToCells 6�    68   �� *data_nachala+ �� StringFormat$ 
MM/dd/yyyy��6�     5       .  $!	 Дата окончания��6u   $
 SizeToCells 6�    68   �� *data_okonchanya+$ 
MM/dd/yyyy��6�     5       .  $!	 Номер договора��6[   $
 80 6s    68   �� *nomer_dogovora+6s     5       .  $	 Общая сумма��6Z   $
 80 6o    68   �� *summa_platezh+6o     5       .  $	 Страховая��6j   $
 90 6}    68   �� *strahovaya.naimenovStrahovaya+6}     5       .  $	 Объект��6T   $
 80 6d    68   �� *	objecti+6d     5       .  $	 Банк поср.��6V   $
 SizeToCells 6j    68   �� *	bank_posr+6j     5       .  $	 Примечание��6X   $
 SizeToCells 6l    68   �� *primechanya+6l   5      �� 5   
   -   5         ��Name$
 exit��5   !   $��
Назад��6   $
��Left=�6/   $��	10,10,0,0q�6J   $	��Top=�6]   $��92��6v   $��34��6�   6�   5!      5"      