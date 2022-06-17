contract main {




// =====================  Runtime code  =====================


function escrows(uint256 arg1) {
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 3)))
}

function sub_4a6e1930(?) {
    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
}

function granted(address arg1) {
    return bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg1'), 1))))
}

function owner() {
    return ('storage', 160, 0, 0)
}

function sub_96069961(?) {
    require arg2 < ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 4)))
    return ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 4))), ('param', 'arg2')))
}

function sub_c7ceafea(?) {
    return ('storage', 256, 0, 2)
}

function sub_eb8f13d9(?) {
    require arg2 < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    return ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))), ('param', 'arg2')))
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == ('storage', 160, 0, 0)
    emit OwnershipRenounced(('storage', 160, 0, 0));
    address(stor[0].field_0) = 0
}

function removeAccess(address arg1) {
    require msg.sender == ('storage', 160, 0, 0)
    uint8(stor[sha3(address(arg1), 1)].field_0) = 0
    emit 0xed0e842a: address(arg1), block.timestamp
}

function allowAccess(address arg1) {
    require msg.sender == ('storage', 160, 0, 0)
    uint8(stor[sha3(address(arg1), 1)].field_0) = 1
    emit AccessGranted(address(arg1), block.timestamp);
}

function transferOwnership(address arg1) {
    require msg.sender == ('storage', 160, 0, 0)
    require arg1
    emit OwnershipTransferred(('storage', 160, 0, 0), arg1);
    address(stor[0].field_0) = arg1
}

function sub_1e98fc15(?) {
    require bool(('storage', 8, 0, ('sha3', ('data', 'msg.sender', 1)))) == 1
    require ('storage', 8, 0, ('add', 5, ('sha3', ('data', ('param', 'arg1'), 3)))) == 3
    require 1 == ('storage', 8, 8, ('add', 5, ('sha3', ('data', ('param', 'arg1'), 3))))
    uint8(stor[sha3(arg1, 3) + 5].field_8) = 3
    uint64(stor[sha3(arg1, 3) + 4].field_192) = uint64(block.timestamp)
    emit 0x40d4e026: arg1
}

function sub_bc2ec861(?) {
    require bool(('storage', 8, 0, ('sha3', ('data', 'msg.sender', 1)))) == 1
    require 1 == ('storage', 8, 8, ('add', 5, ('sha3', ('data', ('param', 'arg1'), 3))))
    require 1 == ('storage', 8, 8, ('add', 5, ('sha3', ('data', ('param', 'arg1'), 3))))
    require ('storage', 64, 64, ('add', 4, ('sha3', ('data', ('param', 'arg1'), 3)))) < uint64(block.timestamp)
    uint8(stor[sha3(arg1, 3) + 5].field_8) = 2
    uint64(stor[sha3(arg1, 3) + 4].field_128) = uint64(block.timestamp)
    emit 0xbcfd2951: arg1
}

function sub_79bdaa36(?) {
    require bool(('storage', 8, 0, ('sha3', ('data', 'msg.sender', 1)))) == 1
    require ('storage', 8, 0, ('add', 5, ('sha3', ('data', ('param', 'arg1'), 3)))) == 3
    require 1 == ('storage', 8, 8, ('add', 5, ('sha3', ('data', ('param', 'arg1'), 3))))
    if ('storage', 64, 64, ('add', 4, ('sha3', ('data', ('param', 'arg1'), 3)))) > 0:
        require ('storage', 64, 64, ('add', 4, ('sha3', ('data', ('param', 'arg1'), 3)))) < uint64(block.timestamp)
    uint8(stor[sha3(arg1, 3) + 5].field_8) = 2
    uint64(stor[sha3(arg1, 3) + 4].field_128) = uint64(block.timestamp)
    emit 0x62291be9: arg1
}

function sub_08c12d7e(?) {
    require bool(('storage', 8, 0, ('sha3', ('data', 'msg.sender', 1)))) == 1
    require arg1 > 0
    require arg2
    require arg3
    uint256(stor[2].field_0) = ('storage', 256, 0, 2) + 1
    uint256(stor[sha3(('storage', 256, 0, 2) + 1, 3)].field_0) = arg1
    address(stor[sha3(('storage', 256, 0, 2), 3) + 1].field_0) = arg2
    address(stor[sha3(('storage', 256, 0, 2), 3) + 2].field_0) = arg3
    uint64(stor[sha3(('storage', 256, 0, 2), 3) + 4].field_0) = uint64(block.timestamp)
    uint64(stor[sha3(('storage', 256, 0, 2), 3) + 4].field_64) = arg4
    uint8(stor[sha3(('storage', 256, 0, 2), 3) + 5].field_0) = 1
    uint8(stor[sha3(('storage', 256, 0, 2), 3) + 5].field_8) = 1
    uint256(stor[sha3(address(arg2), 4)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + 1
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + sha3(sha3(address(arg2), 4))].field_0) = ('storage', 256, 0, 2)
    uint256(stor[sha3(arg3, 4)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 4))) + 1
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 4))) + sha3(sha3(arg3, 4))].field_0) = ('storage', 256, 0, 2)
    emit 0x6650406f: ('storage', 256, 0, 2)
}

function getEscrow(uint256 arg1) {
    idx = 384
    s = 1
    while 480 > idx + 32:
        mem[idx + 32] = ('storage', 160, 0, ('add', 1, ('var', 1), ('sha3', ('data', ('param', 'arg1'), 3))))
        idx = idx + 32
        s = s + 1
        continue 
    idx = 480
    s = 0
    while 608 > idx + 32:
        mem[idx + 32] = ('storage', 64, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 253, 0, 3, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 15, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 15, ('var', 1))), 32), ('var', 1)))), ('add', 4, ('sha3', ('data', ('param', 'arg1'), 3))))
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    idx = 608
    s = 0
    while 672 > idx + 32:
        mem[idx + 32] = ('storage', 8, ('mask_shl', 253, 0, 3, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))), ('add', 5, ('sha3', ('data', ('param', 'arg1'), 3))))
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 3))), 
           ('storage', 160, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), 3)))),
           mem[416 len 64],
           mem[512 len 96] >> 768,
           ('storage', 8, 0, ('add', 5, ('sha3', ('data', ('param', 'arg1'), 3)))),
           mem[640]
}

function sub_cc6dd417(?) {
    require bool(('storage', 8, 0, ('sha3', ('data', 'msg.sender', 1)))) == 1
    require arg1 > 0
    require arg2
    require arg3
    require arg4
    uint256(stor[2].field_0) = ('storage', 256, 0, 2) + 1
    uint256(stor[sha3(('storage', 256, 0, 2) + 1, 3)].field_0) = arg1
    address(stor[sha3(('storage', 256, 0, 2), 3) + 1].field_0) = arg2
    address(stor[sha3(('storage', 256, 0, 2), 3) + 2].field_0) = arg3
    address(stor[sha3(('storage', 256, 0, 2), 3) + 3].field_0) = arg4
    uint64(stor[sha3(('storage', 256, 0, 2), 3) + 4].field_0) = uint64(block.timestamp)
    uint64(stor[sha3(('storage', 256, 0, 2), 3) + 4].field_64) = arg5
    uint8(stor[sha3(('storage', 256, 0, 2), 3) + 5].field_0) = 3
    uint8(stor[sha3(('storage', 256, 0, 2), 3) + 5].field_8) = 1
    uint256(stor[sha3(address(arg2), 4)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + 1
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + sha3(sha3(address(arg2), 4))].field_0) = ('storage', 256, 0, 2)
    uint256(stor[sha3(arg3, 4)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 4))) + 1
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 4))) + sha3(sha3(arg3, 4))].field_0) = ('storage', 256, 0, 2)
    uint256(stor[sha3(arg4, 4)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg4'), 4))) + 1
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('param', 'arg4'), 4))) + sha3(sha3(arg4, 4))].field_0) = ('storage', 256, 0, 2)
    emit 0x6650406f: ('storage', 256, 0, 2)
}

function sub_2ee2eb76(?) {
    require arg2 < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    require arg2 < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    require arg2 < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    require arg2 < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    require arg2 < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    idx = 576
    s = 1
    while 672 > idx + 32:
        mem[idx + 32] = ('storage', 160, 0, ('add', 1, ('var', 1), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))), ('param', 'arg2'))), 3))))
        idx = idx + 32
        s = s + 1
        continue 
    idx = 672
    s = 0
    while 800 > idx + 32:
        mem[idx + 32] = ('storage', 64, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 253, 0, 3, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 15, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 15, ('var', 1))), 32), ('var', 1)))), ('add', 4, ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))), ('param', 'arg2'))), 3))))
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    idx = 800
    s = 0
    while 864 > idx + 32:
        mem[idx + 32] = ('storage', 8, ('mask_shl', 253, 0, 3, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))), ('add', 5, ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))), ('param', 'arg2'))), 3))))
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return ('storage', 768, 0, ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))), ('param', 'arg2'))), 3))), 
           mem[608 len 64] >> 512,
           mem[704 len 96] >> 768,
           ('storage', 8, 0, ('add', 5, ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))), ('param', 'arg2'))), 3)))),
           mem[832]
}



}
