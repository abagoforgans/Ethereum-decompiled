contract main {




// =====================  Runtime code  =====================


address stor1;
array of struct stor26;
mapping of bool permissions;
array of address stor2481041784956016742021570618494952475758789857281704946240779902470294861374;

function getPermissions(address arg1) {
    return uint256(permissions[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_93abbca5(?) {
    if stor1 != msg.sender:
        if bool(permissions[msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not contract owner and does not have permission.'
    if arg2 >= 256:
        revert with 0, '_position greater than 255'
    uint256(permissions[address(arg1)]) = uint256(permissions[address(arg1)]) or 2^arg2
    if not uint256(permissions[address(arg1)]):
        stor26.length++
        stor57C3[stor26.length] = arg1
}

function sub_df0cff74(?) {
    if not stor26.length:
        mem[(32 * stor26.length) + 128] = 32
        mem[(32 * stor26.length) + 160] = stor26.length
        mem[(32 * stor26.length) + 192 len floor32(stor26.length)] = mem[128 len floor32(stor26.length)]
        return memory
          from (32 * stor26.length) + 128
           len (96 * stor26.length) + 64
    mem[128] = address(stor26.field_0)
    idx = 128
    s = 0
    while (32 * stor26.length) + 96 > idx:
        mem[idx + 32] = address(stor26[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor26.length) + 192 len floor32(stor26.length)] = mem[128 len floor32(stor26.length)]
    return Array(len=stor26.length, data=mem[128 len floor32(stor26.length)], mem[(32 * stor26.length) + floor32(stor26.length) + 192 len (32 * stor26.length) - floor32(stor26.length)]), 
}

function sub_e19267ed(?) {
    if stor1 != msg.sender:
        if bool(permissions[msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not contract owner and does not have permission.'
    uint256(permissions[address(arg1)]) = arg2
    if uint256(permissions[address(arg1)]):
        if not arg2:
            idx = 0
            while idx < stor26.length:
                mem[0] = 26
                if address(stor26[idx].field_0) != arg1:
                    idx = idx + 1
                    continue 
                require stor26.length - 1 < stor26.length
                require idx < stor26.length
                address(stor26[idx].field_0) = address(stor26[stor26.length].field_0)
                stor26.length--
                if stor26.length > stor26.length - 1:
                    idx = stor26.length + sha3(26) - 1
                    while sha3(26) + stor26.length > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
    else:
        if arg2 > 0:
            stor26.length++
            stor57C3[stor26.length] = arg1
}

function sub_ecedb31e(?) {
    if stor1 != msg.sender:
        if bool(permissions[msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not contract owner and does not have permission.'
    if arg2 >= 256:
        revert with 0, '_position greater than 255'
    if uint256(permissions[address(arg1)]):
        uint256(permissions[address(arg1)]) = !2^arg2 and uint256(permissions[address(arg1)])
        if not !2^arg2 or not uint256(permissions[address(arg1)]):
            idx = 0
            while idx < stor26.length:
                mem[0] = 26
                if address(stor26[idx].field_0) != arg1:
                    idx = idx + 1
                    continue 
                require stor26.length - 1 < stor26.length
                require idx < stor26.length
                address(stor26[idx].field_0) = address(stor26[stor26.length].field_0)
                stor26.length--
                if stor26.length > stor26.length - 1:
                    idx = stor26.length + sha3(26) - 1
                    while sha3(26) + stor26.length > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
}



}
