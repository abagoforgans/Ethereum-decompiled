contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = 0xabcdd0dbc5ba15804f5de963bd60491e48c3ef0b
    stor1 = msg.sender
    return code.data[88 len 998]
}



// =====================  Runtime code  =====================


address stor0;
address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function changeOwner(address arg1) {
    if owner == msg.sender:
        owner = arg1
}

function returnEverything() {
    require ext_code.size(stor0)
    call stor0.getNumInvestors() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.investorIndex() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(stor0)
        call stor0.returnInvestment() with:
           value eth.balance(this.address) wei
             gas gas_remaining - 9050 wei
        require ext_call.success
}

function returnValue(uint256 arg1) {
    if eth.balance(this.address) >= arg1:
        require ext_code.size(stor0)
        call stor0.getNumInvestors() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor0)
        call stor0.investorIndex() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(stor0)
            call stor0.returnInvestment() with:
               value arg1 wei
                 gas gas_remaining - 9050 wei
            require ext_call.success
}



}
