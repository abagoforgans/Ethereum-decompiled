contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 31337
    require not msg.value
    return code.data[36 len 873]
}



// =====================  Runtime code  =====================


const extensions = 0xf46002c37af6fb078ae1833fd447698a0c9012f7


uint256 sub_b8f7cc21;

function sub_b8f7cc21(?) {
    return sub_b8f7cc21
}

function _fallback() payable {
    revert
}

function sub_741311bd(?) {
    require ext_code.size(0xf46002c37af6fb078ae1833fd447698a0c9012f7)
    call 0xf46002c37af6fb078ae1833fd447698a0c9012f7.formula() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).calculateSaleReturn(uint256 rg1, uint256 rg2, uint32 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, arg1, arg2, arg3 << 224, arg4
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_dc3c73b4(?) {
    require ext_code.size(0xf46002c37af6fb078ae1833fd447698a0c9012f7)
    call 0xf46002c37af6fb078ae1833fd447698a0c9012f7.formula() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).calculateSaleReturn(uint256 rg1, uint256 rg2, uint32 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, arg1, arg2, arg3 << 224, arg4
    require ext_call.success
    sub_b8f7cc21 = ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
