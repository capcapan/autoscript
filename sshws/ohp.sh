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
BZh91AY&SYU��� �������������������������������������}0(U24�S/l1�}{o=�������l�s��zf����=��3��E��{��Om�n��}���w����U54�'������	�螓&	�0�D�<��T�11��Szހ����OD�44eOa���OɄ�� jzh���h��M��y5M��i��P�i�zh�����=��14�	�L�"fF�M50�y <��S3M&F��M���&
m'�S�4�SO�j�P�M4�z���$�4j�h�觴b���F���e1��O)��h�dI�OԞ��=0Q��OS���4���i���=F���&�OS�ڙ�Q�<��)��S�x)��S@�4�14hѤf&�jz0F����eh�OF���ɦ��3$�S�bfM=I�	�)��ɦ�OI�hd5�<�Ci�'�z'��2&��d�zH�14�1�FiG�jdM=���z��Q�j�S��=C�6�Fi4i�P~�i�� mA�=M�����Sjy#FL�4��z�ڈz�"Ii����M=F�i<�Si�4�F���Sd�F&CQ���!�����h�I���'��I�f��h��bdFe2z��@2i�e<�О����g���r�S��� pz�*wȫ�M�ab�\z�.�E��K\�#���� ��fQ�@�6��3�|�7�[�b��,�P
&$�D�l	#XI+��8���g���Nt�UpD�RA�r_y�kL�^%)&���-N�I�._~e����b�Z\��:�s��,�sҹ$�^�z5�����am�)�v#(��Zq�!M���-���nh����H�'�����^�SƚC��!�f^q�gV��뚫���)s5[�7�7ym.�
ś���sN���.u/n33�l�J� ��/����M�����o�)�Pp��:����A2XF�i+?������m<��n-�����ݬ&�,@BB��m$7���  ��Ћ�%�B*J����6��{""u�S͈8 }B&h��A|w�!�� =�G��r������2�F����|����)q�v8T{]��0��P��(�-{ 6��?���=uSС9�B'�IgJ�n��N�Hv�%�V&�=:*p>�?�o(�땩�-a�����b����,A�z���y�w��hmpX�����k�d�u���j�`J���p���j���HH�b�4������"$���^�T�"���4�E�i�^P�$�%�65�a�0	Q"v����)�U�:a}i���e7oo)��S}�P����*���u�݄�]h}z���۱�f�S�4�UI�#^�@��%D����-3s��`³
�^%:h�Nt�$���m$_j@ĊSI �u�p�[���XVwV�.���M)�-*D�=�B�H�#�4�'�%�b^��7��4�U�@U0�4.3�)0�}C�r�@��M�/��k߬v񰛨�����3�`
�����-�zLꕃH�����ٗ����@��!�9VW�*}�:ye��]#nٷ��h����وD��g�o^~K�� �@�W�#6��?)�I����4 �۫i=����-��5��(�q�t��H������1<T�7 �1d �( �ڤ��6,��O+��Bz).�g�RD��F;D�����IR����8��*6ǣ³S]
��k�B]˜K1�J.0��~�z����2���DJ��<۲N����XK����t��4%�Z����ļFF��k��g!#�}��Z�Z]Qs	sZ�
�1���Xlp�q����w��ɴ��m�r��3���$0��!U�(��n��ܰ��t �3�`%�4�L�s�ٺMq��A�a�>�6+,K�<��c9'�pp{LUC���9���S�g�q��~@� � ;�z��<VmY�+��{:j޴��h��m�RCm��M�j�s�4�o>�h~�s�me]�=�~��G��� ϥ�rsL�q��Tq�����e�B���ci��m�)b-�',o-@����w��]��[�g��e�;��a��v:6�"�s���Y�Ã��0^�ڳKG���m#�h�eً��ͩE�g�Q�dm�ᒔ�+;�V�/��;�f�[��"B�F4��#��X9xW��3.A�c�bg�C������)��3/��|-���0���� R���:�_�O�ۤ��v�����Q��xύ�S�:��b���Fɘ�z*5|ka�G�K-k�W寧�:�����*k��ґ-I��ʼ�6do�p޹I<K�����V^*?��|&�s ���bi���.�!�qYb2�� ��,���A�nn��o:{���i��-ix�Fv�?8��^T�A����0z��՞�
�l9X���ٻk�hȓ8��g�^�9�.y�:
f�pNh����r�?o��K��u_>����������%��Ķ֔$h��0�0T�(�f�[�����R�W��663�񟭋����u�N(0E@DD���Y��J�n���ɖ�&L�.e�p���:��K�4��ZD�>�Z%a� ey+��6j���x��G�dІF��(3�h�[0�\ �BL�4�0$����!/99�V����C��p��Z!�	���� S3�8�0�s�g�/;Mϟ�� T��r�W�k�ݛ<�2��)���'D��$��+��l�P?KR8g�H����p�/3*`�N�ʠ�u��d�g��9�w7�Z��w�]��;h���VD��1�2м殌�1M`���#q0w���R��p6�/ך�� 0):��(�[[�nvIӏ��mU�F�Ct��*����uk��KS"�0XJ��9r{�1_-g�K3��K�*Bє*x�e��Q��0�z�JO^���0WE *ƞ��Yl����@�.<�����L8m�L���\�qԀZf�������y���a�(�[��ȁ��3W�E�!�i& H�FLvv@�aW>H�2���D22�Y�p�M!���//��9L�	Bˋhb�J�c�

_f�HS/�ԄP�|��{���ӵ=P�Y���V�lM̥�,��dl]=��?���{[RJ	�T;H�X/�p�> �Y��ґ$Bx'H��M=y��8 ��_~�;��}җ��y��Z3>�V�-�x��m.\���c��z���:j�r��t��)���Y���X:ɛմ[�Z�IQV�Y��a��g,��-ejc;�R���}�j)�����Oc~UN�@E��/QĭX6�Eu.'�:Hy5V����̟8�#����r����!��3B�
^�ߟ��w��h�#���%��o@�R��C��WJ����渻��rAy��:�����j�CC�o��eV��p�W���w�`"þ�� \ڭ=�fc`�	�!����f���q���=�K��=�L�=]�n�y�j�zT@���!��󴈛F!|#��0���r�<�/�uO������=a�YV�[2_h�c��Ԯ�n�����)]�'��g1:�a�/3�Q˯�l���%A�	QZ�����zWMӶ�p�QL�u��;>y�kFG�	#Mxq���r@z,��_�l����K4�q�X"IWNܫ,
Q"��x%rx�%�:J�Kug7�hɕ/j����y�?��$�˚y�(T�9F�ĳ�fȟqo]��6{1��9[���B�G׵t��� G*�L}s'27�p�꽕��Q�4�Z���@4a�G����|C��3U)�Y��kw�����|�)�Q��pTI�R*��J�b!�#�?�!�#xI�4��&�}c�zE����ΣQ��-�N���-2�9�*#g{T'�!0 ����T��O�1�|������0Py�Wh#e�[�{I���#N7���iw>�zX�� �e`���ױ�Zm��hs�X=˷�t;B{���z³�X�V���S��Y�;��7�.έJ���|ޛ��G�ȼ�A���;~-;�"Ey�ڀ;�mX}tp�P���-M��=���٢�(�
}ƾ��l�X�0��L5��'Ofk��Q�?�ܾ"�;!��q�b.Q� �PJ��}�=F�^M�0�+�4�� ��[�����r� !��B���3�����B��0�S�;U�4��=��y-p�SL�#��hc~k!!�ż�aR�:��?��R�4��O�1F����f��%b��1��ET�L;��LI�3��  ߾�E�4�+��#S������Sb`��qn8.j�:w?H��V��I1β�����kHr���P��y4E�tQ���*N�?�$�q�«w���d
�@ˡ��Ou�y�t*�y"��m(M���E.��)3ӭ�VX3�)��R�������tQ/�b,wɳ�w5<�c��������Mx�'Yy����+Zs�(_����R�[XH¿�[
���i�_e���r�7r�g�W������Ge�U�{��F�ܺq�s�z���{@٧�@R�J���7���K[Ea��[?��'z��TO �;C��}���Q��*8���G������s���^�&䇟K��[�W�_N��� �d�R6��h�f�ߓ��a("���wT�h��Bfb�bp�Б����կ�j��&�[�ط��E���B�!�$�ŖD1�]���C�U��+�kk_#��B�cS�X\�\�����-�+1�v>��k�%���V�*���ݵn~�GI�x��ѽ�R�U�U}�;@�aOn�
�J��Z���$�g2����L����{]��Ռ�Z��ļY��306�4��"�렀i��x�Ѣ��/�;�Z�G}�f�P�/=����VWnik���ڡыʿ�z�y�st�;/0�]�
,ax|�G?���C?w��*�~@�q�YK�j��ϊ����%`���[������a��z�X�).g�ȅ���S�[;4-��Sb��������Ǌmkw<��R� ����T�^��R��P��s��v�-�a���0��Ju�������='I��(Z���\�{m��69��,x��/��^��G��P����}�>%�WÄ��i����z�C=,կg���jq���!�zGʓ�GӰ�X?b	��,$�o�Q
�x�#^�������N	0�����i��R|�����C�'�xRG�)��j�%�����׉����F:��C.�����7c�N	�R���4 _��ފ�z��O��PcR�{�����gs��j;ۜA>s���]�yNr���1���R���-�e������oQ��!���2��tMF��a��4D���><�$'wuV��:�&�{���P�q�Og�N�m+&@��rN��������*�&Q�	�K��wz}�no����*�uk7�S�nf��L� ,��h �ELd���T��B�N,��`a`4ʊE��%cv����,�D�0Y<V��Zzd�>�s{G��r�/��/�%��0�Dq��2�l���k�qh1���Q%D�۰\X�e�:�u�v�{d���S�G�$T	�-?�#�)'��ݷ;� 7L������x��)	Pv��
��Ⓥ6.�~Ubo՜�_d��� .p$�]�f���%�R�X�Q�(D�"(\_b��gx�f���d�{�q�����Z|�1?���'�h�s<����:sp�t2��h���f�ΒJ'9G�b�ll�tu^2sbA��E�����y�m�ޱ��a��u��G߾�M��V�&�X�#`d�?�9��)�����%��+[Q�qﾯ���;F}}(�g��05h��w��c�@^xm����Y�eH�B�z\�����({�8Jܿ#Y֧)!<���agb���}%&�������"�r�1T��Rg�B��4���׏��ܽ���w֬�����}y)%������e++NPF5	g�P��L�P�t����(z"�Or�e݁�o�������@-���{��S��l)���x̷\ͩ�mhu�.��;�TXt�My��{��qu�Ş��J�<���+������wR ϭ��r�s��kݷ�0T����6�&^s{������z�5�t�R~;$�)��\�}I����t�ܡ�V���Pp��~ꧻ�^�8�k��#�'��I��s���,���w�r�\��uzx�73J��E՝[ R�~X*�� *D.��>S�1��؎��1��+��<l����vo���x[�bs��v���D��=�O��f�H�<���i��.@��6S"1���s	 	l/��q � ǄIQ:J}�Ű�/WR훘�w���'u��6N�M��3��t$ʞ��͡&*a �1�{�-!��m�PU;�lu}�e��Ff����'��/�\o���zƯ/ʤϥWv�v�)�̽��u|�j|���<�$|��"8_�m��K������͌��������+$�h|Z�E���M��+-DA�bW������)�Y��{R��w�F�O�^��v��Ӳ��w����|]����.l�K�i~F�{{��y���З��rB���0�̻^��q���4a�5p"?����p�����5�J��;?i.�(��,�x�c���Id�a^An�c5�Q��fv�?�כd�&��u<�����7�߫8��q�Q(��QE���`�I��k�}2|H��fk��]�/%��̇@��j��rɯ5v��Â�2@���#�'��U�����,=j�:�����D|�ɠm�ĀC��Ȥ�ƍF��A�VͶB����/��K������Xrr�����q,��  �}p��J`�#j)5�K!�&S�I�ӽbN��d�i��\�ǜ��}BM�x�Ļ��:�ٔ�ƾ[!����r�P=9j�Hyޢ�b؝�����,�lP�~��m|N���G"�$��L�Z9y��7�����-�,�C� �	�x�j�VN7tD{�e�(:������9�*��L hls����f�)�H��*x�C9d��RE�V��rM�RuE��H4P�,��5IW2WR�>�y�f����7M�|5�����3W�-k�h��H�z�1�.VvY\T���fwz��-�^o*�q.(�0�UvH��Q��&�zA9�d�r��Q��=�-s�اm?O��|c��c���'��=+ғ(�����3����'b<�|*�V��Eed0-�p^lA��]��H���,��b�O
���6��=﵍��L<��w�{�+i鰣�!�z�6������?�)ٞä�\�'�>Z#�K��7�?O��6:BȞ�$�]J�0������F�ZS5i6�o���$�v�)Ѕ��"BV���Q�N�u:x�{�f(�L��� jq ��lHX����0c3�y-�,�z)?�ʎAT5��o$�A8�̂��4�s9l��{k���ݔ��E������ˑ�=���ۣ�����I��u����.�x�J�m�w=���ilp�Â�AZ~�/��{�n�/qtl��!m
,jD�_B��?�')n���������娉�{]4I���@�z	��adĴb%�� �� �*xg6�^:�F�3��,��׏T�3~E��H�~��0�1�q��T׿�鼺�%V����*$΃����j�4��� ��Vc����E�
WB �����w/�%��4�*K 52�%���w#�n{!ҁ���͈8�L$ ���V�č��M����*MP 	�����5��y�;���:���B�������ՎF��Q������6�$�c,��� ;p��9V�xT\a�l�&�t_1���s-ݨ�m���I8���G�
{���_'�}4rA��QE��^r"�i�"mɒ�+K0�ә��#����z�-�c4ѹ����O@��O_VB�o��h�~�x%+V̚��D��j��󇎜���88�F�oDFm��er<�Fp%|$�ơ�	�d�|�٩�2a�0S���XV4Kt?,\*=�]���<��D����ZQrz ���Ҝ�d�-��� 1������ۃ����i�.��g��P�B�o� �#	�P�d�C�?H���kV�����C�GN�b�B�}%|�ɸw�M�(Z"~����s��c�O� �����ӛ�9�+#���������.��~|�Dc:sY�(�L��/x���f4Q��9���8�r5�
�4p˦��k����"M�B}�v�ڈ��XH8�J�'�
]<W�ܳA6X0���PT��é]����ʬ��z��&���j��#ʪ ݂1�|a5��%0W.�w��s�w����/��i�cW���At�}��GU�K�P��ܙ��Q����0ж�g㲞4�˫ؕz*SmIk��5�{3�Ȟ��]n��r��0˴C�ȸGd�L���?h������i��"�&w�QǛ��OI�1���ݼq�$(X[>V�|2"�5(���}C$��t�r��2��jh41���?�cX��y&��<%N�ʍu:�L�;�Ny��J�0��>B�>��
�0�(�6la��n��m�N�{U�+Z�����g��J�s�n��ج�W'@�����'_AQvrK[�]T7d �@�4��s`K��Sݘih�qAO�+���\u��8��e�H%�a��{���h�?�ѳ�,i9{�.[w�s�}	���G��6��B�����F�2�E���;>R�E��گ����P�k���0�Ӕל�竵 T�z��� ��L C36��G;K���)�B�G-��s{k�M�o��>���l��NS��li��
�3G�'���Q��v4:��EJ.�W��C����/�4w�Ϋ�|�w��I�{�L�/VGhy�a�'�ߴ��N4H�1���	�K�w_^�{c�m���]�
�88w�� � v�R����'P�@=���c8�רg���Q;������;��is�}$��*_Fi}��q���6��-�H���XŠ�1�<��N�xɔ��g *	��S�5'��E���Rq `͹E����?��s6G�]�5Xm ��e\���T�\˪��S�VOz�O��ck{H��=�x�>�o����F��p�rh���%����[�W�u��`:�G�^�$4eH���.��j�A�nQn�S<����j�<�=u#�i%�1�i��.���h�i Ž�����9�oq�7��5?5�ބ�Vʓ�p��%͊�����vt�X��P�9��(�1���ȒZQaa')���"�#��D�#�(������g�QX=�J �����37u�i~��Yt�G����Z�j�?m�����bȊS,�vP?���)���/@