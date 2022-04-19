contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint256 stor4;

function _fallback() {
    stor3 = msg.sender
    stor0 = 21000000 * 10^18
    stor1[address(msg.sender)] = stor0
    stor4 = stor0
    emit Transfer(stor0, 0, this.address);
    emit Transfer(stor0, this.address, msg.sender);
    return code.data[381 len 4049]
}



// =====================  Runtime code  =====================


const name = 'Bitcoin Omega'

const decimals = 18

const symbol = 'BTCO'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 initialSupply;

function totalSupply() {
    return totalSupply
}

function initialSupply() {
    return initialSupply
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function distribute1BTCO(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        balanceOf[stor3] -= 5000 * 10^18
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        balanceOf[mem[(32 * idx) + 140 len 20]] += 5000 * 10^18
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 5000 * 10^18
        emit Transfer(5000 * 10^18, owner, address(_17));
        idx = idx + 1
        continue 
}



}
