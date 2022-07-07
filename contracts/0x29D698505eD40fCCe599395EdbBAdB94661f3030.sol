contract main {




// =====================  Runtime code  =====================


const name = ''

const decimals = 18

const _totalLimit = 100000000000000 * 10^18

const mintMax = 100000000 * 10^18

const sub_74f8d24c(?) = 0

const symbol = 'carat'

const sub_e6d49543(?) = 1554816227


uint8 stor0; offset 160
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 mintTotal;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(stor0)
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function mintTotal() {
    return mintTotal
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Paused(msg.sender);
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor0
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require not stor0
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require not stor0
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor0
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor0
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require block.timestamp >= 1554816227
    require arg2 > 0
    require arg2 + mintTotal >= mintTotal
    mintTotal += arg2
    require mintTotal <= 100000000 * 10^18
    require arg1
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require 100000000000000 * 10^18 >= arg2 + totalSupply
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    emit Mint(arg2, arg1);
    return 1
}

function sub_7ae29d66(?) {
    require msg.sender == owner
    require block.timestamp >= 1554816227
    require mintTotal <= 100000000 * 10^18
    require -mintTotal + 100000000 * 10^18 > 0
    require 100000000 * 10^18 >= mintTotal
    mintTotal = 100000000 * 10^18
    require arg1
    require -mintTotal + totalSupply + 100000000 * 10^18 >= totalSupply
    totalSupply = -mintTotal + totalSupply + 100000000 * 10^18
    require 100000000000000 * 10^18 >= -mintTotal + totalSupply + 100000000 * 10^18
    require -mintTotal + balanceOf[address(arg1)] + 100000000 * 10^18 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = -mintTotal + balanceOf[address(arg1)] + 100000000 * 10^18
    emit Transfer((-mintTotal + 100000000 * 10^18), 0, arg1);
    emit Mint((-mintTotal + 100000000 * 10^18), arg1);
    return 1
}

function batchTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    require arg1.length > 0
    require arg1.length <= 20
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _20 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require not stor0
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_20));
        idx = idx + 1
        continue 
    return 1
}



}
