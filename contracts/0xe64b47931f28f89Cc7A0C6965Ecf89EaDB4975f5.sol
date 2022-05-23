contract main {




// =====================  Runtime code  =====================


const name = 'Ludos Protocol'

const decimals = 18

const symbol = 'LUD'

const INITIAL_SUPPLY = 0

const MAX_SUPPLY = 10000000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
uint256 cap;
uint8 stor5;
mapping of uint8 stor6;

function mintingFinished() {
    return bool(stor3)
}

function totalSupply() {
    return totalSupply
}

function cap() {
    return cap
}

function paused() {
    return bool(stor5)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    return bool(stor6[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require owner == msg.sender
    require stor5
    stor5 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor5
    stor5 = 1
    emit Pause()
}

function renounceOwnership() {
    require owner == msg.sender
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require not stor5
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finishMinting() {
    require owner == msg.sender
    require not stor3
    require not stor5
    require owner == msg.sender
    require not stor3
    stor3 = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not stor5
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor5
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor5
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor5
    require not stor6[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor3
    require not stor5
    require owner == msg.sender
    require not stor3
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply <= cap
    require owner == msg.sender
    require not stor3
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function batchFreeze(address[] arg1, bool arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        require idx < arg1.length
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 160] = arg2
        emit FrozenFunds(mem[(32 * arg1.length) + 128], arg2);
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor5
    require not stor6[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
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

function batchTransferValues(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not stor5
    require not stor6[address(msg.sender)]
    require arg1.length == arg2.length
    require arg1.length > 0
    require arg1.length <= 500
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require mem[(32 * arg1.length) + (32 * idx) + 160]
        require idx < arg2.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s
        idx = idx + 1
        s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
        continue 
    require mem[(64 * arg1.length) + 160] * arg1.length <= balanceOf[address(msg.sender)]
    require mem[(64 * arg1.length) + 160] * arg1.length <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * mem[(64 * arg1.length) + 160] * arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[32] = 0
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _73 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_73));
        idx = idx + 1
        continue 
    return 1
}

function batchTransfer(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require not stor5
    require not stor6[address(msg.sender)]
    if not arg1.length:
        require arg1.length > 0
        require arg1.length <= 500
        require arg2 > 0
        require 0 <= balanceOf[address(msg.sender)]
        require 0 <= balanceOf[address(msg.sender)]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg1.length
            require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[32] = 0
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < arg1.length
            _69 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, msg.sender, address(_69));
            idx = idx + 1
            continue 
    else:
        require arg2 * arg1.length / arg1.length == arg2
        require arg1.length > 0
        require arg1.length <= 500
        require arg2 > 0
        require arg2 * arg1.length <= balanceOf[address(msg.sender)]
        require arg2 * arg1.length <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += -1 * arg2 * arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg1.length
            require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[32] = 0
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < arg1.length
            _64 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, msg.sender, address(_64));
            idx = idx + 1
            continue 
    return 1
}



}
