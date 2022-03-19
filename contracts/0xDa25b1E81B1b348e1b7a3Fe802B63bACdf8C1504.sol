contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1329]




// =====================  Runtime code  =====================


mapping of address index;
mapping of uint256 balances;

function getAddress(bytes32 arg1) payable {
    return address(index[arg1])
}

function balances(address arg1) payable {
    return balances[arg1]
}

function index(bytes32 arg1) payable {
    return address(index[arg1])
}

function getBalance(address arg1) payable {
    return balances[address(arg1)]
}

function _fallback() payable {
  stop
}

function setAddress(bytes32 arg1, address arg2) payable {
    uint256(index[arg1]) = arg2 or Mask(96, 160, uint256(index[arg1]))
}

function deposit(address arg1, uint256 arg2, bytes32 arg3, uint256 arg4) payable {
    balances[address(arg1)] += arg2
    emit Transaction(arg4, arg2, arg3, 0, arg1);
    return 1
}

function withdraw(address arg1, uint256 arg2, bytes32 arg3, uint256 arg4) payable {
    if balances[address(arg1)] < arg2:
        return 0
    call msg.sender with:
       value arg2 wei
         gas 0 wei
    balances[address(arg1)] -= arg2
    emit Transaction(arg4, arg2, arg3, arg1, 0);
    return 1
}



}
