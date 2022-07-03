contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 4229]
}



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
    require ext_call.success
    return 1
}

function sub_cfc3f130(?) payable {
    if adminaddr != msg.sender:
        return 0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function sub_146104e1(?) {
    require ext_code.size(arg1)
    call arg1.balanceOf(address arg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.balanceOf(address arg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_6975fd82(?) payable {
    if adminaddr == msg.sender:
        sub_3baed1d6[address(msg.sender)][address(arg1)] -= arg3
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg2), arg3
        require ext_call.success
}

function sub_5ed15d91(?) payable {
    if adminaddr == msg.sender:
        if sub_3baed1d6[address(msg.sender)][address(arg1)] >= arg3:
            sub_3baed1d6[address(msg.sender)][address(arg1)] -= arg3
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg2), arg3
            require ext_call.success
}

function transfer(address arg1, uint256 arg2) payable {
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), arg2
    require ext_call.success
    if ext_call.return_data[0]:
        sub_3baed1d6[address(msg.sender)][address(arg1)] += arg2
        require ext_code.size(arg1)
        call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg2
        require ext_call.success
}



}
