contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor1 = 0x3df4c372a29376d2c8df33a1b5f001cd8d68b0e
    stor0 = msg.sender
    return code.data[179 len 1422]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function Claim() {
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
}

function sub_ff7aacc4(?) {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.MaxMiningReward() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.CurrentMined() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if 0 <= arg1:
        idx = 0
        while idx < 0:
            mem[128] = 0
            require ext_code.size(stor1)
            call stor1.Mine() with:
                 gas gas_remaining - 710 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < arg1:
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
