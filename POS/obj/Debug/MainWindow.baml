   M S B A M L   `   `   `  ����>  :POS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:POSPOS  5   	       POS.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   localclr-namespace:POS  5   	     � Title$  Login Screen��5	   	   $	��800��6   $
��1400��6+    � WindowStartupLocation$ CenterScreen=�5
   	    � 
ResizeMode$ CanMinimize=�6.   .��5      �  � ColumnDefinitions 5   
   �� 5      $
��1.3* �6   �� 5      .+�5   
   �� $��32,120q�6   $��Images/login_security.jpg��6    $��1��5      $��Center=�6   $��Center=�68   $
��Fill=�5      $��2��6   � 5   
    � RowDefinitions 5      �� 5      $	��12* �6    �� 5      $
��239* �6    �� 5      $	��76* �6    �� 5      $	��73* �6    �� 5      $
��120* �6    �� 5      $
��171* �6    �� 5      $��0* �6    �� 5       $	��68* �6    �� 5!      $	��12* �6    .+�5$      �� ���	#FF1BB4986   �� 5&      ���	#FF1BB498$��8��5'      �� 5*      $��SIGN IN TO YOUR ACCOUNT��6   $��Center=�5+      $��Center=�5,      $
��42px(�5-      $��1��5.      $��	ExtraBold"�6%   ���	#FF1BB498$��56��5/   /   $��102,98,102,85q�6;   $	��584��6R   � 52      $��2��6    53      �� 54      $
��113* �6'   �� 55      $
��281* �6'   .+�59      �� $��Right=�6   $��Center=�64   $��0,0,12,0q�6O   $
��16px(�6a   $
��Bold"�6q   .��6�   Email Address:5;      �� 5=      -   5         ��Name$ 
emailField��5>      $��2��5?      $
��Left=�6&    �� TextWrapping$ WrapWithOverflow=�5@      $��Center=�5A      $��0q�61   $��
16,12,0,12q�5B      $	��300��5C      ��.  �� MaxLines$ 1��5D      $��24��6#   $	��120��6/   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Email Address��5E      	   
HelperText$	 itsatifsiddiqui@gmail.com��5F      $��16(�5G      $��32��5H      5J      � 5L      $��3��6    5M      �� 5N      $
��113* �6'   �� 5O      $
��281* �6'   .+�5S      �� $��Right=�6   $��Center=�64   $��
0,22,12,23q�6O   $
��15px(�6c   $
��Bold"�6s   $	��117��6�   .��6�   Enter Password:5U      G� 5W      -   5        
 G�Name$
 passwordField��5X      $��2��5Y      $
��Left=�6&   $��Center=�5Z      $��0q�61   $��
16,12,0,12q�5[      $	��300��5\      ��. $��24��5]      $
��auto��6"   $ Password��5^      $	 At least 6 characters��5_      $��16(�5`      $��32��5a      5c      �� 5f      -   5         ��Name$ usertypecomboBox��5f      $��4��5g      $	��300��5h      $
��32,4q�5i      $��48��5j      $��
96,40,0,16q�5k      $
��Left=�5l      $��Center=�5m       �� SelectedIndex$ 0��5n      .@�5p      �� $
��User��6   �� 5q      $��Admin��6   5r      �� 5u      -   5         ��Name$ loginButton��5u      $��5��6*   $��Login��68   $
��Left=�5v      $��Center=�5w      $	��300��5x      $
��32,4q�6!   $��48��60   $��
96,40,0,83q�6<      MaterialDesignRaisedButton#��[  5y      6I   5{      5}      5~      