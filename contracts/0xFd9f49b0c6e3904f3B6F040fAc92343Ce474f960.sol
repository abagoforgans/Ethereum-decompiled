contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
mapping of uint256 stor2;
array of uint256 stor4;
uint8 stor5;
array of uint256 stor6;
array of uint256 stor7;
address stor8;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 17
    stor4.length.field_8 = 'Birdillious Token' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    bool(stor6.length) = 0
    stor6.length.field_1 = 4
    stor6.length.field_8 = 'BIRD' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 8
    stor7.length.field_8 = 'BIRD 0.1' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor2[address(msg.sender)] = 0
    stor0 = 0
    if 31 >= stor4.length:
        idx = 0
        while stor4.length + 31 / 32 > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
        if 31 >= stor6.length:
            idx = 0
            while stor6.length + 31 / 32 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor6.length = Mask(255, 1, (256 * not bool(stor6.length)) - 1 and stor6.length) + 1
            if not Mask(255, 1, (256 * not bool(stor6.length)) - 1 and stor6.length):
                idx = 0
                while stor6.length + 31 / 32 > idx:
                    stor6[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor6.length + 31 / 32 > idx:
                    stor6[s].field_0 = stor6[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor6.length + 31 / 32
                while stor6.length + 31 / 32 > idx:
                    stor6[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        stor4.length = Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length) + 1
        if not Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length):
            idx = 0
            while stor4.length + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor4.length + 31 / 32 > idx:
                stor4[s].field_0 = stor4[idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor4.length + 31 / 32
            while stor4.length + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
        if 31 >= stor6.length:
            idx = 0
            while stor6.length + 31 / 32 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor6.length = Mask(255, 1, (256 * not bool(stor6.length)) - 1 and stor6.length) + 1
            if not Mask(255, 1, (256 * not bool(stor6.length)) - 1 and stor6.length):
                idx = 0
                while stor6.length + 31 / 32 > idx:
                    stor6[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor6.length + 31 / 32 > idx:
                    stor6[s].field_0 = stor6[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor6.length + 31 / 32
                while stor6.length + 31 / 32 > idx:
                    stor6[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    stor8 = code.data[6141 len 20]
    stor1 = 1
    stor2[address(this.address)] = 13800000000 * 10^18
    stor0 = 13800000000 * 10^18
    return code.data[1058 len 5071]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
uint8 stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
address mintableAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowTransfer() {
    return bool(stor1)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function mintableAddress() {
    return mintableAddress
}

function _fallback() payable {
    revert
}

function changeTransfer(bool arg1) {
    require msg.sender == mintableAddress
    stor1 = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    require stor1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require stor1
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == mintableAddress
    require balanceOf[address(this.address)] >= arg2
    balanceOf[address(this.address)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor1
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
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
