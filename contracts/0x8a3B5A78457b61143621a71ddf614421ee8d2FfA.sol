contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    create contract with 0 wei
                    code: code.data[868 len 6888]
    require create.new_address
    stor0 = address(create.new_address)
    return code.data[115 len 753]
}



// =====================  Runtime code  =====================


address sub_1f04a385Address;

function sub_1f04a385(?) {
    return sub_1f04a385Address
}

function _fallback() payable {
    revert
}

function sub_3191476f(?) {
    require ext_code.size(0x40a4c084fbfdcffb145c0c0d467408949c583070)
    call 0x40a4c084fbfdcffb145c0c0d467408949c583070.contractAddress(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 5
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_da39903f(?) {
    require ext_code.size(0x40a4c084fbfdcffb145c0c0d467408949c583070)
    call 0x40a4c084fbfdcffb145c0c0d467408949c583070.contractAddress(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 6
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_469d5a4b(?) {
    require ext_code.size(0x40a4c084fbfdcffb145c0c0d467408949c583070)
    call 0x40a4c084fbfdcffb145c0c0d467408949c583070.contractAddress(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10
    require ext_call.success
    return ext_call.return_data[12 len 20]
}



}
