contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = 0x2c974b2d0ba1716e644c1fc59982a89ddd2ff724
    stor1 = 0x12eb08e27eec735a16db29b660070cf10808de63
    stor2 = 0x4026f73f99427c6b70c9b101321895cee6b72659
    return code.data[284 len 897]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function totalSupply() {
    require ext_code.size(stor0)
    call stor0.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function totalAvaliableSupply() {
    require ext_code.size(stor2)
    call stor2.getTokenBalance() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.getTokenBalance() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return -ext_call.return_data[0]
}



}
