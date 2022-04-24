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
    return code.data[204 len 3880]
}



// =====================  Runtime code  =====================


#
#  - sub_259e7c10(?)
#  - sub_27c55f06(?)
#  - addCaller(address arg1)
#  - sub_c439f33f(?)
#  - deleteCaller(uint256 arg1)
#  - transferCallership(address arg1, uint256 arg2)
#
array of address callers;
address sub_836e9ff7Address;
address stor2;

function sub_836e9ff7(?) {
    return sub_836e9ff7Address
}

function callers(uint256 arg1) {
    require arg1 < callers.length
    return callers[arg1]
}

function _fallback() payable {
    revert
}

function sub_4b4a33c7(?) {
    require ext_code.size(stor2)
    call stor2.0x4b4a33c7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_c49d605e(?) {
    require ext_code.size(stor2)
    call stor2.0xc49d605e with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, arg3
    require ext_call.success
}

function sub_c3377d5e(?) {
    require ext_code.size(stor2)
    call stor2.0x547b04bf with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x8ff38795 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    return ext_call.return_data[0] << 192, ext_call.return_data[64], ext_call.return_data[32]
}



}
