FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� 
Open the URL received from argv[1] with Secret mode of Google Chrome.
If Chrome is not running, Chrome will startup in background and open the URL.
Get the html source code, then close the window automatically.

If succeed, save the source code to a file (argv[2]) and return "OK".
If failed, return "NG".

Usage: osascript chrome_get_html.scpt "https://google.com" "/tmp/some_file.txt"
Output: stdout=string ("OK" or "NG"), specified path(argv[2])=html source code.
     � 	 	�   
 O p e n   t h e   U R L   r e c e i v e d   f r o m   a r g v [ 1 ]   w i t h   S e c r e t   m o d e   o f   G o o g l e   C h r o m e . 
 I f   C h r o m e   i s   n o t   r u n n i n g ,   C h r o m e   w i l l   s t a r t u p   i n   b a c k g r o u n d   a n d   o p e n   t h e   U R L . 
 G e t   t h e   h t m l   s o u r c e   c o d e ,   t h e n   c l o s e   t h e   w i n d o w   a u t o m a t i c a l l y . 
 
 I f   s u c c e e d ,   s a v e   t h e   s o u r c e   c o d e   t o   a   f i l e   ( a r g v [ 2 ] )   a n d   r e t u r n   " O K " . 
 I f   f a i l e d ,   r e t u r n   " N G " . 
 
 U s a g e :   o s a s c r i p t   c h r o m e _ g e t _ h t m l . s c p t   " h t t p s : / / g o o g l e . c o m "   " / t m p / s o m e _ f i l e . t x t " 
 O u t p u t :   s t d o u t = s t r i n g   ( " O K "   o r   " N G " ) ,   s p e c i f i e d   p a t h ( a r g v [ 2 ] ) = h t m l   s o u r c e   c o d e . 
   
  
 l     ��������  ��  ��        i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 argv  ��    k     A       l     ��������  ��  ��        l     ��  ��      Test     �   
   T e s t      l         r         m          � ! ! $ h t t p s : / / g o o g l e . c o m  o      ���� 0 aurl aURL  
 test     � " "  t e s t   # $ # l    % & ' % r     ( ) ( m     * * � + + " / t m p / n o g a e r i g . t x t ) o      ����  0 filepath_posix filePath_POSIX & 
 test    ' � , ,  t e s t $  - . - l   �� / 0��   / , &set aURL to (item 1 of argv) as string    0 � 1 1 L s e t   a U R L   t o   ( i t e m   1   o f   a r g v )   a s   s t r i n g .  2 3 2 l   �� 4 5��   4 6 0set filePath_POSIX to (item 2 of argv) as string    5 � 6 6 ` s e t   f i l e P a t h _ P O S I X   t o   ( i t e m   2   o f   a r g v )   a s   s t r i n g 3  7 8 7 l   ��������  ��  ��   8  9 : 9 r     ; < ; c     = > = o    	����  0 filepath_posix filePath_POSIX > m   	 
��
�� 
psxf < o      ���� 0 filepath filePath :  ? @ ? l   ��������  ��  ��   @  A B A Z    ) C D�� E C =    F G F n     H I H 1    ��
�� 
prun I m     J J�                                                                                  rimZ  alis    h  MacintoshSSD               ��M�H+   @��Google Chrome.app                                                ���*��        ����  	                Applications    ӿ�      �*N     @��  ,MacintoshSSD:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h S S D  Applications/Google Chrome.app  / ��   G m    ��
�� boovtrue D r     K L K n     M N M I    �� O���� @0 gethtml_chrome_already_running getHTML_chrome_already_running O  P�� P o    ���� 0 aurl aURL��  ��   N  f     L o      ���� 0 asource aSource��   E r   ! ) Q R Q n   ! ' S T S I   " '�� U���� 80 gethtml_chrome_not_running getHTML_chrome_not_running U  V�� V o   " #���� 0 aurl aURL��  ��   T  f   ! " R o      ���� 0 asource aSource B  W X W l  * *��������  ��  ��   X  Y Z Y Z   * ? [ \�� ] [ C   * - ^ _ ^ o   * +���� 0 asource aSource _ m   + , ` ` � a a 
 < h t m l \ k   0 : b b  c d c n   0 7 e f e I   1 7�� g���� 0 savefile   g  h i h o   1 2���� 0 filepath filePath i  j�� j o   2 3���� 0 asource aSource��  ��   f  f   0 1 d  k�� k L   8 : l l m   8 9 m m � n n  O K��  ��   ] L   = ? o o m   = > p p � q q  N G Z  r�� r l  @ @��������  ��  ��  ��     s t s l     ��������  ��  ��   t  u v u l     ��������  ��  ��   v  w x w i     y z y I      �� {���� @0 gethtml_chrome_already_running getHTML_chrome_already_running {  |�� | o      ���� 0 aurl aURL��  ��   z k     n } }  ~  ~ O     k � � � k    j � �  � � � l    � � � � r     � � � I   ���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m    ��
�� 
cwin � �� ���
�� 
prdt � K     � � �� � �
�� 
mode � m   	 
 � � � � �  i n c o g n i t o � �� ���
�� 
pvis � m    ��
�� boovfals��  ��   � o      ���� 0 awin aWin �  secret mode    � � � �  s e c r e t   m o d e �  ��� � O    j � � � k   " i � �  � � � l  " ' � � � � r   " ' � � � o   " #���� 0 aurl aURL � 1   # &��
�� 
URL  � ' !momentary displayed at this point    � � � � B m o m e n t a r y   d i s p l a y e d   a t   t h i s   p o i n t �  � � � r   ( - � � � m   ( )��
�� boovfals � n       � � � 1   * ,��
�� 
pvis � o   ) *���� 0 awin aWin �  � � � l  . .�� � ���   �   Wait for the html load    � � � � .   W a i t   f o r   t h e   h t m l   l o a d �  � � � U   . K � � � Z   5 F � ��� � � =  5 : � � � 1   5 8��
�� 
ldng � m   8 9��
�� boovfals �  S   = >��   � I  A F�� ���
�� .sysodelanull��� ��� nmbr � m   A B � � ?�      ��   � m   1 2����  �  � � � l  L L�� � ���   �   Get source of the tab    � � � � ,   G e t   s o u r c e   o f   t h e   t a b �  � � � r   L ] � � � I  L [���� �
�� .CrSuExJanull���     obj ��   � �� ���
�� 
JvSc � c   P W � � � m   P S � � � � � D d o c u m e n t . d o c u m e n t E l e m e n t . o u t e r H T M L � m   S V��
�� 
utxt��   � o      ���� 0 asource aSource �  � � � I  ^ c�� ���
�� .sysodelanull��� ��� nmbr � m   ^ _���� ��   �  ��� � I  d i������
�� .coreclosnull���     obj ��  ��  ��   � n     � � � 1    ��
�� 
acTa � 5    �� ���
�� 
cwin � l    ����� � n     � � � 1    ��
�� 
ID   � o    ���� 0 awin aWin��  ��  
�� kfrmID  ��   � m      � ��                                                                                  rimZ  alis    h  MacintoshSSD               ��M�H+   @��Google Chrome.app                                                ���*��        ����  	                Applications    ӿ�      �*N     @��  ,MacintoshSSD:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h S S D  Applications/Google Chrome.app  / ��     ��� � L   l n � � o   l m���� 0 asource aSource��   x  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 80 gethtml_chrome_not_running getHTML_chrome_not_running �  ��� � o      ���� 0 aurl aURL��  ��   � k     [ � �  � � � I    �� ���
�� .sysoexecTEXT���     TEXT � b      � � � m      � � � � � X o p e n   - a   G o o g l e \   C h r o m e   - j   - - a r g s   - i n c o g n i t o   � o    ���� 0 aurl aURL��   �  � � � O    X � � � k    W � �  � � � O    Q � � � k    P � �  � � � r     � � � o    ���� 0 aurl aURL � 1    ��
�� 
URL  �  � � � l   �� � ���   �   Wait for the html load    � � � � .   W a i t   f o r   t h e   h t m l   l o a d �  � � � U    8 � � � Z   " 3 � ��� � � =  " ' �  � 1   " %��
�� 
ldng  m   % &�
� boovfals �  S   * +��   � I  . 3�~�}
�~ .sysodelanull��� ��� nmbr m   . / ?�      �}   � m    �|�|  �  l  9 9�{�{     Get source of the tab    � ,   G e t   s o u r c e   o f   t h e   t a b 	 r   9 D

 I  9 B�z�y
�z .CrSuExJanull���     obj �y   �x�w
�x 
JvSc c   ; > m   ; < � D d o c u m e n t . d o c u m e n t E l e m e n t . o u t e r H T M L m   < =�v
�v 
utxt�w   o      �u�u 0 asource aSource	  I  E J�t�s
�t .sysodelanull��� ��� nmbr m   E F�r�r �s   �q I  K P�p�o�n
�p .coreclosnull���     obj �o  �n  �q   � n     1    �m
�m 
acTa 4    �l
�l 
cwin m    �k�k  � �j I  R W�i�h�g
�i .aevtquitnull��� ��� null�h  �g  �j   � m    	�                                                                                  rimZ  alis    h  MacintoshSSD               ��M�H+   @��Google Chrome.app                                                ���*��        ����  	                Applications    ӿ�      �*N     @��  ,MacintoshSSD:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h S S D  Applications/Google Chrome.app  / ��   � �f L   Y [ o   Y Z�e�e 0 asource aSource�f   �  l     �d�c�b�d  �c  �b     l     �a�`�_�a  �`  �_    !�^! i    "#" I      �]$�\�] 0 savefile  $ %&% o      �[�[ 0 filepath filePath& '�Z' o      �Y�Y 0 	some_data  �Z  �\  # k     +(( )*) Q     %+,�X+ k    -- ./. r    010 I   
�W23
�W .rdwropenshor       file2 o    �V�V 0 filepath filePath3 �U4�T
�U 
perm4 m    �S
�S boovtrue�T  1 o      �R�R 	0 fseek  / 565 I   �Q78
�Q .rdwrseofnull���     ****7 o    �P�P 	0 fseek  8 �O9�N
�O 
set29 m    �M�M  �N  6 :�L: I   �K;<
�K .rdwrwritnull���     ****; o    �J�J 0 	some_data  < �I=�H
�I 
refn= o    �G�G 	0 fseek  �H  �L  , R      �F�E�D
�F .ascrerr ****      � ****�E  �D  �X  * >�C> I  & +�B?�A
�B .rdwrclosnull���     ****? o   & '�@�@ 	0 fseek  �A  �C  �^       �?@ABCD�?  @ �>�=�<�;
�> .aevtoappnull  �   � ****�= @0 gethtml_chrome_already_running getHTML_chrome_already_running�< 80 gethtml_chrome_not_running getHTML_chrome_not_running�; 0 savefile  A �: �9�8EF�7
�: .aevtoappnull  �   � ****�9 0 argv  �8  E �6�6 0 argv  F   �5 *�4�3�2 J�1�0�/�. `�- m p�5 0 aurl aURL�4  0 filepath_posix filePath_POSIX
�3 
psxf�2 0 filepath filePath
�1 
prun�0 @0 gethtml_chrome_already_running getHTML_chrome_already_running�/ 0 asource aSource�. 80 gethtml_chrome_not_running getHTML_chrome_not_running�- 0 savefile  �7 B�E�O�E�O��&E�O��,e  )�k+ E�Y 
)�k+ 
E�O�� )��l+ O�Y �OPB �, z�+�*GH�)�, @0 gethtml_chrome_already_running getHTML_chrome_already_running�+ �(I�( I  �'�' 0 aurl aURL�*  G �&�%�$�& 0 aurl aURL�% 0 awin aWin�$ 0 asource aSourceH  ��#�"�!�  ���������� ��� ����
�# 
kocl
�" 
cwin
�! 
prdt
�  
mode
� 
pvis� 
� .corecrel****      � null
� 
ID  
� kfrmID  
� 
acTa
� 
URL � 
� 
ldng
� .sysodelanull��� ��� nmbr
� 
JvSc
� 
utxt
� .CrSuExJanull���     obj 
� .coreclosnull���     obj �) o� h*������f�� E�O*��,E�0�, I�*�,FOf��,FO �kh*�,f  Y �j [OY��O*a a a &l E�Okj O*j UUO�C � ���JK�� 80 gethtml_chrome_not_running getHTML_chrome_not_running� �L� L  �� 0 aurl aURL�  J ��
� 0 aurl aURL�
 0 asource aSourceK  ��	��������� ����
�	 .sysoexecTEXT���     TEXT
� 
cwin
� 
acTa
� 
URL � 
� 
ldng
� .sysodelanull��� ��� nmbr
� 
JvSc
� 
utxt
�  .CrSuExJanull���     obj 
�� .coreclosnull���     obj 
�� .aevtquitnull��� ��� null� \�%j O� M*�k/�, =�*�,FO �kh*�,f  Y �j 	[OY��O*���&l E�Okj 	O*j UO*j UO�D ��#����MN���� 0 savefile  �� ��O�� O  ������ 0 filepath filePath�� 0 	some_data  ��  M �������� 0 filepath filePath�� 0 	some_data  �� 	0 fseek  N 	������������������
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
�� .rdwrwritnull���     ****��  ��  
�� .rdwrclosnull���     ****�� , ��el E�O��jl O��l W X  hO�j  ascr  ��ޭ