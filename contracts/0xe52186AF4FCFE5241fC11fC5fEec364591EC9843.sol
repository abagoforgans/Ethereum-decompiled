contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = code.data[1475 len 32]
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[135 len 1340]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function kill() payable {
    require msg.sender == stor1
    call stor0.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call stor0.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, ext_call.return_data[0]
    selfdestruct(stor1)
}

function _fallback() payable {
    call stor0.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] >= 10 * block.timestamp % 3600:
        call stor0.0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args msg.sender, 10 * block.timestamp % 3600
        require ext_call.success
    call stor0.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call stor0.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, ext_call.return_data[0]
    selfdestruct(stor1)
}



}
