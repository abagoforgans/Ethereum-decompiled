contract main {


// =======================  Init code  ======================


uint256 stor5;
uint256 stor6;
uint256 stor8;
uint256 stor9;
uint256 stor11;

function _fallback() payable {
    stor11 = msg.sender or Mask(96, 160, stor11)
    stor9 = 0
    stor5 = 7
    stor6 = 7
    stor8 = 300
    return code.data[109 len 2460]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint256 stor0;
bool stor2;
uint256 stor2; offset 1
uint256 stor2;
uint256 roi;
uint256 feeRate;
uint256 sub_ea362937;
uint256 sub_d9607482;
uint256 numDeposits;
uint256 sub_5294010f;
address managerAddress;
mapping of uint256 balance;
mapping of uint256 deposits;
mapping of uint256 cumulativeProfit;
mapping of uint256 sub_13060833;
mapping of address addresses;

function getBalance() payable {
    return uint256(balance[address(msg.sender)])
}

function sub_13060833(?) payable {
    return sub_13060833[arg1]
}

function balances(address arg1) payable {
    return uint256(balance[arg1])
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
    return sub_13060833[address(msg.sender)]
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

function addresses(uint256 arg1) payable {
    return address(addresses[arg1])
}

function deposits(address arg1) payable {
    return deposits[arg1]
}

function _fallback() payable {
  stop
}

function getDepositDelta() payable {
    return (block.timestamp - deposits[address(msg.sender)])
}

function die() payable {
    if msg.sender == managerAddress:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function reCalc() payable {
    if block.timestamp - deposits[address(msg.sender)] >= sub_d9607482:
        if uint256(balance[address(msg.sender)]) > 0:
            bool(stor2.field_0) = 0
            uint255(stor2.field_1) = uint255(balance[address(msg.sender)])
            sub_13060833[address(msg.sender)] += uint256(stor2.field_0)
            cumulativeProfit[address(msg.sender)] += uint256(stor2.field_0)
            deposits[address(msg.sender)] = block.timestamp
}

function withdraw() payable {
    if block.timestamp - deposits[address(msg.sender)] >= sub_d9607482:
        if eth.balance(this.address) > uint256(balance[address(msg.sender)]) + uint256(stor2.field_0):
            call msg.sender with:
               value uint256(balance[address(msg.sender)]) + uint256(stor2.field_0) wei
                 gas 0 wei
            uint256(stor0) = ext_call.success or Mask(248, 8, uint256(stor0))
            if uint8(stor0):
                sub_13060833[address(msg.sender)] = 0
                uint256(balance[address(msg.sender)]) = 0
}

function deposit() payable {
    numDeposits++
    sub_ea362937 = block.timestamp
    uint256(addresses[stor9]) = msg.sender or Mask(96, 160, uint256(addresses[stor9]))
    uint256(balance[address(msg.sender)]) += msg.value
    if block.timestamp - deposits[address(msg.sender)] >= sub_d9607482:
        if uint256(balance[address(msg.sender)]) > 0:
            bool(stor2.field_0) = 0
            uint255(stor2.field_1) = uint255(balance[address(msg.sender)])
            sub_13060833[address(msg.sender)] += uint256(stor2.field_0)
            cumulativeProfit[address(msg.sender)] += uint256(stor2.field_0)
            deposits[address(msg.sender)] = block.timestamp
}



}
