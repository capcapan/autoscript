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
BZh91AY&SY� �� �������������������������������������|�[�h)�`݋�s��v�����wڝ��u�;B�Y>���n���y��"	���4d~���'�F�=0�=Sh�S�)������Ѣ~�oRf���i�����CL�3A����54z�	����454ڍ<S&�jh5OQ��j��I�2cSh� !�i��4�1��<I�mS4i��O��MF��SM��2i�jz&�6��==I�x$=A�mG�4�Q�4�OSL�D���Bh#ѩ�&C#M&&S222h�L�&�G�M4тi�LM4z��jFM���L�j2�M��������M6�CF�L"h&I���ja2ji����hڏD1� �C@4����#C@ h dA��44�� ���~��T4��I�P �i�� @��F� �C@h ����  4��@    	@��i0�53F�&���S'��#&�f�OI�
h�������𧩌��C�4�&G�ɵ2i���F�4ڙ��5 hmA�4i�%Dp�"-�KK����\�f [`j"�I� 2ˊ� �Ee�;�zwĭf$�w�d�4�%������ŻDT'Ct�m����$�>0�`��d��
@K�@�D/UkU\�l��R�`��F�7��U<O'�Ng�R�A}��B"��+��&`d|�3{ᄛ]����NK��LXF�S�Q��`�[�	[qP��!~'�P�=�j�A2�6��DV�í����c��{�:��=	/1jF�H"�)
�S����&��d�ҫ5n�,3��zWo�Z���q8�~��9�8�6�J��Vf��G":�K*G�iiY��r�9u��c�ݡ�0�L�]�!#��_k�����i���F��[�������ÛO�R!�+O!}��:9Z�  FY�ѿ�9����\m%i�p��1�ڤ?*�p�J0���qh4��$����5�)W���Ib�~3��mml���9R[_N1��H�%PNC��8H=>�6d����e�������G*�*2+���c�9���A�Ϊ���Ϋ�B��ޯ�� �_z�h�b�-!�_깭����5�6
� ��S]_2�jJ�%��e���	{��0�ԇ0yI& �Ą��!v�C@)�B[���IJt+c�ڲh�p9��M)6�s��imc�$�%5!��� �$sU���q9N� ��,��N�j�X�F�6Gs2�������L�n�n{K/pn�7T�2��+W�4�"f22oaL-��X�u'0D�f�����=�֣T���U4H��V��E��H�4�׍h1������/8�����v�I��h�]�I4��؄-"��I"v��p�H���
Ӊ�F��ݎ�d�ш��?�y�����ˤ���O�f�M������������+���&���d�#��E���.fG�ca e���0P���k\����ʱx�~�����5N�9gc1��?�Kv]L�h@����3@�@I����ƻ�uֲ4Y�$��{X����}i0��$�Q*��ш�(9'f-P3=�����;�'�����? �1/0�|��5�m�̌�&��6��T����n�CmLd���1��.l���٘�������v���ε7��p���t��f�w�+�.٠K�bEv���|�z�=�����aQ��U>_W:kH�o����FB�!�Fh�^z�D�AU/4�f�me�`��ƭ���	vl3]KF{ ��X�5��GO����G�b/�)�Ȫ�])�g�q_�Z�d�z "�pI|���a%��D�L��2��l�J>"�23�W$g�My;�7^ɟd`�)��._�'m�Ǻ����!�5�p��f/���B���
Q2�罦�������;(�&"��!�XW��@�Kd̃KQ�8�����DP� m�����՘X�R8�:��gw���G��8/�z;�m����ӥ���1��-0��v��Ub�F �5Ml}�k^����!l�( +�@�� ���g{��e;���)��,��:ct�����0g�\��Q@�B ���~V���VSoH�4x6ϸ��5=o��v�R�����<�$�p|��#m���s��,��5����c4���M��D���V^�����~Q8���W@};�m���1����;:L�fĸ ��wD�L-z�m����y�u:X��1�::��z'AP� �����d�Ń--)--,�2�N3��n�a#��YY�GVY{���ʹ��,��0.�G��;k�=f!�&mr�X-C�
1��cֿh��u$0�H�]W׳���w�Vf�6�zlN�.h��א1V5ep�ZmՃ��n�/F羔DYA��c��G=��D)�����g֚�M���ᓽx�{0��咟�?BZ�s)آȀ�!o^���)0
٣(֪�(�\�W���Z2χMy�9y����n�ݕ��#���z��t��԰��o�W�:Y�ň�?���_Ww�w����/cX�%�[�VΫ�qTW'̓�� �$ 9��EK��%*��b�� z�����eWe\�	ٺ9�V�R�S��>Uw?����G�ǦVL�#s�G�����c�����ʝ0;ezs��]�ۦ8n�sMF�Y�>��uo2�����ۤ�4�S�����v�(Ciď�����痺��،2�١S�޻`fqZ�d��)�!������B��^�M���B9Ρ��)�|����ɌR"�!��LB��5��8�<��%�ke���ə��ɼ��cu�ź��m<]��>���Gcpc���5#�W<b�j����������ڷ��n:��OW�4_&��@��F���SK�}��AX!�ɗ�0'A���,� �6O�,Tt�D2l���b��� �$W5akk����2�!P�|��FQ�,Ds)�ެ�=]p�+����]nI�}.B�z.R+\�ɫ�����J�&�d�)�� ImHJ��(Ӥ>�U�#}�Ӂ!!V{ۜ���Í��Ң��>�����2�Fo�������Ys�����e��C&��FQ:夜��������r���<<bG���ؾ�U��&n���q+��9������{�4��~>���K{�� B̿���.�=MH-sz�Y���k��`�<�%cM4���U݊���*�&��B�$���ET�ʣn���r2����aAԜ���P���8�p��S�!���6x�\�'�*��x�2m2�}��ݪm�Y�r-$����!�uM�B����pB;�fy8Gݤ3PG%���+�<
y~��箬Ye=A��.I��چ_sZw6+�m� ]1���`tXT�֑S�1,��0�?�0X�ǰ��˪���v!�J
�c~) >��/�؁���k�sc?�ա��ֿ��YI��� q�}كu���["X��]��v7Q���m��|������	�z��,r4��D�������S��}��)s#]~d���'@��L*���ڮF��0\e����gM��𢵃���&�;���O���]��ɐpSL���Ac�[d��E� zӭ�4�orB�}d.#�*0���y�����El�f�sLYz�����Q�ɕ4G覒LJ�  0�0޺ДR8uOXo��m�<��`��s����G�HGtn�� ����<��zll�A����3 .E]k��
��,�����vȺ������]T,H^�˨�QM�c�o��w�B���k���b-S,T���34��Ш��0
�q��1��3���/̚�H)mg�㞅���fpZh��V�r� 1dc;�-���	��1dΕ�B�\[ݖ&���y��F�C�2�z3\S.&\/Y�����2������bc�ga5�5Pv�hb}C�/��2	W�SR���6���[��䁦N��|.��
��C���$�A���f�i��GI)����Ś�!�gq���t� �)���Ԥօ��B����nyUt�<\�&c?�<{)_�&E'	�q^%��R=�B_pB�"�׷#�� Aǋ���[��Q��|�:jCj|r��D��:�&�"l��}�bI9��-!f� 3�`c8�0D*R��A2@	���2��D3PK �p�LF�\cXH��eD�"#..=}�&*g���Z jⷉ�W�k��'�T�+� ���b4C&�����
�$�����4�	#\p�r[�<�~L<�8?|��f��zm�����P�V;b	�P0�i

�6�7���7�m�K��U�E���N`�ƍ��{��k�1u����%�HZ�N�t��+�n��*v]�Q�V�p�sT�mr��V)�6��2�4��0Lxӹ��2���l�� ��AqםKX�!N�S9?l��H��Tj�u�
�F����Ω�qA 톇[ü�(�e-4���e	��^��&gù��%V	����"8~'}_�yɅl���]��v}DM�ڬ�B#�Y�zAm� [�C�����5�w[�-է-����-$��!�%�ʊSB�yn��鶴09��L�VU�A>}7<ݛra+)��^�1tY��ɘ@���k{�H4l���O�϶kÑ��u���Ξȗ��봿�P�y(
��p����Ku��2��L`7Z�-��v���H��;��;Ǜ~�u���#�uV�;/4�OQ2��=�:�@��0�R�M��M�CHY��f�V��CJ�2�+�҈0�?���Ym���!ϰ�׶r9�A}�B��GJ�:�'���s��"�k��1J�;>5�|�k܄��*�X�Q�\T����V+y��
�a�����Iޘ^PƘ��me�ܴ  �<����5��\��d��	!C�A���"�f���U^��$7x���/��8�˚vt�P?�h��q����?��=���q<l�IWI@m�1�ϊ�֒�Xnw��7w�z{�oM�n$���BL���y��\:t�ο�06v��\% nά �rOUq�6U�U��j�bH�x���ꙩ� I�\-�n���_����-��`>v����.��J�tt����VRsJ�M����Մ�O	�3�>�/�v}ǀ���5�s�mEJ�}�iz�is����Oa�D��L�G�G#:-���o��/.o�/ۊ>$�������b��E�Ykz���H��Yתȭ��`�IN(����8�J�B���z+�&�둄��1��@4._��HYadiª>�mg�{�#V��'�+tP|�Kz0�؇���M#�E�U���7�!V�V-&���y#wR�|��T�Ջv����nM����S�8x�`�vo��Ԣ�hw�I`~af��n���B��R	.��+�ڇ	=νH��6��'�� ��&��3�Lx�!���&��#L9�U�C��jW�>�Rb#F��\�&US<�Xqr�s������ntԐ��<K���FL�����rK�+�s�����{2爄��3�w>���s���5K�H,b1�9���hp�S��W�v ��"�����\�|-Bݓg���)�V' �  )E�mW�r�?P 4�H
qHaAܖ���⼌��s/p$둾��>^_#O�l�;��p{�b�P�*�������f�iw>� ��8�DQ�.����p�x�6�:���c6�7%'�Q��_:�@�s�]6z�ƀ�/�.���y ��.���٘����-4`!y��[�1�4UD;�9��E��'E����Bϡ�56�kT���Ğg '�T�,��aޙř�4[���1��{������5�o!�.<��ƶ��p��䌝�`	��@�$��!z��Y�{�Kb�Fi��$e�~u}��M�Pu		]����d�4�@2���=!#'N2`)MM�Zp>����RG8�P���H c"8ekާ���D�Ȉ�*�H����Y>rNl
�5���uY;���l�H�"D������oy��9��޳����)����