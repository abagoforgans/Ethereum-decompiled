contract main {




// =====================  Runtime code  =====================


const sub_64552200(?) = 0x8a45c193e7cd5c485534f82f4ce6657efc973fab


address myAddress;
address owner;

function myAddress() {
    return myAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    call 0x8a45c193e7cd5c485534f82f4ce6657efc973fab with:
       value msg.value / 200 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function tip() payable {
    call 0x8a45c193e7cd5c485534f82f4ce6657efc973fab with:
       value msg.value / 200 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return 1
}



}
