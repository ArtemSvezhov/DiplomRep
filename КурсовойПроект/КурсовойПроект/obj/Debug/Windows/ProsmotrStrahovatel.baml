   M S B A M L   `   `   `  ����W  SКурсовойПроект, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:КурсовойПроект.Windows$КурсовойПроект.Windows  5   	   >    8КурсовойПроект.Windows.ProsmotrStrahovatel   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:КурсовойПроект.Windows     5   	     � Title$<  6Окно просмотра страхователей��5   	   $	��600��6.   $	��800��6;    � Icon$; 5/КурсовойПроект;component/BestIco_1.ico��6G   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ grid1��5
         AutoGenerateColumns .  $��
10,49,10,0q�6>      CanUserAddRows .     CanUserDeleteRows .     CanUserResizeRows .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly . 	   Header$%	 ФИО/Наименование��6W   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 SizeToCells 6q   1  +System.Windows.Controls.DataGridBoundColumn   Binding 67   �� *FIO_Namenov+6q     5       .  $	 Дата рождения��6q   $
 SizeToCells 6�    68   �� *data_rozden+ �� StringFormat$ 
MM/dd/yyyy��6�     5       .  $	 
Адрес��6T   $
 SizeToCells 6c    68   �� *	address+6c     5       . $#	 Рабочий телефон��6W   $
 SizeToCells 6p    67   �� *rab_telefon+6p     5       . $	 Мобильный 1��6Y   $
 SizeToCells 6n    67   �� *mob_telefon_1+6n     5       . $	 Мобильный 2��6Y   $
 SizeToCells 6n    67   �� *mob_telefon_2+6n     5       . $	 Домашний��6W   $
 SizeToCells 6i    67   �� *dom_telefon+6i     5       . $	 Категория��6U   $
 SizeToCells 6h    67   �� *	kategorya+6h     5       .  $	 Примечание��6X   $	
 100 6l    68   �� *primechanya+6l   5      �� 5   
   -   5         ��Name$
 exit��5   !   $��
Назад��6   $
��Left=�6/   $��
410,10,0,0q�6J   $	��Top=�6^   $��94��6v   $��34��6�   �� 5    
   -   5        $
 rass��5    %   $��Рассрочка��6   $
��Left=�63   $��34��6N   $	��Top=�6Z   $��92��6r   $��	10,10,0,0q�6~   6�   �� 5!   
   -   5        $
 edin��5!   *   $"��Единовременная��6   $
��Left=�68   $��34��6S   $	��Top=�6_   $��98��6w   $��
108,10,0,0q�6�   6�   �� 5"   
   -   5        $ Страховки��5"   %   $��Страховки��6   $
��Left=�68   $��34��6S   $	��Top=�6_   $��92��6w   $��
210,10,0,0q�6�   6�   �� 5#   
   -   5        $ change��5#   $   $��Изменить��6   $
��Left=�64   $��
307,10,0,0q�6O   $	��Top=�6c   $��98��6|   $��34��6�   6�   5%      5&      