contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'MINT' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'MINT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor3 = 1000000000 * 10^18
    stor4 = 10^18
    require not msg.value
    stor6[address(msg.sender)] = stor3
    stor5--
    stor5 = stor5 / 10^9
    return code.data[543 len 3752]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 miningReward;
uint256 stor5;
mapping of uint256 balanceOf;
mapping of uint256 successesOf;
mapping of uint256 failsOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function miningReward() {
    return miningReward
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function failsOf(address arg1) {
    return failsOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function successesOf(address arg1) {
    return successesOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function _fallback() {
    hash = sha256hash(block.hash(block.number - 1) + msg.sender) 
    require sha256hash.result
    require stor5
    require totalSupply
    require 10^9 * balanceOf[address(msg.sender)] / totalSupply >= 100000
    if 10^9 * balanceOf[address(msg.sender)] / totalSupply / 100000 > 255:
        if hash / stor5 >= 500 * 10^6:
            failsOf[address(msg.sender)]++
        else:
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + miningReward + (10^14 * hash / stor5)
            totalSupply = totalSupply + miningReward + (10^14 * hash / stor5)
            emit Transfer((miningReward + (10^14 * hash / stor5)), 0, this.address);
            emit Transfer((miningReward + (10^14 * hash / stor5)), this.address, msg.sender);
            successesOf[address(msg.sender)]++
    else:
        require 2^(10^9 * balanceOf[address(msg.sender)] / totalSupply / 100000)
        if hash / stor5 >= -(500 * 10^6 / 2^(10^9 * balanceOf[address(msg.sender)] / totalSupply / 100000)) + 500 * 10^6:
            failsOf[address(msg.sender)]++
        else:
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + miningReward + (10^14 * hash / stor5)
            totalSupply = totalSupply + miningReward + (10^14 * hash / stor5)
            emit Transfer((miningReward + (10^14 * hash / stor5)), 0, this.address);
            emit Transfer((miningReward + (10^14 * hash / stor5)), this.address, msg.sender);
            successesOf[address(msg.sender)]++
}



}
