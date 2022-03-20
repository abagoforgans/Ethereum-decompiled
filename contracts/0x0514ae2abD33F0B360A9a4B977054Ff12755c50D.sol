contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[820 len 32]
    return code.data[69 len 751]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address callerAddress;
uint256 stor1;
mapping of uint256 balances;

function balances(address arg1) payable {
    return balances[arg1]
}

function getOwner() payable {
    return address(owner)
}

function getCaller() payable {
    return address(callerAddress)
}

function getBalance(address arg1) payable {
    return balances[address(arg1)]
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if address(owner) != msg.sender:
        return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function setCaller(address arg1) payable {
    if address(owner) != msg.sender:
        return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function deposit(address arg1, uint256 arg2, bytes32 arg3, uint256 arg4) payable {
    if address(callerAddress) != msg.sender:
        return 0
    balances[address(arg1)] += arg2
    emit Transaction(arg4, arg2, arg3, 0, arg1);
    return 1
}

function withdraw(address arg1, uint256 arg2, bytes32 arg3, uint256 arg4) payable {
    if address(callerAddress) != msg.sender:
        return 0
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
