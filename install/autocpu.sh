#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYu�� ������������������������������������^�t�!T} ���c��^��������;׋�Uw7ګ���vu�\�={��w�ׯ_P�o�5����G;�W٪'���ý�__v�o��>*�F��<��ʞL	�04�S�#Fi2h� L�i蘚i�'��	�I��2d��5<BO�&�Q�d�&i�@&�`(EHb	��&14�a3B0I�����LL�����MFS�h�jzmF&�@�� ���S��0	�Oا��L�m54�Sb�&�4ɣT*��)�L���4Ҟh�OL�`&�f� Ȟ�Ѧ�CI��'���� $�3F�L�2`�4�ښzb'���MM<I�=jy��4�S��4�@���y4a4���zi�f�a�`����MM��bbi��15<������LF��Sѩ�OML���ĞSjh�F��Fi21�h�=�i��4���*y�<2�h�h�Ʉ� �����S��*x�	�H�C&�j<��i�$�(�z��z�(�jxCQ�I�Th~��i��Cjb�j{T� 1"@�I�M4b4���=4�A20�#Ba���4ɂ�)��1M��1��шd�54��2i���jz4z�#��2z�OJz���S�i�����;Rj�릲�I��=��?�o(�؉I��W�:���QB��W��֪���B�a��Q�@�לu���V%Al�y^�<��*G�$$�
Dk�)Ƹm��YI�Ʊks�sP"إ0":&�kL��7�G�=r�EE5p����%K��V�#��
��� �'�J�T"C�1!�OM#� q�˲0��)�����j�
"%$f)`��l�P��$ˣ�MR�vV��n��7���e�0.h[�n�cY9�ˡ>�I�1�YUb3]M=]4�,�4șBUE��OI�5��qA̔�2L�䠵�� ��H��u�=����T�7g�H�,H'�DO8P�{�/iӛ��v�r~HY�'\��X��B �!�!ۦ�������������Ky�1J�j0�am�X"&XJN�� }�%i��r�mCQ��*"kg����[=oP�Z���©<�oɕ�.���@w��"�-�� �*�3�k6	�#ҥ�X1խU�c�(%��M$�h��m�I�Qo�x����fS���6��,p:�\�Q�>���~X���w1�B�Tb��sY5�=b���ww�D����Y�ȭ��"m�]A"eY � IЮ��Is���ƹ��`�zzg9�S�1$����qL�g6=�7�Q ���ǔ4qg���� @cP:q�@�U=
"Z%H`Q��$� 3�C6ʠtS���׆pGTA@ȑR%�j�X[�0��-.(-j�2��(%!�ws�g4���#Ӟ�"��Y"H���Dg��&�� b9�Ο��qCR���0�{@�ȋ�!���A!" C@@�r�X�"	$��Q��`@P�z(��t���x(H��P�ܯ��h7���s��ԯ��dv�����#0�]�b9Zvu������t�U�p(R � �D	]l���i�6[ҙ�Z�߷��A�72R�ρ���99}��gHn0 � �".�v�
t�z o��tڱ*tA"1��" ��J�Q&��	X��6��T+�;D��?]�1b���a�l*H��Y81Y[��E���k�}]g�)�^(�qGa��p�258'�#h0�07��2��]���D�{��c�/ړ~�.���GE�9J��u���왝d�nPr`�¢�{��в��� A=�}� �$q ���DN���o�Z�G��N�	M��8�G^¹s��$�-UcQ��TtTv���6!�s����;X��M%6����t "�v�i�4��ϱ��Ѫ�Ξ3�Hn�?Y�e	]c��@��l	�f�@�!��� d"��c;���9�*��lh������*���tݦ���|~�7�Q��$q�&`��ʱ�o��om�m����ov)ã����=�u��͎���b����t�F�4a!��ڴr�a��{�ؔ��Ûɟ���	(.���b}T?���C1��71�B����Q/0��f,A-&��pf�<?��@*�ф��-DU�|ʉmTᩜ*P��eBYu��c�����23Y��Y�$� �H�A�s`�5�6�|���#��x:{�x�|�����L����ߒ�N�fJx{�S�;��oeXkj�EPgw�:�Z2��J�^,�wF���D���(c��6I�gg��W�Rl�O`�(c��El�����Q�vC�n������!�$2x΃�m��𮒕�n/B�m�F�B�9�{��֬��[��o��F�h���Θ�̴?���U�tU�@�@�k��am��(0٬�n]�&d��ȳ�-l3ڧ�$B�N�*�l� z\�t�)�|�y<=����R~c�Wc�z�LuȠ���Z�($���$����9+���A{c���le��{�k�����%�W��s�ܓA)4�&ua�TA� ~��i���M��^Q��_Ǹ�>�6ͷ�=*���^�54�=�\G��A�����*�[�����㠔A ��[��)��k2��"$��Τ�ѷǝ�ɬl?��'!j�jޕ�VT�J��e	|�~��K׮��k�h�]2��m&b��� d�_6��h}�O&�7�?cp���[��/�+�]�s����G��6���v�j�<iy�j�OH�/^�,�N8���8!Dw@�~�{�M`Ps��(/�z�	,��k	���#S
��"b� ��\�/]ۊ<N��5QdV����*j �=��Õ�G
����xl������.7g��{��Lp4�e����D
Th�
����]�8@�TQ���kߧUv�Q
�Ї!t"�a��l/<�di��~i��w�0o��"�B��dpQ�`C�69l~�?R�;/
饉`@����Bh��ū���;�+��k�7����J���w�y���#! m-�!�JP���ژ�5�9z�yK��i
�0��u��}j�8����p�J�/I�V���?!����&�f����q�� ��,�6i�-o���@���p�Ud����r��G��t[��>
���!�ްBw��о���M��6f��8Bܧ��XX.����d�������6���������F$�Q #u'�5+��~p����,�y{8~��ě7��=�����M&:}x��)���	'�*�
'Y�I�e�����KI�b(X�:ި��+;��"��%[�?�1Ņ��4���F��Cg��.G�L��nL��sek�)�����Qx�`�;��
\���$`1tϣɲt̀�f�Ҥ�Bw�+� @�	�Y:bF��og�[���;b�g��=]w^�Q];s��j_ߧ��T~N=�kz��ݿ�s�-���T��%��E }^����m�Z��N�F�!%�i�1y$4�u�yw�(�}�iV.y����������At}Zd�O�H�D���:�mx���j�$�����\6w���%�/e9�Z1��@��i��U���md����|;�����q�u$g�h)��$`�s����Y,�@�@P5j�����6��znf�"�3l��u�j�d!v�׳����1,7R[tv>�ib����'-���m�RV�46蘉!�{ObX��5τ5���֑�۱O�+� �\�!����0���鰙޵EAK�¶+��Т>�I�WuZ�A&��j5%e��K���4���&�ʨ�;|���Np���ߥ��&/nUM�D7RlB۬��>�� �Uo�dX�3/��iM ���m��`��J��i�NE٢�\p�=���
�ѱ M�|_�0�Hwp���7 �v�ʌZ����>������WH����{��1�&� ؘ�A��t|w�z1U͵L�پ��;����Pu߭����,�.�geEE</l�r�^��U�_ԥq��� \��A�1�fq5����CFI��eQ/�󏠝c�����n/v����E2��j2�\���� G�l�EW�_�����ۨ �ea�������A1�Q[b�����^��&�sؗ�P�P&�V��-~�nzr�e������v������\p�����-�%��q���c�w�Aǘ�M���(��Ux^-�5�t��[�� @��f�t16j��T�ײ�m����>��s~��;�E��BJ
�e�yc>��{R3���\�����,2~��ص�Ƚ�>��/�2��yؚe��\n��ũ�
'؛��SI�`>��>�O|Ʈ<ڗ��/e7^.�Ǆ��	-�# ~��dwd�F�29\�b��%u���`�J&$ϟ�}�|F�k����C�����N�F�vH�>�ݦ�.V~��5��=e�r���ZX�U�z=m}��f��<���GߍZzgHf�D8�WjT��GD ��r*��]�8�u�Ȗ��i$��s�ͼ�7�q�)
���)Z��E���C��(  �Q����U��6W��@�J�g��gkwNASh����� OT�"�߁E|N�����mF���}����e�{ũ����8�'&��	]�j1"�M��:bE�;��*߲���r~��m���W[:�^���^P"�K]E�@���L1�v��j��֔��N��,�@o� �?�*��C��O��	��3.����؉��v*���M�z���6N7�.�A�ȫ�O���3$ǽ�BR�ިq�5�+�;���0�ܩ �S(�6w>JC(�7�>�n��W��I�j�/U���	���=�gK���|V�5� \� ���O`�`0�߈ɶ��+`K�+���Z�hcqզva9&	3��Jr-8Iٌ|��o%�K�TIa��/����;��M�
�� �[e��>U�;����2�nU1�H�9����y&;��'�'���c�1��y�w���"�!�.�r�9q���s?�B!�<��M�a�Bx�?��a	;�����O8���h܋� ��sX�R�bط�jx���\�+j'�x�*�Y/��6����S���a1%�~Y�����ϵ�� ��D6�� G���
H�����Ϡ��^�9=��h�G-	�ٙ�V{"�jE���~�̙(�|65N��J:��sUȑ���"1���	���i���0�#Թ�P%����M���I��=�0�ȵ��:.v�!����wfLAxsυ�.��H4�f���aUP��/�(�� ]\�K6_���9~rQ^��u��]-dv�,��%��ret80�7���N-��*W���2llц�=�R�F���ԅB���e�:���@\�7� :$a�78Q'B��\Gp��^w�&���qU2�����Th�	�]�{*V#�Z�C���"�����k.CO��-���T#p{���3�X�	�P).��7�͙��|��:xYܶ���h6b� ��]�Ox��z��Yj3Y���������ce��Xȷ��$�txy���H�"� T�\뜔�H�[$�_�,f���� �3s
�߉�q̼�	�\�b =��UOA*��p h6=�?@ԘH�8<�Ju�Mts�u�'�7{_9i�����d���/סKB� r�����(蚱ެ��LJ���7A᪣[�y�^����2�h�����`G�H����}p��D8"��4�#��I��Ԯ�6� ��_ȵ��d����3o�6��b:y�M��ܦ�8�c|�10�f��ڒ�`:��!?�X|Z&�]Vc����S� 3`��\n<��#&�D��	D��|�\�Lh�Q3éd�����k���SC8,�nJ�V	;���]��>:�a��[msBhBa�L���xp�R	ԃK7T ���x���g~����l޾���pW�!�.x��@���B>kE~w��nˌ�����1-!���J�},8FP��m��%�/U�EJa@m0��!1;>���t�04��f.�\���O�4+�5���A	i��aID���B��p�Ʒ�FT#���\�!`$HT��]�d�k�UE���]e;����ֱyq1���3�/��0��s������~·���g�B�A!�����H�\���F�	��\84�$a��dD�^�������[+6�����1���% �ߚ�!~�!F�ٝUe���S��&npE��4������W�/���$$pi� �韗1�#���~�ݼ®'��h�Y��s �g?�):�Xg��J�b���7 P���d	��0�|�OcI$it��X��\͢;��p��WðN��ν��*��Ѯ���5��)G�f�w��<�f���;�;5,�𱟪�\������N�Q����ZN\긝���wu��]ve�}W��Cן>�U�g��4�����05>C���K���>�7��� ���af߃O���Ü���(�����ڡw{>�{+��9���ݮK9�1y�kg�*k��8h�򐷆�������@qs���t@�&S@6O+j5�\i�l���D]v/���?��c촯��	�c0].��������TN�8 ���e;�IFˏ��qx5~VgL� ��Ռ��?�ھX��[��O��`���Fa�W��0w
9?I�KfSu���}}7�����߇'j�??m@��O�n��ڱ�B�o�/�!6�Џ߭ �� ��#���FU%}�����A�.$U�w�q[�����N�Ɏ�.}4g�e�?�) ?c�g��AQ$4U�d��u��!�`��J_7�����L52�?r���r���?E��6�(�C�
ε��Cw1�%E �@1`�i8
��d5�-�D8����i��>T�}�1D'��衹�ۼ8�3����2�"����r�X<f���	{,3�e���ƣ�҆5.��Eت��?��U]2�]��R���]ޏ��'YI �i8�i�TM�����Nc�^��'��xe�+��x|��<�nj���ܛ[��Zĝ�44ur���Zl�?K�g�z� [�<^Gǃ
@Y��+�T�_�!M��RXg�wP��9|�m��{�5�}�����M�<��"��i�p|箨^��	7 U
B��� ���t���Ȼ�9���UE���:�~x���v̞_�j��vFK�=~g�Tԛ4 3胩FF(��?P0���o�NJ�ގ�Vo��r�'���6_M�e�����'L�h<�ڼj�E(}��vJ��q!��'^���Y��[�D�+�ĸ���l�8ګb���4ں�l�G���x�%Nc)���, ͔�"�u��'��x���tVM�>�q5QD��f:�;��Ȱ5nh}��R���_6[Q���ĻA1��ļ�[�ж�$��;[{�:� � <E�HH�v2t����߻���`� ��ώ�Hf���&+C���~+�co���^���E9D�v���s3�J��R��L�	pηX�)sT��ZO�iY�*�#�O�.+	�]*���>���(6{پ�a����c���`�P� ����ʩ�C,���q]a��6 �w��.���\9��(bK��yq�D�p�,�#e`�4c�R7���Rۍ���n��`A��#o�oj�{	s6�'(��~�T��ʰ�Ӂ��̾��/"a1�&�F��ɼobx���Źa�9GCJbsK�`�����"wT5 ��kul3]na�XW���nP�	�fô/InU���)��r����4��ҧҺ@Ȧ��P�X�
�Q�f�E��6v��[�eF�i�6�e���y��P ���[8�X;��^�Y�<��άz�#}������
9)�f%[_l��rڋ\����8ѓ�=�������T?����S���u�.�.«�d�kR�qg��(����B�e�n'N�nG�h㬮D��ʾNxʤX�]��s��P0��o_,蝹iӇJ�7�����L�j���%��~�E����+�3ϒ�;ֻ�^�����PΞ��_����}��3�x1u� v����:�1��X�%��;�������Mʿ�*g��?�^�(M;KgEz�:_�Jd��� �V�_yy"�ڹ{���R#�E����^�������/�P5z����Đ{�7�]d�֢E��"���8��2����W�N�HA��a��a���#���׋��b�h9�>�D��x�wX��TK�QGf9i�-����-z����ֹ����k.=&�by ���X:�ei���ɹ"�3̓,����ە�Wkz���F�CX\�P��^bllxFi�]�1R:�I�L�۠C�����6 02�5A��]��%���G؎���a��o3���pOǦě�i��4&u��}�Dr.�0,���'2�Е��<�f�4�y�/��E~���8W��Og��£Q�v�
2�F.�&O���7���0��uQ��dƹ���ٚM�|u]�<�c�}A�ut�Qj�޾:��\�j}Æ���<�p{O�"�F�sP�-�k�'�GÛ͙Тd�k���F΅/�����$Vm��
Koe}���p��d��Օ���q��3|�0QA�P2�q�B @县{1ɋ���ߴ�ዦ�ծ�sf����s���䅁��'G9��b�6�H�qg��A��	��7%j�����XaTOY���3E���A��[��v29�Y.���43x[��ͻ���Ї6Y��F��hN1��	'�D�k�G�u���aq����R1�� !�G!�"p!�"1�I�EIw-U�3A�c%F}pk�\�L=�c�0{���ӧbY��ϼ�V���1�����l��ԓ��E�� �|(����կ~�T�O��Pg����a{`��#�g���g���m�k-��ٳ�o��Ux��%1��"��'D�;d퓗T|x�
)~8Y��G�29Q!�TYA����C���}%nJz��Iz���y2�˟K!J�9rH۬�É�0A\& 3F�Ŷ�Y����kR�Za��6f�_G�� ���{�ԋG��]�X���������)t�d=��K��h13*.��q�B�T=�tɊѹ��X��]���H�5���ymY��2�	�a@� ŗ$�U��ئ������zH}=��ٕ�����uAT��?/MH�7��.�^�.��vz_�[h�H�A�"� Rwꙗ;H�(�y�8��s���7Zn��:qPE��v��37�����`���ʷ30�H�8]WP.�n3�5,�ԛR��Eux����i��)� ���Z�)T#�������й\K���om��:8"��:4�c��d8�do_u��ە�]���h��=�������EG�Kr*�c�`��Հzlb�2R���(ҟ���Ds�vɮꧧ/��	����]��-&���׻�tA_���)��G��p��ֱh�-�,��3�O�~[bY�����C_i�d�\����8vG;�c!k���n��a� �0���*v��q�۴���-iB�_3a�]�u|�e~S����2�6Z�ճ��o��6�ρ�-��~��$	L8��5'�!XFwj�p��~4P�g�	ꨮ��`I����$�� �zt��؜A`pD��rNΥ��Z.K�� �0��d��b�^.V�;�"9�ߡCH��A-]S�W�hPa�B���s�= �2=g����m�J��K"�˳��j���_/Nͅ��d�����D
&���TVT��	t���O٫�qA>�}�������2��g(V�8Kŧ>���^s�/1�Ə
���qUC�ui���]��^~��{E���٘U��t,1�����xɈ}B�-���H5��tҹz���*�/ג*k�C�L�f^\�r�Z5����*���ۯ��_������U6�lU��K�b�Kpu"Bf9����'�}�q�=�B��mo1�_�/Z�3W2��鯹���{{+-�6� ]O��GF �3�/����?y�4����(���
,��P�q[��ӌ��k<wh5uf%��u�Vx��D��$M�a-#��"M�d��H^e���0�v-9L���]���t�w}���p}�F�y�ܺ���:�àd�*��۳��;�b�t�Mɥ�B��2mȅ��g�4??��#R���5��1P]��A��/��-��(Y�]����54����=g=0��	�7��z��לՄ�MJcd����Qk�n�+�}7H�u�|̆Y�rm�z�'���^M��^k��W�{�1y\{c���m���)ݻ�t����E
��˲�m޷�4��T)T�[�� ��
���/8��2�_З_�%Z�?���^��=�������w���Z������lD��"��s�Sf�W��ָ+��S'y��&�S���*�#�#R�j}d���O�S�O#)nw���E �-��:YG����~�+6�����)׏e*�TjB�G�� ��8b�[��3�T{߼��cvu��6c �p�4D��.^�7kG�;�sr!�����#��yH(�{�! @P��h�T;��ڍ��j�-H�8���������쨒�+~�.k}͞Ogr^?�5��a��:�חw�:H?�,&	=Ml��z�F��O5|�ͤ�.U�q3ж�zM��T�gO�I�;6�-�-t��\e�>��5&1��ת��]@_�1���,!9�2�@)���γ��]��C�>ՄOƇr���mxb�}���Am1���޹��U�۔!/c=�%��� ��V��!���di�eY3����[=��b���J�z�܂_!�����¤�5�MĞ ) i${u�n~Է���� ��ɾT�5Xj,�~�S��y�*PM����;�ؾ\,���_�T���#�P�Eү�p2�s~�?;2�K�y��	3[���k
�_��ܤov���L�=VHP~�0�=F��4�w�W�dв%8=VG�[�>e=Ϭm�Y��=���=m�����|���p��<:�<:�引����m���ͅ��zh��T1��>�gX��9 � ���жi*&���p�Q(�e�w�B��>�#�$��
U��1#��ĉ�Q ���'����:�}�~�d �V�~F�}INU�mV�ߴ=)���Q`��B%q�6Μި��Â8�h���ς'�g+QKE9�8HR# E
A��-Ij�L!25.Z�ղc�c)��-�Z�'��z��D��&�g�Z�jו���Kj�խ���)����)��w�