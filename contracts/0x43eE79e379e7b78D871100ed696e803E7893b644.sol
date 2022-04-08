contract main {


// =======================  Init code  ======================


array of uint256 stor3;
uint8 stor4;
array of uint256 stor5;
array of uint256 stor6;
address stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 8
    stor3.length.field_8 = 'UG Token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'UGT' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 4
    stor6.length.field_8 = 'v0.1' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor7 = msg.sender
    stor8 = block.number
    stor9 = stor8 + 5082
    return code.data[562 len 8336]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
address founderAddress;
uint256 allocateStartBlock;
uint256 allocateEndBlock;
mapping of uint256 nonce;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function getNonce(address arg1) {
    return nonce[address(arg1)]
}

function decimals() {
    return decimals
}

function founder() {
    return founderAddress
}

function version() {
    return version[0 len version.length]
}

function allocateEndBlock() {
    return allocateEndBlock
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

function allocateStartBlock() {
    return allocateStartBlock
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
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveProxy(address arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    signer = erecover(sha3(arg1, arg2, arg3, nonce[address(arg1)]), arg4 << 248, arg5, arg6) 
    require erecover.result
    require arg1 == address(signer)
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
    nonce[address(arg1)]++
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferProxy(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require balanceOf[address(arg1)] >= arg4 + arg3
    signer = erecover(sha3(address(arg1), uint64(arg2), arg3, arg4, nonce[address(arg1)]), arg5 << 248, arg6, arg7) 
    require erecover.result
    require arg1 == address(signer)
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(msg.sender)] + arg4 >= balanceOf[address(msg.sender)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    balanceOf[address(msg.sender)] += arg4
    emit Transfer(arg4, arg1, msg.sender);
    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 - arg4
    nonce[address(arg1)]++
    return 1
}

function allocateTokens(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == founderAddress
    require block.number >= allocateStartBlock
    require block.number <= allocateEndBlock
    require arg1.length == arg2.length
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        require totalSupply + mem[(32 * idx) + (32 * arg1.length) + 160] > totalSupply
        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[mem[(32 * idx) + 140 len 20]]
        totalSupply += mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
        s = mem[(32 * idx) + (32 * arg1.length) + 160]
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function approveAndCallcode(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(arg2, msg.sender, arg1);
    if not arg3.length:
        if not arg3.length % 32:
            call arg1 with:
               funct uint32(arg2)
                 gas gas_remaining - 25050 wei
                args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
            call arg1 with:
               funct uint32(arg2)
                 gas gas_remaining - 25050 wei
                args Mask(224, 0, arg2), mem[ceil32(arg3.length) + 160 len floor32(arg3.length)]
    else:
        mem[ceil32(arg3.length) + 128] = mem[128]
        mem[ceil32(arg3.length) + 160 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
                 gas gas_remaining - 25050 wei
                args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
            call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
                 gas gas_remaining - 25050 wei
                args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
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
