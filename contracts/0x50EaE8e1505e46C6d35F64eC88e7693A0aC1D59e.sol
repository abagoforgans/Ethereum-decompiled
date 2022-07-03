contract main {




// =====================  Runtime code  =====================


address adminaddr;
address sub_7e0bb111Address;
address owner;
mapping of uint256 sub_3baed1d6;
mapping of uint256 sub_b51502e3;

function sub_3baed1d6(?) {
    return sub_3baed1d6[arg1][arg2]
}

function sub_7e0bb111(?) {
    return sub_7e0bb111Address
}

function owner() {
    return owner
}

function adminaddr() {
    return adminaddr
}

function sub_b51502e3(?) {
    return sub_b51502e3[arg1]
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
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_cfc3f130(?) payable {
    if adminaddr != msg.sender:
        return 0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_146104e1(?) {
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

function sub_6975fd82(?) payable {
    if adminaddr == msg.sender:
        sub_3baed1d6[address(msg.sender)][address(arg1)] -= arg3
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_5ed15d91(?) payable {
    if adminaddr == msg.sender:
        if sub_3baed1d6[address(msg.sender)][address(arg1)] >= arg3:
            sub_3baed1d6[address(msg.sender)][address(arg1)] -= arg3
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function transfer(address arg1, uint256 arg2) payable {
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        sub_3baed1d6[address(msg.sender)][address(arg1)] += arg2
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
