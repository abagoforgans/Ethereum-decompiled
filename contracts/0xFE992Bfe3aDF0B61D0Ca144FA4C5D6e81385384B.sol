contract main {




// =====================  Runtime code  =====================


array of uint256 contractVersion;
array of struct stor1;

function getContractVersion() {
    return contractVersion[0 len contractVersion.length]
}

function _fallback() payable {
    revert
}

function sub_560a1503(?) {
    require calldata.size - 4 >= 128
    stor1.length++
    stor1[stor1.length].field_0 = arg1 % 281474976710656
    stor1[stor1.length].field_48 = ('signextend', 2, ('signextend', 2, ('signextend', 2, ('param', 'arg2')))) % 16777216
    stor1[stor1.length].field_72 = ('signextend', 2, ('signextend', 2, ('signextend', 2, ('param', 'arg3')))) % 16777216
    stor1[stor1.length].field_96 = arg4
    if stor1.length > 0:
        return (stor1.length - 1)
    else:
        return 0
}

function sub_1ab64c77(?) {
    if stor1.length > 0:
        if stor1.length - 1 < stor1.length:
            return stor1[stor1.length].field_0, 
                   ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('field', 0, ('stor', ('array', ('stor', ('length', ('name', 'stor1', 1))), ('name', 'stor1', 1))))))))),
                   ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('field', 0, ('stor', ('array', ('stor', ('length', ('name', 'stor1', 1))), ('name', 'stor1', 1))))))))),
                   stor1[stor1.length].field_0
    else:
        if 0 < stor1.length:
            return stor1.field_0 % 281474976710656, 
                   ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('type', 208, ('field', 48, ('stor', ('name', 'stor1', 1))))))))),
                   ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('type', 184, ('field', 72, ('stor', ('name', 'stor1', 1))))))))),
                   uint32(stor1.field_96)
    revert
}

function sub_0087a788(?) {
    require calldata.size - 4 >= 32
    if stor1.length > 0:
        if arg1 <= stor1.length - 1:
            if arg1 < stor1.length:
                return stor1[arg1].field_0, 
                       ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('field', 48, ('stor', ('array', ('param', 'arg1'), ('name', 'stor1', 1))))))))),
                       ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('field', 72, ('stor', ('array', ('param', 'arg1'), ('name', 'stor1', 1))))))))),
                       stor1[arg1].field_96
        else:
            if stor1.length - 1 < stor1.length:
                return stor1[stor1.length].field_0, 
                       ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('field', 0, ('stor', ('array', ('stor', ('length', ('name', 'stor1', 1))), ('name', 'stor1', 1))))))))),
                       ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('field', 0, ('stor', ('array', ('stor', ('length', ('name', 'stor1', 1))), ('name', 'stor1', 1))))))))),
                       stor1[stor1.length].field_0
    else:
        if arg1 <= 0:
            if arg1 < stor1.length:
                return stor1[arg1].field_0, 
                       ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('field', 48, ('stor', ('array', ('param', 'arg1'), ('name', 'stor1', 1))))))))),
                       ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('field', 72, ('stor', ('array', ('param', 'arg1'), ('name', 'stor1', 1))))))))),
                       stor1[arg1].field_96
        else:
            if 0 < stor1.length:
                return stor1.field_0 % 281474976710656, 
                       ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('type', 208, ('field', 48, ('stor', ('name', 'stor1', 1))))))))),
                       ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('signextend', 2, ('type', 184, ('field', 72, ('stor', ('name', 'stor1', 1))))))))),
                       uint32(stor1.field_96)
    revert
}



}
