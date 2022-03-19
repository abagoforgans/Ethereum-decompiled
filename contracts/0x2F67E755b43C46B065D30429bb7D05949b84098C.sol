contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 10
    return code.data[26 len 402]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of address stor1;

function mortal() payable {
    require 0 == eth.balance(this.address)
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function returnDeposits() payable {
    idx = stor1.length
    while idx < 0:
        require idx < stor1.length
        mem[0] = 1
        call address(stor1[idx]) with:
           value 10^18 * stor0 wei
             gas 0 wei
        idx = idx + 1
        continue 
}

function register() payable {
    require msg.value >= stor0
    if msg.value > stor0:
        call msg.sender with:
           value msg.value - (10^18 * stor0) wei
             gas 0 wei
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
    uint256(stor1[stor1.length]) = msg.sender or Mask(96, 160, uint256(stor1[stor1.length]))
}



}
