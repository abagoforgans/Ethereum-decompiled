contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 40
    require not msg.value
    stor0 = msg.sender
    stor1 = 0x3df4c372a29376d2c8df33a1b5f001cd8d68b0e
    return code.data[184 len 1378]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_85a2f6d0(?) {
    if msg.sender == stor0:
        stor2 = arg1
}

function sub_9f702daf(?) {
    if msg.sender == stor0:
        idx = 0
        while idx < stor2:
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

function sendTokens() {
    if msg.sender == stor0:
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



}
