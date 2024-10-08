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
BZh91AY&SY-� �������������������������������������|�}��I��ֽ�^V����珬5�Ͻ7=$s�{s^�o}�z���s�V���Οs���hBS��&��Ѧ��Oi�&)�0�jf���1M�x�4�i���MG�3)���$�hɦ������&�4щ��'�O)�Cڧ�'���bd'���I��������O$�cMOI?DƓ)��)��&��0F����M�OQ��Ɖ�4�����(�I��m4�a0�i�F�H�=B&�)��&LК4���OQ�e<S�ɓJg�a'��<��lI�O(��"��)��P�@z�S���<����i�4d�H=M=OSO�M4z���z�Pz�='��2h4  &�L&�CjS�)��M�65G�)��j<S�ORy6T��4�4��P�Cj�D������@�z�z��z����hoS@@��"@�4S�Sf��e2z5�SCF��z��(h�ڀ@�FM�P �  @   4 �M ��$Q	�F��'������4M=S�x#ji�z�&��F�3I�I��j~�=F�=4�7�z����G��G�6����������yM�=���􌆆CM6�M�5Y7N��?o��zv�w��m�i�"��f�qTV�`�U�.]U�Py,.c&�v���@���_�39������CyB�ʒg�&/R�"H̀�<��P*�lb���(�@�b����Z��3�ɦ�Qtb���:�{ia74Xf��;�v�	�q�0a�}�FĆj�hrt�q�e�U�
*�!@�Q�r[5X��g�6}B\D����T�1^��zz�}b���B��4j��2�]&Ckkz�I���kG��sZi\�b倰A8����K���D#�ka�0(�N	�R��Y )6�u����>�%](�U�G)�D������_�����pw�rΠ�����[ ���!-�\�Y��Z�DDD��s$O��#Ȝ���J�ay�m��3;s$�`>�	%W7�B>d�F��rb�`�n�O$��F5�Js/����5���J�X]i9�Q��6R0� �����[hN������{��>�m	�B��V�dۖ]�FB�c��#"<�o��6��;I�Ld��(<g�Z�s�Ø֡
F "Q���Ү�_&ƦAR����J$+UDcz�� ^���HH´
�"J�%�<vY3:`��F����P(���0`��f�*گCS�#����f�5M%��M�I��	I��dԐ%`2���;H��me�'bT�� @آc�&���^#iLJӌ�ӁfI"(+W|��a��:Zb��#Kp���*.��cMfQ��,IZ�<I0�JH���l��:Er��u4A|-��d�!aQ��@���A���0Ln�A�#dđ��M�� )0�5۰�WE�+{ر*^��f�c�p��.���n��_A�+��waBS R0Y���^�\�\!��!��]�R�0i�$�H�]�������BI�]	7�.ɷ���v\�~���������`L f��H��ݲ�%��)��M &`)�P�+^]���[��I��Nl�
������L*4[��TI�Ε�� Q��[�u���q������8Ma�;�e��q�C&�T��h�Q��dҶ��]Y��T�����P�U�,�ѷ����Lp��jN����nj���ӫ�B_e��g��v���ٱ�ig�Lf -��0[vPJ��_��dQrx�)B�F3�w-J��>�s��:f#���$Q{�����������^C;�v�'�iT1jZ>�9M"�(���6x�qH3�8b9$U~Cȉ��~��Xo0�x��X˔��6S��1�В��}�а�����T��q�^�$l]�T�4��������#�ع�D�уv���f�lD�X�B�������S������Q�(�����C��Q�@"��&u��<Zw�泴h�b1�i���%DRŲRB �KC��]���y��z��\=�W�q�ʉ[�]g9NR �I���f�AUr����e�~G�n=�Y=��8F�1�����S;��xŉ���-ˉ��O������B<a�kdI���.1R#�s�J����J�S��Tl�� ��w��'��F
gWB~@V��J}a���+-�sF4�������Q�ߙK�;�j<~���4%��k���%Y�����$�x�I���j�r�LŞa�y��C�1�,��3�.a$�i��
cx8� q~h!���a�6i��<��%l�O�~�^; ������ �So��οs#�s����������n�$����&���l��ξ<�L�2d��!L�@p�m�Tʬi�\\� �zE2�81$n~,�'����uv�5����V�4GD���t��a����%@\��̱3Kc[�T�)�⨐�<��ث�kS�Sg�l�q{���j�R�T؉TG]$CzE�"��Y�[�mu=�RĨ��H�(��e�2��8�,�XC�]�	��y�X�@�w1���{50޴&�㒉g������Q3��:�$�E<��(U��[��KØ����<~���PA�]����~cQ�sG��݆3j�(y�OG;j��u�9)������F甉?�O-�bי.t����梋5=�����l{�If�r��ŜE��y[ؔ{��$�!t� ���J�q�fj��j�,j���/R�F�m��(�m�(d;>HL3k��L>�u_�I+����۔�s�T�(����Nlw��Iv�=��e��Ȋ�{e�W���]���Gvf�:絬���ƃ;��ϱr�8c�Q���U�jN�p���ܡ��is�*�_3����Q�=%�vs��	�C��e�%7�.g#�z��P �_�@�: V�6�h�3�EX �!s.�@w��/V�u;�do��{Vu`�K��/cszQNlQ��+��Ɓ�s۟�����aIy�VJî�u[o����]9��+D@���"�����j�O����$��a�/��`����1�zDy��'!�N�)"��ؗ��>	޵���6���蒥�����+�s�M�kw��o���N�H�� Q�8��\�%]�ޙ�|lj.���yB`v�~��I�� A�$7��ym�y���Y��ck���w�[�E,;�ƪ��	趹4��0{��\���s���M�9��2����W%�\6L��[��ހI��X�M;-T��G x6%I�� �;@�m�H�u��B�����t����n_���m��5�űxW���� ��#��8�i��$�'�~ϙ�$�*GB
�MT&i�V��}}rj*��9*�6��{�����X�1ǘ����<,��0�t��T�4 I��Xt�9�A�r� �����Su�2��� �牝����vkW�$��%1��dű�*!�ש�&wY��=�K��Ѷ�zz@fwn��m;���3��nn��\���)~��F�ּ��9�#0ȋj����de��E�,5a��T�A�RO����H5c*iĸ��x� �=B�m��n)}js�+C��庯{�.
���z�e�t������ؖ��Lñt�l�
 �8�[+��
F	�'��L�煬�>�'�ݝdYS��֐�����K&]�:�9�6x����a�	�_�5��R=V�'�w4������R�`=��i�����6�|GS�H�<��((�/����^�R�[I�8���3KK��.�
m�Iӑ��ט�C/a5��@�\0�f���E�.�.���+_/F���]d(J������_��h���-Č�[�����Pe
3P�����s��2��-"�v��#�gW�l;�iٿ��-�U3�`e`�F�f�sx ��}f�v�k��_��Ԙ�9��&��)
s��2�t�����w,�l�ġFP)}?A�r�{tc�D���]���%>�żh�J�ّb���G����ڀF���  !H�a�d�	�1,Â\�A=�'n�W�&՜��Z8Z�Qj�ͧr%[��'"�1Z�>~.�v�H@�A �@�a`�Q�O�{�⿞�B믰w;gޢ �
��������R�Ijn�L�]� rSQ��X���F4��~g0�86ln�KTϫ�=������_N'@�-�Zj�������d�����_�;��}�]{G�h&(Yմ�ɛ_�ֺ�F$@�?��q�#-؉	. Beī�v��E<��I�Fm<Mzu�ַ��e>������I�t��%�hT�M-��Ӓ�}����qm$S��/PĥE�c��dP4h�0��H�E5�!��r k@2�А����q�]���E�p��i�'�`;]���JMBa[ c��SҫS
������vt�g��\8aU:js�g�(�!ު)<�hm���}e��TV�]�]/5�b��-S����T'z�^z�j5��MS���a�S���&:�2;�R bJ���k���Bզۢ����n���;�,O����ÿ��Y����QN_�u��|�7�c�uC�ҵ�-b��X��1�<a� Ѹ�E�����\^(f� �n��}�����[A�����"H@�B:PU���@�J��'b�R�ݦ��Q�m���TH���oT�	��Ρr�%K�V;y*u��Ьw����<�+�.Ŀ�������;�Ka�c���`F0���`Hd�ﻺ_)6a*U����Ƨ��� ����1��GL��;m>Չc�L>�_�HV肁sZ�s��M�t����]�Hu[�%e���@$�a��2�]��!{[;E¸��}۪�<|��̻���3��4�H�$_$%�J5L !�i <*�	�a4��31������j��)Z�0�/	R1�fO�xZ����fi���kp�a٘8���	2�aPԉ���*�+�30���Q�� ��	�[,�!Ŏ�γ�b|̯qT�=�zz�����Ϡ����ǌ��A�0<ִ�a�S�p[}jn��S�^tUF���5c>e��<�ΣCTf�ം��`�	q���h�u?����w�������{C�e�=�QB׈����������*N#BH0&��ˇ}����cQ8�<xd��w�D��hj��<�S��Dc�8K!�U 审���ytI*�4�,!�'a ������uf��Hn�>:�?�˫Ym�� >^gUi�_�a��GѳR������+�-t�-}��^h�����OKkR��<�����n��ձ/�]U|��5���&�W"AQ�w��dZ�}�������fC�Ǫu�CP@J��=�鶷��ݨ����"�~�}Wq�?�"�uS�K�6S�Ej���,�ճ�9V#��=?���13Z��}���=�~�.z6�Є����%�C_���t>�c�)��!8�˻o��~��b)��H;����l�ruf;Ц���]����e����b��� }0��#��[��:�'��[���F����n���vz�N�y�� �S���W��`P��Y��͐���:��$F��������z*C[ꔄ|���;�Vy��I� A��j�}C���+��榀^�+&싇D��l��^�K��c�0�1��x�l���OIc�����|X�5������K���/��YN!�TJ�n�A)k�T�倁�!�e�]�z���z�XZ
�P��!�D:[�wKX����� :�K�� 6v���&�K;K��^��3��-�mr$���Y�7l[�0 ��y��꽎�P	摾m�����z"�-�磧�(e����U���
K��u�f#��V��P�gS�ܳ6���PWƳ�m��֯r9��»�H�M�L�&���>9�HO�VCx!l��8A�<]�׷�]�-2?3����dh���ߦox���ټ���ml�$��d�������Nn��w_��	M!28�;�%?��,���"��so�0 J4CH9F鯭�`̡���oW
��G1q�n��[�b�
��5y�ۥc���N��y~����y8�u}�TF��b�v|+|��A���  L@ͳچ��]�mBP��WTi��^w}q��u�a{z}�K�����)ϳls	�H�k��m� ��qsP���"��=�K��d�n)M���V��H�b�Ғ{8��Z��)��}�=OC�L�[j�<����:0��$�&��A[�z�]���ՠ��Aʢ�IuG��2�H�X�vp�jJ@B���:P��H+�%��kj��ʥ\�m'�w;7y7�rx��>5Jb^͔Z9�@�N�7��Da�R>AG�v/�D�X�`��n���˧!|�V$�G���� �`��H�SQis�f��f�,�����#{���]����9#�퐈3�Wj����V_o��2�r�8�`l�$_ʶ�m����M3k�j6L~��m�����!uH�兣^7Q�-�Q94�|��*ő�P�ϵ�^z�]������_��b7�:	C�H!-���1DuK
�~��#Z��R	���n~S��]���������� ���b�N͒�  �\�m;k�MC�oQ�0�-TD[h�2���4��3X:8�����)ߣϣ��e�~E���E������o�8���#�xIv�"�b�S��R���ZX�������ׯoG����YB�2m{���;���j��0��%QꀙӼ� 3�Au����봌�H2�,up�i �r�<���<~M����y�U(̃� '�(_��[�(�Z��=AKz��D�,���I"��(a� �G�ǽiRE�T&�a�*�[�����Ji#��cs��}��qyu�4hѥ��/���CC�� ?�w$S�	��H�