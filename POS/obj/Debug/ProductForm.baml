   M S B A M L   `   `   `  ����>  :POS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:POSPOS  5   	       POS.ProductForm   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   localclr-namespace:POS  5   	     � Title$  ProductForm��5	   	   $	��450��6   $	��800��6*   .��5
      ��  �� Orientation$ Vertical=�6   .+�5   
   �� $ 
Horizontal=�6   $��100,16,100,0q�6.   .+�5      �� $	��200��6   $��Right=�6    $��Center=�6<   $��0,0,12,0q�6W   $
��16px(�6i   $
��Bold"�6y   .��6�   Name:5      �� 5      -   5         ��Name$ productName��5      $
��Left=�5       �� TextWrapping$ WrapWithOverflow=�5      $��Center=�5      $��0q�6,   $��
16,12,0,12q�5      $	��300��5      ��.  �� MaxLines$ 1��5      $��24��6   $	��120��6*   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Product Name��5      $��16(�5      $��32��5      5      �� 5    
   $ 
Horizontal=�6   $��100,0,100,0q�6.   .+�5!      �� $	��200��6   $��Right=�6    $��Center=�6<   $��0,0,12,0q�6W   $
��16px(�6i   $
��Bold"�6y   .��6�   Description:5#      �� 5%      -   5        $ productDescription��5&      $
��Left=�5'      $ WrapWithOverflow=�5(      $��Center=�5)      $��0q�6,   $��
16,12,0,12q�5*      $	��300��5+      ��. $ 1��5,      $��24��6   $	��120��6*   $ Product Description��5-      $��16(�5.      $��32��5/      51      �� 53   
   $ 
Horizontal=�6   $��100,0,100,0q�6.   .+�54      �� $	��200��6   $��Right=�6    $��Center=�6<   $��0,0,12,0q�6W   $
��16px(�6i   $
��Bold"�6y   .��6�   Price:56      �� 58      -   5        $ productPrice��59      $
��Left=�5:      $ WrapWithOverflow=�5;      $��Center=�5<      $��0q�6,   $��
16,12,0,12q�5=      $	��300��5>      ��. $ 1��5?      $��24��6   $	��120��6*   $ Product Price��5@      $��16(�5A      $��32��5B      5C      5E      �� 5G   
   $ 
Horizontal=�6   $��100,0,100,0q�6.   .+�5H      �� $	��200��6   $��Right=�6    $��Center=�6<   $��0,0,12,0q�6W   $
��16px(�6i   $
��Bold"�6y   .��6�   	Quantity:5J      �� 5L      -   5        $ productQuantity��5M      $
��Left=�5N      $ WrapWithOverflow=�5O      $��Center=�5P      $��0q�6,   $��
16,12,0,12q�5Q      $	��300��5R      ��. $ 1��5S      $��24��6   $	��120��6*   $ Product Quantity��5T      $��16(�5U      $��32��5V      5W      5Y      �� 5[   
   $ 
Horizontal=�6   $��100,0,100,0q�6.   $	��110��6C   .+�5\      �� -   5         ��Name$ selectPicture��5\      ���#FFFFFF$��Select an Image��6A   $	��150��6[   $��16(�6g   $��40��6v   6�   �� 5]      -   5         ��Name$ profilePhoto��5]   l   $
��Fill=�6]   $	��110��6�   $	��110��6�   $��	60,0,60,0q�6�   ��6   ��  �� Path$ profilePhoto�	 �� UpdateSourceTrigger$	 PropertyChanged=�6�   5^      �� 5b   
   -   5        $��addproductbutton��5b      $��Bottom=�6H   $��100,20,100,10q�6c   ���	#DDffffff.��6�   Add Product5d      5g      5h      