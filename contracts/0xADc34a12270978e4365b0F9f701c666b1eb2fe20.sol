contract main {




// =====================  Runtime code  =====================


const name = 'UnionTokens'

const decimals = 6

const symbol = 'UNION'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
address team1Address;
address team2Address;
address foundationAddress;
address partnerAddress;
address idoAddress;
address operateAddress;

function totalSupply() {
    return totalSupply
}

function foundation() {
    return foundationAddress
}

function paused() {
    return bool(stor3)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function operate() {
    return operateAddress
}

function team1() {
    return team1Address
}

function owner() {
    return owner
}

function partner() {
    return partnerAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function team2() {
    return team2Address
}

function ido() {
    return idoAddress
}

function _fallback() {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
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

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3
    require calldata.size >= 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function batchTransfer(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require not stor3
    require arg1.length > 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _15 = mem[(32 * idx) + 128]
        require mem[(32 * idx) + 140 len 20]
        require arg2 <= balanceOf[msg.sender]
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[32] = 0
        balanceOf[address(mem[(32 * idx) + 128])] = arg2 + balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[(32 * arg1.length) + 128] = arg2
        mem[0] = address(_15)
        emit Transfer(arg2, msg.sender, address(_15));
        s = _15
        idx = idx + 1
        continue 
}

function batchTransfers(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not stor3
    require arg1.length > 0
    require arg1.length == arg2.length
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _25 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _27 = mem[(32 * arg1.length) + (32 * idx) + 160]
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * arg1.length) + (32 * idx) + 160] <= balanceOf[msg.sender]
        require idx < arg2.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= mem[(32 * arg1.length) + (32 * idx) + 160]
        require idx < arg2.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] + balanceOf[address(mem[(32 * idx) + 128])] >= balanceOf[address(mem[(32 * idx) + 128])]
        mem[32] = 0
        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * arg1.length) + (32 * idx) + 160]
        mem[0] = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_25));
        s = _27
        s = _25
        idx = idx + 1
        continue 
}



}
