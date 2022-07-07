contract main {




// =====================  Runtime code  =====================


address sub_a6940a9cAddress;
mapping of uint256 sub_4d694a34;

function sub_4d694a34(?) {
    return sub_4d694a34[arg1][arg2]
}

function sub_a6940a9c(?) {
    return sub_a6940a9cAddress
}

function depositETH() payable {
  stop
}

function _fallback() payable {
    revert
}

function safeSub(uint256 arg1, uint256 arg2) {
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    return (arg1 + arg2)
}

function withdrawETH(address arg1, uint256 arg2) payable {
    if sub_a6940a9cAddress != msg.sender:
        return 0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_cde34c0a(?) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function tokenTransfer(address arg1, uint256 arg2) payable {
    sub_4d694a34[address(msg.sender)][address(arg1)] += arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function tokenWithdraw(address arg1, address arg2, uint256 arg3) payable {
    if sub_a6940a9cAddress == msg.sender:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg3:
            sub_4d694a34[address(msg.sender)][address(arg1)] -= arg3
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}



}
