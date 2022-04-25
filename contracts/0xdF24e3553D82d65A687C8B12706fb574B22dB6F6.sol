contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[7658 len 20]
    stor1 = code.data[7690 len 20]
    return code.data[198 len 7448]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) {
    require msg.sender == stor0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_6cf8ea79(?) {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_02619864(?) {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.deposit() with:
       value arg1 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function sub_888855e7(?) payable {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.deposit() with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function withdrawAll() {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.tokens(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0, this.address
    require ext_call.success
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_08cc1ac7(?) {
    require msg.sender == stor0
    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 25710 wei
        args 0, 0, arg4, address(arg1), arg5, arg6, arg7, address(arg2), arg18 << 248, arg14, arg15, arg8
    if ext_call.success:
        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 25710 wei
            args 0, 0, arg9, 0, arg10, arg11, arg12, address(arg3), arg19 << 248, arg16, arg17, arg13
        require ext_call.success
}

function sub_20a06940(?) {
    require msg.sender == stor0
    hash = sha256hash(address(arg1), 0, arg6, arg2, arg5, arg6, arg7) 
    require sha256hash.result
    require ext_code.size(arg1)
    call arg1.orderFills(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg3), hash
    require ext_call.success
    if arg4 - ext_call.return_data[0] < arg8:
        return 0
    call arg1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 25710 wei
        args 0, 0, uint32(arg4), address(arg2), arg5, arg6, arg7, address(arg3), arg9 << 248, arg10, arg11, arg8
    return bool(ext_call.success)
}

function sub_764b641b(?) {
    require ext_code.size(stor1)
    call stor1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg9, 0, arg10, arg11, arg12, address(arg3), arg19 << 248, arg16, arg17
    require ext_call.success
    if ext_call.return_data[0] < arg13:
        return 3
    require ext_code.size(stor1)
    call stor1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg4, address(arg1), arg5, arg6, arg7, address(arg2), arg18 << 248, arg14, arg15
    require ext_call.success
    if ext_call.return_data[0] >= arg8:
        return 1
    return 2
}

function sub_1bf84c36(?) {
    require msg.sender == stor0
    hash = sha256hash(stor1, 0, arg7, 0, arg8, arg9, arg10) 
    require sha256hash.result
    call stor1.orderFills(address rg1, bytes32 rg2) with:
         gas 30000 wei
        args call.data[68], hash
    if ext_call.return_data[0] + arg11 < arg7:
        hash = sha256hash(stor1, 0, arg2, arg1, arg3, arg4, arg5) 
        require sha256hash.result
        call stor1.orderFills(address rg1, bytes32 rg2) with:
             gas 30000 wei
            args call.data[36], hash
        if ext_call.return_data[0] + arg6 <= arg2:
            call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas 120000 wei
                args 0, call.data[100], address(arg1), call.data[132], call.data[164], call.data[196], call.data[36], call.data[548], call.data[420], call.data[452], call.data[228]
            if not -ext_call.success + 1:
                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas 120000 wei
                    args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[580], call.data[484], call.data[516], call.data[388]
}



}
