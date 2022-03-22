contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[171 len 32]
    return code.data[52 len 119]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    call stor0.giveFor(address rg1) with:
       value msg.value wei
         gas gas_remaining - 34050 wei
        args msg.sender
    require ext_call.success
}



}
