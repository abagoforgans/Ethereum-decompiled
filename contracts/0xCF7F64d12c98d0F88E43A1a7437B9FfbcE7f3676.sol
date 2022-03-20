contract main {


// =======================  Init code  ======================


uint256 stor1;
mapping of uint256 stor3;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor3[address(msg.sender)] = 10 * 10^6
    return code.data[67 len 880]
}



// =====================  Runtime code  =====================


array of uint256 name;
address owner;
uint256 initialSupply;
mapping of uint256 balances;

function name() payable {
    return name[0 len name.length]
}

function balances(address arg1) payable {
    return balances[arg1]
}

function initialSupply() payable {
    return initialSupply
}

function owner() payable {
    return owner
}

function getBalance(address arg1) payable {
    return balances[address(arg1)]
}

function _fallback() payable {
    revert 
}

function setName(string arg1) payable {
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
}

function send(address arg1, uint256 arg2) payable {
    require balances[address(msg.sender)] >= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
}



}
