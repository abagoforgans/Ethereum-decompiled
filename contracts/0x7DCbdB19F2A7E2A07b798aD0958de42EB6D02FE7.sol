contract main {




// =====================  Runtime code  =====================


array of uint256 sub_514cdcb2;
array of uint256 sub_0239d6d3;
array of uint256 sub_794bc8d7;
array of uint256 sub_5dae06b6;
array of uint256 sub_c4a0666b;
array of uint256 sub_b28e99e9;
array of uint256 sub_c819d85a;
array of uint256 sub_55f942c8;
array of uint256 sub_da6a12ba;
array of uint256 sub_5c472abc;
uint8 stor10;
uint8 stor10; offset 8
uint8 stor10; offset 16
uint8 stor10; offset 24
uint256 stor10; offset 24
uint256 stor10; offset 16
uint256 stor10; offset 8

function sub_0239d6d3(?) {
    return sub_0239d6d3[0 len sub_0239d6d3.length]
}

function sub_514cdcb2(?) {
    return sub_514cdcb2[0 len sub_514cdcb2.length]
}

function sub_55f942c8(?) {
    return sub_55f942c8[0 len sub_55f942c8.length]
}

function sub_5c472abc(?) {
    return sub_5c472abc[0 len sub_5c472abc.length]
}

function sub_5dae06b6(?) {
    return sub_5dae06b6[0 len sub_5dae06b6.length]
}

function sub_794bc8d7(?) {
    return sub_794bc8d7[0 len sub_794bc8d7.length]
}

function sub_b28e99e9(?) {
    return sub_b28e99e9[0 len sub_b28e99e9.length]
}

function sub_c4a0666b(?) {
    return sub_c4a0666b[0 len sub_c4a0666b.length]
}

function sub_c819d85a(?) {
    return sub_c819d85a[0 len sub_c819d85a.length]
}

function sub_da6a12ba(?) {
    return sub_da6a12ba[0 len sub_da6a12ba.length]
}

function _fallback() payable {
    revert
}

function sub_56008d40(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if uint8(stor10.field_24):
        revert with 0, 'Can only set the need a single time.'
    sub_da6a12ba[] = Array(len=arg1.length, data=arg1[all])
    sub_5c472abc[] = Array(len=arg2.length, data=arg2[all])
    Mask(232, 0, stor10.field_24) = 1
}

function sub_7a4c982e(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if uint8(stor10.field_16):
        revert with 0, 'Can only set the item a single time.'
    sub_c819d85a[] = Array(len=arg1.length, data=arg1[all])
    sub_55f942c8[] = Array(len=arg2.length, data=arg2[all])
    Mask(240, 0, stor10.field_16) = 1
}

function sub_43bc39f1(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if uint8(stor10.field_16):
        revert with 0, 'Can only set the applicant a single time.'
    sub_514cdcb2[] = Array(len=arg1.length, data=arg1[all])
    sub_0239d6d3[] = Array(len=arg2.length, data=arg2[all])
    sub_794bc8d7[] = Array(len=arg3.length, data=arg3[all])
    uint8(stor10.field_0) = 1
}

function sub_946a3c1e(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if uint8(stor10.field_8):
        revert with 0, 'Can only set the autherizer a single time.'
    sub_5dae06b6[] = Array(len=arg1.length, data=arg1[all])
    sub_c4a0666b[] = Array(len=arg2.length, data=arg2[all])
    sub_b28e99e9[] = Array(len=arg3.length, data=arg3[all])
    Mask(248, 0, stor10.field_8) = 1
}



}
