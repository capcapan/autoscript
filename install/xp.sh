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
BZh91AY&SY��! ������������������������������������}0HU`(/��k�/����zﻱ�kƓ���>��|�Ѿg��y�O�Ӟ�w�����r�Z�A{��;��շ���k����x�o�&��S=���54�i�&�i�LdOSM1O&��S��S�42d�#&L�~J~�0L��'�h��OQ� M��`�4&L�T*�	�F�0�I� &1�d�$��0M�	�=�oI�0	� �M4d�4 	�h�3"m%�!���1i�x�2a�E�	�=#��y<L�~�bOj5=�)��x2�F�`�A�M4��M5<L��j�M#M5?P�M1����)�I�i����L��P�i4MOL��4ɉ�<M#2d4�Q�&��jy�jzd�Q�bO)鑠�&M4#M22�Bzd14�3CSO$�1Li��OS4#F�M'����Bh��C��=5O�M�I�<�g�)➧��OI�)��=1G�=#�6D�z��j��&�Q�Ldɤ�ɴ�M=F�H{*i�1S��C������@D�d�LLM�	�O���<I�4`�0L�����0 �?S
z��m!���=�M�&���m&�d�F���U5):k=�k���I����0�kDG�'��2�ↂ��]+�h��˕�H0���IAAk̻0DS"":�x�$�S�)� �TQ@p��q/'*)N`T��1kkJ4)�ƭmoFխg�)����z)ˉ�*�Ӡ'4Qd�V'�v���I��?�����	
�	t'�N���i����־�ަ���1��%���bQIF�7�SQ��+*]ǋ'�D&��[}n�͋��l��SY.ut�t��c��p�����XBa;-J�y#����l��#g[H��V�!�dM�	��z]�.	Y̢��b@x��"I�ZW����;uzM����%)�B��pJ�P�x'��� A&`X*�bn2��  ���8^�'�NzZ Rs̈́��|�jR��x���` ��R���&�\�١J��i�Jkj����l�����{x��}.�_.M��v�}<��X�`�;`��8iK��=������jfe2��M# qHsD��n\��P~u� �?��c<���<�� �l���R/Ԝ��{��c;oF��֚�A �+�����$e�p2�*����͋���B�������� A@Ƞ� F H$U �"�� ȐNqLYI.b���A���f�I�ɞs�d�<�� $H�F8��d9�h�$�@T �3���������ͼ�� #,�Ғ��a( ��	��-9 � O2(ZBd��$����0�R���N;$K@�q)�#B<:�\����5g0����$Ü�?pdT6H�$��$ByāTR�+��{֟���9jD$CU��� �� � "C E�H�'�FQH�*x@�a��D� �h
� �+|,ˋ����'YgcsW�/��켎�<�,�/�6�[�lv�\�R��8��aw�5K�vw:�,��Z��׎�� �DbD8(X'
��+ɮ��X�s ]��1k�z�Poɫ�v.{�j���g�ї9�Ud�U� �p�!�D���Hj���E=�C��� b��'��!��yV����w�����~(I0)C[,����>�c#u�Xu�75o��Sf<O�8U	�,�:~F=t�=��64b��6���.J�9����C��5��'F�� �&�k�AA�q��r��k��R_L�;�����oX�vA�'.���N6�א�eh�H�	�!� ��8�!DR ��#�<�rj�"6��5�5��6� 5�&�y���� �7����s1)Z���Lϑq�t��0s��D,?Y���D� Gԁ�I<DI� ��}��r�.�ih�t���a�ת�� xhz��c��f$�B��M+�s��~	�X���y _Z�ހ�����Zg���w��H~���e�����ق��"��z��U�S�zf���m��̱�mL�����ܥ�pmO���l�?$�&�HM	��ya�l���{�t;���0%Q�&H$P�LR�g-@ݮ��t;Cډw��CпyV����Y������{�?J��OA�V�S�ǭ˨��D��J�s1�Ӡ���װ�?룼Jnfm�����QDt�f�O�B�2�r�)t+�,(�1��"��,��A�I$S �9��
Lʰ?Bb.�ؘ�NDq�CK��_��������s���ܘņ��UUy���誾ڄ��z����_Q������2]-�a�x�X�y�O�B%�p�*���~��GrHK�vХ3W�6hSOb�����$P��#��Rc^[�;�1ͨA��f��U�E`�Cꖚ㣔��m��F�=;���%vI��:�<�7�p^�`g
� -�j�OJi-?f�v����A*�İG���K��ѽ_��h��gN��Ͽi��}��[{��?��"ܱ�=���jl��G����~��kN��l>���Le��/�����	&�!Cp�L('�R)��@g?c�tέ�u~H`�c��ڈˡ�_�	=��>0`�7�p�6��
 ��%��Ɖcw��V|�<����U�eMU��˿��4L�+�cY<��!�ϐ�W��Ǐ�t0��H���v6B�����o���rpbH�s�:�����mG�\�u.q*\�T�9���"�JG���3��Vxh
E��:��D�f����;CH>L��� ���_g��/c7����lt��iӑ�����8�4��!�ن.9q�%�*4%�c�]��L_�R��C��H��Ż������D�`2I�C��zV�����e������B�i V�}t֝ɋ|E��d�:.���Y)3G�ݍy=�h� 0Y#(�9_��Q�*���J6g���b)�t��Pu�&z��9ºڈh�:�$��M~�a;��i�N�ӡ�[])�y�!��/P:"���p{��Y���r_vގ�����2+���M�D��8�'ry���j����uB���<ϕO&� "���_~w��J�E�E6ju�y��~� �A�4�7�i��/�?3 �����xpk<Ȼ��?<Ag��Z��lU}���J�R���Q:��2還�UߴMm�D�4V*Z�,G̋�`dr���p� V���ktW�/�l��s���m4z��q�a��c�Y�|�%��� ��~����z5��E �u=�gb����f�~d3k$�l*":��e����;`R�wE���0\�F+ӓ�w����K����lp�.?�w5���ɾ�4�����p7��^�U�`��SV{M��ű��S(�C��`|[&�}[S��U����Oy�$�;���I��~�\�]o��NMzG9x����Y��p��l$vI���a,l3 �����ޯ3���9S���!��S((bċR������{)_�ts����J��QG|��A:Y���{-#���иOW�Dg�b�R|�*Q�Q6�-q�us�톟IG�f_b���?	A+cկ�lؖ�C)��uS(ûK�^w�ި�Wv�� D�K�NS=]�p��W����RNR��t��1hn���nM�!w�oY6�QҕU�㗻j�*����s	y����Wz��.�EEI�ʝi��PV�V��H�c��dN���꿟�̟(�ӕ�̘���A�y�9��XJw�=a&��6hs3�wh��l��Ťl8���C����@�|��Hqƥ�Ab���:��&�p˟?��OPن�x-����/ф��^h�=j�;�%~~������"���[���W��su'��R��&�I"_��������A�*&.��K����m;��%�m���s�g4o��Y�b�g�9�e�^L�w(�ۭ�v~�,v�9 �ҁ�v�=4 �@�l��������s�@�������u�\U[w��l&�=#���q�"j+��g��/I�L������1ݒl�3tx���#*��Tp�m���������;�{g i\	W���3u���Ngĸ�VO.V���tk_1�zғ��(X%&����r1��>G�@�����UDfZ[��%u����v�E�>�W� ��	S�D���:�+J 3�O�iI�H��M�fD☘ّ�y軄�?�"h�G᧻޼ޖ�bΨ���6S-ƛ֓����$8���p(�)a@)D��
�wwR\K�V�rJ��XI��@dW����`�`E�P���y�	IJ����U����>Dr����;*���1	d�Y�z�ug��"�20ڞ��?����[)~4��疟 ���į�Έ���C��o�3DuG6����#9W��V�6�V?��<R� 0�|@i�`鰍�λ�#����_?N��*��H��BXv��Zǰw300^��NN�t)������RZ_7m�1}�9~ڽn����;�JVy��=1d=�q�U�:�\mg96��/6u/E�����)i��-�OrӜ�eQf���? oWw������	i3}�'����Ƀ���m��I���3uuNf�S�v�7^R6�\P�q���3�;�ΐ�g��Ч����4:���奟v�>Π��D4 Y+�r�;��y���z���rَ����{R9� ˮO�+}P��@	:�~�Q�ɪ�G7VnA����|�u����=Yzz\ 8G���XJ�1,�>�p~K��{·����}j��S�n,,n���WǺ;XV��Ѐ�n�Hg����iy�E�T�}�w��p���zP.��)^v0Eq3�����^@QU=��lD�xuf0�BÖ��}	�'O��D��V��C�ڄwV���ɌGL�ݑ�1�m�Wd,���>&8�	-���wp㯎�=��VW��T�E��64N�d�i�G �ih��a�߇��=����',���j?��M��T� �߇�����ʤc�­c:��IbA�3x���~�K��(�p��s�A���F�K�������m���s'���~I��¼�E�[A_������n>RA׷�����b]�l�T�C<��@�PI>aJ��GKBtz�o$M�x	�1��d!�8�ߋ3��KI) �5���K��O��Xʞ��e��h��9��M�F�(ɂ�\�P�_�(��<�f�ݸ�1?H��J�-��qQh�vO�Ygw!�z	���&d5��Y�y��8~�wF��=K�k��=�=S��q��8�课���ҝ�+F 
mǿ7FU��k��]Bv8\��{�\մm��J[����F�I=G����DW�A��|8�F��ư{-��XBe:�h�W��[l������=^-ۺ|o��K�r�K��c�C���lIF��0g7�
��ZT�l<3�^��ם=r�q=��1��)�h�d%�(�K*[�"Q�g@�sfc�2#��co�I~#�궵*�C�S�uR@��AQ�����ɠJ��Ա��'��#��hV����>qTuF�2�ɏl�p�|(p�^0��7v��6޹ǖ��VG^��는I�(A/�e����j�lÄp�
����rW���x���Q��1{������W����fU�%f�PA/���g�)�'��^�u\ͱ��P+)��N��R,�Aي�N��VkE�w��[-��%*fF�${�:�Z����2̄��D��5L*�Ƕ��<f&}x�sR���x��[�m�4��c\��Q��K(����<��oF����eE&Z�_�E�)k.sx%�l�����q��aB�9�! ��p�׹�6�A���A�f�yC��r>%�|�(w#'� ���V$�̈́�w����O�t/�&74���(U.w){ξ��9}�+�z�>7=�H��%�% |����&7ݭ>�_�(X@��ɜi�Xrm���!:��X#g����v�æ���ij���3��u_��k�n��C+Z.�˕Xjf���&�(-�cG����ziN\F���n�|y�����ˡ9�l6#� 6���� �7�,^_��'�`�E�%��݂�W�ճ�Y;�Ȁ>l#��Oܱ��i��ƪ!5t�Coy2���t:���yH0Y�T%�t>䩃�b������j0�r=�&@ݮ`��*�e%`�~GiK�F� ���S�)wg��Õ�= md|��>��[�ˡ�� "��Ma]�:z>{�R<����DPNh͸��:oP���r��Y�F�ޡ�/�W��+vC/�p����V��Mۛq3,�e���|k8q�ƌ�h@4�XK��<�������k5{�t%2J����'�<�6X�9�s����D�<�'R�Qɽo��Q�@��6y�a����o��Q��/��Aϗ�u>��u�	�'`���kઑFt������Zn��� �
!�������O�1H���w�O۩�J�5������^X]Qd3к�+Ŷ�|�����Z�a�2j3�dٵc8:�sϪ�+�@DV������b���� � ]%���;�� N�|fL~�aW� -����ޮ} *
�R��*@T@�x�:nC���Ģ{�Ͱ���}�/4􎄥H�yK����ۭt]�/���<6�"2���>�'}��y37�$�vY��7(3�M_yg���}���O���-�n-�iU�!����`g���l}�f���@h��k̢ٚ��N��Upc��ƈt,OMa|���AP``k� :8x F_c�/����f��˷??��o�����N�Dr��h[�a��x#0==�l�,!��8
 V���&H��-b�Ѓs���D�E����5�,��[2�,���7!@R�0YW�c�r�;�n����3iGfn����
6��p���+��ˡ��������	�r�@C�~����`b'��)nrC�_�
�b�P��I��\�8�������";�i�J���̃���ж�N[�9�}� ʝ��8~+!�R�3��ܟ�[���sM�l�٬���^&�R[�aɡ%��O}�;R�(�ҳ�L�
����&d\]̒�߻�.��lg��H���D\*���(��<��-O��G�E�������V�k �GKy��FH(~�^F}�^5��荐g�̺� 0��X�����=.�K$����!o�3o0O�����{��t�z�j�R���#�3P��ݑ ��I6�����9�lo<y͔��g�ɴ�'[y�9kBf�D��,�p��.�N��:�c(躚��5�ͳ5�G�7�t	=��_&&�� <�=�.���*���J' �͢y�̂��<�}�7s�I���nS��,nӃ���b�6qG�t��J݄GC��;�n&JfD�J�v�[�Bi, ���&.�nf�� )�c�W�,���m�Hهt���p��Ь!e,�TB�0��oq2D+a���r�T	ֽB��*w�E+<���Y�?]3��Xi|ԉ���L\��Q�����Ψ%_�K�0I�Q<�G�!�����}7_q�t�U�WK
�����:q(���[
�_'���<d�P�s����F��� C&������+�E��>$V���T7�4���q1ާ:�0:��fW#��p�����5�,����������%��|�zkpb �� #0~ӌ�kޞ��E���u��о�㵷�W1�ecёI)+��������O#���B��Z��z���<��ʀ"m��X��� 	�|�]�O�3��o���<+r��K��Gs�[�w�����g�KF8F_���ѝ㽒���n9V�Ɣ��O���s<������.`t���O�g�PBR^\t _I����Z���씲�;{�pzz����"��g{uu�2f:V���N�q�%Tl6�!����r
�ø<r#;�w�[E��Mǧ�r�f�Ę�=�kx�N��g�����mN��-%�?b��c�m��}W���:J��xwe��)���Rܚ}c"]c0[��&���N��-�_���n�Z����kv&_*�z7;I��sj�9��[�X��^�^c�S5����W\U 8��̫�<z�W�V�9��x����i�|�}N�sRj�8��xV�����)�������)�12F�J�w������������}���(U_3p~P	��v�~��g�I[�ΰ+|1R��8%�������DtJ_���>6�'�/5�У�ϭ�����qV4���ܽ�.�"���FǧEf�hq�+;^����q�3�;B�{J�C�v+��{N@��Q��{N1ԚE;�v���A}�.uޯrgyo��˫�ck���(�������� �V"tG<��.��}�}ԡ`v<��y�K�9���I}��Zx�u�)v-�����-������v�&�*J6{��GY�+b��o���$���1�~�?܁AʫX��w\��M�)�'^N����74&g��Y�?ABL�5�f�1��4o��[Z��~Q{�*��̕�G�)1TZ�!�`�<��𯃶�R��[S�;w��_[�oN�^�c=�M6�"?�!�;�=�KE'��sbl�r�34�F�)�����y��+��s���~Z�$֭D^�x���<F12�3V��P�3G��N����Qr���{����f�J�E@���������dp�n��4;�JY۷��v�g���}��y��9���"E>R���8�1$8J�����B3T,�a���T$a[��:��K���x0i�/-X�4�d�A�?U��b�^Ai[����y�=� �iԑ=+-�=POZ��bIGIΣ������V�/�]<�\ѽ�m��QDze_w��>u��Х�j��'T0�7#]䯁뽬�u�O����{�=����J��o�M�v{a!1d�?����{>f�a �<d:[��#��8��Aϊ |:����eu�3{--kϿ�vj�X�Ҹ����)�dH���42���c�y��MB-���;�ɋ��ӗ\���J��*�39֪,((��tx^�܅o�_Z��c�{Z���2���h���;��!�����}ZH�d�'!J�����ڂ#�c�_g�A���y!T�����L9͝UD�kjS">�Z<��Sº`���ts������hf�z��Ρ�I��/FPP�ϝm˱�r��Ͷn�`�Q�a$�!�s ��vn�6}���5S��^�w����J�p�m�/����mhѰ��<�V�!�{�5�^v��H�=�x���v��^>��w��mj~��@ bl�����'7b�L���ƌ�%��s��,�*W.��b�~:�'�v��}b`; �@$�tM���� g��9��MJ�m��P��!t5I�B���ϖ��W��p�B�ƻ���)hiBآ�Ǌb�ښ����;L}�?�ȗ8L&�׎U� 6>zp
��~��p��:����"�(j�k��p�K-њ�S=h���#���#��Aw��k�ɨ�6TZ(��+	:��3V~  ��Q>u�D��r^�Em����4
�r�4:\F��>NK��b���X�����
�����P+���0��tp�1�,;��==���^B��4u�Thy�ܭ�A�a��Z\���$�t���]}ִ��ͷ����V;-�US���-�Ğ>�8��(��.c&��A7f=z�x��5��L�*V:h����;8�՚{/T8��I�������l'*5�.�X��}�7�SFd��V�sG��]�R�z�*D3U��W`S��ud��� $��SzB���A�M*)Y:[M��a6��d�5`�av#�3�4Of�f'
�\n24�6ט�ѷ0�'����䳫b��Hu���R��"+ 86k_�+���`x�ӵ��~i��BaV�=;��Z��D�M��cZ���%��v�ˋ[�dQ�w�o_�4϶��Ax��v~槱�j�y+�͝ѾM9{Q^X�c*�ϸ��nݪ:�7u��4�7<0^y�{�G���S�����N~�e��4��"4}�D��k��5ݦ0�tD��7� � �P�i���':��7,2-���Є �&]��IԆ��-qL���P�w^�8w)ȴ��d�M6�7elR�-n=K�3�m�i>��[)�`���9�m|�����L.cYgL:ˣ�q��-��*��>/�'��p��J�=I���s�����Χ��`%:vF�S��`ķ��Пy��4����Zi�HNMv��ֽ��/��n��a�1��ݖtŴSܕ�a��:0AFgo�+;����ķ�%��4�$�9+2uĐ�t�Ԯmː�/Ƈ�5o�F꿶�ڳ���{~0ޫ��a��.8�T���zp��ቋ��c���Y�K܆�:�q�??���%������<#ߘr�xe|i�_�<ȃ	�
�	�>�m�	���W�C��V���n�J�w���֓O�W�2 ��;S�\c�/>EyP������}��.L�I�kFY�S��i���#�A�r��B$�f���&�k2����өEÔ�2��!��8�W��/���WW�t�P��5��˯�
��gI��Β,/���"���	|k��9�/�aX���Kb��>��Mc��NE��xcA��1~w���ʾ
����Z����=E�����,�8�e�c�� !�����?���X��� ��,v��ơs���5���s*f��a7�^�d%A~kv��(�#�%��?#�L��ܭ���&��z����|�+k�z��A�wY��E�L����+o%�(�NT��3�%Ij/��2�by
�6��5���V� NUВ��r�=���6&<L���hݼe��f�Qn�kZ�mTT���&�}$�	�5�l�x!nQ^"���S�;� ��ף`�Q�v)B�+
VQ� �ކ�Km!#�j�m��,����1?:m1Zڭ:Oؘhؕ[(��N��\^����~��n����pH���d6�|����gMѴ ���" G�k���,��L<����Z�7x˥����9_L�Zw����k/v$zݑ��<���aT�#�+uة~n'�Ti�U£�N�x1�D��+����$APbTZ3�?�뉨��:,������7��޸w˯�=B�o�G��UM�7�oÑ��}�?��x�������B �	�I�H��ESy�! t� ��T>��<+�ۻ�t����B�4s��vD|4~O��n���V
��U]�A�͌�먐������&w��=C yD=3�4�Jz#=v�x  #�XՀ�n�Q�^�,���;�� �b��۹�r�?�+��׎��|��<\e�=yB��[2����B��鄿��]UjXT��Z�df��3��趾��|n��}n�B��W����-��>�&��5D1�1b�������
�U���vW&ׁx���I���T�GJ�w��w0l�h�8��R�
�X?�:�ۥuԀ����8f'��pH�1k7��t���[X�z"��7d�  �w����9�}���g\3h�~I�A�6|,��k�_A��G�FO��I)=´��'��2lfA��
Q��y~��?�YE��(c4s�O��R�R�7�1�p4�A)��!#MH��[%�6P̆�*�A!���aV� +_��V*T�R�U�Z,|�)m*������a�.�p� #PB