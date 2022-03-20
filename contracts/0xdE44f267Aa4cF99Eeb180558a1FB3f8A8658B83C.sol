contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = code.data[249 len 32]
    return code.data[43 len 206]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
  stop
}

function withdrawAll() payable {
    call 0x4d245bbcb26f6496c51f1291fac1b440d73c252f with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function makePayment() payable {
    stor0 += msg.value
    if eth.balance(msg.sender) >= stor1:
        call msg.sender with:
           value 9 * msg.value / 10 wei
             gas 0 wei
    else:
        call msg.sender with:
           value (9 * msg.value / 10) + stor1 - eth.balance(msg.sender) wei
             gas 0 wei
}



}
