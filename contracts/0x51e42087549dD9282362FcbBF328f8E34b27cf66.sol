contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
uint256 stor5; offset 20
uint256 stor5;
mapping of uint256 stor6;

function _fallback() payable {
    stor0 = 1000000000 * 10^18
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'MIT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'MIT' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    stor4 = 10^18
    require not msg.value
    stor6[address(msg.sender)] = stor0
    uint256(stor5.field_0)--
    uint256(stor5.field_0) = Mask(236, 0, stor5.field_20)
    return code.data[542 len 3685]
}



// =====================  Runtime code  =====================


uint256 supply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 miningReward;
uint256 stor5;
mapping of uint256 balanceOf;
mapping of uint256 successesOf;
mapping of uint256 failsOf;
mapping of uint256 allowance;

function supply() {
    return supply
}

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function miningReward() {
    return miningReward
}

function balanceOf(address arg1) {
    return uint256(balanceOf[arg1])
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
    require uint256(balanceOf[address(msg.sender)]) >= arg2
    require uint256(balanceOf[address(arg1)]) + arg2 > uint256(balanceOf[address(arg1)])
    uint256(balanceOf[address(msg.sender)]) -= arg2
    uint256(balanceOf[address(arg1)]) += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require uint256(balanceOf[address(msg.sender)]) + uint256(balanceOf[address(arg1)]) == uint256(balanceOf[address(msg.sender)]) + uint256(balanceOf[address(arg1)])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require uint256(balanceOf[address(arg1)]) >= arg3
    require uint256(balanceOf[address(arg2)]) + arg3 > uint256(balanceOf[address(arg2)])
    uint256(balanceOf[address(arg1)]) -= arg3
    uint256(balanceOf[address(arg2)]) += arg3
    emit Transfer(arg3, arg1, arg2);
    require uint256(balanceOf[address(arg1)]) + uint256(balanceOf[address(arg2)]) == uint256(balanceOf[address(arg1)]) + uint256(balanceOf[address(arg2)])
    return 1
}

function _fallback() {
    hash = sha256hash(block.hash(block.number - 1) + msg.sender) 
    require sha256hash.result
    require stor5
    require supply
    if hash / stor5 >= (Mask(236, 20, 933233 * Mask(236, 0, balanceOf[address(msg.sender)]) / supply) >> 20) + 10485:
        failsOf[address(msg.sender)]++
    else:
        uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + miningReward + (10^15 * hash / stor5)
        supply = supply + miningReward + (10^15 * hash / stor5)
        emit Transfer((miningReward + (10^15 * hash / stor5)), 0, this.address);
        emit Transfer((miningReward + (10^15 * hash / stor5)), this.address, msg.sender);
        successesOf[address(msg.sender)]++
}



}
