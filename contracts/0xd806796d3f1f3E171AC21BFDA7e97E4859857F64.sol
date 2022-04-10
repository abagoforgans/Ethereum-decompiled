contract main {


// =======================  Init code  ======================


address stor0;
uint32 stor1;
address stor1;

function _fallback() {
    create contract with 0 wei
                    code: code.data[1080 len 7113]
    require create.new_address
    stor0 = address(create.new_address)
    create contract with 0 wei
                    code: code.data[8193 len 10239], stor0
    address(stor1) = address(create.new_address)
    require ext_code.size(stor0)
    call stor0.initialize(address rg1, string rg2) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor1), 64, 67, 'json(https://api.coinmarketcap.c', 'om/v1/ticker/ethereum/).0.price_', 'usd'
    require ext_call.success
    return code.data[718 len 362]
}



// =====================  Runtime code  =====================


address puAddress;
address sub_b915c5eaAddress;

function pu() {
    return puAddress
}

function sub_b915c5ea(?) {
    return sub_b915c5eaAddress
}

function _fallback() payable {
    revert
}



}
