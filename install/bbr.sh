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
BZh91AY&SY!i�� ��������������������������������������}0�h�����n��}�}���n�w��ϯl&}�Ν>���g{����{�=5�i뽽�|�Z�۹���LI��M�3SO@�	��#4� 	��2jxh'�)�z�T��a�H�4�y6�<�f�����O"h�d`M	2��hjL�6��L&�Sɂ4d2G��6��di�&�� ���ɚ�d�Sj���0����LF �3 �zhFɦMP���e<��3��S�'�7����=
����L�=4�f���SOLE=6�x�4���"=�M�)��OQ�2L��i���z�oRl5&�41���&�j"hS�)�i�&LS�S�)��Q�OSѩ�4��)�<����M��SOFLSjdy'�0&��~����y���f�S�L�������CG�z����=M�zM�O(�4���
0�*~Є��jP�M�O�==(��4�OI�m���4�z� ~�$i�4z��#@ڀh =@4 <���@�� �ɣ��6�D&@F�=0�i�L�S5OS��2y2�a����)���#ɤ��jz�F��6 ����4h=$�zM���L��M�f�(z���a���SM �Q��C������^��p Cv(_���\�6^e�_�h�[ԧ]��SH�����r;���@�s1�	6�((�#F�N�-ER�T �E��\f�.�C�%Brs��:B�Ƶ
�<I�V9[S� ���l�-�U*�\�mܹd��5�ʨ�v��.���r4l���׭�X���"�6&��Oi9lZ�� �]�`�9���ōr���]���9v;l\)W5ז�)�w�P獳�Nc�u���J��i�����Z8��1b��h�*u%�����Z�^�<Q�����L�S<�%d�)&�P�t)�Np�Q�Awt�"'NĀ�4ȉ�����z�7>ou������9 �pJbJU���^�AA�����s(t�  �w�ٗR��$ei�#qU�����<�DG�P��A��TDE�a��ݬ ����B����]��3k�o���/쩥��:�S�iQ��thČ��,!���� �B33:��?��~&�U! T����*��6�в�hOoc�r좱B�GW�z��B�:����1�(��<�0{��/��L��v��Y���҂Z,��a������C��`Lj��1 B@ꐝ@�*� �Q���%I%�C8�5#U"I�̃9���9"��<A�� $H�Fh��d9��$�Dg%Ђ�|�C��t��ubn	��e (:�l�X�D��H�);�� �%'[�����q�ƙ�E �*��yk`���܉FU閫���[�{0y2oCt�Ơ���q��)IФ� �֠�AC�c�P}G���'��^# X�t����n9�Q$Hd�"I�	�G%G�H3�`@���U�����-;tH���Q��d7z������ov���>C�B= .�hѱT�\�b�}�4�5-��`ě�z()�@�e����Í�&"N:e��mB�Eα���K�0wOC�e8&�Zk�y��@��$ 1	�drޔ��(���I�[԰"�X� �¡$�� *��!�rm]U~*o�к��1� �F$��`�l�DW�����ioߏ�{����+~�煞���0ԫ�.n��eŮy5��P�i�f�c�����K�яq��X3��[F��QZ�P����b��0��	}{}�@���3:Vz ޠ���"�V�m���u��1&��D""8�� ��"q8��P���{�����B<X8�/��(�=��"R�����EX�,D!�s�PUZ VC�;#{�h���"$�6��+�bY��Y;�<��!��7���T"%�آ2��[�1�4h4 �HB���:��!�cx�|��,��y�I�8��?���8hX��`��EU�E%�[$�7f��xU^U��#�P��9�Y�����Oa�͂�<��g{�����&`y����C˽��3�DF�� �Bz��q����~f�6���[�w<kZ��I�/0�Pf,Agx����p�R�џ׷����!B�4�T�z=��AC�(`�0"�ŚH0	$�d�6-�mL��!O�"�QE����9a{&2���_Z��e�d�}�Jg�l��!EG9�PN|=D��7��9��\s՚�bU+.\1���[�Z�o��w�E�R�U��M� ! �U/��W���s����m9v�z٬
�]�n�d�/�s���h�z|'���6V�X@�:��s��=�X�{�*B���� ���@s�ܺ*�Om���Dp�]��:p'��1� �5�Z@��$����m�U�x~jߵ����x�{� I?�Ä�!�:�����c�Yt:Z�EN�
�Dl*>�h��syh{�v�A��&�f�P���A�*T������s Z/�g�J�����H^'>V^�S[ޫs^�옰�/����w2�G�����i�>���u�		G.v!jv��+���b�r	5�AdG8���~�����F��+hIF�#���/6=ޜ�>�'ˈ�Y�����h'�� <ˉ�)�Ȓ�	42W���7�[rLTE���l��Y��.�H/:������-DC;7,�c.�����/3��FMQY� �S�(�:���*p��Д(osd�!c��^>��EG�6�GB�A��e	�܅�rx>���%J��N�>�+�����I}|,i��@�YVH��w
�!僬���F�T&�[n���,w��s�ﮚ�1/M6�R�O������&� ��ȉKD����Q��&fy=��� �'�9я��d�c�&��R+��dh��Uq�S�.��"�B$Nn������i9|ބ�?i@0:�S�f/s����H���␿��VИ {=g����nw��ޟ
��whS�j�z�Rdt�����C���RZ�Y�!ۤ,�U|�[��	�E��6v�;�}�a1�����ȯ�W�����`����4s����?k{!�<�	~�W�����x��\`�Wf|���t:>G�����i��և��Y1Ռ����-jʡ��uUy�<���N�ǟ��j�U�dK�� ��ֺqԥ�Ԓ)O�w������KeEE8�_}�����Ԋ9F��hw��@���9QI�#�GMu�mR�����\17�{���Z��7��	�h��6И����󽗥r���D�^����p������M[wV����R��(��!��R
�bKB�h��|r ;m�k�<ޫ��[�f�e�곴ǝ����$������j�3��݆����Ç|��_�@��� ��:E�7R��Wg���H�l�� ur�$3�m�'��w;�3n�u��q�*�lx��W-������Q���N�]M֕J^�"SaoJ��c���ݫ����]~[�m��FP�3}Bl���6�e�Ɔ�7#���$�p�@�W__����ke�ݛ�CMS����g��줁�`��RK;��_v����QG�O�O~�x�
0sbz�E���9e�y��ӆZH�B{��i�
��s�g���i�[�(Sq=��{<JGL�2���ݩ�5�xH3*SW`*���L�ѿ}W�wF�s�ųݷ��W߆��:����A��$'D�
���w�������N�`8����D=X��9b���C�*��eȫS��Y(���,֮P�R�՞��������^qr���P��L&���ǟ3�p	,�d��)���J`��~w�C��z�w�[��E�"�%�B}7\8����C{��dO����F�.�Gӡ}��?m���sW"��=Ar�P:�ZX��j�j>kF`�8�;��}�E���.�$W�@��sJ�����ސ��5 G��[7	!z�j��OM��2*�D�2���IU�<��]�!7U��yI��ܭ�c��	�d��=���7۷���v�4�Y�$e��vwր<�~v��t3��$Q�W� ڳ�UCT�5�t��ѝ�c�䭕.~x �n����@�5���4g=-��40i���8�?���5�緎�y]9���k��_x.Cm~|��AP̓�]������ 0�0!�32^
�f�m��[�3������ �����;��*Ѷ��%��/u��7р!`�*n�"#��eʜ	���#QA0�0��N$���K��h6�xpJ�!BR��w���La�ۄc���RA\74e��.C�w��J�؈��nh`qe��Hλ��n�ȟdjs�c����ΰ0����:���(9�vwd���UDB$D�v�$��ɷ1��3�}f%Y�� ̧b.�̡3��}I�m�~U�_�>7)���
�V�P8��Ϡ�6��������#�`�V8�#�)�fS�w�o����l�R��y�4<�1;z�����Ҁ42c���z��GgKC2���0r�ƌrgƆ/w:�����=\�eeZ��l�v@���Ǝ}����QR�U;�j,Xdd�;���:B;�a��]�6X�H1\dY��Rf/��w�{�_�O��<����*�ս˦LL��D���|� ap���?�w�xɤ��=i]%F�BW�ͣ,]�'�-7��[֛[Q���8p+��a�Z����-��0��$'|S/�!�,|,�rio�g�dψY���Y�wZ�E ��7&)���+�n|qLS�{1=`���N'dH� ��VRʖ��v�,:9�%宊N��Zm�b��AN#��$����v�;+^xd	(}��F˦<��*Ǜ���sɊ�h�g�ş^��'d�R�"����. ����J���<T����t���ȴ��CY���g�6��_�v��x�&�Er$�:�q���c ��2[�����	���%��̘�\�����E��n�6)��=:������K#����f;U�Ұ�k A��� 0"5��(Bj�
��p��f��<���~��>�Y|�b ��޴�[��_����n�<&�2���/n~�&�4YD�}�$��$�����' �����?'
I��r	0lI��R��,��Pz��y�:��׹����!+��<�&�e�Ƙ΅�#,$�
�&EC1Xc�t��c�����������J��u!>;*("���N�KC��V�7>WH�����ؠnQ �Y��yI���{�>�a	��ό <�Y���`��3�V��~]��t��Z�!:ã���(�^r8Q�h�������b�`9�04��xT"���q�y?�|=�'7�b���1]D#��ׁ0�c6�ߥ�#K�i��
X�����rqW�%P&��������xb{'3��u�_Q�ׁ8�:dk�җ)��P�
Tt��h��.��tC>Z����&罒��
ơ�q�?���!���L��ah`�'�@�#�珹��<OW�=�\���7�`hk�;TD�@���LXX8|�^��>Bm�5��멐�V٪,�������h�0'2;�n�
Y��o8��������"�)��P�#Y���gr�Zxl3ś.���4r�|��Ŧ&A{,�?��r|���I%)�p���� ����`\�$8����a8�EpI�y��7�mw�� vj�n�M��f��5��z�M`��2��^|R��#�����pVre�����ٝ!ݾ�) t������l�D��6	B�+�.��i�"�4���@�������0J|�����#)ך�"������'�i�#�S����/6YݺؙԊ��|Ò#G��>�E�-�|5 4��	��Z'�N�+t�f�v� ]@R�qh��t�/������J�n�418��S�<pְ�;��:��M��G��u=�G�k_L��@�@���Tbc9z!�̘�����~����H���R����p��@:��]�|����S��*�O�I���~ʓ����/�40=�C� �$B�t�1�-.1#�"�j�,���}�}��Rb�x�}�*e���cƁ�}�*������+&����2VC��ѝ���d��p�����wλ�������P��b�:[�)�r�Wg��p���G��Yu���P�����;�CÉ/g9D�zX-��B�Y��GHfa3B���!h�$c;®���n9Z�k�m�ԟ����4k�P�UkxG[���y&H1�B_���R��i���`TiX5;)w�����k"��&�둔_v��B���Րx�����!y@|ݧ٬z;P�k8����k��m��-/ͮ��hu��e
 z^�~X�[��れ�>ۑ�g�yf� \ ̏����s�G�0<6���x-|���݄��E��h�gx�bwY����!��,/ع�2� %����'ڰ��ň�f��~�M�����𫑊C�D�݁��az��-�wRTDIҗ��P�`�jH�?12����G�\^f=rȿ��#�(M��) �yB�d��F�X x؇!�_��ǣ  �9�͟�M�͡�%��a�*�q�Y����j�������K�q4k�9c�D�@e����'���֡S��V��c|A�GKUI�ȍ�`�I9N�;;ͅš�y����t���+<d�R��N����s��c�_@�����"qњ�i}v�+�ܕ�-�j�vZ�D��?uҧ��'.TWV����5�M��oE��F.d��sܥ%E��m�\,�>�w���W�KL��k�1�Q�%��`���xY�)[����S�BF�|p���|�r��Z��V��iA�q	�����Td�%.���d,��8�܇�,^��ó�rk��ު���� �/>saSo�>� �6����U�!���N]gB��Iٸ�b��K��R��1��Gx�i�#��6�Pj�n"sE6�B���Q��a�����NÕ)�Vx�c.��%���MK��4�wD��'f�xB9�ߧ�Ia/���kۿ�~ �:�n���&��O{9w���\񵈥�=�+d�޶b�}�D��-�1��%jl�����f8�b�M�b�P��F<���q��z�(2�����V`f��uNc�WS°ݿ��:��W�_I�|��QD��k��PF�;4Q�z��Uu�5"�!�p� ¶x������ub~��FdR��E�?����6�*A��N��V�\�6�+�g���'����G����?SP���ל�� �� �rބ��@8���}Y��ia�^�Ot꫱���m�y�.�r�իe&"�î5q"ه�SG�����#Fs��.ìϓk�A��C�aԖ�B�&g+��b�\d�Cv^�,x�����gv
���f����Z�gG������u����ͫ�[2>���'��yR_�,�I-���{J�[��ǯ���o~����L9E�̐?#S߶o�;���AG!�F�?����dO�8�g�Ʀ ?wW��W��5��^F����U ��0���#p����1�@ZzI|F�π�-b�.�k}/�� ��#y���E�v|��_��^	��s=������I3d�#~McƱ��j	�
�po��E��Ѹ��k�[��s����@ /9k�ӳ�Qw\
�q:*hRo��p;(��ho��Y"�К�sO��ô�d���6$  CAGtt�����f�58���L�J����嶶9��K�=���3�D�
�[�gK`Gx%��l�����������.j<��(Fq�i`I������m�w����}㌼3y���	���1�_�n$��}����.r��X����� �r���W��CZ���O�~�^
Љ׽�NK.���3�d���rP\�0���k����Қ�����Uo�k$	o�;f`G��J� �=p��[�:vǶ�4sb���a���i��P��~�����e��B6�J�$����6֦gL}��������H�\����I�W�Q���~�~��pv�!4K�s�)$�<��{1mi����� Z+jJ����\i��;~V?����(�7I�r0�-5k�^ Mݣ��;sIo�t��")�n�.	��6L)-��Si���燨KjW�W��Y�M5�����/Q_��D>��Y(�����0^����0m4���W����G@��]{5���]�|]�/����P ���� �[p� 8�80�9�C�p�;"������um�YP9�w�����ڶ�J�T�;z�d�A�dr�3�מ�i=#m�̓#a�.�Xy"D�����uv̫!���@��}�֩��]2łaO�%�w�Exk���j^�^Se3�9�Cd���XFg*�:�p��M��y�gv덅��=��嶼B5k�����K��*r�TٷG�"4O2	R�e&�Wp�:��r�|��נ�2��Kө-�ѳ%$��+L+]�Vc��`"{�2�������)�Aԇ��!��BF�ًjM�d�]AЅ>�_�+/��f����a�P��Z.�V�h�UE���ҳ�5��1�DL)s@#v׶�Ҏd�0���cC�QuV�����8��&�f[⺻I���j���$.�⾨��W�>�_�K+l���em����2�MI! i��!)mTDq��1m��<9�^��pN�d9��������/�S�������y6�P���օ�B��pt���5#�ޅ��KnC ���HzG���6�>�O� GO)[M��/�q``��-vV�#���:�sOWRk5M�su�+�X���8�g���(vڠ��^s�ʍ�Q�G{9�1ы?��SL��c����l���I��snl �}K��`�,*Z[��H�
9 �u�V�t�/7�	���6�`pS�l܀40͙��!B٦U΄
@��rN̡f�ȾOo��Ƚ�p�|��k��
��<z��<�Qx����*Dsh�� H�����0M�\�>�đ���m����u�|rfwe���R���W�H�w�����rH)�he8jX���!��j7����l�M�h�)n�JYe3��!U�T�V��1o,�+3���f�M	�ۂ�,�{D!!����#�
$�*6I�wf�b������K�P��ZrM$Ŏ$�7å�4vB�([#�Xh��._� 3��cU`�:$��� ��	#:����n$J9>��t�3t�#�!�*5�Kio��R�k%��:Ҧnd���ae�؏T_�2i�0�H�T�r�Ň�fQq�B�if�^f��^A@�,,�|������TԴ`�ڐ�Ij���s�u���ܾx�W�F��q�kx��vߣTOo@��n�?�w$S�	�nP