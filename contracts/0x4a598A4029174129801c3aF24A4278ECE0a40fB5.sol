contract main {




// =====================  Runtime code  =====================


const name = 'Wang Kong Coin'

const decimals = 18

const version = '1.0'

const symbol = 'WKC'

const MAX_SUPPLY = 100000000 * 10^18


uint256 totalSupply;
address owner;
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

function _fallback() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function etherProceeds() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
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
    while idx < lockEpochsMap[msg.sender].field_0:
        mem[0] = sha3(msg.sender, 2)
        if block.timestamp >= lockEpochsMap[msg.sender][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < lockEpochsMap[msg.sender].field_0
        mem[0] = sha3(msg.sender, 2)
        require lockEpochsMap[msg.sender][idx].field_256 + s >= s
        idx = idx + 1
        s = lockEpochsMap[msg.sender][idx].field_256 + s
        continue 
    require arg2 <= balanceOf[msg.sender]
    require balanceOf[msg.sender] - arg2 >= s
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    idx = 0
    s = 0
    while idx < lockEpochsMap[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 2)
        if block.timestamp >= lockEpochsMap[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < lockEpochsMap[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 2)
        require lockEpochsMap[address(arg1)][idx].field_256 + s >= s
        idx = idx + 1
        s = lockEpochsMap[address(arg1)][idx].field_256 + s
        continue 
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] - arg3 >= s
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
