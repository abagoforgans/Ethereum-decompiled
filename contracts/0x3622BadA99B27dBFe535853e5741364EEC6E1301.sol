contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
address stor1;

function _fallback() {
    stor1 = code.data[4845 len 20]
    stor0[code.data[4813 len 20]] = 1
    return code.data[116 len 4685]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
address sub_3e32a687Address;

function sub_3e32a687(?) {
    return sub_3e32a687Address
}

function admins(address arg1) {
    return bool(stor0[arg1])
}

function _fallback() payable {
  stop
}

function addAdmin(address arg1) {
    require stor0[address(msg.sender)]
    stor0[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require stor0[address(msg.sender)]
    stor0[address(arg1)] = 0
}

function depositAll() payable {
    require ext_code.size(sub_3e32a687Address)
    call sub_3e32a687Address.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function depositTokens(address arg1, uint256 arg2) {
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args sub_3e32a687Address, arg2
    require ext_call.success
    require ext_code.size(sub_3e32a687Address)
    call sub_3e32a687Address.0x338b5dea with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function withdrawAll() {
    require stor0[address(msg.sender)]
    require ext_code.size(sub_3e32a687Address)
    call sub_3e32a687Address.tokens(address arg1, address arg2) with:
         gas gas_remaining - 710 wei
        args 0, this.address
    require ext_call.success
    require ext_code.size(sub_3e32a687Address)
    call sub_3e32a687Address.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function withdrawAllTokens(address arg1) {
    require stor0[address(msg.sender)]
    require ext_code.size(sub_3e32a687Address)
    call sub_3e32a687Address.tokens(address arg1, address arg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), this.address
    require ext_call.success
    require ext_code.size(sub_3e32a687Address)
    call sub_3e32a687Address.0x9e281a98 with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    require stor0[address(msg.sender)]
    require ext_code.size(sub_3e32a687Address)
    call sub_3e32a687Address.0xfb6e155f with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10
    require ext_call.success
    if ext_call.return_data[0] < arg11:
        return 0
    call sub_3e32a687Address.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining - 25710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11
    require ext_call.success
    return 1
}

function sub_dfe20171(?) {
    require stor0[address(msg.sender)]
    require arg2
    s = 10^18 * arg4 * arg3 / arg2 / 1003 * 10^15
    while arg4 * arg3 / arg2 <= s + (3 * 10^15 * s / 10^18):
        s = s - 1
        continue 
    call sub_3e32a687Address.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas 130000 wei
        args 0, call.data[100], address(arg1), call.data[132], call.data[164], call.data[196], call.data[36], call.data[516], call.data[388], call.data[420], call.data[228]
    require ext_call.success
    call sub_3e32a687Address.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas 130000 wei
        args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], s
    require ext_call.success
    return 1
}

function sub_f38b2f00(?) {
    require stor0[address(msg.sender)]
    require arg2
    s = 10^18 * arg4 * arg3 / arg2 / 1003 * 10^15
    while arg4 * arg3 / arg2 <= s + (3 * 10^15 * s / 10^18):
        s = s - 1
        continue 
    hash = sha256hash(sub_3e32a687Address, 0, arg5, 0, arg6, arg7, arg8) 
    require sha256hash.result
    call sub_3e32a687Address.0x19774d43 with:
         gas 30000 wei
        args call.data[68], hash
    if ext_call.return_data[0] + s > arg5:
        return 2
    call sub_3e32a687Address.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas 130000 wei
        args 0, call.data[100], address(arg1), call.data[132], call.data[164], call.data[196], call.data[36], call.data[516], call.data[388], call.data[420], call.data[228]
    require ext_call.success
    call sub_3e32a687Address.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas 130000 wei
        args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], s
    require ext_call.success
    return 1
}

function sub_105a02e9(?) {
    require stor0[address(msg.sender)]
    hash = sha256hash(sub_3e32a687Address, 0, arg2, arg1, arg3, arg4, arg5) 
    require sha256hash.result
    call sub_3e32a687Address.0x19774d43 with:
         gas 30000 wei
        args call.data[36], hash
    if ext_call.return_data[0] + arg6 > arg2:
        return 3
    require arg2
    s = 10^18 * arg6 * arg3 / arg2 / 1003 * 10^15
    while arg6 * arg3 / arg2 <= s + (3 * 10^15 * s / 10^18):
        s = s - 1
        continue 
    call sub_3e32a687Address.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas 130000 wei
        args 0, call.data[100], address(arg1), call.data[132], call.data[164], call.data[196], call.data[36], call.data[516], call.data[388], call.data[420], call.data[228]
    require ext_call.success
    call sub_3e32a687Address.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas 130000 wei
        args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], s
    require ext_call.success
    return 1
}

function sub_c8c506a8(?) {
    require stor0[address(msg.sender)]
    require arg2
    s = 10^18 * arg6 * arg3 / arg2 / 1003 * 10^15
    while arg6 * arg3 / arg2 <= s + (3 * 10^15 * s / 10^18):
        s = s - 1
        continue 
    hash = sha256hash(sub_3e32a687Address, 0, arg7, 0, arg8, arg9, arg10) 
    require sha256hash.result
    call sub_3e32a687Address.0x19774d43 with:
         gas 30000 wei
        args call.data[68], hash
    if ext_call.return_data[0] + s > arg7:
        return 3
    hash = sha256hash(sub_3e32a687Address, 0, uint64(arg2), arg1, arg3, arg4, arg5) 
    require sha256hash.result
    call sub_3e32a687Address.0x19774d43 with:
         gas 30000 wei
        args call.data[36], hash
    if ext_call.return_data[0] + arg6 > arg2:
        return 2
    call sub_3e32a687Address.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas 130000 wei
        args 0, call.data[100], address(arg1), call.data[132], call.data[164], call.data[196], call.data[36], call.data[516], call.data[388], call.data[420], call.data[228]
    require ext_call.success
    call sub_3e32a687Address.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas 130000 wei
        args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], s
    require ext_call.success
    return 1
}

function sub_4e927690(?) {
    require stor0[address(msg.sender)]
    require arg2
    s = 10^18 * arg6 * arg3 / arg2 / 1003 * 10^15
    while arg6 * arg3 / arg2 <= s + (3 * 10^15 * s / 10^18):
        s = s - 1
        continue 
    hash = sha256hash(sub_3e32a687Address, 0, arg7, 0, arg8, arg9, arg10) 
    require sha256hash.result
    call sub_3e32a687Address.0x19774d43 with:
         gas 30000 wei
        args call.data[68], hash
    if ext_call.return_data[0] + s <= arg7:
        hash = sha256hash(sub_3e32a687Address, 0, uint64(arg2), arg1, arg3, arg4, arg5) 
        require sha256hash.result
        call sub_3e32a687Address.0x19774d43 with:
             gas 30000 wei
            args call.data[36], hash
        if ext_call.return_data[0] + arg6 <= arg2:
            call sub_3e32a687Address.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas 130000 wei
                args 0, call.data[100], address(arg1), call.data[132], call.data[164], call.data[196], call.data[36], call.data[516], call.data[388], call.data[420], call.data[228]
            if ext_call.success:
                call sub_3e32a687Address.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas 130000 wei
                    args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], s
                if ext_call.success:
                    return 1
    revert
}



}
