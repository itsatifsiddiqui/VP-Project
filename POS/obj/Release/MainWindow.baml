   M S B A M L   `   `   `  ���� >  :POS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:POSPOS      POS.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  localclr-namespace:POS    � Title$  Login Screen��$	��800��$
��1400�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ CanMinimize=�.���  � ColumnDefinitions �� $
��1.3* ��� .+��� $��32,120q�$��Images/login_security.jpg��$��1��$��Center=�$��Center=�$
��Fill=�$��2���  � RowDefinitions �� $	��12* ��� $
��239* ��� $	��76* ��� $	��73* ��� $
��120* ��� $
��171* ��� $��0* ��� $	��68* ��� $	��12* �.+��� ���	#FF1BB498�� ���	#FF1BB498$��8���� $��SIGN IN TO YOUR ACCOUNT��$��Center=�$��Center=�$
��42px(�$��1��$��	ExtraBold"����	#FF1BB498$��56��$��102,98,102,85q�$	��584��� $��2�� �� $
��113* ��� $
��281* �.+��� $��Right=�$��Center=�$��0,0,12,0q�$
��16px(�$
��Bold"�.��Email Address:�� -    ��Name$ 
emailField��$��2��$
��Left=� �� TextWrapping$ WrapWithOverflow=�$��Center=�$��0q�$��
16,12,0,12q�$	��300����.  �� MaxLines$ 1��$��24��$	��120��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Email Address��	   
HelperText$	 itsatifsiddiqui@gmail.com��$��16(�$��32��� $��3�� �� $
��113* ��� $
��281* �.+��� $��Right=�$��Center=�$��
0,22,12,23q�$
��15px(�$
��Bold"�$	��117��.��Enter Password:G� -   
 G�Name$
 passwordField��$��2��$
��Left=�$��Center=�$��0q�$��
16,12,0,12q�$	��300����. $��24��$
��auto��$ Password��$	 At least 6 characters��$��16(�$��32���� -    ��Name$ usertypecomboBox��$��4��$	��300��$
��32,4q�$��48��$��
96,40,0,16q�$
��Left=�$��Center=� �� SelectedIndex$ 0��.@��� $
��User���� $��Admin���� -    ��Name$ loginButton��$��5��$��Login��$
��Left=�$��Center=�$	��300��$
��32,4q�$��48��$��
96,40,0,83q�   MaterialDesignRaisedButton#��[  