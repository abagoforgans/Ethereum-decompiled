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
    stor6 = 300
    stor8 = 500
    return code.data[121 len 3632]
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
mapping of uint256 stor10;
mapping of uint256 stor11;
mapping of uint256 stor12;
mapping of uint256 stor13;
mapping of address stor14;

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

function sub_bdc68113(?) payable {
    if msg.sender == arg1:
        return stor12[address(arg1)]
    else:
        return 0
}

function getProfit(address arg1) payable {
    if msg.sender == arg1:
        return stor13[address(arg1)]
    else:
        return 0
}

function getBalance(address arg1) payable {
    if msg.sender == arg1:
        return stor10[address(arg1)]
    else:
        return 0
}

function sub_38aa6b7d(?) payable {
    if msg.sender == arg1:
        return (block.timestamp - stor11[address(arg1)])
    else:
        return 0
}

function reCalc() payable {
    idx = 0
    while idx < numDeposits:
        mem[0] = address(stor14[idx])
        mem[32] = 11
        if block.timestamp - stor11[address(stor14[idx])] >= sub_d9607482:
            mem[0] = address(stor14[idx])
            mem[32] = 12
            stor12[address(stor14[idx])] += stor10[address(stor14[idx])] * roi / 100
        idx = idx + 1
        continue 
}

function decay() payable {
    if msg.sender == managerAddress:
        if block.timestamp - sub_4e4f8289 >= sub_5294010f:
            idx = 0
            while idx < numDeposits:
                call address(stor14[idx]) with:
                   value stor10[address(stor14[idx])] wei
                     gas 0 wei
                stor10[address(stor14[idx])] = 0
                mem[0] = address(stor14[idx])
                mem[32] = 13
                stor13[address(stor14[idx])] = 0
                idx = idx + 1
                continue 
}

function deposit() payable {
    numDeposits++
    sub_4e4f8289 = block.timestamp
    stor11[address(msg.sender)] = sub_4e4f8289
    uint256(stor14[stor7]) = msg.sender or Mask(96, 160, uint256(stor14[stor7]))
    stor10[address(msg.sender)] += msg.value
    idx = 0
    while idx < numDeposits:
        mem[0] = address(stor14[idx])
        mem[32] = 11
        if block.timestamp - stor11[address(stor14[idx])] >= sub_d9607482:
            mem[0] = address(stor14[idx])
            mem[32] = 12
            stor12[address(stor14[idx])] += stor10[address(stor14[idx])] * roi / 100
        idx = idx + 1
        continue 
}

function withdraw(address arg1) payable {
    if msg.sender == arg1:
        if block.timestamp - stor11[address(arg1)] >= sub_d9607482:
            stor1 = stor13[address(arg1)] * feeRate / 100
            stor2 = stor13[address(arg1)] - stor1
            if eth.balance(this.address) > stor10[address(arg1)] + stor2:
                call msg.sender with:
                   value stor10[address(arg1)] + stor2 wei
                     gas 0 wei
                uint256(stor0) = ext_call.success or Mask(248, 8, uint256(stor0))
                if uint8(stor0):
                    stor13[address(arg1)] = 0
                    stor10[address(arg1)] = 0
                    idx = 0
                    while idx < numDeposits:
                        mem[0] = address(stor14[idx])
                        mem[32] = 11
                        if block.timestamp - stor11[address(stor14[idx])] >= sub_d9607482:
                            mem[0] = address(stor14[idx])
                            mem[32] = 12
                            stor12[address(stor14[idx])] += stor10[address(stor14[idx])] * roi / 100
                        idx = idx + 1
                        continue 
}

function withdrawProfit(address arg1) payable {
    if msg.sender == arg1:
        if block.timestamp - stor11[address(arg1)] >= sub_d9607482:
            stor1 = stor13[address(arg1)] * feeRate / 100
            stor2 = stor13[address(arg1)] - stor1
            if eth.balance(this.address) > stor2:
                call msg.sender with:
                   value stor2 wei
                     gas 0 wei
                uint256(stor0) = ext_call.success or Mask(248, 8, uint256(stor0))
                if uint8(stor0):
                    stor11[address(msg.sender)] = block.timestamp
                    stor13[address(msg.sender)] -= stor13[address(arg1)]
                    idx = 0
                    while idx < numDeposits:
                        mem[0] = address(stor14[idx])
                        mem[32] = 11
                        if block.timestamp - stor11[address(stor14[idx])] >= sub_d9607482:
                            mem[0] = address(stor14[idx])
                            mem[32] = 12
                            stor12[address(stor14[idx])] += stor10[address(stor14[idx])] * roi / 100
                        idx = idx + 1
                        continue 
}



}
