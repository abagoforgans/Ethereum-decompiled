contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 0xaad0bc85c3b57bb89f4e625aea4f76410ef56f3a
    stor1 = 0x3df4c372a29376d2c8df33a1b5f001cd8d68b0e
    stor2 = 0
    require not msg.value
    return code.data[204 len 1503]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 available;

function available() {
    return available
}

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sendTokens() {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_9f702daf(?) {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.CurrentMined() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    available = -ext_call.return_data[0] + 50
    require available > 0
    idx = 0
    while idx < available:
        mem[128] = 0
        require ext_code.size(stor1)
        call stor1.Mine() with:
             gas gas_remaining - 710 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
