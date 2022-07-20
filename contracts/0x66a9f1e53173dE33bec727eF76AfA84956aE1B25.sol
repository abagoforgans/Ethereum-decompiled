contract main {




// =====================  Runtime code  =====================


uint256 sub_bb17fa9d;
uint256 sub_a3b287b5;
address owner;
address sub_24be33a2Address;
address stor4;

function sub_24be33a2(?) {
    return sub_24be33a2Address
}

function owner() {
    return owner
}

function sub_a3b287b5(?) {
    return sub_a3b287b5
}

function sub_bb17fa9d(?) {
    return sub_bb17fa9d
}

function _fallback() payable {
  stop
}

function sub_f40b26bd(?) {
    require msg.sender == owner
    stor4 = arg1
}

function sub_00fc195e(?) {
    require msg.sender == owner
    sub_24be33a2Address = arg1
}

function sub_66c985c9(?) {
    require msg.sender == owner
    require arg1 < eth.balance(this.address) - sub_a3b287b5
    sub_bb17fa9d = arg1
}

function sub_707504a8(?) {
    require msg.sender == owner
    require arg1 < eth.balance(this.address) - sub_bb17fa9d
    sub_a3b287b5 = arg1
}

function depositEth(uint256 arg1, uint256 arg2) payable {
    require arg1 <= 100
    require arg2 <= 100
    require arg2 + arg1 <= 100
    sub_bb17fa9d += msg.value * arg1 / 100
    sub_a3b287b5 += msg.value * arg2 / 100
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require 0xdf0960778c6e6597f197ed9a25f12f5d971da86c == msg.sender
    require ext_code.size(sub_24be33a2Address)
    call sub_24be33a2Address.priceOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= sub_bb17fa9d
    require ext_code.size(msg.sender)
    call msg.sender.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), 0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_bb17fa9d -= ext_call.return_data[0]
    call arg1 with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d22e5b04(?) {
    require msg.sender == owner
    require arg2 > 0
    require ext_code.size(stor4)
    call stor4.0x4f558e79 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(stor4)
    call stor4.0x1c2d6998 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args owner, stor4, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg3 >= sub_a3b287b5
    sub_a3b287b5 -= arg3
    call owner with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenPurchase(address(ext_call.return_data[0]), arg2, arg3);
}



}
