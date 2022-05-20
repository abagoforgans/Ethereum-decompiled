contract main {




// =====================  Runtime code  =====================


array of uint256 message;
address owner;

function owner() {
    return owner
}

function message() {
    return message[0 len message.length]
}

function _fallback() payable {
    revert
}

function modifyMessage(string arg1) {
    require msg.sender == owner
    message[] = Array(len=arg1.length, data=arg1[all])
}

function flushETH() {
    require msg.sender == owner
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function flushERC20(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}



}
