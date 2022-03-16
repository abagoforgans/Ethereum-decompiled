contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0[address(code.data[1846 len 32])] = 0
    stor1 = code.data[1846 len 32] or Mask(96, 160, stor1)
    stor2 = code.data[1878 len 32]
    return code.data[166 len 1648]
}



// =====================  Runtime code  =====================


mapping of uint256 balance;
address issuerAddress;
uint256 stor1;
uint256 name;

function name() payable {
    return name
}

function issuer() payable {
    return address(issuerAddress)
}

function balance(address arg1) payable {
    return balance[arg1]
}

function _fallback() payable {
  stop
}

function changeIssuer(address arg1) payable {
    if address(issuerAddress) != msg.sender:
        return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function issueCoin(address arg1, uint256 arg2) payable {
    if address(issuerAddress) != msg.sender:
        return 0
    balance[address(arg1)] += arg2
    emit 0xade69e61: msg.sender, address(arg1), arg2
    return 1
}

function send(address arg1, uint256 arg2) payable {
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[address(arg1)] += arg2
    emit CoinTransfer(msg.sender, address(arg1), arg2);
    return 1
}

function send(address arg1, uint256 arg2, address arg3) payable {
    if arg3 != msg.sender:
        return 0
    if balance[address(arg3)] < arg2:
        return 0
    balance[address(arg3)] -= arg2
    balance[address(arg1)] += arg2
    emit CoinTransfer(address(arg3), address(arg1), arg2);
    return 1
}



}
