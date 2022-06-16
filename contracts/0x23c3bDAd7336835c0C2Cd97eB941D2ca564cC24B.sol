contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
uint256 sub_f139c8e8;

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function sub_f139c8e8(?) {
    return sub_f139c8e8
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_5ce093de(?) payable {
    require msg.value + sub_f139c8e8 >= sub_f139c8e8
    sub_f139c8e8 += msg.value
}

function sub_373420d9(?) {
    require sub_f139c8e8 <= eth.balance(this.address)
    return (eth.balance(this.address) - sub_f139c8e8)
}

function sub_d95f98ce(?) {
    require ext_code.size(0x31cf8b6e8bb6cb16f23889f902be86775bb1d0b3)
    call 0x31cf8b6e8bb6cb16f23889f902be86775bb1d0b3.shootSemiRandom() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_984a2df1(?) {
    require ext_code.size(0x31cf8b6e8bb6cb16f23889f902be86775bb1d0b3)
    call 0x31cf8b6e8bb6cb16f23889f902be86775bb1d0b3.0xdc82a98f with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2157c46a(?) {
    require msg.sender == owner
    require sub_f139c8e8 <= eth.balance(this.address)
    call msg.sender with:
       value eth.balance(this.address) - sub_f139c8e8 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d69ff352(?) {
    require ext_code.size(0x31cf8b6e8bb6cb16f23889f902be86775bb1d0b3)
    call 0x31cf8b6e8bb6cb16f23889f902be86775bb1d0b3.myEarnings() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b578418e(?) {
    if arg2:
        require arg2
        require 10^17 * arg2 / arg2 == 10^17
    require sub_f139c8e8 > 10^17 * arg2
    if arg2:
        require arg2
        require 10^17 * arg2 / arg2 == 10^17
    require 10^17 * arg2 <= sub_f139c8e8
    sub_f139c8e8 += -1 * 10^17 * arg2
    if arg2:
        require arg2
        require 10^17 * arg2 / arg2 == 10^17
    require ext_code.size(0x31cf8b6e8bb6cb16f23889f902be86775bb1d0b3)
    call 0x31cf8b6e8bb6cb16f23889f902be86775bb1d0b3.0xbe7f3a4c with:
       value 10^17 * arg2 wei
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
