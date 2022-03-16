contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor5 = msg.sender or Mask(96, 160, stor5)
    stor4 = 0
    stor0 = 120
    stor3 = 300
    stor2 = 0
    return code.data[109 len 3056]
}



// =====================  Runtime code  =====================


uint256 roi;
uint256 sub_4e4f8289;
uint256 sub_aa3f8cb7;
uint256 sub_d9607482;
uint256 numDeposits;
address managerAddress;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 stor9;
mapping of address stor10;

function manager() payable {
    return managerAddress
}

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

function sub_d9607482(?) payable {
    return sub_d9607482
}

function _fallback() payable {
  stop
}

function sub_bdc68113(?) payable {
    if msg.sender == arg1:
        return stor8[address(arg1)]
    else:
        return 0
}

function getProfit(address arg1) payable {
    if msg.sender == arg1:
        return stor9[address(arg1)]
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
    stor7[address(msg.sender)] = sub_4e4f8289
    uint256(stor10[stor4]) = msg.sender or Mask(96, 160, uint256(stor10[stor4]))
    stor6[address(msg.sender)] += msg.value
    stor8[address(msg.sender)] += msg.value * roi / 100
    stor9[address(msg.sender)] += msg.value * roi / 100
}

function withdraw(address arg1) payable {
    if msg.sender == arg1:
        if block.timestamp - stor7[address(arg1)] < sub_d9607482:
            sub_aa3f8cb7 = block.timestamp
        else:
            call msg.sender with:
               value stor6[address(arg1)] + stor9[address(arg1)] wei
                 gas 0 wei
            stor9[address(arg1)] = 0
            stor6[address(arg1)] = 0
}

function decay() payable {
    if msg.sender == managerAddress:
        if block.timestamp - sub_4e4f8289 >= 500:
            idx = 0
            while idx < numDeposits:
                call address(stor10[idx]) with:
                   value stor6[address(stor10[idx])] wei
                     gas 0 wei
                mem[0] = address(stor10[idx])
                mem[32] = 6
                stor6[address(stor10[idx])] = 0
                idx = idx + 1
                continue 
}

function withdrawProfit(address arg1) payable {
    if msg.sender == arg1:
        if block.timestamp - stor7[address(arg1)] < sub_d9607482:
            sub_aa3f8cb7 = block.timestamp
        else:
            call msg.sender with:
               value stor9[address(arg1)] wei
                 gas 0 wei
            stor7[address(msg.sender)] = 0
            stor9[address(msg.sender)] -= stor9[address(arg1)]
            stor9[address(msg.sender)] += stor6[address(msg.sender)] * roi / 100
            stor8[address(msg.sender)] += stor6[address(msg.sender)] * roi / 100
}



}
