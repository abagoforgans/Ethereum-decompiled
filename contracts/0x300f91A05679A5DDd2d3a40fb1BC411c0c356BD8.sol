contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint8 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
address stor6;
mapping of uint256 stor7;
uint256 stor9;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'H1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor7[address(msg.sender)] = 50000000 * 10^18
    stor9 = 50000000 * 10^18
    bool(stor0.length) = 0
    stor0.length.field_1 = 6
    stor0.length.field_8 = 'TOCOEX' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor1 = 18
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'TCX' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 1000
    stor6 = msg.sender
    return code.data[646 len 4946]
}



// =====================  Runtime code  =====================


array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
uint256 unitsOneEthCanBuy;
uint256 totalEthInWei;
address fundsWalletAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function fundsWallet() {
    return fundsWalletAddress
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function unitsOneEthCanBuy() {
    return unitsOneEthCanBuy
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalEthInWei() {
    return totalEthInWei
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function _fallback() payable {
    totalEthInWei += msg.value
    if balanceOf[stor6] >= msg.value * unitsOneEthCanBuy:
        balanceOf[stor6] += -1 * msg.value * unitsOneEthCanBuy
        balanceOf[address(msg.sender)] += msg.value * unitsOneEthCanBuy
        emit Transfer((msg.value * unitsOneEthCanBuy), fundsWalletAddress, msg.sender);
        call fundsWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
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
