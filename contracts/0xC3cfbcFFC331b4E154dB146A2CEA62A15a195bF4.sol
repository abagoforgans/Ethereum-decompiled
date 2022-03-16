contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor5;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0
    stor3 = 83
    stor5 = 0
    stor2 = 0
    return code.data[108 len 1462]
}



// =====================  Runtime code  =====================


uint256 numDeposits;
uint256 sub_4e4f8289;
uint256 roi;
uint256 lastProfit;
uint256 sub_aa3f8cb7;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;

function roi() payable {
    return roi
}

function sub_4e4f8289(?) payable {
    return sub_4e4f8289
}

function sub_aa3f8cb7(?) payable {
    return sub_aa3f8cb7
}

function numDeposits() payable {
    return numDeposits
}

function lastProfit() payable {
    return lastProfit
}

function _fallback() payable {
  stop
}

function getProfit(address arg1) payable {
    if msg.sender == arg1:
        return stor8[address(arg1)]
    else:
        return 0
}

function getBalance(address arg1) payable {
    if msg.sender == arg1:
        return stor6[address(arg1)]
    else:
        return 0
}

function sub_38aa6b7d(?) payable {
    if msg.sender == arg1:
        return (block.timestamp - stor7[address(arg1)])
    else:
        return 0
}

function deposit() payable {
    numDeposits++
    sub_4e4f8289 = block.timestamp
    lastProfit = msg.value * roi / 100
    stor7[address(msg.sender)] = sub_4e4f8289
    stor6[address(msg.sender)] += msg.value
    stor8[address(msg.sender)] += lastProfit
}

function withdraw(address arg1, uint256 arg2) payable {
    if block.timestamp - stor7[address(arg1)] / 3600 / 24 < 1:
        sub_aa3f8cb7 = block.timestamp
    else:
        call msg.sender with:
           value stor6[address(arg1)] + stor8[address(arg1)] wei
             gas 0 wei
        stor8[address(arg1)] = 0
        stor6[address(arg1)] = 0
}



}
