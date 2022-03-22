contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor4;

function _fallback() payable {
    stor0[address(msg.sender)] = mem[192]
    stor4 = mem[192]
    call msg.sender with:
       value msg.value wei
         gas 0 wei
    return code.data[115 len 710]
}



// =====================  Runtime code  =====================


mapping of uint256 balance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function balance(address arg1) payable {
    return balance[arg1]
}

function _fallback() payable {
  stop
}

function transfer(address arg1, uint256 arg2) payable {
    require balance[address(msg.sender)] >= arg2
    require arg2 + balance[arg1] >= balance[arg1]
    balance[address(msg.sender)] -= arg2
    balance[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
