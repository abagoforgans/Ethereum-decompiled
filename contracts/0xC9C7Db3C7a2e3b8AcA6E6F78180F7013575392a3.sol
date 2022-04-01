contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[844 len 20]
    stor1 = code.data[876 len 20]
    return code.data[104 len 728]
}



// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function terminate() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function withdraw() {
    call owner with:
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
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ext_code.size(stor1)
    call stor1.cancelBid(address rg1, bytes32 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
