contract main {




// =====================  Runtime code  =====================


const name = 'DFCoin'

const decimals = 8

const symbol = 'DFCoin'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;

function totalSupply() {
    return totalSupply
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
    revert
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

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
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
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function addCoin(uint256 arg1) {
    require msg.sender == owner
    require (100 * 10^6 * arg1) + totalSupply >= totalSupply
    totalSupply += 100 * 10^6 * arg1
    require (100 * 10^6 * arg1) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += 100 * 10^6 * arg1
    require (100 * 10^6 * arg1) + allowance[msg.sender][msg.sender] >= allowance[msg.sender][msg.sender]
    allowance[msg.sender][msg.sender] += 100 * 10^6 * arg1
    emit Transfer((100 * 10^6 * arg1), 0, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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

function batchTransfer(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length > 0
    require arg1.length <= 20
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while uint8(idx) < uint8(arg1.length):
        require uint8(idx) < arg2.length
        require mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] + s >= s
        idx = idx + 1
        s = mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] + s
        continue 
    require _31 * None <= balanceOf[msg.sender]
    require _31 * None <= balanceOf[msg.sender]
    balanceOf[msg.sender] += -1 * _31 * None
    idx = 0
    while uint8(idx) < uint8(arg1.length):
        require uint8(idx) < arg2.length
        require uint8(idx) < arg1.length
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] >= balanceOf[mem[(32 * uint8(idx)) + 140 len 20]]
        require uint8(idx) < arg1.length
        mem[32] = 0
        balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] += mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require uint8(idx) < arg1.length
        _62 = mem[(32 * uint8(idx)) + 128]
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        require uint8(idx) < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_62));
        idx = idx + 1
        continue 
    return 1
}



}
