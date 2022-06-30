contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 9929]
}



// =====================  Runtime code  =====================


address sub_e35bb411Address;
address masterAddr;

function sub_e35bb411(?) {
    return sub_e35bb411Address
}

function masterAddr() {
    return masterAddr
}

function _fallback() payable {
    revert
}

function setMasterAddr(address arg1) {
    require msg.sender == sub_e35bb411Address
    masterAddr = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == sub_e35bb411Address
    require arg1
    emit OwnershipTransferred(sub_e35bb411Address, arg1);
    sub_e35bb411Address = arg1
}

function approve(address arg1, uint256 arg2, address arg3) {
    require msg.sender == masterAddr
    require arg3 == sub_e35bb411Address
    require ext_code.size(masterAddr)
    call masterAddr.0xda46098c with:
         gas gas_remaining wei
        args address(arg3), address(arg1), arg2
    require ext_call.success
    return 1
}

function sub_32efd52b(?) {
    require msg.sender == masterAddr
    require arg3 == sub_e35bb411Address
    require ext_code.size(masterAddr)
    call masterAddr.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg3), arg1
    require ext_call.success
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_code.size(masterAddr)
    call masterAddr.0xda46098c with:
         gas gas_remaining wei
        args address(arg3), address(arg1), ext_call.return_data[0] + arg2
    require ext_call.success
    return 1
}

function sub_9527b12a(?) {
    require msg.sender == masterAddr
    require arg3 == sub_e35bb411Address
    require ext_code.size(masterAddr)
    call masterAddr.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg3), arg1
    require ext_call.success
    if arg2 >= ext_call.return_data[0]:
        require ext_code.size(masterAddr)
        call masterAddr.0xda46098c with:
             gas gas_remaining wei
            args address(arg3), address(arg1), 0
    else:
        require arg2 <= ext_call.return_data[0]
        require ext_code.size(masterAddr)
        call masterAddr.0xda46098c with:
             gas gas_remaining wei
            args address(arg3), address(arg1), ext_call.return_data[0] - arg2
    require ext_call.success
    return 1
}

function sub_1bf696f8(?) {
    require msg.sender == masterAddr
    require arg1
    require arg2
    require arg4 == sub_e35bb411Address
    require ext_code.size(masterAddr)
    call masterAddr.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(masterAddr)
    call masterAddr.0x3f87cd53 with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0] - arg3
    require ext_call.success
    require ext_code.size(masterAddr)
    call masterAddr.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    require ext_call.success
    require ext_call.return_data[0] + arg3 >= ext_call.return_data[0]
    require ext_code.size(masterAddr)
    call masterAddr.0x3f87cd53 with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0] + arg3
    require ext_call.success
    return 1
}

function changeStage(uint256 arg1) {
    require msg.sender == masterAddr
    require ext_code.size(masterAddr)
    call masterAddr.0x6e3fee3f with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(masterAddr)
    call masterAddr.0x18160ddd with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0] + arg1 >= ext_call.return_data[0]
    require ext_call.return_data[0] + arg1 <= ext_call.return_data[0]
    require ext_code.size(masterAddr)
    call masterAddr.0x77d3b22 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(masterAddr)
    call masterAddr.0xd8c30700 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(masterAddr)
    call masterAddr.0xbed4f43f with:
         gas gas_remaining wei
    require ext_call.success
    require arg1 >= arg1
    require ext_code.size(masterAddr)
    call masterAddr.0xade2240a with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require arg1 + ext_call.return_data[0] >= arg1
    require ext_code.size(masterAddr)
    call masterAddr.0xa4f9062d with:
         gas gas_remaining wei
        args (arg1 + ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(masterAddr)
    call masterAddr.0x2f053c7a with:
         gas gas_remaining wei
        args 0
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3, address arg4) {
    require msg.sender == masterAddr
    require arg2
    require arg4 == sub_e35bb411Address
    require ext_code.size(masterAddr)
    call masterAddr.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_code.size(masterAddr)
    call masterAddr.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
    require arg3 <= ext_call.return_data[0]
    require arg3 <= ext_call.return_data[0]
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(masterAddr)
    call masterAddr.0x3f87cd53 with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0] - arg3
    require ext_call.success
    require ext_code.size(masterAddr)
    call masterAddr.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    require ext_call.success
    require ext_call.return_data[0] + arg3 >= ext_call.return_data[0]
    require ext_code.size(masterAddr)
    call masterAddr.0x3f87cd53 with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0] + arg3
    require ext_call.success
    require ext_code.size(masterAddr)
    call masterAddr.0xa815b258 with:
         gas gas_remaining wei
        args arg2
    require ext_call.success
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(masterAddr)
    call masterAddr.0xda46098c with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ext_call.return_data[0] - arg3
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2, address arg3) {
    require msg.sender == masterAddr
    require arg1
    require arg3 == sub_e35bb411Address
    require ext_code.size(masterAddr)
    call masterAddr.0xd8c30700 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(masterAddr)
    call masterAddr.0x77d3b22 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_call.return_data[0] + arg2 <= ext_call.return_data[0]
    require ext_code.size(masterAddr)
    call masterAddr.0x70a08231 with:
         gas gas_remaining wei
        args arg3
    require ext_call.success
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(masterAddr)
    call masterAddr.0x3f87cd53 with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0] - arg2
    require ext_call.success
    require ext_code.size(masterAddr)
    call masterAddr.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_code.size(masterAddr)
    call masterAddr.0x3f87cd53 with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0] + arg2
    require ext_call.success
    require ext_code.size(masterAddr)
    call masterAddr.0xa815b258 with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_code.size(masterAddr)
    call masterAddr.0x77d3b22 with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_code.size(masterAddr)
    call masterAddr.0x2f053c7a with:
         gas gas_remaining wei
        args (ext_call.return_data[0] + arg2)
    require ext_call.success
    return 1
}



}
