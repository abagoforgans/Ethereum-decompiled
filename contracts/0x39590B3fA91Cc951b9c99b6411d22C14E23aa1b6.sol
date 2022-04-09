contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of address stor9;
mapping of uint256 stor10;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 17
    stor0.length.field_8 = 'ballotshelloworld' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'BRRT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor5 = 10^18
    stor3 = 2
    stor4 = 1499389651
    stor6[0x1cbe51911e1ba60b2959297c8100a9be2d4cdcf4] = 0
    stor7[0x1cbe51911e1ba60b2959297c8100a9be2d4cdcf4] = 1
    stor9[0x1cbe51911e1ba60b2959297c8100a9be2d4cdcf4] = 0x18e77bee1511f4c89b47722bb1d45f82de229b45
    stor6[0x18e77bee1511f4c89b47722bb1d45f82de229b45] = stor5
    stor10[0x18e77bee1511f4c89b47722bb1d45f82de229b45] = 0
    stor8[0x18e77bee1511f4c89b47722bb1d45f82de229b45] = 1
    stor6[0x2f6ef3fea45d465d13451b8a8230bb147923d967] = 0
    stor7[0x2f6ef3fea45d465d13451b8a8230bb147923d967] = 1
    stor9[0x2f6ef3fea45d465d13451b8a8230bb147923d967] = 0xe84426c7e7cf88889c64aaa805f9cdfaa1162cad
    stor6[0xe84426c7e7cf88889c64aaa805f9cdfaa1162cad] = stor5
    stor10[0xe84426c7e7cf88889c64aaa805f9cdfaa1162cad] = 0
    stor8[0xe84426c7e7cf88889c64aaa805f9cdfaa1162cad] = 1
    stor6[0x963b9c6ac15df256cbaf353c7fde0725363890dd] = 0
    stor7[0x963b9c6ac15df256cbaf353c7fde0725363890dd] = 1
    stor9[0x963b9c6ac15df256cbaf353c7fde0725363890dd] = 0xf6b7206899747e136896078d8e4e4cb02ad7020b
    stor6[0xf6b7206899747e136896078d8e4e4cb02ad7020b] = stor5
    stor10[0xf6b7206899747e136896078d8e4e4cb02ad7020b] = 0
    stor8[0xf6b7206899747e136896078d8e4e4cb02ad7020b] = 1
    stor6[0xc704cc2d3643637c2876b3ebf2319dd9bc0d78eb] = 0
    stor7[0xc704cc2d3643637c2876b3ebf2319dd9bc0d78eb] = 1
    stor9[0xc704cc2d3643637c2876b3ebf2319dd9bc0d78eb] = 0x880719a72393db8d85b25de6032bfe5c15652cd5
    stor6[0x880719a72393db8d85b25de6032bfe5c15652cd5] = stor5
    stor10[0x880719a72393db8d85b25de6032bfe5c15652cd5] = 0
    stor8[0x880719a72393db8d85b25de6032bfe5c15652cd5] = 1
    return code.data[3016 len 2757]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 maxRewardUnitsAvailable;
uint256 startTime;
uint256 initialSupplyPerChildAddress;
mapping of uint256 balanceOf;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of address returnChild;
mapping of uint256 numRewardsUsed;

function name() {
    return name[0 len name.length]
}

function maxRewardUnitsAvailable() {
    return maxRewardUnitsAvailable
}

function decimals() {
    return decimals
}

function initialSupplyPerChildAddress() {
    return initialSupplyPerChildAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function startTime() {
    return startTime
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9b672cb7(?) {
    return bool(stor8[arg1])
}

function parentAddress(address arg1) {
    return bool(stor7[arg1])
}

function returnChildAddressForParent(address arg1) {
    return returnChild[arg1]
}

function numRewardsUsed(address arg1) {
    return numRewardsUsed[arg1]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if stor7[address(arg1)]:
        if msg.sender == returnChild[address(arg1)]:
            if numRewardsUsed[address(msg.sender)] < maxRewardUnitsAvailable:
                numRewardsUsed[address(msg.sender)]++
                if block.timestamp < startTime + (72 * 24 * 3600):
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (14467592592592592 * block.timestamp) + (-14467592592592592 * startTime) + 1250 * 10^18
                else:
                    balanceOf[address(msg.sender)] += 5000 * 10^18
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
