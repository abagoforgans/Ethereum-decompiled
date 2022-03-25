contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    require eth.balance(0xc0d332838f14ef42fcde1cf2518c427ddb676729) <= 10^18
    stor0 = 0xdf21fa922215b1a56f5a6d6294e6e36c85a0acfb
    stor1 = 0xbb9bc244d798123fde783fcc1c72d3bb8c189413
    return code.data[214 len 483]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    require not msg.value
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] <= 0:
    require not msg.value
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}
