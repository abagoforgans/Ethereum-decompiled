contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0xf97e0a5b616dffc913e72455fde9ea8bbe946a2b
    return code.data[114 len 393]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function mixGenes(uint256 arg1, uint256 arg2, uint256 arg3) {
    require ext_code.size(stor0)
    call stor0.mixGenes(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args arg1, arg2, arg3
    require ext_call.success
    return ext_call.return_data[0]
}



}
