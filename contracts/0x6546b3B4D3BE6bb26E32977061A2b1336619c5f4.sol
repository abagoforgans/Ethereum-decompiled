contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[64 len 521]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 stor1;

function remove() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function deposit() payable {
    stor1[address(msg.sender)] += msg.value
}

function withdraw(uint256 arg1) payable {
    if stor1[address(msg.sender)] >= arg1:
        if arg1:
            stor1[address(msg.sender)] -= arg1
            call msg.sender with:
               value arg1 wei
                 gas 0 wei
}



}
