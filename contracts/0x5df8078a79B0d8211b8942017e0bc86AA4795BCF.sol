contract main {




// =====================  Runtime code  =====================


address sub_f3ad65f4Address;
uint8 stor1; offset 160
uint128 stor1; offset 160
address sub_f6fea0cbAddress;

function freezed() {
    return bool(uint8(stor1.field_160))
}

function sub_f3ad65f4(?) {
    return sub_f3ad65f4Address
}

function sub_f6fea0cb(?) {
    return sub_f6fea0cbAddress
}

function _fallback() payable {
  stop
}

function freeze(bool arg1) {
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'admin'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'Permission Denied'
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function sub_a3d409fe(?) {
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'admin'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'Permission Denied'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getETHRate() {
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'ethfeed'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).peek() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function pethPEReth(uint256 arg1) {
    require ext_code.size(sub_f6fea0cbAddress)
    call sub_f6fea0cbAddress.per() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Assertion Failed'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if arg1:
            if 1000000000 * 10^18 * arg1 / arg1 != 1000000000 * 10^18:
                revert with 0, 'Assertion Failed'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Assertion Failed'
            if ext_call.return_data[0]:
                return (1000000000 * 10^18 * arg1 / ext_call.return_data[0])
    revert
}

function approveERC20() {
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'weth'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f6fea0cbAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'peth'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f6fea0cbAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'mkr'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f6fea0cbAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'dai'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f6fea0cbAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_91aee603(?) payable {
    if uint8(stor1.field_160):
        revert with 0, 'Operation Disabled'
    require ext_code.size(sub_f6fea0cbAddress)
    call sub_f6fea0cbAddress.open() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'weth'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f6fea0cbAddress)
    call sub_f6fea0cbAddress.per() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Assertion Failed'
        require ext_call.return_data[0]
        require ext_code.size(sub_f6fea0cbAddress)
        call sub_f6fea0cbAddress.join(uint256 arg1) with:
             gas gas_remaining wei
            args (0 / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f6fea0cbAddress)
        call sub_f6fea0cbAddress.lock(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0 / ext_call.return_data[0]
    else:
        require arg1
        if 1000000000 * 10^18 * arg1 / arg1 != 1000000000 * 10^18:
            revert with 0, 'Assertion Failed'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Assertion Failed'
        require ext_call.return_data[0]
        require ext_code.size(sub_f6fea0cbAddress)
        call sub_f6fea0cbAddress.join(uint256 arg1) with:
             gas gas_remaining wei
            args (1000000000 * 10^18 * arg1 / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_f6fea0cbAddress)
        call sub_f6fea0cbAddress.lock(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1000000000 * 10^18 * arg1 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f6fea0cbAddress)
    call sub_f6fea0cbAddress.draw(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'dai2eth'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'dai'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x98689001 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) > eth.balance(this.address) - msg.value:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) - msg.value != eth.balance(this.address):
        revert with 0, 'No Refund of Contract ETH'
    if arg3:
        require ext_code.size(sub_f6fea0cbAddress)
        call sub_f6fea0cbAddress.give(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], msg.sender
    else:
        require ext_code.size(sub_f3ad65f4Address)
        call sub_f3ad65f4Address.getAddr(string arg1) with:
             gas gas_remaining wei
            args 'bankv2'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xb9ca3bf6 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x6fe994b5 with:
             gas gas_remaining wei
            args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xdaa1c6e0: ext_call.return_data[0], arg1, arg2
}



}
