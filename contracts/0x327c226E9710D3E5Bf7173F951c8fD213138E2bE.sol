contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 403]




// =====================  Runtime code  =====================


function withdrawTokens(address arg1, uint256 arg2) {
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0xbfc870e168bb57763619530057a7216d6b93d05f, arg2
    require ext_call.success
}

function _fallback() payable {
    call 0xbfc870e168bb57763619530057a7216d6b93d05f with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0x493e4dd085992b34342ef24ea1fd100b6d2106c4.0x7b0cb839 with:
         gas gas_remaining wei
}



}
