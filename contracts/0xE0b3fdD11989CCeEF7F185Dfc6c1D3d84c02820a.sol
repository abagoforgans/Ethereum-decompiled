contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x93598e23c2b9b4a53aae67e398a423c3065ebbd9
    return code.data[81 len 3668]
}



// =====================  Runtime code  =====================


address stor0;

function sub_826b4c86(?) {
    revert 
}

function _fallback() payable {
    revert 
}

function sub_f7211089(?) {
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function sub_5c9e15d5(?) {
    create contract with 0 wei
                    code: code.data[1468 len 550], stor0
    require create.new_address
    call address(create.new_address) with:
       funct Mask(32, 224, sha3('reject()')) >> 224
       value msg.value wei
         gas gas_remaining - 34050 wei
}

function sub_91aca16a(?) {
    create contract with 0 wei
                    code: code.data[2018 len 550], stor0
    require create.new_address
    call address(create.new_address) with:
       funct Mask(32, 224, sha3('accept()')) >> 224
       value msg.value wei
         gas gas_remaining - 34050 wei
}

function sub_a4737c92(?) {
    create contract with 0 wei
                    code: code.data[3118 len 550], stor0
    require create.new_address
    call address(create.new_address) with:
       funct Mask(32, 224, sha3('accept()')) >> 224
       value msg.value wei
         gas gas_remaining - 34050 wei
    revert 
}

function sub_9d14d7fa(?) {
    create contract with 0 wei
                    code: code.data[2568 len 550], stor0
    require create.new_address
    call address(create.new_address) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x41c0e1b5 with:
         gas gas_remaining - 50 wei
    require ext_call.success
}



}
