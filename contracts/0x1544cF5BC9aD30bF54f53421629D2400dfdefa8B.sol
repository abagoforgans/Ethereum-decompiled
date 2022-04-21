contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xcd7f46b8a66203b842c7b68863de7e90643e426b
    require not msg.value
    return code.data[114 len 421]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function deliverTokens(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    return 1
}



}
