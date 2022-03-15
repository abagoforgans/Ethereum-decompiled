contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1[address(stor0)] = code.data[1018 len 32]
    return code.data[175 len 843]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 balance;

function balance(address arg1) payable {
    return balance[arg1]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function mint(uint256 arg1) payable {
    if msg.sender == stor0:
        balance[stor0] += arg1
}

function send(address arg1, uint256 arg2) payable {
    if balance[address(msg.sender)] >= arg2:
        balance[address(msg.sender)] -= arg2
        balance[address(arg1)] += arg2
        emit Send(msg.sender, address(arg1), arg2);
}



}
