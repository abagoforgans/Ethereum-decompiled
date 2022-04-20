contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
array of uint256 stor3;
uint8 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 8
    stor3.length.field_8 = 'Lostcoin' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 8
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'LOST' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 8
    stor6.length.field_8 = 'Lost.001' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 666666666
    require not msg.value
    stor0[address(msg.sender)] = stor7
    stor2 = stor7
    if 31 >= stor3.length:
        idx = 0
        while stor3.length + 31 / 32 > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
        if 31 >= stor5.length:
            idx = 0
            while stor5.length + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor5.length = Mask(255, 1, (256 * not bool(stor5.length)) - 1 and stor5.length) + 1
            if not Mask(255, 1, (256 * not bool(stor5.length)) - 1 and stor5.length):
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    stor5[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    stor5[s].field_0 = stor5[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor5.length + 31 / 32
                while stor5.length + 31 / 32 > idx:
                    stor5[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        stor3.length = Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length) + 1
        if not Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length):
            idx = 0
            while stor3.length + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor3.length + 31 / 32 > idx:
                stor3[s].field_0 = stor3[idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor3.length + 31 / 32
            while stor3.length + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
        if 31 >= stor5.length:
            idx = 0
            while stor5.length + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor5.length = Mask(255, 1, (256 * not bool(stor5.length)) - 1 and stor5.length) + 1
            if not Mask(255, 1, (256 * not bool(stor5.length)) - 1 and stor5.length):
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    stor5[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    stor5[s].field_0 = stor5[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor5.length + 31 / 32
                while stor5.length + 31 / 32 > idx:
                    stor5[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    return code.data[819 len 4062]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
uint256 amount;

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

function amount() {
    return amount
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
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
