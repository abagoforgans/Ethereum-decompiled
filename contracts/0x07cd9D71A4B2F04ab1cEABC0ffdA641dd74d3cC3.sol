contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() payable {
    stor5 = 0xf97e0a5b616dffc913e72455fde9ea8bbe946a2b
    require not msg.value
    require ext_code.size(stor5)
    call stor5.mixGenes(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x42568318e7484694b9c9014a3218c6599ae0a82a314c6314454a5096b98e, 0x42508398871a5267392928060310c6631a60a803398c7108637a1cf7396d, 4643000
    require ext_call.success
    stor0 = ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.mixGenes(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x42568318e7484694b9c9014a3218c6599ae0a82a314c6314454a5096b98e, 0x42508398871a5267392928060310c6631a60a803398c7108637a1cf7396d, 4643001
    require ext_call.success
    stor1 = ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.mixGenes(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x42568318e7484694b9c9014a3218c6599ae0a82a314c6314454a5096b98e, 0x42508398871a5267392928060310c6631a60a803398c7108637a1cf7396d, 4643002
    require ext_call.success
    stor2 = ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.mixGenes(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x42568318e7484694b9c9014a3218c6599ae0a82a314c6314454a5096b98e, 0x42508398871a5267392928060310c6631a60a803398c7108637a1cf7396d, 4643003
    require ext_call.success
    stor3 = ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.mixGenes(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x42568318e7484694b9c9014a3218c6599ae0a82a314c6314454a5096b98e, 0x42508398871a5267392928060310c6631a60a803398c7108637a1cf7396d, 4643004
    require ext_call.success
    stor4 = ext_call.return_data[0]
    return code.data[1440 len 393]
}



// =====================  Runtime code  =====================


uint256 sub_981a5d4e;
uint256 sub_4dda8cf6;
uint256 sub_3644e445;
uint256 sub_68b8077a;
uint256 sub_e587ff1f;

function sub_3644e445(?) {
    return sub_3644e445
}

function sub_4dda8cf6(?) {
    return sub_4dda8cf6
}

function sub_68b8077a(?) {
    return sub_68b8077a
}

function sub_981a5d4e(?) {
    return sub_981a5d4e
}

function sub_e587ff1f(?) {
    return sub_e587ff1f
}

function _fallback() payable {
    revert
}



}
