contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor8 = msg.sender or Mask(96, 160, stor8)
    stor7 = 0
    stor3 = 7
    stor4 = 7
    stor6 = 120
    return code.data[108 len 3166]
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
address managerAddress;
mapping of uint256 balance;
mapping of uint256 deposits;
mapping of uint256 cumulativeProfit;
mapping of uint256 sub_13060833;
mapping of address addresses;

function getBalance() payable {
    return balance[address(msg.sender)]
}

function sub_13060833(?) payable {
    return sub_13060833[arg1]
}

function balances(address arg1) payable {
    return balance[arg1]
}

function manager() payable {
    return managerAddress
}

function roi() payable {
    return roi
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

function withdraw() payable {
    if block.timestamp - deposits[address(msg.sender)] >= sub_d9607482:
        if eth.balance(this.address) > balance[address(msg.sender)] + stor2:
            call msg.sender with:
               value balance[address(msg.sender)] + stor2 wei
                 gas 0 wei
            uint256(stor0) = ext_call.success or Mask(248, 8, uint256(stor0))
            if uint8(stor0):
                deposits[address(msg.sender)] = block.timestamp
                sub_13060833[address(msg.sender)] = 0
                balance[address(msg.sender)] = 0
}

function reCalc() payable {
    if block.timestamp - deposits[address(msg.sender)] >= sub_d9607482:
        if balance[address(msg.sender)] > 0:
            stor1 = (balance[address(msg.sender)] * roi) + (sub_13060833[address(msg.sender)] * roi) / 100 * feeRate / 100
            stor2 = ((balance[address(msg.sender)] * roi) + (sub_13060833[address(msg.sender)] * roi) / 100) - stor1
            if eth.balance(this.address) > 0:
                call managerAddress with:
                   value stor1 wei
                     gas 0 wei
                uint256(stor0) = ext_call.success or Mask(248, 8, uint256(stor0))
            sub_13060833[address(msg.sender)] += stor2
            cumulativeProfit[address(msg.sender)] += stor2
            deposits[address(msg.sender)] = block.timestamp
}

function deposit() payable {
    numDeposits++
    sub_ea362937 = block.timestamp
    uint256(addresses[stor7]) = msg.sender or Mask(96, 160, uint256(addresses[stor7]))
    balance[address(msg.sender)] += msg.value
    if block.timestamp - deposits[address(msg.sender)] >= sub_d9607482:
        if balance[address(msg.sender)] > 0:
            stor1 = (balance[address(msg.sender)] * roi) + (sub_13060833[address(msg.sender)] * roi) / 100 * feeRate / 100
            stor2 = ((balance[address(msg.sender)] * roi) + (sub_13060833[address(msg.sender)] * roi) / 100) - stor1
            if eth.balance(this.address) > 0:
                call managerAddress with:
                   value stor1 wei
                     gas 0 wei
                uint256(stor0) = ext_call.success or Mask(248, 8, uint256(stor0))
            sub_13060833[address(msg.sender)] += stor2
            cumulativeProfit[address(msg.sender)] += stor2
            deposits[address(msg.sender)] = block.timestamp
}

function withdrawProfit() payable {
    if block.timestamp - deposits[address(msg.sender)] >= sub_d9607482:
        if eth.balance(this.address) > sub_13060833[address(msg.sender)]:
            call msg.sender with:
               value sub_13060833[address(msg.sender)] wei
                 gas 0 wei
            uint256(stor0) = ext_call.success or Mask(248, 8, uint256(stor0))
            if uint8(stor0):
                sub_13060833[address(msg.sender)] = 0
                if block.timestamp - deposits[address(msg.sender)] >= sub_d9607482:
                    if balance[address(msg.sender)] > 0:
                        stor1 = (balance[address(msg.sender)] * roi) + (sub_13060833[address(msg.sender)] * roi) / 100 * feeRate / 100
                        stor2 = ((balance[address(msg.sender)] * roi) + (sub_13060833[address(msg.sender)] * roi) / 100) - stor1
                        if eth.balance(this.address) > 0:
                            call managerAddress with:
                               value stor1 wei
                                 gas 0 wei
                            uint256(stor0) = ext_call.success or Mask(248, 8, uint256(stor0))
                        sub_13060833[address(msg.sender)] += stor2
                        cumulativeProfit[address(msg.sender)] += stor2
                        deposits[address(msg.sender)] = block.timestamp
}



}
