contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor6 = msg.sender or Mask(96, 160, stor6)
    stor4 = 0
    stor1 = 120
    stor3 = 300
    stor5 = 500
    return code.data[110 len 3302]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint256 stor0;
uint256 roi;
uint256 sub_4e4f8289;
uint256 sub_d9607482;
uint256 numDeposits;
uint256 sub_5294010f;
address managerAddress;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 stor9;
mapping of uint256 stor10;
mapping of address stor11;

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
        return stor9[address(arg1)]
    else:
        return 0
}

function getProfit(address arg1) payable {
    if msg.sender == arg1:
        return stor10[address(arg1)]
    else:
        return 0
}

function getBalance(address arg1) payable {
    if msg.sender == arg1:
        return stor7[address(arg1)]
    else:
        return 0
}

function sub_38aa6b7d(?) payable {
    if msg.sender == arg1:
        return (block.timestamp - stor8[address(arg1)])
    else:
        return 0
}

function deposit() payable {
    numDeposits++
    sub_4e4f8289 = block.timestamp
    stor8[address(msg.sender)] = sub_4e4f8289
    uint256(stor11[stor4]) = msg.sender or Mask(96, 160, uint256(stor11[stor4]))
    stor7[address(msg.sender)] += msg.value
    stor9[address(msg.sender)] += msg.value * roi / 100
    stor10[address(msg.sender)] += msg.value * roi / 100
}

function withdraw(address arg1) payable {
    if msg.sender == arg1:
        if block.timestamp - stor8[address(arg1)] >= sub_d9607482:
            call msg.sender with:
               value stor7[address(arg1)] + stor10[address(arg1)] wei
                 gas 0 wei
            uint256(stor0) = ext_call.success or Mask(248, 8, uint256(stor0))
            if uint8(stor0):
                stor10[address(arg1)] = 0
                stor7[address(arg1)] = 0
}

function decay() payable {
    if msg.sender == managerAddress:
        if block.timestamp - sub_4e4f8289 >= sub_5294010f:
            idx = 0
            while idx < numDeposits:
                call address(stor11[idx]) with:
                   value stor7[address(stor11[idx])] wei
                     gas 0 wei
                stor7[address(stor11[idx])] = 0
                mem[0] = address(stor11[idx])
                mem[32] = 10
                stor10[address(stor11[idx])] = 0
                idx = idx + 1
                continue 
}

function withdrawProfit(address arg1) payable {
    if msg.sender == arg1:
        if block.timestamp - stor8[address(arg1)] >= sub_d9607482:
            if eth.balance(this.address) > stor10[address(arg1)]:
                call msg.sender with:
                   value stor10[address(arg1)] wei
                     gas 0 wei
                uint256(stor0) = ext_call.success or Mask(248, 8, uint256(stor0))
                if uint8(stor0):
                    stor8[address(msg.sender)] = block.timestamp
                    stor10[address(msg.sender)] -= stor10[address(arg1)]
                    stor10[address(msg.sender)] += stor7[address(msg.sender)] * roi / 100
                    stor9[address(msg.sender)] += stor7[address(msg.sender)] * roi / 100
}



}
