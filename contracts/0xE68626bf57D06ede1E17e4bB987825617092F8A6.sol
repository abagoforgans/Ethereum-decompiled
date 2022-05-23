contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
mapping of uint256 stor4;

function _fallback() {
    stor1 = msg.sender
    stor0 = 1000000000 * 10^18
    stor4[address(msg.sender)] = 1000000000 * 10^18
    emit Transfer(1000000000 * 10^18, 0, msg.sender);
    stor2 = 0
    return code.data[150 len 2838]
}



// =====================  Runtime code  =====================


const name = 'Mazu International Foundation'

const decimals = 18

const version = '1.0'

const symbol = 'MAZU'

const MAX_SUPPLY = 1000000000 * 10^18


uint256 totalSupply;
address owner;
uint256 balance;
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

function balance() {
    return balance
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    require msg.value + balance >= balance
    balance += msg.value
}

function transferOwnership(address arg1) {
    require owner == msg.sender
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
    require owner == msg.sender
    call msg.sender with:
       value balance wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    balance = 0
}

function lockBalance(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    lockEpochsMap[address(arg1)].field_0++
    if not lockEpochsMap[address(arg1)].field_0 <= lockEpochsMap[address(arg1)].field_0 + 1:
        idx = 2 * lockEpochsMap[address(arg1)].field_0 + 1
        while 2 * lockEpochsMap[address(arg1)].field_0 > idx:
            lockEpochsMap[address(arg1)][idx].field_0 = 0
            lockEpochsMap[address(arg1)][idx].field_256 = 0
            idx = idx + 2
            continue 
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
        require lockEpochsMap[address(msg.sender)][idx].field_256 + s >= s
        idx = idx + 1
        s = lockEpochsMap[address(msg.sender)][idx].field_256 + s
        continue 
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] - arg2 >= s
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
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
        mem[0] = sha3(address(arg1), 3)
        if block.timestamp >= lockEpochsMap[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < lockEpochsMap[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 3)
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
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
