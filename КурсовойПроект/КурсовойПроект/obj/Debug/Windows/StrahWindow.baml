   M S B A M L   `   `   `  ����W  SКурсовойПроект, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:КурсовойПроект.Windows$КурсовойПроект.Windows  5   	   6    0КурсовойПроект.Windows.StrahWindow   5   	   8
extensions)using:Microsoft.Toolkit.Uwp.UI.Extensions  5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:КурсовойПроект.Windows     5   	   X TXceed.Wpf.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f48Obselete)http://schemas.xceed.com/wpf/xaml/toolkit  5   	     � Title$<  6Окно добавление страхователя��5
   	   $	��500��6.   $	��800��6;    � Icon$; 5/КурсовойПроект;component/BestIco_1.ico��6G   .��5      � .+�5   
   �� -   5         ��Name$
 exit��5   !   $��
Назад��6   $
��Left=�6/   $��34��6J   $��
10,425,0,0q�6V   $	��Top=�6j   $��92��6�   6�   �� 5   
   $&�� ФИО/Наименование*��6   $
��Left=�6,   $��
44,107,0,0q�6G   $	��Top=�6[   �� 5   
   $��Дата рождения��6   $
��Left=�6(   $��470,243,0,0q�6C   $	��Top=�6X   �� 5   
   $��Адрес*��6   $
��Left=�6!   $��125,138,0,0q�6<   $	��Top=�6Q   �� 5   
   $#��Рабочий телефон��6   $
��Left=�6*   $��
61,173,0,0q�6E   $	��Top=�6Y   �� 5   
   $*��$Мобильный телефон 1*��6   $
��Left=�6/   $��
32,208,0,0q�6J   $	��Top=�6^   �� 5   
   $)��#Мобильный телефон 2��6   $
��Left=�6.   $��
32,247,0,0q�6I   $	��Top=�6]   �� 5   
   $%��Домашний телефон��6   $
��Left=�6+   $��446,177,0,0q�6F   $	��Top=�6[   �� 5   
   $��Примечание��6   $
��Left=�6%   $��
88,278,0,0q�6@   $	��Top=�6T   �� 5   
   -   5        $ addbt��5   &   $��Добавление��6   $
��Left=�65   $��34��6P   $��690,425,0,0q�6\   $	��Top=�6q   $��92��6�   6�   �� 5   
   -   5         ��Name$	 FIO��5      $
��Left=�6   $��30��6:   $��187,103,0,0q�6F    �� TextWrapping$
 Wrap=�6[   $�� ��6o   $	��Top=�6w   $	��564��6�   %  Xceed.Wpf.Toolkit.MaskedTextBox  5   
   -   5          Name$ Datetb��5   3      Mask$ 
99/99/9999��6!   $
��Left=�6C   $��30��6^   $��572,243,0,0q�6j   $
 Wrap=�6   $�� ��6�   $	��Top=�6�   $	��179��6�   �� 5   
   -   5        $ adresstb��5      $
��Left=�6$   $��30��6?   $��186,138,0,0q�6K   $
 Wrap=�6`   $�� ��6t   $	��Top=�6|   $	��564��6�     5   
   -   5        $ rabteltb��5   U   $ 8 (999) 999 99-99��6!   $
��Left=�6:   $��26��6g   $��187,173,0,0q�6s   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��179��6�     5   
   -   5        $ mob1tb��5   I   $ 8 (999) 999 99-99��6!    �� 	MaxLength$ 64��6:   $
��Left=�6Y   $��30��6t   $��186,208,0,0q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��180��6�     5   
   -   5        $ mob2tb��5   I   $ 8 (999) 999 99-99��6!   $ 64��6:   $
��Left=�6Y   $��30��6t   $��187,243,0,0q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��179��6�   �� 5   
   -	   5        $ domtel��5   !   $ 64��6   $
��Left=�61   $��30��6L   $��571,173,0,0q�6X   $
 Wrap=�6m   $�� ��6�   $	��Top=�6�   $	��179��6�   �� 5   
   -
   5        $
 prim��5      $
��Left=�6    $��60��6;   $��186,278,0,0q�6G   $
 Wrap=�6\   $�� ��6p   $	��Top=�6x   $	��564��6�   �� 5   
   -   5        $��
kombobomba��5      $
��Left=�6%   $��571,208,0,0q�6@   $	��Top=�6U   $	��179��6m   $��30��6y   .@�5      �� $��юр. лицо��6   �� 5       $��физ. лицо��6   5!      �� 5"   
   $��Категория*��6   $
��Left=�6%   $��500,208,0,0q�6@   $	��Top=�6U   5$      5%      