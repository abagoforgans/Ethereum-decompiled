contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 1004]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) {
    require msg.sender == stor0
    stor1 = 0x3df4c372a29376d2c8df33a1b5f001cd8d68b0e
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0, arg1
    require ext_call.success
}

function mine() {
    require msg.sender == stor0
    stor1 = 0x3df4c372a29376d2c8df33a1b5f001cd8d68b0e
    idx = 0
    while idx < 50:
        mem[128] = 0
        require ext_code.size(stor1)
        call stor1.Mine() with:
             gas gas_remaining - 710 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
