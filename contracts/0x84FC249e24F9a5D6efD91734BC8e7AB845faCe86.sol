contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[428 len 20]
    return code.data[100 len 316]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function cashin() {
    if stor0 == msg.sender:
        require eth.balance(this.address) > 0
        require ext_code.size(stor1)
        call stor1.cashin(address arg1, uint256 arg2) with:
           value eth.balance(this.address) wei
             gas gas_remaining - 9050 wei
            args address(this.address), eth.balance(this.address)
        require ext_call.success
        require ext_call.return_data[0]
}



}
