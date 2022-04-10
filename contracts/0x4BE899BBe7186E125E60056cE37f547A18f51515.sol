contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[811 len 4790], address(msg.sender)
    require create.new_address
    stor0 = address(create.new_address)
    create contract with 0 wei
                    code: code.data[5601 len 7422], address(msg.sender), address(create.new_address)
    stor1 = address(create.new_address)
    require ext_code.size(stor0)
    call stor0.initialize(address rg1, string rg2) with:
         gas gas_remaining - 710 wei
        args 0, 0, 64, 67, 'json(https://api.coinmarketcap.c', 'om/v1/ticker/ethereum/).0.price_', 'usd'
    require ext_call.success
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    return code.data[527 len 284]
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
