contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0xe3c61a3bff7cb03ddd422258006fddd5ba1ed0fe
    return code.data[65 len 400]
}



// =====================  Runtime code  =====================


address presaleAddress;

function presale() {
    return presaleAddress
}

function _fallback() payable {
    revert 
}

function attach(address arg1) {
    presaleAddress = arg1
}

function balance(address arg1) {
    require ext_code.size(presaleAddress)
    call presaleAddress.balances(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}



}
