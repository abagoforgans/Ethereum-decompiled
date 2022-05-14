contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
mapping of uint256 stor16;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    mem[96 len -4710] = code.data[5360 len -4710]
    mem[64] = -4614
    address(stor0.field_0) = msg.sender
    stor16[address(msg.sender)] = mem[96]
    stor4 = mem[96]
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor3 = mem[191 len 1]
    stor5 = msg.sender
    stor6 = block.timestamp
    mem[-4582] = 3040000000 * 10^18
    mem[-4550] = 2170000000 * 10^18
    mem[-4518] = 1540000000 * 10^18
    mem[-4486] = 110000000 * 10^18
    mem[-4454] = 780000000 * 10^18
    mem[-4422] = 560000000 * 10^18
    mem[-4390] = 340000000 * 10^18
    mem[-4358] = 200000000 * 10^18
    stor7 = 4270000000 * 10^18
    s = 8
    idx = -4582
    while -4326 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 16
    while 16 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    return code.data[650 len 4710]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
uint256 startTime;
array of uint256 founderAmounts;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
mapping of uint256 balanceOf;
mapping of uint256 freezeOf;
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

function paused() {
    return bool(uint8(stor0.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function freezeOf(address arg1) {
    return freezeOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function founderAmounts(uint256 arg1) {
    require arg1 < 9
    return founderAmounts[arg1]
}

function kill() {
    if address(stor0.field_0) != msg.sender:
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
    revert
}

function unpause() {
    require address(stor0.field_0) == msg.sender
    require uint8(stor0.field_160)
    uint8(stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require address(stor0.field_0) == msg.sender
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    emit Pause()
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require address(stor0.field_0) == msg.sender
    require arg1
    emit OwnershipTransferred(address(stor0.field_0), arg1);
    address(stor0.field_0) = arg1
}

function freeze(uint256 arg1) {
    require not uint8(stor0.field_160)
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 + freezeOf[address(msg.sender)] >= freezeOf[address(msg.sender)]
    freezeOf[address(msg.sender)] += arg1
    emit Freeze(arg1, msg.sender);
    return 1
}

function unfreeze(uint256 arg1) {
    require not uint8(stor0.field_160)
    require freezeOf[address(msg.sender)] >= arg1
    require arg1 <= freezeOf[address(msg.sender)]
    freezeOf[address(msg.sender)] -= arg1
    require arg1 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    emit Unfreeze(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function minutestotal() {
    require address(stor0.field_0) == msg.sender
    if block.timestamp > startTime + (72 * 24 * 3600):
        if founderAmounts.length > 0:
            require founderAmounts.length + totalSupply >= totalSupply
            totalSupply += founderAmounts.length
            require founderAmounts.length + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += founderAmounts.length
            founderAmounts.length = 0
            emit Transfer(0, 0, msg.sender);
        if block.timestamp > startTime + (144 * 24 * 3600):
            if stor8 > 0:
                require stor8 + totalSupply >= totalSupply
                totalSupply += stor8
                require stor8 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += stor8
                stor8 = 0
                emit Transfer(0, 0, msg.sender);
            if block.timestamp > startTime + (216 * 24 * 3600):
                if stor9 > 0:
                    require stor9 + totalSupply >= totalSupply
                    totalSupply += stor9
                    require stor9 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += stor9
                    stor9 = 0
                    emit Transfer(0, 0, msg.sender);
                if block.timestamp > startTime + (288 * 24 * 3600):
                    if stor10 > 0:
                        require stor10 + totalSupply >= totalSupply
                        totalSupply += stor10
                        require stor10 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += stor10
                        stor10 = 0
                        emit Transfer(0, 0, msg.sender);
                    if block.timestamp > startTime + (360 * 24 * 3600):
                        if stor11 > 0:
                            require stor11 + totalSupply >= totalSupply
                            totalSupply += stor11
                            require stor11 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += stor11
                            stor11 = 0
                            emit Transfer(0, 0, msg.sender);
                        if block.timestamp > startTime + (432 * 24 * 3600):
                            if stor12 > 0:
                                require stor12 + totalSupply >= totalSupply
                                totalSupply += stor12
                                require stor12 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += stor12
                                stor12 = 0
                                emit Transfer(0, 0, msg.sender);
                            if block.timestamp > startTime + (504 * 24 * 3600):
                                if stor13 > 0:
                                    require stor13 + totalSupply >= totalSupply
                                    totalSupply += stor13
                                    require stor13 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += stor13
                                    stor13 = 0
                                    emit Transfer(0, 0, msg.sender);
                                if block.timestamp > startTime + (576 * 24 * 3600):
                                    if stor14 > 0:
                                        require stor14 + totalSupply >= totalSupply
                                        totalSupply += stor14
                                        require stor14 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += stor14
                                        stor14 = 0
                                        emit Transfer(0, 0, msg.sender);
                                    if block.timestamp > startTime + (648 * 24 * 3600):
                                        if stor15 > 0:
                                            require stor15 + totalSupply >= totalSupply
                                            totalSupply += stor15
                                            require stor15 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += stor15
                                            stor15 = 0
                                            emit Transfer(0, 0, msg.sender);
}



}
