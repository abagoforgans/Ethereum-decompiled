contract main {




// =====================  Runtime code  =====================


#
#  - sub_0855f6d0(?)
#  - getParty(uint256 arg1)
#
address owner;
array of uint256 stor1;

function owner() {
    return owner
}

function sub_b1bce969(?) {
    return sub_b1bce969[arg1].field_1024
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function sub_e84f5d88(?) {
    stor1.length++
    stor1[stor1.length] = arg1
    sub_b1bce969[arg1].field_0 = arg5
    sub_b1bce969[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_b1bce969[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    sub_b1bce969[arg1][3][].field_0 = Array(len=arg4.length, data=arg4[all])
}

function sub_5cb25df7(?) {
    stor1.length++
    stor1[stor1.length] = arg1
    sub_b1bce969[arg1].field_0 = arg4
    sub_b1bce969[arg1].field_1280++
    stor[sha3(('array', 5, ('map', ('param', 'arg1'), ('name', 'sub_b1bce969', 2))) + sub_b1bce969[arg1].field_1280)][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_b1bce969[arg1].field_1536++
    stor[sha3(('array', 6, ('map', ('param', 'arg1'), ('name', 'sub_b1bce969', 2))) + sub_b1bce969[arg1].field_1536)][].field_0 = Array(len=arg3.length, data=arg3[all])
}

function sub_cc9bac84(?) {
    sub_b1bce969[cd[4]].field_1024++
    stor[('array', 4, ('map', ('cd', 4), ('name', 'sub_b1bce969', 2))) + sub_b1bce969[cd[4]].field_1024].field_0 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        stor[s + sha3(('array', 4, ('map', ('cd', 4), ('name', 'sub_b1bce969', 2))) + sub_b1bce969[cd[4]].field_1024)].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor[('array', 4, ('map', ('cd', 4), ('name', 'sub_b1bce969', 2))) + sub_b1bce969[cd[4]].field_1024].length + 31 / 32 > idx:
        stor[idx + sha3(('array', 4, ('map', ('cd', 4), ('name', 'sub_b1bce969', 2))) + sub_b1bce969[cd[4]].field_1024)].field_0 = 0
        idx = idx + 1
        continue 
    sub_b1bce969[cd[4]].field_1280++
    stor[('array', 5, ('map', ('cd', 4), ('name', 'sub_b1bce969', 2))) + sub_b1bce969[cd[4]].field_1280].field_0 = (2 * ('cd', 68).length) + 1
    s = 0
    idx = cd[68] + 36
    while cd[68] + ('cd', 68).length + 36 > idx:
        stor[s + sha3(('array', 5, ('map', ('cd', 4), ('name', 'sub_b1bce969', 2))) + sub_b1bce969[cd[4]].field_1280)].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
    while stor[('array', 5, ('map', ('cd', 4), ('name', 'sub_b1bce969', 2))) + sub_b1bce969[cd[4]].field_1280].length + 31 / 32 > idx:
        stor[idx + sha3(('array', 5, ('map', ('cd', 4), ('name', 'sub_b1bce969', 2))) + sub_b1bce969[cd[4]].field_1280)].field_0 = 0
        idx = idx + 1
        continue 
    sub_b1bce969[cd[4]].field_1536++
    stor[('array', 6, ('map', ('cd', 4), ('name', 'sub_b1bce969', 2))) + sub_b1bce969[cd[4]].field_1536].field_0 = (2 * ('cd', 100).length) + 1
    s = 0
    idx = cd[100] + 36
    while cd[100] + ('cd', 100).length + 36 > idx:
        stor[s + sha3(('array', 6, ('map', ('cd', 4), ('name', 'sub_b1bce969', 2))) + sub_b1bce969[cd[4]].field_1536)].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
    while stor[('array', 6, ('map', ('cd', 4), ('name', 'sub_b1bce969', 2))) + sub_b1bce969[cd[4]].field_1536].length + 31 / 32 > idx:
        stor[idx + sha3(('array', 6, ('map', ('cd', 4), ('name', 'sub_b1bce969', 2))) + sub_b1bce969[cd[4]].field_1536)].field_0 = 0
        idx = idx + 1
        continue 
}



}
