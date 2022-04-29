contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint256 stor8;
uint256 stor9;
mapping of uint256 stor10;

function _fallback() payable {
    stor2 = 18
    stor6 = 100000000000000 * 10^18
    stor7 = 0
    stor8 = 0
    stor9 = 0
    require not msg.value
    mem[96 len -5061] = code.data[5565 len -5061]
    mem[64] = -4965
    stor3 = mem[96] * 10^stor2
    stor10[address(msg.sender)] = stor3
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor5 = block.timestamp
    return code.data[504 len 5061]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 currentChallenge;
uint256 timeOfLastProof;
uint64 stor6;
uint256 difficulty;
uint8 stor7;
uint256 mined;
uint256 curReward;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function mined() {
    return mined
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function difficulty() {
    return uint256(difficulty)
}

function decimals() {
    return decimals
}

function currentChallenge() {
    return currentChallenge
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function timeOfLastProof() {
    return timeOfLastProof
}

function curReward() {
    return curReward
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
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

function proofOfWork(uint256 arg1) {
    require Mask(64, 192, sha3(arg1, currentChallenge)) >= Mask(64, 192, uint64(stor6))
    require block.timestamp - timeOfLastProof >= 5
    require not stor7
    curReward = block.timestamp - timeOfLastProof
    if curReward + mined > 5 * 10^6:
        curReward = -mined + 5 * 10^6
    curReward = curReward * 10^decimals
    balanceOf[address(msg.sender)] += curReward
    mined += curReward
    if mined >= 5 * 10^6:
        stor7 = 1
    require block.timestamp - timeOfLastProof
    uint256(difficulty) = (600 * uint256(difficulty) / block.timestamp - timeOfLastProof) + 1
    timeOfLastProof = block.timestamp
    currentChallenge = sha3(arg1, currentChallenge, block.hash(block.number - 1))
}



}
