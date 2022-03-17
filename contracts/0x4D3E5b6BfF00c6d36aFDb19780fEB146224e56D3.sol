contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[24 len 125]
}



// =====================  Runtime code  =====================


uint256 stor0;
address stor1;

function _fallback() payable {
  stop
}

function doit() payable {
    if stor0 >= 3:
        if stor1 == msg.sender:
            call stor1 with:
               value eth.balance(this.address) wei
                 gas 0 wei
}



}
