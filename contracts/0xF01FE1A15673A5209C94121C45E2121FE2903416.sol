contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 269]




// =====================  Runtime code  =====================


mapping of uint256 balances;

function balances(address arg1) payable {
    return balances[arg1]
}

function getBalance(address arg1) payable {
    return balances[address(arg1)]
}

function _fallback() payable {
  stop
}

function deposit() payable {
    balances[address(msg.sender)] += 10^17
}

function withdrawBalance() payable {
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    balances[address(msg.sender)] = 0
}



}
