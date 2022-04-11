contract main {


// =======================  Init code  ======================


address stor3;

function _fallback() {
    stor3 = msg.sender
    return code.data[60 len 2375]
}



// =====================  Runtime code  =====================


const name = 'Justin Test Token 1'

const decimals = 8

const symbol = 'JTT1'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function approval(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
        require balanceOf[address(msg.sender)] >= arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function multiMint(uint256[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require idx < arg1.length
        _16 = mem[(32 * idx) + 128]
        mem[32] = 0
        balanceOf[mem[(32 * idx) + 128 len 20]] += mem[(32 * idx) + 148 len 12]
        mem[0] = mem[(32 * idx) + 128 len 20]
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 148 len 12]
        emit Transfer(mem[(32 * arg1.length) + 128], 0, Mask(160, 96, _14) >> 96);
        s = Mask(96, 0, _16)
        s = Mask(160, 96, _14) >> 96
        idx = idx + 1
        s = Mask(96, 0, _16) + s
        continue 
    totalSupply += Mask(96, 0, _16) * arg1.length
}



}
