contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;

function _fallback() payable {
    stor0 = 10^16
    stor2 = 5760
    return code.data[50 len 327]
}



// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint256 stor1;
uint256 stor2;

function _fallback() payable {
  stop
}

function getWei() payable {
    if stor1[address(msg.sender)] >= block.number - stor2:
        return 0
    if eth.balance(this.address) <= stor0:
        return 0
    call msg.sender with:
       value stor0 wei
         gas 0 wei
    stor1[address(msg.sender)] = block.number
    return 1
}



}
