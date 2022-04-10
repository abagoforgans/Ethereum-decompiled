contract main {


// =======================  Init code  ======================


function _fallback() {
    create contract with 0 wei
                    code: code.data[553 len 7113]
    require create.new_address
    create contract with 0 wei
                    code: code.data[7666 len 10239], address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initialize(address rg1, string rg2) with:
         gas gas_remaining - 710 wei
        args 0, 0, 64, 67, 'json(https://api.coinmarketcap.c', 'om/v1/ticker/ethereum/).0.price_', 'usd'
    require ext_call.success
    return code.data[499 len 54]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
