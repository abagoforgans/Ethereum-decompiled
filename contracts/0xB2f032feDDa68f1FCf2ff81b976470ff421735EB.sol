contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor1 = code.data[1756 len 20]
    stor0 = msg.sender
    return code.data[188 len 1556]
}



// =====================  Runtime code  =====================


address stor0;
address sub_7940a3efAddress;

function sub_7940a3ef(?) {
    return sub_7940a3efAddress
}

function _fallback() payable {
    revert
}

function Claim() {
    require msg.sender == stor0
    require ext_code.size(sub_7940a3efAddress)
    call sub_7940a3efAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(sub_7940a3efAddress)
    call sub_7940a3efAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
}

function sub_ff7aacc4(?) {
    require msg.sender == stor0
    require ext_code.size(sub_7940a3efAddress)
    call sub_7940a3efAddress.MaxMiningReward() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_7940a3efAddress)
    call sub_7940a3efAddress.CurrentMined() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if 0 <= arg1:
        idx = 0
        while idx < 0:
            mem[128] = 0
            require ext_code.size(sub_7940a3efAddress)
            call sub_7940a3efAddress.Mine() with:
                 gas gas_remaining - 710 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < arg1:
            mem[128] = 0
            require ext_code.size(sub_7940a3efAddress)
            call sub_7940a3efAddress.Mine() with:
                 gas gas_remaining - 710 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            continue 
}



}
