contract main {




// =====================  Runtime code  =====================


address etherdeltaAddress;
mapping of uint8 stor1;

function admin(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function etherdelta() {
    return etherdeltaAddress
}

function _fallback() payable {
  stop
}

function setAdmin(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require stor1[address(msg.sender)]
    stor1[address(arg1)] = uint8(arg2)
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor1[address(msg.sender)]
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor1[address(msg.sender)]
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require stor1[address(msg.sender)]
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.0x9e281a98 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require stor1[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require stor1[address(msg.sender)]
    require arg2
    if not arg1:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}

function depositToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require stor1[address(msg.sender)]
    require stor1[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args etherdeltaAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.0x338b5dea with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_70914237(?) {
    require calldata.size - 4 >= 544
    require stor1[address(msg.sender)]
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) with:
         gas gas_remaining wei
        args 0, call.data[100], address(call.data[4]), call.data[132], call.data[164], call.data[196], address(call.data[36]), call.data[356] << 248, call.data[420], call.data[452]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) with:
         gas gas_remaining wei
        args address(call.data[4]), call.data[228], 0, call.data[260], call.data[292], call.data[324], address(call.data[68]), call.data[388] << 248, call.data[484], call.data[516]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(etherdeltaAddress)
    staticcall etherdeltaAddress.balanceOf(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require call.data[100]
    if ext_call.return_data[0] >= ext_call.return_data[0] + (3 * 10^15 * ext_call.return_data[0] / 10^18):
        if ext_call.return_data[0] >= ext_call.return_data[0] * call.data[132] / call.data[100]:
            require ext_call.return_data[0] > 0
            require ext_code.size(etherdeltaAddress)
            call etherdeltaAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas 200000 wei
                args 0, call.data[100], address(call.data[4]), call.data[132], call.data[164], call.data[196], address(call.data[36]), call.data[356] << 248, call.data[420], call.data[452], ext_call.return_data[0]
        else:
            require call.data[132]
            require ext_call.return_data[0] * call.data[100] / call.data[132] > 0
            require ext_code.size(etherdeltaAddress)
            call etherdeltaAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas 200000 wei
                args 0, call.data[100], address(call.data[4]), call.data[132], call.data[164], call.data[196], address(call.data[36]), call.data[356] << 248, call.data[420], call.data[452], ext_call.return_data[0] * call.data[100] / call.data[132]
    else:
        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] / 1003 * 10^15 * call.data[132] / call.data[100]:
            require 10^18 * ext_call.return_data[0] / 1003 * 10^15 > 0
            require ext_code.size(etherdeltaAddress)
            call etherdeltaAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas 200000 wei
                args 0, call.data[100], address(call.data[4]), call.data[132], call.data[164], call.data[196], address(call.data[36]), call.data[356] << 248, call.data[420], call.data[452], 10^18 * ext_call.return_data[0] / 1003 * 10^15
        else:
            require call.data[132]
            require ext_call.return_data[0] * call.data[100] / call.data[132] > 0
            require ext_code.size(etherdeltaAddress)
            call etherdeltaAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas 200000 wei
                args 0, call.data[100], address(call.data[4]), call.data[132], call.data[164], call.data[196], address(call.data[36]), call.data[356] << 248, call.data[420], call.data[452], ext_call.return_data[0] * call.data[100] / call.data[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(etherdeltaAddress)
    staticcall etherdeltaAddress.balanceOf(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(call.data[4]), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0] + (3 * 10^15 * ext_call.return_data[0] / 10^18):
        require ext_call.return_data[0] > 0
        require ext_code.size(etherdeltaAddress)
        call etherdeltaAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
             gas 200000 wei
            args address(call.data[4]), call.data[228], 0, call.data[260], call.data[292], call.data[324], address(call.data[68]), call.data[388] << 248, call.data[484], call.data[516], ext_call.return_data[0]
    else:
        require 10^18 * ext_call.return_data[0] / 1003 * 10^15 > 0
        require ext_code.size(etherdeltaAddress)
        call etherdeltaAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
             gas 200000 wei
            args address(call.data[4]), call.data[228], 0, call.data[260], call.data[292], call.data[324], address(call.data[68]), call.data[388] << 248, call.data[484], call.data[516], 10^18 * ext_call.return_data[0] / 1003 * 10^15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(etherdeltaAddress)
    staticcall etherdeltaAddress.balanceOf(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > ext_call.return_data[0]
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
