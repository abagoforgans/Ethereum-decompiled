contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor9 = msg.sender or Mask(96, 160, stor9)
    stor7 = 0
    stor3 = 120
    stor4 = 3
    stor6 = 30
    stor8 = 90
    return code.data[119 len 3425]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 roi;
uint256 feeRate;
uint256 sub_4e4f8289;
uint256 sub_d9607482;
uint256 numDeposits;
uint256 sub_5294010f;
address managerAddress;
mapping of uint256 balance;
mapping of uint256 stor11;
mapping of uint256 cumulativeProfit;
mapping of uint256 profit;
mapping of address stor14;

function getBalance() payable {
    return balance[address(msg.sender)]
}

function manager() payable {
    return managerAddress
}

function roi() payable {
    return roi
}

function sub_4e4f8289(?) payable {
    return sub_4e4f8289
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

function _fallback() payable {
  stop
}

function getDepositDelta() payable {
    return (block.timestamp - stor11[address(msg.sender)])
}

function reCalc() payable {
    if block.timestamp - stor11[address(msg.sender)] >= sub_d9607482:
        profit[address(msg.sender)] += balance[address(msg.sender)] * roi / 100
}

function deposit() payable {
    numDeposits++
    sub_4e4f8289 = block.timestamp
    stor11[address(msg.sender)] = sub_4e4f8289
    uint256(stor14[stor7]) = msg.sender or Mask(96, 160, uint256(stor14[stor7]))
    balance[address(msg.sender)] += msg.value
    if block.timestamp - stor11[address(msg.sender)] >= sub_d9607482:
        profit[address(msg.sender)] += balance[address(msg.sender)] * roi / 100
}

function withdraw() payable {
    if block.timestamp - stor11[address(msg.sender)] >= sub_d9607482:
        stor1 = profit[address(msg.sender)] * feeRate / 100
        stor2 = profit[address(msg.sender)] - stor1
        if eth.balance(this.address) > balance[address(msg.sender)] + stor2:
            call msg.sender with:
               value balance[address(msg.sender)] + stor2 wei
                 gas 0 wei
            uint256(stor0) = ext_call.success or Mask(248, 8, uint256(stor0))
            if uint8(stor0):
                profit[address(msg.sender)] = 0
                balance[address(msg.sender)] = 0
}

function withdrawProfit() payable {
    if block.timestamp - stor11[address(msg.sender)] >= sub_d9607482:
        stor1 = profit[address(msg.sender)] * feeRate / 100
        stor2 = profit[address(msg.sender)] - stor1
        if eth.balance(this.address) > stor2:
            call msg.sender with:
               value stor2 wei
                 gas 0 wei
            uint256(stor0) = ext_call.success or Mask(248, 8, uint256(stor0))
            if uint8(stor0):
                stor11[address(msg.sender)] = block.timestamp
                profit[address(msg.sender)] = 0
                profit[address(msg.sender)] += balance[address(msg.sender)] * roi / 100
                cumulativeProfit[address(msg.sender)] += balance[address(msg.sender)] * roi / 100
}

function decay() payable {
    if msg.sender == managerAddress:
        idx = 0
        while idx < numDeposits:
            mem[0] = address(stor14[idx])
            mem[32] = 10
            if balance[address(stor14[idx])] > 0:
                if eth.balance(this.address) > 0:
                    mem[0] = address(stor14[idx])
                    mem[32] = 10
                    call address(stor14[idx]) with:
                       value balance[address(stor14[idx])] wei
                         gas 0 wei
                    uint256(stor0) = ext_call.success or Mask(248, 8, uint256(stor0))
                    if uint8(stor0):
                        balance[address(stor14[idx])] = 0
                        mem[0] = address(stor14[idx])
                        mem[32] = 13
                        profit[address(stor14[idx])] = 0
            idx = idx + 1
            continue 
}



}
