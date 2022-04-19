contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor6;

function _fallback() payable {
    stor3 = 18
    require not msg.value
    mem[96 len -11092] = code.data[11604 len -11092]
    mem[64] = -10996
    stor0 = msg.sender
    stor4 = mem[96] * 10^stor3
    stor6[address(msg.sender)] = stor4
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    return code.data[512 len 11092]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint8 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
array of uint256 zero;
array of uint256 sub_465dd7c8;
array of uint256 sub_e0a13d5a;
array of uint256 sub_66424ecf;
array of uint256 sub_2ca345c6;
array of uint256 sub_1dfdb6c0;
array of uint256 sub_ace7f9bf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_1dfdb6c0(?) {
    return sub_1dfdb6c0[arg1][0 len sub_1dfdb6c0[arg1].length]
}

function sub_2ca345c6(?) {
    return sub_2ca345c6[arg1][0 len sub_2ca345c6[arg1].length]
}

function decimals() {
    return decimals
}

function sub_465dd7c8(?) {
    return sub_465dd7c8[arg1][0 len sub_465dd7c8[arg1].length]
}

function sellPrice() {
    return sellPrice
}

function sub_66424ecf(?) {
    return sub_66424ecf[arg1][0 len sub_66424ecf[arg1].length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_ace7f9bf(?) {
    return sub_ace7f9bf[arg1][0 len sub_ace7f9bf[arg1].length]
}

function frozenAccount(address arg1) {
    return bool(stor5[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function zero(uint256 arg1) {
    return zero[arg1][0 len zero[arg1].length]
}

function sub_e0a13d5a(?) {
    return sub_e0a13d5a[arg1][0 len sub_e0a13d5a[arg1].length]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor5[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function buy() payable {
    require buyPrice
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[address(this.address)] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    return (msg.value / buyPrice)
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor5[address(msg.sender)]
    require arg1
    require balanceOf[address(msg.sender)] > arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor5[address(msg.sender)]
    require not stor5[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] > arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor5[address(arg1)]
    require not stor5[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_aed8f077(?) {
    require msg.sender == owner
    zero.length++
    if not zero.length <= zero.length + 1:
        mem[0] = 10
        idx = zero.length + 1
        while sha3(10) + zero.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    zero[zero.length][] = Array(len=arg1.length, data=arg1[all])
}

function sub_2c80dea1(?) {
    sub_ace7f9bf.length++
    if not sub_ace7f9bf.length <= sub_ace7f9bf.length + 1:
        mem[0] = 16
        idx = sub_ace7f9bf.length + 1
        while sha3(16) + sub_ace7f9bf.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    sub_ace7f9bf[sub_ace7f9bf.length][] = Array(len=arg1.length, data=arg1[all])
}

function sub_412c5946(?) {
    require not stor5[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= 333
    sub_2ca345c6.length++
    if not sub_2ca345c6.length <= sub_2ca345c6.length + 1:
        mem[0] = 14
        idx = sub_2ca345c6.length + 1
        while sha3(14) + sub_2ca345c6.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    sub_2ca345c6[sub_2ca345c6.length][] = Array(len=arg1.length, data=arg1[all])
}

function sub_c66baaeb(?) {
    require not stor5[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= 111
    sub_1dfdb6c0.length++
    if not sub_1dfdb6c0.length <= sub_1dfdb6c0.length + 1:
        mem[0] = 15
        idx = sub_1dfdb6c0.length + 1
        while sha3(15) + sub_1dfdb6c0.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    sub_1dfdb6c0[sub_1dfdb6c0.length][] = Array(len=arg1.length, data=arg1[all])
}

function sub_7bab4c02(?) {
    require not stor5[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= 1000
    sub_66424ecf.length++
    if not sub_66424ecf.length <= sub_66424ecf.length + 1:
        mem[0] = 13
        idx = sub_66424ecf.length + 1
        while sha3(13) + sub_66424ecf.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    sub_66424ecf[sub_66424ecf.length][] = Array(len=arg1.length, data=arg1[all])
}

function sub_25656f89(?) {
    require not stor5[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= 27000
    sub_465dd7c8.length++
    if not sub_465dd7c8.length <= sub_465dd7c8.length + 1:
        mem[0] = 11
        idx = sub_465dd7c8.length + 1
        while sha3(11) + sub_465dd7c8.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    sub_465dd7c8[sub_465dd7c8.length][] = Array(len=arg1.length, data=arg1[all])
}

function sub_a361caac(?) {
    require not stor5[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= 999999
    sub_e0a13d5a.length++
    if not sub_e0a13d5a.length <= sub_e0a13d5a.length + 1:
        mem[0] = 12
        idx = sub_e0a13d5a.length + 1
        while sha3(12) + sub_e0a13d5a.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    sub_e0a13d5a[sub_e0a13d5a.length][] = Array(len=arg1.length, data=arg1[all])
}



}
