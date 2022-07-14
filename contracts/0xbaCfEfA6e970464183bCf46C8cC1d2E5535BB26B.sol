contract main {




// =====================  Runtime code  =====================


const name = 'TG CITY'

const decimals = 18

const version = '1.0'

const symbol = 'TG'

const MAX_SUPPLY = 100000000 * 10^18


uint256 totalSupply;
address owner;
uint256 airdropSupply;
array of struct lockEpochsMap;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function lockEpochsMap(address arg1, uint256 arg2) {
    require arg2 < lockEpochsMap[arg1].field_0
    return lockEpochsMap[arg1][arg2].field_0, lockEpochsMap[arg1][arg2].field_256
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function airdropSupply() {
    return airdropSupply
}

function _fallback() payable {
  stop
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

function etherProceeds() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function addIssue(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
}

function lockBalance(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    lockEpochsMap[address(arg1)].field_0++
    lockEpochsMap[address(arg1)][lockEpochsMap[address(arg1)].field_0].field_0 = arg3
    lockEpochsMap[address(arg1)][lockEpochsMap[address(arg1)].field_0].field_256 = arg2
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    idx = 0
    s = 0
    while idx < lockEpochsMap[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 3)
        if block.timestamp >= lockEpochsMap[address(msg.sender)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < lockEpochsMap[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 3)
        require s + lockEpochsMap[address(msg.sender)][idx].field_256 >= s
        idx = idx + 1
        s = s + lockEpochsMap[address(msg.sender)][idx].field_256
        continue 
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] - arg2 >= s
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    idx = 0
    s = 0
    while idx < lockEpochsMap[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        if block.timestamp >= lockEpochsMap[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < lockEpochsMap[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 3)
        require s + lockEpochsMap[address(arg1)][idx].field_256 >= s
        idx = idx + 1
        s = s + lockEpochsMap[address(arg1)][idx].field_256
        continue 
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] - arg3 >= s
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function airdrop(address[] arg1, uint256 arg2) {
    require msg.sender == owner
    if not arg2:
        require 0 <= balanceOf[address(msg.sender)]
    else:
        require arg2
        require arg2 * arg1.length / arg2 == arg1.length
        require arg2 * arg1.length <= balanceOf[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require address(cd[((32 * idx) + arg1 + 36)])
        s = 0
        t = 0
        while s < lockEpochsMap[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 3)
            if block.timestamp >= lockEpochsMap[address(msg.sender)][s].field_0:
                s = s + 1
                t = t
                continue 
            require s < lockEpochsMap[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 3)
            require t + lockEpochsMap[address(msg.sender)][s].field_256 >= t
            s = s + 1
            t = t + lockEpochsMap[address(msg.sender)][s].field_256
            continue 
        require arg2 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - arg2 >= t
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + arg2 >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += arg2
        mem[96] = arg2
        emit Transfer(arg2, msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        require airdropSupply + arg2 >= airdropSupply
        airdropSupply += arg2
        idx = idx + 1
        continue 
}



}
