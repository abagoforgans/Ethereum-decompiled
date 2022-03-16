contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor4 = 0
    stor1 = 120
    stor3 = 0
    return code.data[97 len 1445]
}



// =====================  Runtime code  =====================


uint256 roi;
uint256 sub_4e4f8289;
uint256 sub_aa3f8cb7;
uint256 numDeposits;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;

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

function _fallback() payable {
  stop
}

function getProfit(address arg1) payable {
    if msg.sender == arg1:
        return stor7[address(arg1)]
    else:
        return 0
}

function getBalance(address arg1) payable {
    if msg.sender == arg1:
        return stor5[address(arg1)]
    else:
        return 0
}

function sub_38aa6b7d(?) payable {
    if msg.sender == arg1:
        return (block.timestamp - stor6[address(arg1)])
    else:
        return 0
}

function deposit() payable {
    numDeposits++
    sub_4e4f8289 = block.timestamp
    stor6[address(msg.sender)] = sub_4e4f8289
    stor7[address(msg.sender)] += msg.value * roi / 100
    stor5[address(msg.sender)] += msg.value
}

function withdraw(address arg1) payable {
    if msg.sender == arg1:
        if block.timestamp - stor6[address(arg1)] / 3600 / 24 < 0:
            sub_aa3f8cb7 = block.timestamp
        else:
            call msg.sender with:
               value stor5[address(arg1)] + stor7[address(arg1)] wei
                 gas 0 wei
            stor7[address(arg1)] = 0
            stor5[address(arg1)] = 0
}



}
