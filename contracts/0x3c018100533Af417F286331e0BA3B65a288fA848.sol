contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 947]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function toReal(int88 arg1) payable {
    return ('signextend', 15, ('signextend', 15, ('mask_shl', 216, 0, 40, ('signextend', 10, ('signextend', 10, ('param', 'arg1'))))))
}

function fromReal(int128 arg1) payable {
    return ('signextend', 10, ('signextend', 10, ('sdiv', ('signextend', 15, ('signextend', 15, ('param', 'arg1'))), 1099511627776)))
}

function mul(int128 arg1, int128 arg2) payable {
    return ('signextend', 15, ('signextend', 15, ('sdiv', ('mul', ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg1')))), 1099511627776)))
}

function abs(int128 arg1) payable {
    if ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) <= 0:
        return ('signextend', 15, ('signextend', 15, ('mul', -1, ('signextend', 15, ('param', 'arg1')))))
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))
}

function div(int128 arg1, int128 arg2) payable {
    require ('signextend', 15, ('signextend', 15, ('param', 'arg2')))
    return ('signextend', 15, ('signextend', 15, ('sdiv', ('mask_shl', 216, 0, 40, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))), ('signextend', 15, ('signextend', 15, ('param', 'arg2'))))))
}

function sub_b28332d3(?) payable {
    if ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) <= 0:
        return (('smod', ('signextend', 15, ('mul', -1, ('signextend', 15, ('param', 'arg1')))), 1099511627776) % 1099511627776)
    return (('smod', ('signextend', 15, ('signextend', 15, ('param', 'arg1'))), 1099511627776) % 1099511627776)
}

function fpart(int128 arg1) payable {
    if ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) <= 0:
        return ('signextend', 15, ('signextend', 15, ('smod', ('signextend', 15, ('mul', -1, ('signextend', 15, ('param', 'arg1')))), 1099511627776)))
    return ('signextend', 15, ('signextend', 15, ('smod', ('signextend', 15, ('signextend', 15, ('param', 'arg1'))), 1099511627776)))
}

function sub_1dade0d4(?) payable {
    require ('signextend', 15, ('mask_shl', 216, 0, 40, ('signextend', 10, ('signextend', 10, ('param', 'arg2')))))
    return ('signextend', 15, ('signextend', 15, ('sdiv', ('mask_shl', 216, 0, 40, ('signextend', 15, ('mask_shl', 216, 0, 40, ('signextend', 10, ('signextend', 10, ('param', 'arg1')))))), ('signextend', 15, ('mask_shl', 216, 0, 40, ('signextend', 10, ('signextend', 10, ('param', 'arg2'))))))))
}

function sub_bf93961c(?) payable {
    if ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) <= 0:
        if Mask(1, 39, ('smod', ('signextend', 15, ('mul', -1, ('signextend', 15, ('param', 'arg1')))), 1099511627776)) <= 0:
            return ('signextend', 15, ('signextend', 15, ('mask_shl', 216, 0, 40, ('signextend', 10, ('sdiv', ('signextend', 15, ('signextend', 15, ('param', 'arg1'))), 1099511627776)))))
    else:
        if Mask(1, 39, ('smod', ('signextend', 15, ('signextend', 15, ('param', 'arg1'))), 1099511627776)) <= 0:
            return ('signextend', 15, ('signextend', 15, ('mask_shl', 216, 0, 40, ('signextend', 10, ('sdiv', ('signextend', 15, ('signextend', 15, ('param', 'arg1'))), 1099511627776)))))
    if ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) >= 0:
        return ('signextend', 15, ('signextend', 15, ('mask_shl', 216, 0, 40, ('signextend', 10, ('add', 1, ('sdiv', ('signextend', 15, ('signextend', 15, ('param', 'arg1'))), 1099511627776))))))
    return ('signextend', 15, ('signextend', 15, ('mask_shl', 216, 0, 40, ('signextend', 10, ('add', -1, ('sdiv', ('signextend', 15, ('signextend', 15, ('param', 'arg1'))), 1099511627776))))))
}



}
