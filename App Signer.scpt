FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ) # Erica Sadun, http://ericasadun.com     � 	 	 F   E r i c a   S a d u n ,   h t t p : / / e r i c a s a d u n . c o m   
  
 l     ��  ��    / ) iPhone Developer's Cookbook, 3.0 Edition     �   R   i P h o n e   D e v e l o p e r ' s   C o o k b o o k ,   3 . 0   E d i t i o n      l     ��  ��    ( " BSD License, Use at your own risk     �   D   B S D   L i c e n s e ,   U s e   a t   y o u r   o w n   r i s k      l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    + % save in Script Editor as Application     �   J   s a v e   i n   S c r i p t   E d i t o r   a s   A p p l i c a t i o n      l     ��   ��    ' ! drag files to its icon in Finder      � ! ! B   d r a g   f i l e s   t o   i t s   i c o n   i n   F i n d e r   " # " l     ��������  ��  ��   #  $ % $ i      & ' & I     �� (��
�� .aevtodocnull  �    alis ( o      ���� 0 
file_items  ��   ' k     � ) )  * + * l     �� , -��   , 2 , Set the prompt to match the number of items    - � . . X   S e t   t h e   p r o m p t   t o   m a t c h   t h e   n u m b e r   o f   i t e m s +  / 0 / r      1 2 1 m      3 3 � 4 4 D H o w   d o   y o u   w a n t   t o   s i g n   t h i s   i t e m ? 2 o      ���� 0 which_choice   0  5 6 5 Z    7 8���� 7 ?    9 : 9 l   	 ;���� ; I   	�� <��
�� .corecnte****       **** < o    ���� 0 
file_items  ��  ��  ��   : m   	 
����  8 r     = > = m     ? ? � @ @ H H o w   d o   y o u   w a n t   t o   s i g n   t h e s e   i t e m s ? > o      ���� 0 which_choice  ��  ��   6  A B A l   ��������  ��  ��   B  C D C l   �� E F��   E M G Choose how to sign: Custom, default developer, or default distribution    F � G G �   C h o o s e   h o w   t o   s i g n :   C u s t o m ,   d e f a u l t   d e v e l o p e r ,   o r   d e f a u l t   d i s t r i b u t i o n D  H I H I   #�� J K
�� .sysodlogaskr        TEXT J o    ���� 0 which_choice   K �� L M
�� 
btns L J     N N  O P O m     Q Q � R R 
 O t h e r P  S T S m     U U � V V  D e v e l o p e r T  W�� W m     X X � Y Y  D i s t r i b u t i o n��   M �� Z��
�� 
dflt Z m    ���� ��   I  [ \ [ r   $ ) ] ^ ] n   $ ' _ ` _ 1   % '��
�� 
bhit ` 1   $ %��
�� 
rslt ^ o      ���� 0 which_option   \  a b a l  * *��������  ��  ��   b  c d c l  * *�� e f��   e D > Initialize the custom text, i.e. additional keychain matching    f � g g |   I n i t i a l i z e   t h e   c u s t o m   t e x t ,   i . e .   a d d i t i o n a l   k e y c h a i n   m a t c h i n g d  h i h r   * - j k j m   * + l l � m m   k o      ���� 0 custom_text   i  n o n l  . .��������  ��  ��   o  p q p l  . .�� r s��   r M G For custom matching, solicit text and a certificate style (dev/distro)    s � t t �   F o r   c u s t o m   m a t c h i n g ,   s o l i c i t   t e x t   a n d   a   c e r t i f i c a t e   s t y l e   ( d e v / d i s t r o ) q  u v u Z   . c w x���� w =  . 1 y z y o   . /���� 0 which_option   z m   / 0 { { � | | 
 O t h e r x k   4 _ } }  ~  ~ r   4 9 � � � b   4 7 � � � o   4 5���� 0 which_choice   � m   5 6 � � � � �"   E n t e r   c u s t o m   d i s a m b i g u a t i o n   t e x t ,   e . g .   f o r   ' i P h o n e   D i s t r i b u t i o n :   E v i l   L a b s ' ,   e n t e r   E v i l   L a b s   a n d   c l i c k   D i s t r i b u t i o n .   A v o i d   t y p o s   a n d   m a t c h   c a s e . � o      ���� 0 
new_choice     � � � r   : Q � � � I  : O�� � �
�� .sysodlogaskr        TEXT � o   : ;���� 0 
new_choice   � �� � �
�� 
btns � J   < E � �  � � � m   < = � � � � �  C a n c e l �  � � � m   = @ � � � � �  D e v e l o p e r �  ��� � m   @ C � � � � �  D i s t r i b u t i o n��   � �� ���
�� 
dtxt � m   H K � � � � �  ��   � o      ���� 0 get_text   �  � � � r   R W � � � n   R U � � � 1   S U��
�� 
bhit � o   R S���� 0 get_text   � o      ���� 0 which_option   �  ��� � r   X _ � � � n   X ] � � � 1   Y ]��
�� 
ttxt � o   X Y���� 0 get_text   � o      ���� 0 custom_text  ��  ��  ��   v  � � � l  d d��������  ��  ��   �  � � � l  d d�� � ���   � N H Only perform the signing if the user selected Developer or Distribution    � � � � �   O n l y   p e r f o r m   t h e   s i g n i n g   i f   t h e   u s e r   s e l e c t e d   D e v e l o p e r   o r   D i s t r i b u t i o n �  ��� � Z   d � � ����� � >  d i � � � o   d e���� 0 which_option   � m   e h � � � � �  C a n c e l � X   l � ��� � � k   � � � �  � � � l  � ��� � ���   � R L Determine whether the item has an .app extension. If not, complain and skip    � � � � �   D e t e r m i n e   w h e t h e r   t h e   i t e m   h a s   a n   . a p p   e x t e n s i o n .   I f   n o t ,   c o m p l a i n   a n d   s k i p �  � � � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
pnam � l  � � ����� � I  � ��� ���
�� .sysonfo4asfe        file � 4   � ��� �
�� 
alis � o   � ����� 0 	this_item  ��  ��  ��  ��  ��   � o      ���� 0 the_file_name   �  � � � r   � � � � � I  � ����� �
�� .sysooffslong    ��� null��   � �� � �
�� 
psof � m   � � � � � � �  . � �� ���
�� 
psin � o   � ����� 0 the_file_name  ��   � o      ���� 0 extension_offset   �  � � � r   � � � � � m   � � � � � � �   � o      ���� 0 file_extension   �  � � � Z  � � � ����� � l  � � ����� � ?   � � � � � o   � ����� 0 extension_offset   � m   � �����  ��  ��   � r   � � � � � n   � � � � � 7  � ��� � �
�� 
ctxt � l  � � ����� � [   � � � � � o   � ����� 0 extension_offset   � m   � ����� ��  ��   � l  � � ����� � n   � � � � � 1   � ���
�� 
leng � o   � ����� 0 the_file_name  ��  ��   � o   � ����� 0 the_file_name   � o      ���� 0 file_extension  ��  ��   �  ��� � Z   � � � ��� � � >  � � � � � o   � ����� 0 file_extension   � m   � � � � � � �  a p p � I  � ��� ���
�� .sysodlogaskr        TEXT � l  � � ����� � b   � � � � � o   � ����� 0 the_file_name   � m   � � � � � � � (   i s   n o t   a n   . a p p   f i l e��  ��  ��  ��   � Q   � � � � � � I   � ��� ����� 0 perform_sign   �  � � � o   � ����� 0 	this_item   �  �  � o   � ����� 0 which_option    � o   � ��~�~ 0 custom_text  �  ��   � R      �}
�} .ascrerr ****      � **** o      �|�| 0 errmesg   �{�z
�{ 
errn o      �y�y 0 errn  �z   � I  � ��x�w
�x .sysodlogaskr        TEXT o   � ��v�v 0 errmesg  �w  ��  �� 0 	this_item   � o   o p�u�u 0 
file_items  ��  ��  ��   %  l     �t�s�r�t  �s  �r   	 i   

 I      �q�p�q 0 perform_sign    o      �o�o 0 	this_item    o      �n�n 0 which_option   �m o      �l�l 0 
which_text  �m  �p   k     M  l     �k�j�i�k  �j  �i    l     �h�h   1 + retrieve the item path for the .app bundle    � V   r e t r i e v e   t h e   i t e m   p a t h   f o r   t h e   . a p p   b u n d l e  r      n      1    �g
�g 
psxp o     �f�f 0 	this_item   o      �e�e 0 the_path    !  l   �d�c�b�d  �c  �b  ! "#" l   �a$%�a  $ &   prepare any custom text portion   % �&& @   p r e p a r e   a n y   c u s t o m   t e x t   p o r t i o n# '(' Z    )*�`+) =   	,-, o    �_�_ 0 
which_text  - m    .. �//  * r    010 m    22 �33  1 o      �^�^ 0 custom_text  �`  + r    454 b    676 m    88 �99  :  7 o    �]�] 0 
which_text  5 o      �\�\ 0 custom_text  ( :;: l   �[�Z�Y�[  �Z  �Y  ; <=< l   �X>?�X  >   create the shell command   ? �@@ 2   c r e a t e   t h e   s h e l l   c o m m a n d= ABA r    %CDC b    #EFE b    !GHG b    IJI b    KLK b    MNM m    OO �PP& / b i n / b a s h   - c   ' e x p o r t   C O D E S I G N _ A L L O C A T E = / D e v e l o p e r / P l a t f o r m s / i P h o n e O S . p l a t f o r m / D e v e l o p e r / u s r / b i n / c o d e s i g n _ a l l o c a t e ;   / u s r / b i n / c o d e s i g n   - f   - s   " i P h o n e  N o    �W�W 0 which_option  L o    �V�V 0 custom_text  J m    QQ �RR  "   "H o     �U�U 0 the_path  F m   ! "SS �TT  " '   2 > & 1D o      �T�T 0 unix_command  B UVU I  & +�SW�R
�S .sysodlogaskr        TEXTW o   & '�Q�Q 0 unix_command  �R  V XYX l  , ,�PZ[�P  Z 4 . retrieve any results of executing the command   [ �\\ \   r e t r i e v e   a n y   r e s u l t s   o f   e x e c u t i n g   t h e   c o m m a n dY ]^] r   , 3_`_ I  , 1�Oa�N
�O .sysoexecTEXT���     TEXTa o   , -�M�M 0 unix_command  �N  ` o      �L�L 0 command_result  ^ bcb l  4 4�K�J�I�K  �J  �I  c ded l  4 4�Hfg�H  f Z T on success, show the successful results (errors are handled in the try block above)   g �hh �   o n   s u c c e s s ,   s h o w   t h e   s u c c e s s f u l   r e s u l t s   ( e r r o r s   a r e   h a n d l e d   i n   t h e   t r y   b l o c k   a b o v e )e iji r   4 Gklk b   4 Emnm b   4 Copo b   4 Aqrq b   4 ?sts b   4 =uvu m   4 5ww �xx  S i g n i n g  v l  5 <y�G�Fy n   5 <z{z 1   : <�E
�E 
pnam{ l  5 :|�D�C| I  5 :�B}�A
�B .sysonfo4asfe        file} o   5 6�@�@ 0 	this_item  �A  �D  �C  �G  �F  t m   = >~~ �    w i t h  r o   ? @�?�? 0 which_option  p m   A B�� ���    C e r t i f i c a t e 
 
n o   C D�>�> 0 command_result  l o      �=�= 0 user_results  j ��<� I  H M�;��:
�; .sysodlogaskr        TEXT� o   H I�9�9 0 user_results  �:  �<  	 ��8� l     �7�6�5�7  �6  �5  �8       �4����4  � �3�2
�3 .aevtodocnull  �    alis�2 0 perform_sign  � �1 '�0�/���.
�1 .aevtodocnull  �    alis�0 0 
file_items  �/  � �-�,�+�*�)�(�'�&�%�$�#�"�- 0 
file_items  �, 0 which_choice  �+ 0 which_option  �* 0 custom_text  �) 0 
new_choice  �( 0 get_text  �' 0 	this_item  �& 0 the_file_name  �% 0 extension_offset  �$ 0 file_extension  �# 0 errmesg  �" 0 errn  � ' 3�! ?�  Q U X����� l { � � � �� �� ������� ��� ��� � ����
�! .corecnte****       ****
�  
btns
� 
dflt� 
� .sysodlogaskr        TEXT
� 
rslt
� 
bhit
� 
dtxt
� 
ttxt
� 
kocl
� 
cobj
� 
alis
� .sysonfo4asfe        file
� 
pnam
� 
psof
� 
psin
� .sysooffslong    ��� null
� 
ctxt
� 
leng� 0 perform_sign  � 0 errmesg  � ���

� 
errn� 0 errn  �
  �. ��E�O�j k �E�Y hO�����mv�k� 	O��,E�O�E�O��  0��%E�O���a a mva a � 	E�O��,E�O�a ,E�Y hO�a  � ��[a a l kh *a �/j a ,E�O*a a a �� E�Oa E�O�j �[a  \[Z�k\Z�a !,2E�Y hO�a " �a #%j 	Y  *���m+ $W X % &�j 	[OY��Y h� �	������	 0 perform_sign  � ��� �  ���� 0 	this_item  � 0 which_option  � 0 
which_text  �  � �� ������������� 0 	this_item  �  0 which_option  �� 0 
which_text  �� 0 the_path  �� 0 custom_text  �� 0 unix_command  �� 0 command_result  �� 0 user_results  � ��.28OQS����w����~�
�� 
psxp
�� .sysodlogaskr        TEXT
�� .sysoexecTEXT���     TEXT
�� .sysonfo4asfe        file
�� 
pnam� N��,E�O��  �E�Y �%E�O�%�%�%�%�%E�O�j O�j E�O�j 
�,%�%�%�%�%E�O�j  ascr  ��ޭ