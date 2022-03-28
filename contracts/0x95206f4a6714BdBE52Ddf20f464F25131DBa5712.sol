contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[363 len 20]
    return code.data[72 len 279]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert 
}

function sub_1d21fb12(?) {
    require ext_code.size(stor0)
    call stor0.solveBet(address rg1, uint8 rg2, bool rg3, uint8 rg4, bytes32 rg5, bytes32 rg6) with:
         gas gas_remaining - 50 wei
        args 0, 0, arg1 << 248, 1, 255, 0, 0
    require ext_call.success
}



}
