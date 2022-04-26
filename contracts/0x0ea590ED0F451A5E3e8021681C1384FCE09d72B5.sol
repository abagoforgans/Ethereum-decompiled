contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
mapping of uint256 stor5;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 3
    stor0.length.field_8 = 'LPN' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 8
    stor1.length.field_8 = 'Litepool' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 35 * 10^6
    stor3 = 769230769230769
    stor4 = 0x5367b63897ede5076cd7a970a0fd85750e27f745
    require not msg.value
    stor5[stor4] = 10^18 * stor2
    return code.data[570 len 2709]
}



// =====================  Runtime code  =====================


const decimals = 18


array of uint256 symbol;
array of uint256 name;
uint256 totalSupply;
uint256 stor3;
address stor4;
mapping of uint256 stor5;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function balanceOf(address arg1) {
    return (stor5[address(arg1)] / 10^18)
}

function changeBuyPrice(uint256 arg1) {
    if msg.sender == stor4:
        stor3 = 10^18 * arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require stor3
    require stor5[stor4] >= 10^18 * msg.value / stor3
    require stor5[address(msg.sender)] + (10^18 * msg.value / stor3) >= stor5[address(msg.sender)]
    stor5[address(msg.sender)] += 10^18 * msg.value / stor3
    require 10^18 * msg.value / stor3 <= stor5[stor4]
    stor5[stor4] += -1 * 10^18 * msg.value / stor3
    call stor4 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer((10^18 * msg.value / stor3), stor4, msg.sender);
}

function buy(address arg1) payable {
    require stor3
    require stor5[stor4] >= 10^18 * msg.value / stor3
    require stor5[address(arg1)] + (10^18 * msg.value / stor3) >= stor5[address(arg1)]
    stor5[address(arg1)] += 10^18 * msg.value / stor3
    require 10^18 * msg.value / stor3 <= stor5[stor4]
    stor5[stor4] += -1 * 10^18 * msg.value / stor3
    call stor4 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer((10^18 * msg.value / stor3), stor4, msg.sender);
    return (10^18 * msg.value / stor3)
}



}
