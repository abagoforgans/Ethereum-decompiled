contract main {




// =====================  Runtime code  =====================


mapping of struct stor5;
uint32 stor6;
uint256 stor6;
mapping of struct stor10;
mapping of uint256 stor22;
mapping of struct stor27;
mapping of uint256 stor29;
mapping of uint256 stor30;

function _fallback() payable {
    revert
}

function sub_1e22b881(?) {
    if not stor22[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No category exists with this name.'
    return stor29[address(arg1)], stor30[stor22[arg2] - 1]
}

function sub_a7999238(?) {
    if stor27[msg.sender] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only a minter can call this function.'
    if not address(cd[4]):
        revert with 0, 'Owner cannot be the 0 address.'
    uint256(stor6)++
    if uint256(stor6) >= 4294967296:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only 4,294,967,296 mokens can be created.'
    if not stor22[cd[68]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No category exists with this name.'
    if stor29[address(cd[4])] < stor30[stor22[cd[68]] - 1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Paid ether is lower than mint price.'
    mem[0] = address(cd[4])
    mem[32] = 29
    stor29[address(cd[4])] -= stor30[stor22[cd[68]] - 1]
    mem[64] = ceil32(('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    require ('cd', 36).length
    require ('cd', 36).length <= 100
    require Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 128, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 128, 32))), 0) - 256 >= 33
    require Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 127, ('cd', ('add', 4, ('cd', 36)))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 127, ('cd', ('add', 4, ('cd', 36)))), 32))), 0) - 256 >= 33
    s = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 127, ('mem', ('range', 96, 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 127, ('mem', ('range', 96, 32))), 32))), 0) - 256
    idx = 128
    while idx < ('cd', 36).length + 128:
        _83 = mem[idx]
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256 >= 91:
            s = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256
            idx = idx + 1
            continue 
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256 <= 64:
            s = Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256
            idx = idx + 1
            continue 
        mem[idx len 8] = (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', 0), 32))), 0) - 256) + 32
        s = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_83')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_83')), 0) - 256
        idx = idx + 1
        continue 
    _85 = mem[96]
    mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
    mem[mem[64] + _85] = 28
    if stor[sha3(mem[mem[64] len _85 + 32])]:
        revert with 0, 'Moken name already exists.'
    if stor10[address(cd[4])].field_0 >= 65536:
        revert with 0, 'An single owner address cannot possess more than 65,536 mokens.'
    stor5[uint256(stor6)].field_0 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        stor5[uint256(stor6)][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor5[uint256(stor6)].length + 31 / 32 > idx:
        stor5[uint256(stor6)][idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[32] = 5
    address(stor5[uint256(stor6)].field_256) = address(cd[4])
    Mask(96, 0, stor5[uint256(stor6)].field_256) = Mask(96, 0, stor10[address(cd[4])].field_0)
    Mask(80, 0, stor5[uint256(stor6)].field_352) = 0
    Mask(80, 0, stor5[uint256(stor6)].field_432) = Mask(80, 0, stor22[cd[68]] - 1)
    uint64(stor5[uint256(stor6)].field_448) = uint64(cd[100])
    _279 = mem[64]
    _280 = mem[96]
    mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    mem[_280 + mem[64]] = 28
    stor[sha3(mem[mem[64] len _280 + _279 + -mem[64] + 32])] = uint256(stor6) + 1
    stor10[address(cd[4])].field_0++
    mem[0] = sha3(address(cd[4]), 10)
    stor10[address(cd[4])][Mask(253, 0, stor10[address(cd[4])].field_3)].field_0 = uint32(stor6) * 256^(4 * stor10[address(cd[4])].field_0 % 8) or !(test266151307() * 256^(4 * stor10[address(cd[4])].field_0 % 8)) and stor10[address(cd[4])][Mask(253, 0, stor10[address(cd[4])].field_3)].field_0
    emit Transfer(0, address(cd[4]), uint256(stor6));
    _302 = mem[64]
    mem[mem[64] + 52 len 12] = Mask(96, 0, stor10[address(cd[4])].field_0)
    mem[mem[64] + 42 len 10] = 0
    mem[mem[64] + 32 len 10] = Mask(80, 0, stor22[cd[68]] - 1)
    mem[mem[64] + 32 len 8] = uint64(cd[100])
    mem[mem[64] + 64] = uint256(stor6)
    mem[mem[64] + 96] = 'Ether'
    mem[mem[64] + 128] = stor30[stor22[cd[68]] - 1]
    mem[mem[64]] = 160
    mem[_302 + 160] = ('cd', 36).length
    mem[_302 + 192 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    emit Mint(address arg1, address arg2, bytes32 arg3, string arg4, bytes32 arg5, uint256 arg6, bytes32 arg7, uint256 arg8):
              mem[mem[64] len _302 + ('cd', 36).length + -mem[64] + 192],
              this.address,
              address(cd[4]),
              cd[68],
    return uint256(stor6)
}



}
