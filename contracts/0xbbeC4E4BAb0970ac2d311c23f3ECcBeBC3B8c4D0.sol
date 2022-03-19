contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[34 len 194]
}



// =====================  Runtime code  =====================


address stor0;
uint256 expiration;

function expiration() payable {
    return expiration
}

function _fallback() payable {
  stop
}

function redeem() payable {
    if stor0 == msg.sender:
        if block.timestamp > expiration:
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 0 wei
}

function lock(uint256 arg1) payable {
    if stor0 != msg.sender:
        return 0
    if arg1 <= block.timestamp:
        return 0
    if expiration != 0:
        return 0
    expiration = arg1
    return 1
}



}
