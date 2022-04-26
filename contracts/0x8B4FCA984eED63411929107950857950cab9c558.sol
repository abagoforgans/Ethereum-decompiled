contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0xc1f1d804254c7241d7ffc56fb2174ee9b42e6b94
    stor2 = 10
    require not msg.value
    stor0 = msg.sender
    return code.data[102 len 518]
}



// =====================  Runtime code  =====================


address owner;
address payeeAddress;
uint256 percent;

function percent() {
    return percent
}

function owner() {
    return owner
}

function payee() {
    return payeeAddress
}

function Withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    call owner with:
       value percent * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call payeeAddress with:
       value (100 * msg.value) - (percent * msg.value) / 100 wei
         gas 2300 * is_zero(value) wei
}



}
