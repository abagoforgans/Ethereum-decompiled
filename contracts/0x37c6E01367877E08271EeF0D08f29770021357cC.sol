contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
uint8 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;
array of uint256 stor8;
uint8 stor9;
array of uint256 stor10;

function _fallback() payable {
    bool(stor6.length) = 0
    stor6.length.field_1 = 4
    stor6.length.field_8 = 'R0.1' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 10000000000000000 * 10^18
    bool(stor8.length) = 0
    stor8.length.field_1 = 3
    stor8.length.field_8 = 'RMB' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9 = 18
    bool(stor10.length) = 0
    stor10.length.field_1 = 3
    stor10.length.field_8 = 'RMB' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor1[address(msg.sender)] = stor7
    stor0 = stor7
    if 31 >= stor8.length:
        stor3.length = stor8.length
        idx = 0
        while stor3.length + 31 / 32 > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
        stor4 = stor9
        if 31 >= stor10.length:
            stor5.length = stor10.length
            idx = 0
            while stor5.length + 31 / 32 > idx:
                stor5[idx] = 0
                idx = idx + 1
                continue 
        else:
            stor5.length = Mask(255, 1, (256 * not bool(stor10.length)) - 1 and stor10.length) + 1
            if not Mask(255, 1, (256 * not bool(stor10.length)) - 1 and stor10.length):
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    stor5[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor10.length + 31 / 32 > idx:
                    stor5[s] = stor10[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor10.length + 31 / 32
                while stor5.length + 31 / 32 > idx:
                    stor5[idx] = 0
                    idx = idx + 1
                    continue 
    else:
        stor3.length = Mask(255, 1, (256 * not bool(stor8.length)) - 1 and stor8.length) + 1
        if not Mask(255, 1, (256 * not bool(stor8.length)) - 1 and stor8.length):
            idx = 0
            while stor3.length + 31 / 32 > idx:
                stor3[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor8.length + 31 / 32 > idx:
                stor3[s] = stor8[idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor8.length + 31 / 32
            while stor3.length + 31 / 32 > idx:
                stor3[idx] = 0
                idx = idx + 1
                continue 
        stor4 = stor9
        if 31 >= stor10.length:
            stor5.length = stor10.length
            idx = 0
            while stor5.length + 31 / 32 > idx:
                stor5[idx] = 0
                idx = idx + 1
                continue 
        else:
            stor5.length = Mask(255, 1, (256 * not bool(stor10.length)) - 1 and stor10.length) + 1
            if not Mask(255, 1, (256 * not bool(stor10.length)) - 1 and stor10.length):
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    stor5[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor10.length + 31 / 32 > idx:
                    stor5[s] = stor10[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor10.length + 31 / 32
                while stor5.length + 31 / 32 > idx:
                    stor5[idx] = 0
                    idx = idx + 1
                    continue 
    return code.data[1244 len 4015]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
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

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = this.address
    if not arg3.length:
        if not arg3.length % 32:
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining - 25050 wei
                args msg.sender, arg2, address(this.address), mem[ceil32(arg3.length) + 228 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining - 25050 wei
                args msg.sender, arg2, address(this.address), mem[ceil32(arg3.length) + 228 len floor32(arg3.length) + 32]
    else:
        mem[ceil32(arg3.length) + 228] = mem[128]
        mem[ceil32(arg3.length) + 260 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining - 25050 wei
                args msg.sender, arg2, address(this.address), mem[ceil32(arg3.length) + 228 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining - 25050 wei
                args msg.sender, arg2, address(this.address), mem[128], mem[ceil32(arg3.length) + 260 len floor32(arg3.length)]
    require ext_call.success
    return 1
}



}
