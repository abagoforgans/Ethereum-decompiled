contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[34 len 193]
}



// =====================  Runtime code  =====================


uint8 finished; offset 160
address creatorAddress;

function creator() payable {
    return creatorAddress
}

function finished() payable {
    return finished
}

function _fallback() payable {
  stop
}

function payout(address arg1) payable {
    call arg1 with:
       value eth.balance(this.address) wei
         gas 0 wei
    finished = 1
}



}
