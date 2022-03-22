contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;

function _fallback() payable {
    stor0 = 0xf01fe1a15673a5209c94121c45e2121fe2903416
    stor1 = 0
    stor2 = 1
    return code.data[75 len 380]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint8 stor2;

function sub_20740e9a(?) payable {
    call stor0.0xd0e30db0 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
}

function getB() payable {
    call stor0.0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function _fallback() payable {
    if stor1 > 5:
        stor1 = 0
    else:
        if not stor2:
            stor1 = 0
        else:
            stor1++
            call stor0.0x5fd8c710 with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
}



}
