FasdUAS 1.101.10   ��   ��    l    � ����  O     �    k    �     	  r    	 
  
 1    ��
�� 
sele  o      ���� 0 sel   	  ��  Z   
 �  ��   >  
     o   
 ���� 0 sel    J    ����    X    � ��   k   ! �       l  ! !��������  ��  ��        l  ! !��  ��    8 2 Set trackName variable to name of track (aTrack)      �   d   S e t   t r a c k N a m e   v a r i a b l e   t o   n a m e   o f   t r a c k   ( a T r a c k )        r   ! '    l  ! %  ����   e   ! % ! ! n   ! % " # " 1   " $��
�� 
pnam # o   ! "���� 0 atrack aTrack��  ��    o      ���� 0 	trackname 	trackName   $ % $ l  ( (��������  ��  ��   %  & ' & l  ( (�� ( )��   ( ; 5 Strip " OC ReMix" characters from end of track title    ) � * * j   S t r i p   "   O C   R e M i x "   c h a r a c t e r s   f r o m   e n d   o f   t r a c k   t i t l e '  + , + r   ( 5 - . - n   ( 3 / 0 / 7  ) 3�� 1 2
�� 
ctxt 1 m   - /����  2 m   0 2������ 0 o   ( )���� 0 	trackname 	trackName . o      ���� 0 	trackname 	trackName ,  3 4 3 l  6 6��������  ��  ��   4  5 6 5 l  6 6�� 7 8��   7 F @ Find the location in the string where the song name begins (-2)    8 � 9 9 �   F i n d   t h e   l o c a t i o n   i n   t h e   s t r i n g   w h e r e   t h e   s o n g   n a m e   b e g i n s   ( - 2 ) 6  : ; : r   6 A < = < l  6 ? >���� > I  6 ?���� ?
�� .sysooffslong    ��� null��   ? �� @ A
�� 
psof @ m   8 9 B B � C C    ' A �� D��
�� 
psin D o   : ;���� 0 	trackname 	trackName��  ��  ��   = o      ���� "0 songtitlebegins songTitleBegins ;  E F E l  B B��������  ��  ��   F  G H G l  B B�� I J��   I , & Store name of song in songName string    J � K K L   S t o r e   n a m e   o f   s o n g   i n   s o n g N a m e   s t r i n g H  L M L r   B U N O N n   B Q P Q P 7  C Q�� R S
�� 
ctxt R l  G K T���� T [   G K U V U l  H I W���� W o   H I���� "0 songtitlebegins songTitleBegins��  ��   V m   I J���� ��  ��   S m   L P������ Q o   B C���� 0 	trackname 	trackName O o      ���� 0 songname songName M  X Y X l  V V��������  ��  ��   Y  Z [ Z l  V V�� \ ]��   \   Find name of game    ] � ^ ^ $   F i n d   n a m e   o f   g a m e [  _ ` _ r   V g a b a n   V c c d c 7  W c�� e f
�� 
ctxt e m   [ ]����  f l  ^ b g���� g \   ^ b h i h o   _ `���� "0 songtitlebegins songTitleBegins i m   ` a���� ��  ��   d o   V W���� 0 	trackname 	trackName b o      ���� 0 	gametitle 	gameTitle `  j k j l  h h��������  ��  ��   k  l m l l  h h�� n o��   n   Format new track name    o � p p ,   F o r m a t   n e w   t r a c k   n a m e m  q r q r   h  s t s b   h { u v u b   h w w x w b   h s y z y b   h o { | { o   h k���� 0 songname songName | m   k n } } � ~ ~    z m   o r   � � �  ( x o   s v���� 0 	gametitle 	gameTitle v m   w z � � � � �  ) t o      ���� 0 newtrackname newTrackName r  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 6 0 Set name of track to newly formatted track name    � � � � `   S e t   n a m e   o f   t r a c k   t o   n e w l y   f o r m a t t e d   t r a c k   n a m e �  � � � r   � � � � � o   � ����� 0 newtrackname newTrackName � n       � � � 1   � ���
�� 
pnam � o   � ����� 0 atrack aTrack �  ��� � l  � ���������  ��  ��  ��  �� 0 atrack aTrack  o    ���� 0 sel  ��    k   � � � �  � � � l  � ��� � ���   � 2 , Error message for if no tracks are selected    � � � � X   E r r o r   m e s s a g e   f o r   i f   n o   t r a c k s   a r e   s e l e c t e d �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � o   � ���
�� 
ret  � m   � � � � � � � . N o   t r a c k s   a r e   s e l e c t e d . � �� � �
�� 
btns � l 
 � � ����� � J   � � � �  ��� � m   � � � � � � �  C a n c e l��  ��  ��   � �� � �
�� 
dflt � m   � �����  � �� � �
�� 
disp � m   � �����   � �� ���
�� 
givu � m   � ����� ��   �  ��� � L   � �����  ��  ��    m      � ��                                                                                  hook  alis    N  Macintosh HD               ���H+  �w
iTunes.app                                                     �F���        ����  	                Applications    ��G-      ��r    �w  %Macintosh HD:Applications: iTunes.app    
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  ����  ��  ��   � ���� 0 atrack aTrack � ! ��������������������� B�������������� }  ���� ��~ ��}�|�{�z�y�x
�� 
sele�� 0 sel  
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam�� 0 	trackname 	trackName
�� 
ctxt����
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null�� "0 songtitlebegins songTitleBegins������ 0 songname songName�� 0 	gametitle 	gameTitle�� 0 newtrackname newTrackName
� 
ret 
�~ 
btns
�} 
dflt
�| 
disp
�{ 
givu�z �y 
�x .sysodlogaskr        TEXT�� �� �*�,E�O�jv � |�[��l kh  ��,EE�O�[�\[Zk\Z�2E�O*����� E�O�[�\[Z�l\Za 2E` O�[�\[Zk\Z�k2E` O_ a %a %_ %a %E` O_ ��,FOP[OY��Y (_ a %a a kva ka ja a a   OhU ascr  ��ޭ