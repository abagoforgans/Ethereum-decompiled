contract main {


// =======================  Init code  ======================


array of address stor0;
address stor6;

function _fallback() {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    address(stor0[stor0.length]) = msg.sender
    stor6 = msg.sender
    return code.data[291 len 9265]
}



// =====================  Runtime code  =====================


#
#  - crearCelda(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint8 arg6)
#  - sub_0aa4737b(?)
#  - sub_4bb3c9cf(?)
#  - addCaller(address arg1)
#  - sub_c2172696(?)
#  - deleteCaller(uint256 arg1)
#  - transferCallership(address arg1, uint256 arg2)
#
array of address callers;
address sub_eca10cf3Address;
address stor2;

function callers(uint256 arg1) {
    require arg1 < callers.length
    return callers[arg1]
}

function sub_eca10cf3(?) {
    return sub_eca10cf3Address
}

function _fallback() payable {
    revert
}

function getNumeroCeldas() {
    require ext_code.size(stor2)
    call stor2.0xd088f50d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_bf3088e4(?) {
    require ext_code.size(stor2)
    call stor2.0xdef58399 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xc054935c with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xda3d6ca4 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[96] <= 5
    require ext_call.return_data[96] <= 5
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96] << 248,
           bool(ext_call.return_data[128])
}

function sub_07532b15(?) {
    require ext_code.size(stor2)
    call stor2.0xdef58399 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xc054935c with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xda3d6ca4 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[96] <= 5
    return ext_call.return_data[0] << 192, 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192]
}



}
