contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address tokenAddress;

function getToken() {
    return tokenAddress
}

function isAdmin(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function setToken(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    tokenAddress = arg1
}

function renounceAdmin() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit AdminRemoved(msg.sender);
}

function addAdmin(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function withdrawEther(uint256 arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x88f6de14: arg1, msg.sender
}

function withdrawToken(uint256 arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenWithdraw(tokenAddress, arg1, msg.sender);
}

function sub_cf9891fb(?) {
    require msg.sender
    require stor0[address(msg.sender)]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[132] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        idx = idx + 1
        continue 
}



}
