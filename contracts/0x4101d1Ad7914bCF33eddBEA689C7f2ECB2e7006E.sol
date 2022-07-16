contract main {




// =====================  Runtime code  =====================


#
#  - sub_0d2e4d37(?)
#  - sub_4ecf870d(?)
#  - sub_fa5da74e(?)
#
const sub_02cab0c1(?) = 0

const sub_06a05014(?) = 0

const getVersion = 'v1.03.00'

const getAttributes = 96, 160, 224, 15, 'cyberhunter2080' << 136, 4, 'slot' << 224, 8, uint64('v1.03.00')

const getType = 'slot'

const getName = 'cyberhunter2080'

const sub_1f4cefd2(?) = 24

const sub_21562855(?) = 0, 2, 1, 0

const sub_2b9558cc(?) = 3

const sub_2d6f8d6a(?) = 2

const sub_4282cf54(?) = 32, 50, 0x1111100000222220121021012100011222100122221001012112101011102111, 0x2011122111010012122101101211210001210000000000000000000000000000, Mask(144, -256, 0x1111100000222220121021012100011222100122221001012112101011102111, 0x2011122111010012122101101211210001210000000000000000000000000000) << 256

const sub_4e633c2c(?) = 1

const getMultipliers = 257500 * 10^6, 0

const sub_79cf8aa9(?) = 500, 2000, 5000, 10000

const sub_8afa7cee(?) = 2

const sub_9a1877aa(?) = 20

const sub_a56e3d44(?) = 1

const sub_b78a51d1(?) = 0

const sub_bf009412(?) = 11

const sub_e6765e16(?) = 'v1.04.01'

const sub_f4aa5a9b(?) = 5


function _fallback() payable {
    revert
}

function sub_abb3e525(?) {
    if not arg1:
        return 1, 3
    if arg1 != 1:
        return 0
    return 0, 3
}

function sub_a3797164(?) {
    if arg1 != 1:
        return 0, 0, 0, 0, code.data[18414 len 160]
    return 0, 3, 1, 0, 0, 0, 10, 0, 0
}

function sub_65691446(?) {
    require arg1 < 11
    if not arg1:
        return 0
    if arg1 == 1:
        return 0
    if arg1 == 2:
        return 0
    if arg1 == 3:
        return 0
    if arg1 == 4:
        return 0
    if arg1 == 5:
        return 0
    if arg1 == 6:
        return 0
    if arg1 == 7:
        return 0
    if arg1 == 8:
        return 1, 0, 0, 0
    if arg1 == 9:
        return 0, 0, 1, 0
    if arg1 != 10:
        return 0
    return 0, 0, 1, 1
}

function sub_591232f5(?) {
    if not arg1:
        if not arg2:
            return 36
        if arg2 == 1:
            return 36
        if arg2 == 2:
            return 36
        if arg2 == 3:
            return 36
        if arg2 != 4:
            return 0
        return 90
    if arg1 != 1:
        return 0
    if arg2:
        if arg2 != 1:
            if arg2 != 2:
                if arg2 != 3:
                    if arg2 != 4:
                        return 0
    return 60
}

function sub_d7f35f00(?) {
    require arg1 < 11
    if not arg1:
        return 'Top4'
    if arg1 == 1:
        return 'Top3'
    if arg1 == 2:
        return 'Top2'
    if arg1 == 3:
        return 'Top1'
    if arg1 == 4:
        return 'A'
    if arg1 == 5:
        return 'K'
    if arg1 == 6:
        return 'Q'
    if arg1 == 7:
        return 'J'
    if arg1 == 8:
        return 'Wild'
    if arg1 == 9:
        return 'Bonus'
    if arg1 != 10:
        return ' '
    return 'FreeSpins'
}

function sub_7e104767(?) {
    if arg1:
        return 0, 0, 0, 0, 0, code.data[18414 len 480], code.data[18414 len 480]
    return 1, 
           3,
           0,
           5,
           15,
           1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 >> 3584,
           200,
           300,
           400,
           500,
           600,
           700,
           800,
           1000,
           1200,
           1500,
           1800,
           2000,
           2500,
           3000,
           5000
}

function sub_81c98bc2(?) {
    require arg1 < 11
    if not arg1:
        return 0, 0, 150, 300, 750
    if arg1 == 1:
        return 0, 0, 75, 150, 500
    if arg1 == 2:
        return 0, 0, 50, 100, 250
    if arg1 == 3:
        return 0, 0, 20, 50, 125
    if arg1 == 4:
        return 0, 0, 10, 20, 50
    if arg1 == 5:
        return 0, 0, 10, 20, 50
    if arg1 == 6:
        return 0, 0, 5, 10, 25
    if arg1 == 7:
        return 0, 0, 5, 10, 25
    if arg1 == 8:
        return 0, 0, 0, 0, 1000
    if arg1 != 9:
        if arg1 != 10:
            return code.data[18414 len 160]
        else:
            return 0
    else:
        return 0
}

function sub_ebb4998e(?) {
    mem[416 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 416] = 0
    if not call.data[292]:
        if not bool(2^0):
            return 0
    else:
        if uint8(call.data[68]) >= 2:
            return 0
        if uint16(call.data[68]) / 256 != 255:
            if uint16(call.data[68]) / 256 >= 2:
                return 0
        if not bool(2^(Mask(8, 16, call.data[68]) >> 16)):
            return 0
    if arg1 <= 0:
        return 0
    if arg2.length != 1:
        return 0
    require 0 < arg2.length
    if mem[431 len 1] > 20:
        return 0
    require 0 < arg2.length
    require 0 < arg2.length
    if arg1 != mem[431 len 1] * mem[432 len 16]:
        return 0
    return 1, 2575 * arg1, 0
}

function sub_784446f6(?) {
    if not arg1:
        if not arg2:
            return 32, 18, 0x367457010000000000000000000000000000
        if arg2 == 1:
            return 32, 18, 0x567012380000000000000000000000000000
        if arg2 == 2:
            return 'gVxg'
        if arg2 == 3:
            return 32, 18, 0x456701230000000000000000000000000000
        if arg2 != 4:
            return ' '
        return 32, 45, 
               0xa5476701a23745672367567a6701a2387654a5476701a23674567236756701a2,
               0x345674563456435401a238765400000000000000000000000000000000000000,
               Mask(104, -256, 0xa5476701a23745672367567a6701a2387654a5476701a23674567236756701a2, 0x345674563456435401a238765400000000000000000000000000000000000000) << 256
    if arg1 != 1:
        return ' '
    if not arg2:
        return 32, 30, 0x845967560123845678674597687457012386701238450123450123670000
    if arg2 == 1:
        return 32, 30, 0x845675601238456786745678674570123867012384501234501235670000
    if arg2 == 2:
        return 32, 30, 0x845967560123845976874568769457012386701238450123450123670000
    if arg2 == 3:
        return 32, 30, 0x845675601238456786745674674570123867012384501234501235670000
    if arg2 != 4:
        return ' '
    return 32, 30, 0x845967560123846976874567967457012386701238450123450123970000
}

function sub_9c3024a7(?) {
    mem[96 len 192] = call.data[36 len 192]
    mem[288 len 288] = call.data[228 len 288]
    mem[576] = arg2.length
    mem[608 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 608] = 0
    mem[(32 * arg2.length) + 640] = 0
    mem[(32 * arg2.length) + 672] = 0
    mem[(32 * arg2.length) + 704] = 0
    mem[(32 * arg2.length) + 736] = 0
    mem[(32 * arg2.length) + 1440 len 160] = code.data[18414 len 160]
    mem[(32 * arg2.length) + 768] = (32 * arg2.length) + 1440
    mem[(32 * arg2.length) + 800] = 0
    mem[(32 * arg2.length) + 832] = 0
    mem[(32 * arg2.length) + 864] = 0
    mem[64] = (32 * arg2.length) + 1984
    mem[(32 * arg2.length) + 1920] = 0
    mem[(32 * arg2.length) + 1952] = 0
    mem[var13001] = (32 * arg2.length) + 1920
    s = var13001
    idx = var13002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * arg2.length) + 1920] = 0
        mem[(32 * arg2.length) + 1952] = 0
        mem[s + 32] = (32 * arg2.length) + 1920
        s = s + 32
        idx = idx - 1
        continue 
    mem[(32 * arg2.length) + 896] = (32 * arg2.length) + 1600
    mem[(32 * arg2.length) + 928] = 0
    mem[(32 * arg2.length) + 960] = 0
    mem[(32 * arg2.length) + 992] = 0
    _28 = mem[64]
    mem[64] = mem[64] + 160
    mem[_28] = 0
    mem[_28 + 32] = 0
    mem[_28 + 64] = 0
    mem[_28 + 96] = 0
    mem[_28 + 128] = 0
    if mem[544]:
        _30 = mem[64]
        mem[64] = mem[64] + 160
        mem[_30] = mem[351 len 1]
        mem[_30 + 32] = mem[350 len 1]
        mem[_30 + 64] = mem[348 len 1]
        mem[_30 + 96] = mem[349 len 1]
        mem[_30 + 128] = mem[575 len 1]
        _39 = mem[64]
        mem[64] = mem[64] + 672
        _41 = mem[64]
        mem[64] = mem[64] + 160
        mem[_41 len 160] = code.data[18414 len 160]
        mem[_39] = _41
        mem[_39 + 32] = 0
        mem[_39 + 64] = 0
        mem[_39 + 96] = 0
        _43 = mem[64]
        mem[64] = mem[64] + 320
        _53 = mem[64]
        mem[64] = mem[64] + 64
        mem[_53] = 0
        mem[_53 + 32] = 0
        mem[var38001] = _53
        s = var38001
        idx = var38002
        while idx - 1:
            _53 = mem[64]
            mem[64] = mem[64] + 64
            mem[_53] = 0
            mem[_53 + 32] = 0
            mem[s + 32] = _53
            s = s + 32
            idx = idx - 1
            continue 
        mem[_39 + 128] = _43
        mem[_39 + 160] = 0
        mem[_39 + 192] = 0
        mem[_39 + 224] = 0
        _55 = mem[64]
        mem[64] = mem[64] + 160
        mem[_55 len 160] = code.data[18414 len 160]
        mem[64] = mem[64] + 320
        _775 = mem[64]
        mem[64] = mem[64] + 64
        mem[_775] = 0
        mem[_775 + 32] = 0
        mem[var49001] = _775
        s = var49001
        idx = var49002
        while idx - 1:
            _775 = mem[64]
            mem[64] = mem[64] + 64
            mem[_775] = 0
            mem[_775 + 32] = 0
            mem[s + 32] = _775
            s = s + 32
            idx = idx - 1
            continue 
        _777 = mem[64]
        mem[64] = mem[64] + 160
        mem[_777] = mem[118 len 2]
        mem[_777 + 32] = mem[120 len 2]
        mem[_777 + 64] = mem[122 len 2]
        mem[_777 + 96] = mem[124 len 2]
        mem[_777 + 128] = mem[126 len 2]
        _789 = mem[128]
        _791 = mem[128]
        _793 = mem[128]
        _794 = mem[64]
        mem[64] = mem[64] + 160
        _797 = mem[160]
        _799 = mem[64]
        mem[64] = mem[64] + 64
        mem[_799] = mem[182 len 1]
        mem[_799 + 32] = Mask(8, 64, _797) >> 64
        mem[_794] = _799
        _801 = mem[160]
        _803 = mem[64]
        mem[64] = mem[64] + 64
        mem[_803] = mem[184 len 1]
        mem[_803 + 32] = Mask(8, 48, _801) >> 48
        mem[_794 + 32] = _803
        _805 = mem[160]
        _807 = mem[64]
        mem[64] = mem[64] + 64
        mem[_807] = mem[186 len 1]
        mem[_807 + 32] = Mask(8, 32, _805) >> 32
        mem[_794 + 64] = _807
        _809 = mem[160]
        _811 = mem[64]
        mem[64] = mem[64] + 64
        mem[_811] = mem[188 len 1]
        mem[_811 + 32] = Mask(8, 16, _809) >> 16
        mem[_794 + 96] = _811
        _813 = mem[160]
        _815 = mem[64]
        mem[64] = mem[64] + 64
        mem[_815] = mem[190 len 1]
        mem[_815 + 32] = uint8(_813)
        mem[_794 + 128] = _815
        _817 = mem[224]
        _819 = mem[256]
        _820 = mem[64]
        mem[64] = mem[64] + 256
        mem[_820] = _777
        mem[_820 + 32] = Mask(8, 16, _789) >> 16
        mem[_820 + 64] = uint16(_791) / 256
        mem[_820 + 96] = uint8(_793)
        mem[_820 + 128] = _794
        mem[_820 + 160] = 0
        mem[_820 + 192] = _817
        mem[_820 + 224] = _819
        if mem[_30 + 31 len 1] >= 2:
            return 0
        if mem[_30 + 63 len 1] == 255:
            if not bool(2^mem[_30 + 127 len 1]):
                return 0
            if arg1:
                return 0
            if mem[_30 + 63 len 1] != 1:
                if mem[_30 + 63 len 1]:
                    return 0
                _845 = mem[_30 + 32]
                _871 = mem[64]
                mem[64] = mem[64] + 480
                mem[_871 len 480] = code.data[18414 len 480]
                _893 = mem[64]
                mem[64] = mem[64] + 480
                mem[_893 len 480] = code.data[18414 len 480]
                if uint8(_845):
                    if not uint8(_793):
                        return 0
                    if uint8(_793) > 0:
                        return 0
                    if mem[576] != 1:
                        return 0
                    s = 0
                    idx = 0
                    while uint8(idx) < uint8(-uint8(_793)):
                        if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] < 0:
                            s = mem[mem[(32 * uint8(idx)) + _794]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
                    s = _1514 * None
                    idx = -uint8(_793)
                    while uint8(idx) < 0:
                        if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] == 255:
                            s = mem[mem[(32 * uint8(idx)) + _794]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
                else:
                    _907 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_907] = 1
                    mem[_907 + 32] = 0
                    mem[_907 + 64] = 0
                    mem[_907 + 96] = 0
                    mem[_907 + 128] = 0
                    mem[_907 + 160] = 0
                    mem[_907 + 192] = 0
                    mem[_907 + 224] = 0
                    mem[_907 + 256] = 0
                    mem[_907 + 288] = 0
                    mem[_907 + 320] = 0
                    mem[_907 + 352] = 0
                    mem[_907 + 384] = 0
                    mem[_907 + 416] = 0
                    mem[_907 + 448] = 0
                    _908 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_908] = 200
                    mem[_908 + 32] = 300
                    mem[_908 + 64] = 400
                    mem[_908 + 96] = 500
                    mem[_908 + 128] = 600
                    mem[_908 + 160] = 700
                    mem[_908 + 192] = 800
                    mem[_908 + 224] = 1000
                    mem[_908 + 256] = 1200
                    mem[_908 + 288] = 1500
                    mem[_908 + 320] = 1800
                    mem[_908 + 352] = 2000
                    mem[_908 + 384] = 2500
                    mem[_908 + 416] = 3000
                    mem[_908 + 448] = 5000
                    if not uint8(_793):
                        return 0
                    if uint8(_793) > 5:
                        return 0
                    if mem[576] != 1:
                        return 0
                    s = 0
                    idx = 0
                    while uint8(idx) < uint8(-uint8(_793) + 5):
                        require uint8(idx) < 5
                        if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] < 15:
                            s = mem[mem[(32 * uint8(idx)) + _794]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
                    s = _1516 * None
                    idx = -uint8(_793) + 5
                    while uint8(idx) < 5:
                        if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] == 255:
                            s = mem[mem[(32 * uint8(idx)) + _794]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
            else:
                if not Mask(8, 8, _791):
                    if mem[_30 + 63 len 1]:
                        return 0
                    _859 = mem[_30 + 32]
                    _894 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_894 len 480] = code.data[18414 len 480]
                    _909 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_909 len 480] = code.data[18414 len 480]
                    if uint8(_859):
                        if not uint8(_793):
                            return 0
                        if uint8(_793) > 0:
                            return 0
                        if mem[576] != 1:
                            return 0
                        s = 0
                        idx = 0
                        while uint8(idx) < uint8(-uint8(_793)):
                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] < 0:
                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                        s = _1518 * None
                        idx = -uint8(_793)
                        while uint8(idx) < 0:
                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] == 255:
                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                    else:
                        _935 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_935] = 1
                        mem[_935 + 32] = 0
                        mem[_935 + 64] = 0
                        mem[_935 + 96] = 0
                        mem[_935 + 128] = 0
                        mem[_935 + 160] = 0
                        mem[_935 + 192] = 0
                        mem[_935 + 224] = 0
                        mem[_935 + 256] = 0
                        mem[_935 + 288] = 0
                        mem[_935 + 320] = 0
                        mem[_935 + 352] = 0
                        mem[_935 + 384] = 0
                        mem[_935 + 416] = 0
                        mem[_935 + 448] = 0
                        _936 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_936] = 200
                        mem[_936 + 32] = 300
                        mem[_936 + 64] = 400
                        mem[_936 + 96] = 500
                        mem[_936 + 128] = 600
                        mem[_936 + 160] = 700
                        mem[_936 + 192] = 800
                        mem[_936 + 224] = 1000
                        mem[_936 + 256] = 1200
                        mem[_936 + 288] = 1500
                        mem[_936 + 320] = 1800
                        mem[_936 + 352] = 2000
                        mem[_936 + 384] = 2500
                        mem[_936 + 416] = 3000
                        mem[_936 + 448] = 5000
                        if not uint8(_793):
                            return 0
                        if uint8(_793) > 5:
                            return 0
                        if mem[576] != 1:
                            return 0
                        s = 0
                        idx = 0
                        while uint8(idx) < uint8(-uint8(_793) + 5):
                            require uint8(idx) < 5
                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] < 15:
                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                        s = _1520 * None
                        idx = -uint8(_793) + 5
                        while uint8(idx) < 5:
                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] == 255:
                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                else:
                    if not mem[_30 + 63 len 1]:
                        _872 = mem[_30 + 32]
                        _899 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_899 len 480] = code.data[18414 len 480]
                        _922 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_922 len 480] = code.data[18414 len 480]
                        if uint8(_872):
                            if uint8(_793):
                                if uint8(_793) <= 0:
                                    if mem[576] == 1:
                                        s = 0
                                        idx = 0
                                        while uint8(idx) < uint8(-uint8(_793)):
                                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] < 0:
                                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                                idx = idx + 1
                                                continue 
                                            return 1
                                        s = _1522 * None
                                        idx = -uint8(_793)
                                        while uint8(idx) < 0:
                                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] == 255:
                                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                                idx = idx + 1
                                                continue 
                                            return 1
                        else:
                            _955 = mem[64]
                            mem[64] = mem[64] + 480
                            mem[_955] = 1
                            mem[_955 + 32] = 0
                            mem[_955 + 64] = 0
                            mem[_955 + 96] = 0
                            mem[_955 + 128] = 0
                            mem[_955 + 160] = 0
                            mem[_955 + 192] = 0
                            mem[_955 + 224] = 0
                            mem[_955 + 256] = 0
                            mem[_955 + 288] = 0
                            mem[_955 + 320] = 0
                            mem[_955 + 352] = 0
                            mem[_955 + 384] = 0
                            mem[_955 + 416] = 0
                            mem[_955 + 448] = 0
                            _956 = mem[64]
                            mem[64] = mem[64] + 480
                            mem[_956] = 200
                            mem[_956 + 32] = 300
                            mem[_956 + 64] = 400
                            mem[_956 + 96] = 500
                            mem[_956 + 128] = 600
                            mem[_956 + 160] = 700
                            mem[_956 + 192] = 800
                            mem[_956 + 224] = 1000
                            mem[_956 + 256] = 1200
                            mem[_956 + 288] = 1500
                            mem[_956 + 320] = 1800
                            mem[_956 + 352] = 2000
                            mem[_956 + 384] = 2500
                            mem[_956 + 416] = 3000
                            mem[_956 + 448] = 5000
                            if uint8(_793):
                                if uint8(_793) <= 5:
                                    if mem[576] == 1:
                                        s = 0
                                        idx = 0
                                        while uint8(idx) < uint8(-uint8(_793) + 5):
                                            require uint8(idx) < 5
                                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] < 15:
                                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                                idx = idx + 1
                                                continue 
                                            return 1
                                        s = _1524 * None
                                        idx = -uint8(_793) + 5
                                        while uint8(idx) < 5:
                                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] == 255:
                                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                                idx = idx + 1
                                                continue 
                                            return 1
        else:
            if mem[_30 + 63 len 1] >= 2:
                return 0
            if not bool(2^mem[_30 + 127 len 1]):
                return 0
            if arg1:
                return 0
            if mem[_30 + 63 len 1] != 1:
                if mem[_30 + 63 len 1]:
                    return 0
                _856 = mem[_30 + 32]
                _887 = mem[64]
                mem[64] = mem[64] + 480
                mem[_887 len 480] = code.data[18414 len 480]
                _900 = mem[64]
                mem[64] = mem[64] + 480
                mem[_900 len 480] = code.data[18414 len 480]
                if uint8(_856):
                    if not uint8(_793):
                        return 0
                    if uint8(_793) > 0:
                        return 0
                    if mem[576] != 1:
                        return 0
                    s = 0
                    idx = 0
                    while uint8(idx) < uint8(-uint8(_793)):
                        if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] < 0:
                            s = mem[mem[(32 * uint8(idx)) + _794]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
                    s = _1526 * None
                    idx = -uint8(_793)
                    while uint8(idx) < 0:
                        if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] == 255:
                            s = mem[mem[(32 * uint8(idx)) + _794]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
                else:
                    _923 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_923] = 1
                    mem[_923 + 32] = 0
                    mem[_923 + 64] = 0
                    mem[_923 + 96] = 0
                    mem[_923 + 128] = 0
                    mem[_923 + 160] = 0
                    mem[_923 + 192] = 0
                    mem[_923 + 224] = 0
                    mem[_923 + 256] = 0
                    mem[_923 + 288] = 0
                    mem[_923 + 320] = 0
                    mem[_923 + 352] = 0
                    mem[_923 + 384] = 0
                    mem[_923 + 416] = 0
                    mem[_923 + 448] = 0
                    _924 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_924] = 200
                    mem[_924 + 32] = 300
                    mem[_924 + 64] = 400
                    mem[_924 + 96] = 500
                    mem[_924 + 128] = 600
                    mem[_924 + 160] = 700
                    mem[_924 + 192] = 800
                    mem[_924 + 224] = 1000
                    mem[_924 + 256] = 1200
                    mem[_924 + 288] = 1500
                    mem[_924 + 320] = 1800
                    mem[_924 + 352] = 2000
                    mem[_924 + 384] = 2500
                    mem[_924 + 416] = 3000
                    mem[_924 + 448] = 5000
                    if not uint8(_793):
                        return 0
                    if uint8(_793) > 5:
                        return 0
                    if mem[576] != 1:
                        return 0
                    s = 0
                    idx = 0
                    while uint8(idx) < uint8(-uint8(_793) + 5):
                        require uint8(idx) < 5
                        if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] < 15:
                            s = mem[mem[(32 * uint8(idx)) + _794]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
                    s = _1528 * None
                    idx = -uint8(_793) + 5
                    while uint8(idx) < 5:
                        if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] == 255:
                            s = mem[mem[(32 * uint8(idx)) + _794]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
            else:
                if not Mask(8, 8, _791):
                    if mem[_30 + 63 len 1]:
                        return 0
                    _873 = mem[_30 + 32]
                    _901 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_901 len 480] = code.data[18414 len 480]
                    _925 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_925 len 480] = code.data[18414 len 480]
                    if uint8(_873):
                        if not uint8(_793):
                            return 0
                        if uint8(_793) > 0:
                            return 0
                        if mem[576] != 1:
                            return 0
                        s = 0
                        idx = 0
                        while uint8(idx) < uint8(-uint8(_793)):
                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] < 0:
                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                        s = _1530 * None
                        idx = -uint8(_793)
                        while uint8(idx) < 0:
                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] == 255:
                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                    else:
                        _959 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_959] = 1
                        mem[_959 + 32] = 0
                        mem[_959 + 64] = 0
                        mem[_959 + 96] = 0
                        mem[_959 + 128] = 0
                        mem[_959 + 160] = 0
                        mem[_959 + 192] = 0
                        mem[_959 + 224] = 0
                        mem[_959 + 256] = 0
                        mem[_959 + 288] = 0
                        mem[_959 + 320] = 0
                        mem[_959 + 352] = 0
                        mem[_959 + 384] = 0
                        mem[_959 + 416] = 0
                        mem[_959 + 448] = 0
                        _960 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_960] = 200
                        mem[_960 + 32] = 300
                        mem[_960 + 64] = 400
                        mem[_960 + 96] = 500
                        mem[_960 + 128] = 600
                        mem[_960 + 160] = 700
                        mem[_960 + 192] = 800
                        mem[_960 + 224] = 1000
                        mem[_960 + 256] = 1200
                        mem[_960 + 288] = 1500
                        mem[_960 + 320] = 1800
                        mem[_960 + 352] = 2000
                        mem[_960 + 384] = 2500
                        mem[_960 + 416] = 3000
                        mem[_960 + 448] = 5000
                        if not uint8(_793):
                            return 0
                        if uint8(_793) > 5:
                            return 0
                        if mem[576] != 1:
                            return 0
                        s = 0
                        idx = 0
                        while uint8(idx) < uint8(-uint8(_793) + 5):
                            require uint8(idx) < 5
                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] < 15:
                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                        s = _1532 * None
                        idx = -uint8(_793) + 5
                        while uint8(idx) < 5:
                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] == 255:
                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                else:
                    if not mem[_30 + 63 len 1]:
                        _888 = mem[_30 + 32]
                        _912 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_912 len 480] = code.data[18414 len 480]
                        _942 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_942 len 480] = code.data[18414 len 480]
                        if uint8(_888):
                            if uint8(_793):
                                if uint8(_793) <= 0:
                                    if mem[576] == 1:
                                        s = 0
                                        idx = 0
                                        while uint8(idx) < uint8(-uint8(_793)):
                                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] < 0:
                                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                                idx = idx + 1
                                                continue 
                                            return 1
                                        s = _1534 * None
                                        idx = -uint8(_793)
                                        while uint8(idx) < 0:
                                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] == 255:
                                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                                idx = idx + 1
                                                continue 
                                            return 1
                        else:
                            _979 = mem[64]
                            mem[64] = mem[64] + 480
                            mem[_979] = 1
                            mem[_979 + 32] = 0
                            mem[_979 + 64] = 0
                            mem[_979 + 96] = 0
                            mem[_979 + 128] = 0
                            mem[_979 + 160] = 0
                            mem[_979 + 192] = 0
                            mem[_979 + 224] = 0
                            mem[_979 + 256] = 0
                            mem[_979 + 288] = 0
                            mem[_979 + 320] = 0
                            mem[_979 + 352] = 0
                            mem[_979 + 384] = 0
                            mem[_979 + 416] = 0
                            mem[_979 + 448] = 0
                            _980 = mem[64]
                            mem[64] = mem[64] + 480
                            mem[_980] = 200
                            mem[_980 + 32] = 300
                            mem[_980 + 64] = 400
                            mem[_980 + 96] = 500
                            mem[_980 + 128] = 600
                            mem[_980 + 160] = 700
                            mem[_980 + 192] = 800
                            mem[_980 + 224] = 1000
                            mem[_980 + 256] = 1200
                            mem[_980 + 288] = 1500
                            mem[_980 + 320] = 1800
                            mem[_980 + 352] = 2000
                            mem[_980 + 384] = 2500
                            mem[_980 + 416] = 3000
                            mem[_980 + 448] = 5000
                            if uint8(_793):
                                if uint8(_793) <= 5:
                                    if mem[576] == 1:
                                        s = 0
                                        idx = 0
                                        while uint8(idx) < uint8(-uint8(_793) + 5):
                                            require uint8(idx) < 5
                                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] < 15:
                                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                                idx = idx + 1
                                                continue 
                                            return 1
                                        s = _1536 * None
                                        idx = -uint8(_793) + 5
                                        while uint8(idx) < 5:
                                            if mem[mem[(32 * uint8(idx)) + _794] + 31 len 1] == 255:
                                                s = mem[mem[(32 * uint8(idx)) + _794]]
                                                idx = idx + 1
                                                continue 
                                            return 1
    else:
        _31 = mem[64]
        mem[64] = mem[64] + 160
        mem[_31] = 0
        mem[_31 + 32] = 255
        mem[_31 + 64] = 255
        mem[_31 + 96] = 0
        mem[_31 + 128] = 1
        _37 = mem[64]
        mem[64] = mem[64] + 672
        _38 = mem[64]
        mem[64] = mem[64] + 160
        mem[_38 len 160] = code.data[18414 len 160]
        mem[_37] = _38
        mem[_37 + 32] = 0
        mem[_37 + 64] = 0
        mem[_37 + 96] = 0
        _40 = mem[64]
        mem[64] = mem[64] + 320
        _54 = mem[64]
        mem[64] = mem[64] + 64
        mem[_54] = 0
        mem[_54 + 32] = 0
        mem[var35001] = _54
        s = var35001
        idx = var35002
        while idx - 1:
            _54 = mem[64]
            mem[64] = mem[64] + 64
            mem[_54] = 0
            mem[_54 + 32] = 0
            mem[s + 32] = _54
            s = s + 32
            idx = idx - 1
            continue 
        mem[_37 + 128] = _40
        mem[_37 + 160] = 0
        mem[_37 + 192] = 0
        mem[_37 + 224] = 0
        _56 = mem[64]
        mem[64] = mem[64] + 160
        mem[_56 len 160] = code.data[18414 len 160]
        mem[64] = mem[64] + 320
        _776 = mem[64]
        mem[64] = mem[64] + 64
        mem[_776] = 0
        mem[_776 + 32] = 0
        mem[var46001] = _776
        s = var46001
        idx = var46002
        while idx - 1:
            _776 = mem[64]
            mem[64] = mem[64] + 64
            mem[_776] = 0
            mem[_776 + 32] = 0
            mem[s + 32] = _776
            s = s + 32
            idx = idx - 1
            continue 
        _778 = mem[64]
        mem[64] = mem[64] + 160
        mem[_778] = mem[118 len 2]
        mem[_778 + 32] = mem[120 len 2]
        mem[_778 + 64] = mem[122 len 2]
        mem[_778 + 96] = mem[124 len 2]
        mem[_778 + 128] = mem[126 len 2]
        _790 = mem[128]
        _792 = mem[128]
        _795 = mem[128]
        _796 = mem[64]
        mem[64] = mem[64] + 160
        _798 = mem[160]
        _800 = mem[64]
        mem[64] = mem[64] + 64
        mem[_800] = mem[182 len 1]
        mem[_800 + 32] = Mask(8, 64, _798) >> 64
        mem[_796] = _800
        _802 = mem[160]
        _804 = mem[64]
        mem[64] = mem[64] + 64
        mem[_804] = mem[184 len 1]
        mem[_804 + 32] = Mask(8, 48, _802) >> 48
        mem[_796 + 32] = _804
        _806 = mem[160]
        _808 = mem[64]
        mem[64] = mem[64] + 64
        mem[_808] = mem[186 len 1]
        mem[_808 + 32] = Mask(8, 32, _806) >> 32
        mem[_796 + 64] = _808
        _810 = mem[160]
        _812 = mem[64]
        mem[64] = mem[64] + 64
        mem[_812] = mem[188 len 1]
        mem[_812 + 32] = Mask(8, 16, _810) >> 16
        mem[_796 + 96] = _812
        _814 = mem[160]
        _816 = mem[64]
        mem[64] = mem[64] + 64
        mem[_816] = mem[190 len 1]
        mem[_816 + 32] = uint8(_814)
        mem[_796 + 128] = _816
        _818 = mem[224]
        _821 = mem[256]
        _822 = mem[64]
        mem[64] = mem[64] + 256
        mem[_822] = _778
        mem[_822 + 32] = Mask(8, 16, _790) >> 16
        mem[_822 + 64] = uint16(_792) / 256
        mem[_822 + 96] = uint8(_795)
        mem[_822 + 128] = _796
        mem[_822 + 160] = 0
        mem[_822 + 192] = _818
        mem[_822 + 224] = _821
        if mem[_31 + 31 len 1] >= 2:
            return 0
        if mem[_31 + 63 len 1] == 255:
            if not bool(2^mem[_31 + 127 len 1]):
                return 0
            if arg1:
                return 0
            if mem[_31 + 63 len 1] != 1:
                if mem[_31 + 63 len 1]:
                    return 0
                _850 = mem[_31 + 32]
                _879 = mem[64]
                mem[64] = mem[64] + 480
                mem[_879 len 480] = code.data[18414 len 480]
                _895 = mem[64]
                mem[64] = mem[64] + 480
                mem[_895 len 480] = code.data[18414 len 480]
                if uint8(_850):
                    if not uint8(_795):
                        return 0
                    if uint8(_795) > 0:
                        return 0
                    if mem[576] != 1:
                        return 0
                    s = 0
                    idx = 0
                    while uint8(idx) < uint8(-uint8(_795)):
                        if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] < 0:
                            s = mem[mem[(32 * uint8(idx)) + _796]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
                    s = _1538 * None
                    idx = -uint8(_795)
                    while uint8(idx) < 0:
                        if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] == 255:
                            s = mem[mem[(32 * uint8(idx)) + _796]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
                else:
                    _913 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_913] = 1
                    mem[_913 + 32] = 0
                    mem[_913 + 64] = 0
                    mem[_913 + 96] = 0
                    mem[_913 + 128] = 0
                    mem[_913 + 160] = 0
                    mem[_913 + 192] = 0
                    mem[_913 + 224] = 0
                    mem[_913 + 256] = 0
                    mem[_913 + 288] = 0
                    mem[_913 + 320] = 0
                    mem[_913 + 352] = 0
                    mem[_913 + 384] = 0
                    mem[_913 + 416] = 0
                    mem[_913 + 448] = 0
                    _914 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_914] = 200
                    mem[_914 + 32] = 300
                    mem[_914 + 64] = 400
                    mem[_914 + 96] = 500
                    mem[_914 + 128] = 600
                    mem[_914 + 160] = 700
                    mem[_914 + 192] = 800
                    mem[_914 + 224] = 1000
                    mem[_914 + 256] = 1200
                    mem[_914 + 288] = 1500
                    mem[_914 + 320] = 1800
                    mem[_914 + 352] = 2000
                    mem[_914 + 384] = 2500
                    mem[_914 + 416] = 3000
                    mem[_914 + 448] = 5000
                    if not uint8(_795):
                        return 0
                    if uint8(_795) > 5:
                        return 0
                    if mem[576] != 1:
                        return 0
                    s = 0
                    idx = 0
                    while uint8(idx) < uint8(-uint8(_795) + 5):
                        require uint8(idx) < 5
                        if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] < 15:
                            s = mem[mem[(32 * uint8(idx)) + _796]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
                    s = _1540 * None
                    idx = -uint8(_795) + 5
                    while uint8(idx) < 5:
                        if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] == 255:
                            s = mem[mem[(32 * uint8(idx)) + _796]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
            else:
                if not Mask(8, 8, _792):
                    if mem[_31 + 63 len 1]:
                        return 0
                    _864 = mem[_31 + 32]
                    _896 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_896 len 480] = code.data[18414 len 480]
                    _915 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_915 len 480] = code.data[18414 len 480]
                    if uint8(_864):
                        if not uint8(_795):
                            return 0
                        if uint8(_795) > 0:
                            return 0
                        if mem[576] != 1:
                            return 0
                        s = 0
                        idx = 0
                        while uint8(idx) < uint8(-uint8(_795)):
                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] < 0:
                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                        s = _1542 * None
                        idx = -uint8(_795)
                        while uint8(idx) < 0:
                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] == 255:
                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                    else:
                        _945 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_945] = 1
                        mem[_945 + 32] = 0
                        mem[_945 + 64] = 0
                        mem[_945 + 96] = 0
                        mem[_945 + 128] = 0
                        mem[_945 + 160] = 0
                        mem[_945 + 192] = 0
                        mem[_945 + 224] = 0
                        mem[_945 + 256] = 0
                        mem[_945 + 288] = 0
                        mem[_945 + 320] = 0
                        mem[_945 + 352] = 0
                        mem[_945 + 384] = 0
                        mem[_945 + 416] = 0
                        mem[_945 + 448] = 0
                        _946 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_946] = 200
                        mem[_946 + 32] = 300
                        mem[_946 + 64] = 400
                        mem[_946 + 96] = 500
                        mem[_946 + 128] = 600
                        mem[_946 + 160] = 700
                        mem[_946 + 192] = 800
                        mem[_946 + 224] = 1000
                        mem[_946 + 256] = 1200
                        mem[_946 + 288] = 1500
                        mem[_946 + 320] = 1800
                        mem[_946 + 352] = 2000
                        mem[_946 + 384] = 2500
                        mem[_946 + 416] = 3000
                        mem[_946 + 448] = 5000
                        if not uint8(_795):
                            return 0
                        if uint8(_795) > 5:
                            return 0
                        if mem[576] != 1:
                            return 0
                        s = 0
                        idx = 0
                        while uint8(idx) < uint8(-uint8(_795) + 5):
                            require uint8(idx) < 5
                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] < 15:
                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                        s = _1544 * None
                        idx = -uint8(_795) + 5
                        while uint8(idx) < 5:
                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] == 255:
                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                else:
                    if not mem[_31 + 63 len 1]:
                        _880 = mem[_31 + 32]
                        _904 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_904 len 480] = code.data[18414 len 480]
                        _929 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_929 len 480] = code.data[18414 len 480]
                        if uint8(_880):
                            if uint8(_795):
                                if uint8(_795) <= 0:
                                    if mem[576] == 1:
                                        s = 0
                                        idx = 0
                                        while uint8(idx) < uint8(-uint8(_795)):
                                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] < 0:
                                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                                idx = idx + 1
                                                continue 
                                            return 1
                                        s = _1546 * None
                                        idx = -uint8(_795)
                                        while uint8(idx) < 0:
                                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] == 255:
                                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                                idx = idx + 1
                                                continue 
                                            return 1
                        else:
                            _965 = mem[64]
                            mem[64] = mem[64] + 480
                            mem[_965] = 1
                            mem[_965 + 32] = 0
                            mem[_965 + 64] = 0
                            mem[_965 + 96] = 0
                            mem[_965 + 128] = 0
                            mem[_965 + 160] = 0
                            mem[_965 + 192] = 0
                            mem[_965 + 224] = 0
                            mem[_965 + 256] = 0
                            mem[_965 + 288] = 0
                            mem[_965 + 320] = 0
                            mem[_965 + 352] = 0
                            mem[_965 + 384] = 0
                            mem[_965 + 416] = 0
                            mem[_965 + 448] = 0
                            _966 = mem[64]
                            mem[64] = mem[64] + 480
                            mem[_966] = 200
                            mem[_966 + 32] = 300
                            mem[_966 + 64] = 400
                            mem[_966 + 96] = 500
                            mem[_966 + 128] = 600
                            mem[_966 + 160] = 700
                            mem[_966 + 192] = 800
                            mem[_966 + 224] = 1000
                            mem[_966 + 256] = 1200
                            mem[_966 + 288] = 1500
                            mem[_966 + 320] = 1800
                            mem[_966 + 352] = 2000
                            mem[_966 + 384] = 2500
                            mem[_966 + 416] = 3000
                            mem[_966 + 448] = 5000
                            if uint8(_795):
                                if uint8(_795) <= 5:
                                    if mem[576] == 1:
                                        s = 0
                                        idx = 0
                                        while uint8(idx) < uint8(-uint8(_795) + 5):
                                            require uint8(idx) < 5
                                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] < 15:
                                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                                idx = idx + 1
                                                continue 
                                            return 1
                                        s = _1548 * None
                                        idx = -uint8(_795) + 5
                                        while uint8(idx) < 5:
                                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] == 255:
                                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                                idx = idx + 1
                                                continue 
                                            return 1
        else:
            if mem[_31 + 63 len 1] >= 2:
                return 0
            if not bool(2^mem[_31 + 127 len 1]):
                return 0
            if arg1:
                return 0
            if mem[_31 + 63 len 1] != 1:
                if mem[_31 + 63 len 1]:
                    return 0
                _858 = mem[_31 + 32]
                _891 = mem[64]
                mem[64] = mem[64] + 480
                mem[_891 len 480] = code.data[18414 len 480]
                _905 = mem[64]
                mem[64] = mem[64] + 480
                mem[_905 len 480] = code.data[18414 len 480]
                if uint8(_858):
                    if not uint8(_795):
                        return 0
                    if uint8(_795) > 0:
                        return 0
                    if mem[576] != 1:
                        return 0
                    s = 0
                    idx = 0
                    while uint8(idx) < uint8(-uint8(_795)):
                        if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] < 0:
                            s = mem[mem[(32 * uint8(idx)) + _796]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
                    s = _1550 * None
                    idx = -uint8(_795)
                    while uint8(idx) < 0:
                        if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] == 255:
                            s = mem[mem[(32 * uint8(idx)) + _796]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
                else:
                    _930 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_930] = 1
                    mem[_930 + 32] = 0
                    mem[_930 + 64] = 0
                    mem[_930 + 96] = 0
                    mem[_930 + 128] = 0
                    mem[_930 + 160] = 0
                    mem[_930 + 192] = 0
                    mem[_930 + 224] = 0
                    mem[_930 + 256] = 0
                    mem[_930 + 288] = 0
                    mem[_930 + 320] = 0
                    mem[_930 + 352] = 0
                    mem[_930 + 384] = 0
                    mem[_930 + 416] = 0
                    mem[_930 + 448] = 0
                    _931 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_931] = 200
                    mem[_931 + 32] = 300
                    mem[_931 + 64] = 400
                    mem[_931 + 96] = 500
                    mem[_931 + 128] = 600
                    mem[_931 + 160] = 700
                    mem[_931 + 192] = 800
                    mem[_931 + 224] = 1000
                    mem[_931 + 256] = 1200
                    mem[_931 + 288] = 1500
                    mem[_931 + 320] = 1800
                    mem[_931 + 352] = 2000
                    mem[_931 + 384] = 2500
                    mem[_931 + 416] = 3000
                    mem[_931 + 448] = 5000
                    if not uint8(_795):
                        return 0
                    if uint8(_795) > 5:
                        return 0
                    if mem[576] != 1:
                        return 0
                    s = 0
                    idx = 0
                    while uint8(idx) < uint8(-uint8(_795) + 5):
                        require uint8(idx) < 5
                        if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] < 15:
                            s = mem[mem[(32 * uint8(idx)) + _796]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
                    s = _1552 * None
                    idx = -uint8(_795) + 5
                    while uint8(idx) < 5:
                        if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] == 255:
                            s = mem[mem[(32 * uint8(idx)) + _796]]
                            idx = idx + 1
                            continue 
                        else:
                            return 0
            else:
                if not Mask(8, 8, _792):
                    if mem[_31 + 63 len 1]:
                        return 0
                    _881 = mem[_31 + 32]
                    _906 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_906 len 480] = code.data[18414 len 480]
                    _932 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_932 len 480] = code.data[18414 len 480]
                    if uint8(_881):
                        if not uint8(_795):
                            return 0
                        if uint8(_795) > 0:
                            return 0
                        if mem[576] != 1:
                            return 0
                        s = 0
                        idx = 0
                        while uint8(idx) < uint8(-uint8(_795)):
                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] < 0:
                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                        s = _1554 * None
                        idx = -uint8(_795)
                        while uint8(idx) < 0:
                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] == 255:
                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                    else:
                        _969 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_969] = 1
                        mem[_969 + 32] = 0
                        mem[_969 + 64] = 0
                        mem[_969 + 96] = 0
                        mem[_969 + 128] = 0
                        mem[_969 + 160] = 0
                        mem[_969 + 192] = 0
                        mem[_969 + 224] = 0
                        mem[_969 + 256] = 0
                        mem[_969 + 288] = 0
                        mem[_969 + 320] = 0
                        mem[_969 + 352] = 0
                        mem[_969 + 384] = 0
                        mem[_969 + 416] = 0
                        mem[_969 + 448] = 0
                        _970 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_970] = 200
                        mem[_970 + 32] = 300
                        mem[_970 + 64] = 400
                        mem[_970 + 96] = 500
                        mem[_970 + 128] = 600
                        mem[_970 + 160] = 700
                        mem[_970 + 192] = 800
                        mem[_970 + 224] = 1000
                        mem[_970 + 256] = 1200
                        mem[_970 + 288] = 1500
                        mem[_970 + 320] = 1800
                        mem[_970 + 352] = 2000
                        mem[_970 + 384] = 2500
                        mem[_970 + 416] = 3000
                        mem[_970 + 448] = 5000
                        if not uint8(_795):
                            return 0
                        if uint8(_795) > 5:
                            return 0
                        if mem[576] != 1:
                            return 0
                        s = 0
                        idx = 0
                        while uint8(idx) < uint8(-uint8(_795) + 5):
                            require uint8(idx) < 5
                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] < 15:
                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                        s = _1556 * None
                        idx = -uint8(_795) + 5
                        while uint8(idx) < 5:
                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] == 255:
                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                idx = idx + 1
                                continue 
                            else:
                                return 0
                else:
                    if not mem[_31 + 63 len 1]:
                        _892 = mem[_31 + 32]
                        _918 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_918 len 480] = code.data[18414 len 480]
                        _952 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_952 len 480] = code.data[18414 len 480]
                        if uint8(_892):
                            if uint8(_795):
                                if uint8(_795) <= 0:
                                    if mem[576] == 1:
                                        s = 0
                                        idx = 0
                                        while uint8(idx) < uint8(-uint8(_795)):
                                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] < 0:
                                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                                idx = idx + 1
                                                continue 
                                            return 1
                                        s = _1558 * None
                                        idx = -uint8(_795)
                                        while uint8(idx) < 0:
                                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] == 255:
                                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                                idx = idx + 1
                                                continue 
                                            return 1
                        else:
                            _987 = mem[64]
                            mem[64] = mem[64] + 480
                            mem[_987] = 1
                            mem[_987 + 32] = 0
                            mem[_987 + 64] = 0
                            mem[_987 + 96] = 0
                            mem[_987 + 128] = 0
                            mem[_987 + 160] = 0
                            mem[_987 + 192] = 0
                            mem[_987 + 224] = 0
                            mem[_987 + 256] = 0
                            mem[_987 + 288] = 0
                            mem[_987 + 320] = 0
                            mem[_987 + 352] = 0
                            mem[_987 + 384] = 0
                            mem[_987 + 416] = 0
                            mem[_987 + 448] = 0
                            _988 = mem[64]
                            mem[64] = mem[64] + 480
                            mem[_988] = 200
                            mem[_988 + 32] = 300
                            mem[_988 + 64] = 400
                            mem[_988 + 96] = 500
                            mem[_988 + 128] = 600
                            mem[_988 + 160] = 700
                            mem[_988 + 192] = 800
                            mem[_988 + 224] = 1000
                            mem[_988 + 256] = 1200
                            mem[_988 + 288] = 1500
                            mem[_988 + 320] = 1800
                            mem[_988 + 352] = 2000
                            mem[_988 + 384] = 2500
                            mem[_988 + 416] = 3000
                            mem[_988 + 448] = 5000
                            if uint8(_795):
                                if uint8(_795) <= 5:
                                    if mem[576] == 1:
                                        s = 0
                                        idx = 0
                                        while uint8(idx) < uint8(-uint8(_795) + 5):
                                            require uint8(idx) < 5
                                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] < 15:
                                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                                idx = idx + 1
                                                continue 
                                            return 1
                                        s = _1560 * None
                                        idx = -uint8(_795) + 5
                                        while uint8(idx) < 5:
                                            if mem[mem[(32 * uint8(idx)) + _796] + 31 len 1] == 255:
                                                s = mem[mem[(32 * uint8(idx)) + _796]]
                                                idx = idx + 1
                                                continue 
                                            return 1
    return 1
}



}
