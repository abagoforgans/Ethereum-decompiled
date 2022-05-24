contract main {




// =====================  Runtime code  =====================


uint8 temporalUnit; offset 160
address factoryAddress;
address feeRecipientAddress;

function temporalUnit() {
    require temporalUnit <= 2
    return temporalUnit
}

function feeRecipient() {
    return feeRecipientAddress
}

function factoryAddress() {
    return factoryAddress
}

function _fallback() payable {
  stop
}

function computeEndowment(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require ext_code.size(0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63)
    delegate 0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63.getEXECUTION_GAS_OVERHEAD() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb5090c9c05cea1899d1b86c30d99f4d0d3440b05)
    delegate 0xb5090c9c05cea1899d1b86c30d99f4d0d3440b05.computeEndowment(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, arg3, arg4, arg5, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function schedule(address arg1, bytes arg2, uint256[8] arg3) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len 256] = call.data[68 len 256]
    require ext_code.size(0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63)
    delegate 0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63.getEXECUTION_GAS_OVERHEAD() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb5090c9c05cea1899d1b86c30d99f4d0d3440b05)
    delegate 0xb5090c9c05cea1899d1b86c30d99f4d0d3440b05.computeEndowment(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
         gas gas_remaining wei
        args call.data[260], call.data[228], call.data[68], call.data[100], call.data[196], delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value >= delegate.return_data[0]
    require temporalUnit <= 2
    require temporalUnit <= 2
    if temporalUnit != 1:
        require temporalUnit == 2
    mem[ceil32(arg2.length) + 1412 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        require ext_code.size(factoryAddress)
        call factoryAddress.0xd7ceab4c with:
           value msg.value wei
             gas gas_remaining wei
            args feeRecipientAddress, arg1 >> 512, call.data[292] >> 2816, 512, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 1412] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 1444 len arg2.length % 32]
        require ext_code.size(factoryAddress)
        call factoryAddress.0xd7ceab4c with:
           value msg.value wei
             gas gas_remaining wei
            args feeRecipientAddress, arg1 >> 512, call.data[292] >> 2816, 512, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 1412 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require address(ext_call.return_data[0])
    emit NewRequest(address(ext_call.return_data[0]));
    return address(ext_call.return_data[0])
}



}
