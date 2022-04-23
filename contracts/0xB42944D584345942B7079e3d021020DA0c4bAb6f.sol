contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = 0xf97e0a5b616dffc913e72455fde9ea8bbe946a2b
    require not msg.value
    require ext_code.size(stor1)
    call stor1.mixGenes(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x42568318e7484694b9c9014a3218c6599ae0a82a314c6314454a5096b98e, 0x42508398871a5267392928060310c6631a60a803398c7108637a1cf7396d, 4643000
    require ext_call.success
    stor0 = ext_call.return_data[0]
    return code.data[379 len 156]
}



// =====================  Runtime code  =====================


uint256 sub_981a5d4e;

function sub_981a5d4e(?) {
    return sub_981a5d4e
}

function _fallback() payable {
    revert
}



}
