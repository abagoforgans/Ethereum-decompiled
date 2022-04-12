contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor6;

function _fallback() {
    stor0 = 75 * 10^16
    stor1[address(this.address)] = 75 * 10^16
    stor6 = msg.sender
    return code.data[99 len 2911]
}



// =====================  Runtime code  =====================


const name = 'CountryCoin'

const decimals = 8

const symbol = 'CCN'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 ratingOf;
mapping of uint256 stor4;
mapping of struct stor5;
address stor6;

function totalSupply() {
    return totalSupply
}

function ratingOf(uint16 arg1) {
    require arg1 < 1000
    return ratingOf[arg1 << 240]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require stor6 == msg.sender
    call stor6 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require 100 * 10^6 * msg.value / 4642857142857 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= 100 * 10^6 * msg.value / 4642857142857
    balanceOf[msg.sender] += 100 * 10^6 * msg.value / 4642857142857
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(msg.sender)] >= arg3
    require allowance[address(arg1)][address(arg2)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(arg2)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function ratingList() {
    mem[128] = 1000
    idx = 0
    while uint16(idx) < 1000:
        mem[0] = uint16(idx)
        mem[32] = 3
        require uint16(idx) < mem[128]
        mem[(32 * uint16(idx)) + 160] = ratingOf[idx << 240]
        idx = idx + 1
        continue 
    mem[32160] = 32
    mem[32192] = mem[128]
    mem[32224 len floor32(mem[128])] = mem[160 len floor32(mem[128])]
    return 32, mem[32192 len (32 * mem[128]) + 32]
}

function vote(uint16 arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg1 < 1000
    if not stor4[arg1 << 240][address(msg.sender)]:
        stor5[address(msg.sender)].field_0++
        if not stor5[address(msg.sender)].field_0 <= stor5[address(msg.sender)].field_0 + 1:
            idx = stor5[address(msg.sender)].field_0 + 16 / 16
            while stor5[address(msg.sender)].field_0 + 15 / 16 > idx:
                stor5[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
        stor5[address(msg.sender)][stor5[address(msg.sender)].field_4].field_0 = !(65535 * 256^(2 * stor5[address(msg.sender)].field_0)) and stor5[address(msg.sender)][stor5[address(msg.sender)].field_4].field_0 or 256^(2 * stor5[address(msg.sender)].field_0) * arg1
    balanceOf[address(msg.sender)] -= arg2
    ratingOf[arg1 << 240] += arg2
    stor4[arg1 << 240][address(msg.sender)] += arg2
}

function reset() {
    s = 0
    s = 0
    idx = 0
    while uint16(idx) < stor5[address(msg.sender)].field_0:
        require uint16(idx) < stor5[address(msg.sender)].field_0
        balanceOf[address(msg.sender)] += stor4[stor5[address(msg.sender)][uint16(idx) / 16].field_(16 * idx % 16) - 240][address(msg.sender)]
        ratingOf[stor5[address(msg.sender)][uint16(idx) / 16].field_(16 * idx % 16) - 240] -= stor4[stor5[address(msg.sender)][uint16(idx) / 16].field_(16 * idx % 16) - 240][address(msg.sender)]
        stor4[stor5[address(msg.sender)][uint16(idx) / 16].field_(16 * idx % 16) - 240][address(msg.sender)] = 0
        mem[0] = msg.sender
        mem[32] = 5
        s = stor4[stor5[address(msg.sender)][uint16(idx) / 16].field_(16 * idx % 16) - 240][address(msg.sender)]
        s = stor('array', ('mask_shl', 12, 4, -4, ('var', 0)), ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5)))[uint8(idx)]
        idx = idx + 1
        continue 
    stor5[address(msg.sender)].field_0 = 0
    if not stor5[address(msg.sender)].field_0 <= 0:
        idx = 0
        while stor5[address(msg.sender)].field_0 + 15 / 16 > idx:
            stor5[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
}



}
