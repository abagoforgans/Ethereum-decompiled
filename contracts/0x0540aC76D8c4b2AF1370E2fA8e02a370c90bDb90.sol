contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function kill() {
    selfdestruct(0x21f9e8e4b1ad9ee2f7646878e501eefb4abfa5c0)
}

function _fallback() payable {
  stop
}

function myfucntion() {
    stor0 = stor1
    require ext_code.size(stor0)
    call stor0.serviceFee() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.ScheduleCall(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes arg6, bool arg7) with:
       value ext_call.return_data[0] + 10^15 wei
         gas gas_remaining wei
        args block.timestamp + (24 * 3600), address(this.address), 0, 200000, 5 * 10^9, 224, 1, 4, Mask(32, 64, block.timestamp + (24 * 3600)) >> 64
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function scheduleMyfucntion() {
    stor0 = stor1
    require ext_code.size(stor0)
    call stor0.serviceFee() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.ScheduleCall(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes arg6, bool arg7) with:
       value ext_call.return_data[0] + 10^15 wei
         gas gas_remaining wei
        args block.timestamp + (24 * 3600), address(this.address), 0, 200000, 5 * 10^9, 224, 1, 4, Mask(32, 64, block.timestamp + (24 * 3600)) >> 64
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}



}
