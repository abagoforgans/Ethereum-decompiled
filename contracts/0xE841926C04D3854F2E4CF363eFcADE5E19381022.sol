contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 356]




// =====================  Runtime code  =====================


function _fallback() payable {
    call 0xf043eec75b40b08dd940265668a7ae9a9fa78ed0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function exec(address arg1, bytes arg2) payable {
    require msg.sender == 0xd720a4768cace6d508d8b390471d83ba3ae6dd32
    call arg1 with:
       value msg.value wei
         gas gas_remaining - 34710 wei
        args arg2[all]
}



}
