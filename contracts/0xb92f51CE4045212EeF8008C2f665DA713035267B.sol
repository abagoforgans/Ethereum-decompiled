contract main {




// =====================  Runtime code  =====================


const addrAirDrop = 0x9b2466235741d3d8e018acbbc8feccf4c6c96859

const addrDistribution = 0x7feb9bdf4ea954264c735c5c5f731e14e4d5327e

const distributionPercent = 70

const addrDevelopment = 0x3de89f56eb251bc105fb4e6e6f95cd98f3797496

const developmentPercent = 10

const airDropPercent = 10

const lockedFundsPercent = 10

const addrLockedFunds = 0xa1d7a9aca0aad152624be07cddce1036c3404d4c

const lockedFundsSeconds = (8760 * 24 * 3600)


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalAmount;
uint256 multiplier;
uint256 contractStartTime;
array of uint256 saveData;

function name() {
    return name[0 len name.length]
}

function contractStartTime() {
    return contractStartTime
}

function totalSupply() {
    return totalSupply
}

function totalAmount() {
    return totalAmount
}

function multiplier() {
    return multiplier
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getSaveData(address arg1) {
    return saveData[address(arg1)][0 len saveData[address(arg1)].length]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function putSaveData(address arg1, string arg2) {
    require msg.sender == owner
    saveData[address(arg1)][] = Array(len=arg2.length, data=arg2[all])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function unlockFunds() {
    require msg.sender == owner
    require 8760 * 24 * 3600 <= block.timestamp
    require block.timestamp - (8760 * 24 * 3600) > contractStartTime
    require balanceOf[0xa1d7a9aca0aad152624be07cddce1036c3404d4c] <= balanceOf[0xa1d7a9aca0aad152624be07cddce1036c3404d4c]
    balanceOf[0xa1d7a9aca0aad152624be07cddce1036c3404d4c] = 0
    require balanceOf[0x3de89f56eb251bc105fb4e6e6f95cd98f3797496] + balanceOf[0xa1d7a9aca0aad152624be07cddce1036c3404d4c] >= balanceOf[0x3de89f56eb251bc105fb4e6e6f95cd98f3797496]
    balanceOf[0x3de89f56eb251bc105fb4e6e6f95cd98f3797496] += balanceOf[0xa1d7a9aca0aad152624be07cddce1036c3404d4c]
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  balanceOf[0xa1d7a9aca0aad152624be07cddce1036c3404d4c],
    emit 0xa1d7a9ac: balanceOf[0xa1d7a9aca0aad152624be07cddce1036c3404d4c]
    emit 0x3de89f56: balanceOf[0xa1d7a9aca0aad152624be07cddce1036c3404d4c]
}

function initializeContract() {
    require msg.sender == owner
    if not totalSupply:
        contractStartTime = block.timestamp
        totalSupply = totalAmount * multiplier
        balanceOf[0x3de89f56eb251bc105fb4e6e6f95cd98f3797496] = 10 * totalSupply / 100
        balanceOf[0xa1d7a9aca0aad152624be07cddce1036c3404d4c] = 10 * totalSupply / 100
        balanceOf[0x9b2466235741d3d8e018acbbc8feccf4c6c96859] = 10 * totalSupply / 100
        balanceOf[0x7feb9bdf4ea954264c735c5c5f731e14e4d5327e] = 70 * totalSupply / 100
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      balanceOf[0x3de89f56eb251bc105fb4e6e6f95cd98f3797496],
        emit 0x0: balanceOf[0x3de89f56eb251bc105fb4e6e6f95cd98f3797496]
        emit 0x3de89f56: balanceOf[0x3de89f56eb251bc105fb4e6e6f95cd98f3797496]
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      balanceOf[0xa1d7a9aca0aad152624be07cddce1036c3404d4c],
        emit 0x0: balanceOf[0xa1d7a9aca0aad152624be07cddce1036c3404d4c]
        emit 0xa1d7a9ac: balanceOf[0xa1d7a9aca0aad152624be07cddce1036c3404d4c]
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      balanceOf[0x9b2466235741d3d8e018acbbc8feccf4c6c96859],
        emit 0x0: balanceOf[0x9b2466235741d3d8e018acbbc8feccf4c6c96859]
        emit 0x9b246623: balanceOf[0x9b2466235741d3d8e018acbbc8feccf4c6c96859]
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      balanceOf[0x7feb9bdf4ea954264c735c5c5f731e14e4d5327e],
        emit 0x0: balanceOf[0x7feb9bdf4ea954264c735c5c5f731e14e4d5327e]
        emit 0x7feb9bdf: balanceOf[0x7feb9bdf4ea954264c735c5c5f731e14e4d5327e]
}

function airDrop(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    require s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length <= balanceOf[0x9b2466235741d3d8e018acbbc8feccf4c6c96859]
    require s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length <= balanceOf[0x9b2466235741d3d8e018acbbc8feccf4c6c96859]
    balanceOf[0x9b2466235741d3d8e018acbbc8feccf4c6c96859] += -1 * s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _64 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], 0x9b2466235741d3d8e018acbbc8feccf4c6c96859, address(_64));
        idx = idx + 1
        continue 
    return 1
}



}
