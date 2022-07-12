contract main {




// =====================  Runtime code  =====================


address owner;
address sub_2f8b94fcAddress;

function sub_2f8b94fc(?) {
    return sub_2f8b94fcAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    owner = arg1
}

function sub_5ba2b552(?) {
    require msg.sender == owner
    require ext_code.size(sub_2f8b94fcAddress)
    call sub_2f8b94fcAddress.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(sub_2f8b94fcAddress)
    call sub_2f8b94fcAddress.0x7162ec29 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_457e2109(?) {
    require msg.sender == owner
    require ext_code.size(sub_2f8b94fcAddress)
    call sub_2f8b94fcAddress.0x7162ec29 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function freezeAddress(address arg1, bool arg2) {
    require msg.sender == owner
    require ext_code.size(sub_2f8b94fcAddress)
    call sub_2f8b94fcAddress.0x694df50a with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function frozenAddress(address arg1) {
    require ext_code.size(sub_2f8b94fcAddress)
    call sub_2f8b94fcAddress.0x29b08ff2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function balanceOf(address arg1) {
    require ext_code.size(sub_2f8b94fcAddress)
    call sub_2f8b94fcAddress.getBalance(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_5927896c(?) {
    require msg.sender == owner
    require ext_code.size(sub_2f8b94fcAddress)
    call sub_2f8b94fcAddress.0xdd4d7fa6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    require ext_code.size(sub_2f8b94fcAddress)
    call sub_2f8b94fcAddress.0x5927896c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn(uint256 arg1) {
    require ext_code.size(sub_2f8b94fcAddress)
    call sub_2f8b94fcAddress.getBalance(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require ext_code.size(sub_2f8b94fcAddress)
    call sub_2f8b94fcAddress.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_eea1c394(?) {
    require ext_code.size(sub_2f8b94fcAddress)
    call sub_2f8b94fcAddress.0xdd4d7fa6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2f8b94fcAddress)
    call sub_2f8b94fcAddress.0xd6a65535 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return Array(len=44, data=0x546869732061646472657373206973206c6f636b656420e2869320417661696c, 'able balance', Mask(96, -256, 0x546869732061646472657373206973206c6f636b656420e2869320417661696c, 'able balance') << 256), 
               ext_call.return_data[0]
    return 'This address is not locked', ext_call.return_data[0]
}

function sub_d62513d0(?) {
    require msg.sender == owner
    require arg2 > 0
    require arg2 <= 100
    require ext_code.size(sub_2f8b94fcAddress)
    call sub_2f8b94fcAddress.getBalance(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_2f8b94fcAddress)
        call sub_2f8b94fcAddress.getBalance(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 <= ext_call.return_data[0]
        require ext_code.size(sub_2f8b94fcAddress)
        call sub_2f8b94fcAddress.0xeb3fb9db with:
             gas gas_remaining wei
            args address(arg1), arg2, ext_call.return_data[0]
    else:
        require ext_call.return_data[0]
        require ext_call.return_data[0] * arg2 / ext_call.return_data[0] == arg2
        if not ext_call.return_data[0] * arg2:
            require ext_code.size(sub_2f8b94fcAddress)
            call sub_2f8b94fcAddress.getBalance(address arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 <= ext_call.return_data[0]
            require ext_code.size(sub_2f8b94fcAddress)
            call sub_2f8b94fcAddress.0xeb3fb9db with:
                 gas gas_remaining wei
                args address(arg1), arg2, ext_call.return_data[0]
        else:
            require ext_call.return_data[0] * arg2
            require 100 * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 == 100
            require ext_code.size(sub_2f8b94fcAddress)
            call sub_2f8b94fcAddress.getBalance(address arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 100 * ext_call.return_data[0] * arg2 / 10000 <= ext_call.return_data[0]
            require ext_code.size(sub_2f8b94fcAddress)
            call sub_2f8b94fcAddress.0xeb3fb9db with:
                 gas gas_remaining wei
                args address(arg1), arg2, ext_call.return_data[0] - (100 * ext_call.return_data[0] * arg2 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
