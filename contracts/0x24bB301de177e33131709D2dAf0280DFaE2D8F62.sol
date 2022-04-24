contract main {


// =======================  Init code  ======================


array of address stor0;

function _fallback() {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    address(stor0[stor0.length]) = msg.sender
    return code.data[215 len 3707]
}



// =====================  Runtime code  =====================


#
#  - addCaller(address arg1)
#  - sub_a04c6ca3(?)
#  - incluirUsuario(address arg1)
#  - deleteCaller(uint256 arg1)
#  - transferCallership(address arg1, uint256 arg2)
#
array of address callers;
address sub_b78c68a1Address;
address stor2;

function callers(uint256 arg1) {
    require arg1 < callers.length
    return callers[arg1]
}

function sub_b78c68a1(?) {
    return sub_b78c68a1Address
}

function _fallback() payable {
    revert
}

function sub_d489b68f(?) {
    require ext_code.size(stor2)
    call stor2.0xd489b68f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_d819c426(?) {
    require ext_code.size(stor2)
    call stor2.0xd819c426 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}



}
