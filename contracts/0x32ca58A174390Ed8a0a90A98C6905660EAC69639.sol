contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[871 len 20]
    stor1 = code.data[903 len 20]
    return code.data[104 len 755]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function terminate() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() {
    revert
}

function donate() payable {
    emit 0xe2a83ead: msg.sender, tx.origin, msg.value
}

function withdraw() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function cancel(address arg1, bytes32 arg2) {
    require ext_code.size(stor1)
    call stor1.sealedBids(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[12 len 20]:
    require ext_code.size(stor1)
    call stor1.cancelBid(address rg1, bytes32 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
}

function sweep(address arg1, bytes32 arg2) {
    require ext_code.size(stor1)
    call stor1.sealedBids(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[12 len 20]:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ext_code.size(stor1)
    call stor1.cancelBid(address rg1, bytes32 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
