contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of struct stor6;
uint8 stor8;
uint256 stor8; offset 8
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9 = 10^13
    require not msg.value
    mem[160 len -5924] = code.data[6688 len -5924]
    stor0 = msg.sender
    stor6[address(msg.sender)].field_0 = 0
    stor6[address(msg.sender)].field_1 = uint255(mem[160] / 10)
    stor6[address(this.address)].field_0 = 0
    stor6[address(this.address)].field_3 = Mask(253, 0, mem[160] / 10)
    stor5 = mem[160]
    stor2[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor3[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor4 = mem[255 len 1]
    uint8(stor8.field_0) = mem[255 len 1]
    Mask(248, 0, stor8.field_8) = 0
    stor10 = 200 * 10^uint256(stor8.field_0)
    stor11 = 300 * 10^uint256(stor8.field_0)
    stor12 = 200 * 10^uint256(stor8.field_0)
    stor13 = 300 * 10^uint256(stor8.field_0)
    return code.data[764 len 5924]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 decimals;
uint256 buyPrice;
uint256 sub_b57e41ee;
uint256 sub_eae3e7f0;
uint256 bonus1;
uint256 bonus2;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function bonus1() {
    return bonus1
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function bonus2() {
    return bonus2
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

function sub_b57e41ee(?) {
    return sub_b57e41ee
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_eae3e7f0(?) {
    return sub_eae3e7f0
}

function setPriceInWei(uint256 arg1) {
    require msg.sender == owner
    buyPrice = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function sendEtherToOwner() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_25ad983c(?) {
    require msg.sender == owner
    sub_b57e41ee = arg1 * 10^decimals
    sub_eae3e7f0 = arg2 * 10^decimals
    bonus1 = arg3 * 10^decimals
    bonus2 = arg4 * 10^decimals
}

function pullTokens() {
    require msg.sender == owner
    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require buyPrice
    if msg.value / buyPrice < sub_b57e41ee:
        if msg.value / buyPrice < sub_eae3e7f0:
            balanceOf[address(msg.sender)] += msg.value / buyPrice
            balanceOf[address(this.address)] -= msg.value / buyPrice
            emit Transfer((msg.value / buyPrice), this.address, msg.sender);
        else:
            require balanceOf[address(this.address)] >= (msg.value / buyPrice) + bonus2
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / buyPrice) + bonus2
            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value / buyPrice) - bonus2
            emit Transfer(((msg.value / buyPrice) + bonus2), this.address, msg.sender);
    else:
        if msg.value / buyPrice >= sub_eae3e7f0:
            require balanceOf[address(this.address)] >= (msg.value / buyPrice) + bonus2
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / buyPrice) + bonus2
            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value / buyPrice) - bonus2
            emit Transfer(((msg.value / buyPrice) + bonus2), this.address, msg.sender);
        else:
            require balanceOf[address(this.address)] >= (msg.value / buyPrice) + bonus1
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / buyPrice) + bonus1
            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value / buyPrice) - bonus1
            emit Transfer(((msg.value / buyPrice) + bonus1), this.address, msg.sender);
}



}
