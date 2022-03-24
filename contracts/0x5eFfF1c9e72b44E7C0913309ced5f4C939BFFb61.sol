contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    if block.number <= 1928300:
        stor0 = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
    else:
        stor0 = 0x32be343b94f860124dc4fee278fdcbd38c102d88
    return code.data[160 len 176]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    call stor0 with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    emit 0x765fa59e: 1
}



}
