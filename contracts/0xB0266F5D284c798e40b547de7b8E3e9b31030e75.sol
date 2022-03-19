contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 375]




// =====================  Runtime code  =====================


address minterAddress;
uint256 stor0;
mapping of uint256 balances;

function minter() payable {
    return address(minterAddress)
}

function balances(address arg1) payable {
    return balances[arg1]
}

function _fallback() payable {
  stop
}

function Coin() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function mint(address arg1, uint256 arg2) payable {
    if msg.sender == address(minterAddress):
        balances[address(arg1)] += arg2
}

function send(address arg1, uint256 arg2) payable {
    if balances[address(msg.sender)] >= arg2:
        balances[address(msg.sender)] -= arg2
        balances[arg1] += arg2
        emit Sent(address(msg.sender), address(arg1), arg2);
}



}
