contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 808]




// =====================  Runtime code  =====================


address stor0;

function pay() payable {
  stop
}

function setAddr(address arg1) {
    stor0 = arg1
}

function payout() {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require ext_code.size(stor0)
    call stor0.0xdb88031a with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function sub_40c82671(?) {
    call stor0 with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_code.size(stor0)
    call stor0.0xdb88031a with:
         gas gas_remaining - 710 wei
    require ext_call.success
}



}
