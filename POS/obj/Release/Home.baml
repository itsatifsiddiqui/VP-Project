   M S B A M L   `   `   `  ���� >  :POS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:POS.Models
POS.Models  clr-namespace:POSPOS      POS.home   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  +productsDataclr-namespace:POS.Models  localclr-namespace:POS    � Title$  	DashBoard��$	��800��$
��1600�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ 	CanResize=�.��� .+�]� ��. .+�o� $	��Top=�.@�m� $��_Menu��.@�m� -   $��_About��m� -   $��_Exit���� -    ��Name$ navigationRail��$
��auto�� )  %MaterialDesignNavigatilRailTabControl#��[  $��2��.@��� -   $��tabitem0�� ' #MaterialDesignNavigationRailTabItem#��[ ��0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ ViewDashboardOutline=�   Size$ 32X�.���  � RowDefinitions �� $	��24* ��� $
��233* �.+�#  MaterialDesignThemes.Wpf.Card  $��0��.���� $��Center=�$��Center=�$��36(�$
��Bold"�$��
Nirmala UI)�	DASHBOARD� $��1��.+��� .+�� $��32,32,32,32q� � ColumnDefinitions �� �� �� �� .+�  $��0��$��8,8,8,8q�.���� $��16,16,16,16q�.+��� $
��Left=�$��16(�$��DemiBold"�$��
Nirmala UI)����	#FF161616Products Sold Today��  �� Padding$ 0,8,0,8q�$
��Left=�$��48(�$
��Bold"�$��
Nirmala UI)����	#FF161616100�� $��4�����	#FF1BB498  $��1��$��8,8,8,8q�.���� $��16,16,16,16q�.+��� $
��Left=�$��16(�$��DemiBold"�$��
Nirmala UI)����	#FF161616Products Sold This Week�� $ 0,8,0,8q�$
��Left=�$��48(�$
��Bold"�$��
Nirmala UI)����	#FF1616161000�� $��4�����	#FF1BB498  $��2��$��8,8,8,8q�.���� $��16,16,16,16q�.+��� $
��Left=�$��16(�$��DemiBold"�$��
Nirmala UI)����	#FF161616Overall Gross Profit�� $ 0,8,0,8q�$
��Left=�$��48(�$
��Bold"�$��
Nirmala UI)����	#FF161616	140000 RS�� $��4�����	#FF1BB498  $��3 ��$��8,8,8,8q�.���� $��16,16,16,16q�.+��� $
��Left=�$��16(�$��DemiBold"�$��
Nirmala UI)����	#FF161616Total Products�� $ 0,8,0,8q�$
��Left=�$��48(�$
��Bold"�$��
Nirmala UI)����	#FF16161612000�� $��4�����	#FF1BB498� $��
32,8,32,48q� �� �� .+�  $��0��$��8,8,8,8q����	#DDFFFFFF$
��Bold"�$��16(�.���� $��16,16,16,16q�.+�'  !MaterialDesignThemes.Wpf.PackIcon  	   Kind$		 Add=�$	��150��$	��150��$��Center=�$��Center=�
����������	#FF1BB498�� -   
 ��Name$
 addProductButton��$��	0,64,0,64q�$	��400��$��70��$��Center=�$��22(�$
��Bold"�$��
Nirmala UI)����	#DDFFFFFF.��Add New Product�� $��4�����	#FF1BB498  $��1��$��8,8,8,8q�.���� $��16,16,16,16q�.+�  $
	 Sale=�$	��150��$	��150��$��Center=�$��Center=�
����������	#FF1BB498�� -   $��	0,64,0,64q�$	��400��$��70��$��Center=�$��22(�$
��Bold"�$��
Nirmala UI)����	#DDFFFFFF.��View All Sales�� $��4�����	#FF1BB498�� -    ��Name$ productsTabItem��#��[ ��  $
 Grid=�$ 32X�.���  �� $	��24* ��� $
��233* �.+�  $��0��.���� $��Center=�$��Center=�$��36(�$
��Bold"�$��
Nirmala UI)�
Products� $��1��.+��  �� $��5* ��� -    ��Name$ 
cartColumn��$��0* �.+��� -	   $��productsListView��$��0�� �� View �� .P��� $��Image�� �� Width$	 150�� �� CellTemplate �� .R��� $	��120��$	��120��$��Center=�$��Center=����� *
CoverImage+�� $��Product Name��$	 250�� �� .R��� ���	#FF1BB498$��DemiBold"�$��Center=�$��28(�$	��120��$	��120��$
��Wrap=����� *Name+�� $��Product Description��$	 300�� �� .R��� $��Center=�$��18(�$
��Wrap=����� *Description+�� $��Quantity��$	 150�� �� .R��� $��Center=�$��Center=�$��22(�$
��Wrap=����� *
Quantity+�� $��Price��$	 100�� �� .R���  �� Orientation$ 
Horizontal=�$��Center=�.+��� $��Center=�$��Center=�$��22(����� *Price+�� $	�� RS��$��Center=�$��22(��� $��Add To Cart��$	 150��-
   addToCartColumn�� �� .R��� $
 addToCartButton��-   $��Add To Cart��
������� � ToolTip �� *	ProductId+� $��1�� �� $��7* ��� $��1* �.+��� -   $��cartItemsListView��$��0��$��1�� �� .P��� $��Product Name��$	 250�� �� .R��� $��DemiBold"�$��Center=�$��22(�$��60��$��60��$
��Wrap=����� *Name+�� $��Remove��$	 150��-   
removeItem�� �� .R��� $
 removeitembutton��-   $��Remove��
������� �� *	ProductId+�� -   $
 checkoutButton��$��1��.��
Checkout�� #��[ ��  $
 User=�$ 32X�.���  �� $	��24* ��� $
��233* �.+�  $��0��.���� $��Center=�$��Center=�$��36(�$
��Bold"�$��
Nirmala UI)�	Account� $��1��$��
32,0,32,16q�$��Bottom=�.+��� -   $
 logoutButton��$��24(�$��48��
�������$��	16,4,16,8q�$��Stretch=�$��Center=�.��Logout