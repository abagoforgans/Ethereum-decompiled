contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0[address(msg.sender)] = code.data[1476 len 32]
    stor2 = code.data[1476 len 32]
    stor1 = msg.value
    stor3 = stor1 / stor2
    return code.data[140 len 1336]
}



// =====================  Runtime code  =====================


const showBalance = eth.balance(this.address)


mapping of uint256 sub_0470420d;
uint256 sub_7569ea89;
uint256 sub_a93ae602;
uint256 sub_0f758a53;

function sub_0470420d(?) payable {
    return sub_0470420d[address(arg1)]
}

function sub_0f758a53(?) payable {
    return sub_0f758a53
}

function sub_7569ea89(?) payable {
    return sub_7569ea89
}

function sub_a93ae602(?) payable {
    return sub_a93ae602
}

function coinBalanceOf(address arg1) payable {
    return sub_0470420d[arg1]
}

function _fallback() payable {
  stop
}

function deposit() payable {
    sub_0470420d[address(msg.sender)] += msg.value / sub_0f758a53
    sub_a93ae602 += msg.value / sub_0f758a53
    sub_7569ea89 += msg.value
    return (msg.value / sub_0f758a53)
}

function sendCoin(address arg1, uint256 arg2) payable {
    if sub_0470420d[address(msg.sender)] < arg2:
        return 0
    sub_0470420d[address(msg.sender)] -= arg2
    sub_0470420d[address(arg1)] += arg2
    emit CoinTransfer(msg.sender, address(arg1), arg2);
    return 1
}

function withdraw(uint256 arg1) payable {
    if arg1 > sub_0470420d[address(msg.sender)]:
        return 0
    call msg.sender with:
       value arg1 * sub_0f758a53 wei
         gas 0 wei
    sub_a93ae602 -= arg1
    sub_0470420d[address(msg.sender)] -= arg1
    sub_7569ea89 += -1 * arg1 * sub_0f758a53
    return 1
}



}
