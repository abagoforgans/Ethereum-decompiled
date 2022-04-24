contract main {


// =======================  Init code  ======================


array of address stor0;

function _fallback() payable {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    address(stor0[stor0.length]) = msg.sender
    return code.data[205 len 6424]
}



// =====================  Runtime code  =====================


#
#  - sub_167c45ef(?)
#  - sub_393426cd(?)
#  - addCaller(address arg1)
#  - sub_840f8b35(?)
#  - sub_8f7ae488(?)
#  - deleteCaller(uint256 arg1)
#  - transferCallership(address arg1, uint256 arg2)
#
array of address callers;
address sub_df346300Address;
address stor2;

function callers(uint256 arg1) {
    require arg1 < callers.length
    return callers[arg1]
}

function sub_df346300(?) {
    return sub_df346300Address
}

function _fallback() payable {
    revert
}

function getNumeroMensajes() {
    require ext_code.size(stor2)
    call stor2.0x7a457855 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_240fda08(?) {
    require ext_code.size(stor2)
    call stor2.0x3849f0d1 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xf7c50cb3 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[96] <= 2
    require ext_code.size(stor2)
    call stor2.0x9c465e77 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function sub_04dfeb5f(?) {
    require ext_code.size(stor2)
    call stor2.0x3849f0d1 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xf7c50cb3 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[96] <= 2
    require ext_code.size(stor2)
    call stor2.0x9c465e77 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[96] <= 2
    return ext_call.return_data[0] << 192, 
           ext_call.return_data[64],
           ext_call.return_data[32],
           ext_call.return_data[96] << 248,
           ext_call.return_data[128]
}



}
