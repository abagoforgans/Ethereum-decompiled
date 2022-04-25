contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 4961]
}



// =====================  Runtime code  =====================


address stor0;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function sub_2fd2e478(?) {
  stop
}

function sub_a9378d5b(?) {
    return arg1
}

function _fallback() payable {
    emit AnonymousDeposit(msg.value, msg.sender);
}

function sub_d1b28310(?) {
    if msg.sender == stor0:
        return 'The Falsh'
    return '--'
}

function sub_ccc9896f(?) payable {
    if msg.sender == stor0:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sub_e1e3aceb(?) {
    if msg.sender == stor0:
        require ext_code.size(arg1)
        call arg1.0x2e1a7d4d with:
             gas gas_remaining - 710 wei
            args arg2
        require ext_call.success
}

function sub_c85965e1(?) {
    require ext_code.size(arg1)
    call arg1.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0, this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_24dfbef9(?) payable {
    if msg.sender == stor0:
        require ext_code.size(arg1)
        call arg1.depositToken(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args 0, arg2
        require ext_call.success
}

function sub_30b7f5ba(?) {
    emit AnonymousDeposit(msg.value, msg.sender);
    if msg.sender == stor0:
        require ext_code.size(arg1)
        call arg1.depositToken(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args 0, arg2
        require ext_call.success
}

function sub_f0e3207d(?) {
    if msg.sender == stor0:
        require ext_code.size(arg1)
        call arg1.0x2e1a7d4d with:
             gas gas_remaining - 710 wei
            args arg2
        require ext_call.success
        if msg.sender == stor0:
            call msg.sender with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function sub_8f5392f1(?) {
    if msg.sender == stor0:
        require ext_code.size(arg1)
        call arg1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, call.data[68], 0, call.data[100], call.data[132], call.data[164], address(arg2), arg3, arg4, arg5, arg6
        require ext_call.success
}

function sub_02b9ee69(?) {
    if msg.sender == stor0:
        require ext_code.size(arg1)
        call arg1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, call.data[68], address(arg2), call.data[100], call.data[132], call.data[164], address(arg3), arg4, arg5, arg6, arg7
        require ext_call.success
}

function sub_62e9bd52(?) {
    if msg.sender == stor0:
        require ext_code.size(arg1)
        call arg1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, call.data[68], address(arg2), call.data[100], call.data[132], call.data[164], address(arg3), arg4 << 248, arg5, arg6, arg11
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args address(arg2), call.data[324], 0, call.data[356], call.data[388], call.data[420], address(arg7), arg8 << 248, arg9, arg10, arg11
        require ext_call.success
}



}
