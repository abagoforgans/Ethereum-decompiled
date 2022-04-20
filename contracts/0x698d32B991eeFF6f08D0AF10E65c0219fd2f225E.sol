contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
uint8 stor3;
address stor3; offset 8
array of uint256 stor4;
uint8 stor5;
array of uint256 stor6;
array of uint256 stor7;

function _fallback() payable {
    uint8(stor3.field_0) = 0
    address(stor3.field_8) = 0
    bool(stor7.length) = 0
    stor7.length.field_1 = 4
    stor7.length.field_8 = 'H1.0' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0[address(msg.sender)] = 28 * 10^13
    stor2 = 28 * 10^13
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'TKC' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 6
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'TKC' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    address(stor3.field_8) = msg.sender
    return code.data[719 len 5789]
}



// =====================  Runtime code  =====================


const price = 1853


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3;
address stor3;
address owner; offset 8
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function preIco() {
    return bool(uint8(stor3.field_0))
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function unPreIco() {
    require msg.sender == owner
    uint8(stor3.field_0) = 0
}

function setPreIco() {
    require msg.sender == owner
    uint8(stor3.field_0) = 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sendBounty(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, owner, arg1);
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy() payable {
    require msg.value > 0
    require balanceOf[address(stor3.field_0)] > 1853 * msg.value
    require balanceOf[address(msg.sender)] + (1853 * msg.value) >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + (1853 * msg.value) >= 1853 * msg.value
    balanceOf[address(msg.sender)] += 1853 * msg.value
    require 1853 * msg.value <= balanceOf[address(stor3.field_0)]
    balanceOf[address(stor3.field_0)] += -1853 * msg.value
    emit Transfer((1853 * msg.value), owner, msg.sender);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)'))
    mem[ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 228 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    require ext_call.success
    return 1
}



}
