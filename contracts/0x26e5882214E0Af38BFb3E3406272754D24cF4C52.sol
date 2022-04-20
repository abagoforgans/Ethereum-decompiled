contract main {


// =======================  Init code  ======================


uint256 stor1;
address stor2;

function _fallback() payable {
    stor1 = 20 * 10^6
    require not msg.value
    stor2 = msg.sender
    return code.data[103 len 4515]
}



// =====================  Runtime code  =====================


const name = 'TADATEST'

const decimals = 8

const symbol = 'TADA'

const RATE = 2142


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

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

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(msg.sender, address(arg1), arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(address(arg1), arg2, msg.sender);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    if msg.value:
        require msg.value
        require 2142 * msg.value / msg.value == 2142
    require balanceOf[address(msg.sender)] + (2142 * msg.value) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 2142 * msg.value
    require 2142 * msg.value >= 0
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require msg.value > 0
    if msg.value:
        require msg.value
        require 2142 * msg.value / msg.value == 2142
    require balanceOf[address(msg.sender)] + (2142 * msg.value) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 2142 * msg.value
    require 2142 * msg.value >= 0
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(address(arg2), arg3, arg1);
    return 1
}

function bytes32ToString(bytes32 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 32
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if not Mask(8, 248, arg1 * 2^(8 * idx)):
            s = arg1 * 2^(8 * idx)
            idx = idx + 1
            s = s
            continue 
        require s < 32
        mem[s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = arg1 * 2^(8 * idx)
        idx = idx + 1
        s = s + 1
        continue 
    _msize = max(0, s + 8)
    mem[_msize + 224] = s
    mem[64] = (_msize + 224) + ceil32(s) + 32
    t = 0
    while t < s:
        require t < 32
        require t < mem[_msize + 224]
        mem[(_msize + 224) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 2)), 32))), 0) - 256
        t = t + 1
        continue 
    mem[(_msize + 224) + ceil32(s) + 32] = 32
    mem[(_msize + 224) + ceil32(s) + 64] = mem[_msize + 224]
    mem[(_msize + 224) + ceil32(s) + 96 len ceil32(mem[_msize + 224])] = mem[(_msize + 224) + 32 len ceil32(mem[_msize + 224])]
    if not mem[max(0, s + 8) + 224] % 32:
        return 32, mem[(_msize + 224) + ceil32(s) + 64 len mem[_msize + 224] + 32]
    mem[floor32(mem[_msize + 224]) + (_msize + 224) + ceil32(s) + 96] = mem[floor32(mem[_msize + 224]) + (_msize + 224) + ceil32(s) + -(mem[_msize + 224] % 32) + 128 len mem[_msize + 224] % 32]
    return 32, mem[(_msize + 224) + ceil32(s) + 64 len floor32(mem[_msize + 224]) + 64]
}



}
