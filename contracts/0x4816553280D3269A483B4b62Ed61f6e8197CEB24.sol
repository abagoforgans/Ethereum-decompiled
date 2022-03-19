contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0[address(msg.sender)] = 1000000 * 10^18
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[76 len 438]
}



// =====================  Runtime code  =====================


mapping of uint256 stor0;
address stor1;

function _fallback() payable {
  stop
}

function cashout() payable {
    call stor1 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function buyCoins() payable {
    emit stor0[stor1]: 'm_balances[owner] => '
    if stor0[stor1] > msg.value:
        emit msg.value: 'msg.value => '
        stor0[stor1] -= msg.value
        stor0[address(msg.sender)] += msg.value
    emit stor0[msg.sender]: 'm_balances[msg.sender] => '
}



}
