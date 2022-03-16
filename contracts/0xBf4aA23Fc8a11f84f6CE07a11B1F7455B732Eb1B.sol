contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor9;

function _fallback() payable {
    stor9 = msg.sender or Mask(96, 160, stor9)
    stor7 = 0
    stor3 = 120
    stor4 = 16
    stor6 = 90
    return code.data[108 len 2424]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 roi;
uint256 feeRate;
uint256 sub_ea362937;
uint256 sub_d9607482;
uint256 numDeposits;
uint256 sub_5294010f;
address managerAddress;
mapping of uint256 balance;
mapping of uint256 stor11;
mapping of uint256 cumulativeProfit;
mapping of uint256 profit;
mapping of uint256 stor14;

function getBalance() payable {
    return balance[address(msg.sender)]
}

function manager() payable {
    return managerAddress
}

function roi() payable {
    return roi
}

function sub_5294010f(?) payable {
    return sub_5294010f
}

function getProfit() payable {
    return profit[address(msg.sender)]
}

function getCumulativeProfit() payable {
    return cumulativeProfit[address(msg.sender)]
}

function feeRate() payable {
    return feeRate
}

function numDeposits() payable {
    return numDeposits
}

function sub_d9607482(?) payable {
    return sub_d9607482
}

function sub_ea362937(?) payable {
    return sub_ea362937
}

function _fallback() payable {
  stop
}

function getDepositDelta() payable {
    return (block.timestamp - stor11[address(msg.sender)])
}

function reCalc() payable {
    if block.timestamp - stor11[address(msg.sender)] >= sub_d9607482:
        stor1 = balance[address(msg.sender)] * roi / 100 * feeRate / 100
        stor2 = (balance[address(msg.sender)] * roi / 100) - stor1
        call managerAddress with:
           value stor1 wei
             gas 0 wei
        profit[address(msg.sender)] += stor2
        cumulativeProfit[address(msg.sender)] += stor2
        stor11[address(msg.sender)] = block.timestamp
}

function withdraw() payable {
    if block.timestamp - stor11[address(msg.sender)] >= sub_d9607482:
        if eth.balance(this.address) > balance[address(msg.sender)] + stor2:
            call msg.sender with:
               value balance[address(msg.sender)] + stor2 wei
                 gas 0 wei
            uint256(stor0) = ext_call.success or Mask(248, 8, uint256(stor0))
            if uint8(stor0):
                profit[address(msg.sender)] = 0
                balance[address(msg.sender)] = 0
}

function deposit() payable {
    numDeposits++
    sub_ea362937 = block.timestamp
    stor14[stor7] = msg.sender or Mask(96, 160, stor14[stor7])
    balance[address(msg.sender)] += msg.value
    if block.timestamp - stor11[address(msg.sender)] >= sub_d9607482:
        stor1 = balance[address(msg.sender)] * roi / 100 * feeRate / 100
        stor2 = (balance[address(msg.sender)] * roi / 100) - stor1
        call managerAddress with:
           value stor1 wei
             gas 0 wei
        profit[address(msg.sender)] += stor2
        cumulativeProfit[address(msg.sender)] += stor2
        stor11[address(msg.sender)] = block.timestamp
}

function withdrawProfit() payable {
    if block.timestamp - stor11[address(msg.sender)] >= sub_d9607482:
        if eth.balance(this.address) > stor2:
            call msg.sender with:
               value stor2 wei
                 gas 0 wei
            uint256(stor0) = ext_call.success or Mask(248, 8, uint256(stor0))
            if uint8(stor0):
                stor11[address(msg.sender)] = block.timestamp
                profit[address(msg.sender)] = 0
                if block.timestamp - stor11[address(msg.sender)] >= sub_d9607482:
                    stor1 = balance[address(msg.sender)] * roi / 100 * feeRate / 100
                    stor2 = (balance[address(msg.sender)] * roi / 100) - stor1
                    call managerAddress with:
                       value stor1 wei
                         gas 0 wei
                    profit[address(msg.sender)] += stor2
                    cumulativeProfit[address(msg.sender)] += stor2
                    stor11[address(msg.sender)] = block.timestamp
}



}
