contract main {


// =======================  Init code  ======================


address stor1;
uint128 stor2; offset 168
uint128 stor2; offset 160
address stor2;
mapping of uint8 stor4;
array of uint256 stor7;
uint8 stor8;
array of uint256 stor9;
array of uint256 stor10;
uint256 stor11;

function _fallback() payable {
    address(stor2.field_0) = 0
    Mask(96, 0, stor2.field_160) = 0
    Mask(88, 0, stor2.field_168) = 1
    bool(stor7.length) = 0
    stor7.length.field_1 = 7
    stor7.length.field_8 = 'MeshBox' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 18
    bool(stor9.length) = 0
    stor9.length.field_1 = 4
    stor9.length.field_8 = 'MESH' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor10.length) = 0
    stor10.length.field_1 = 4
    stor10.length.field_8 = 'v0.1' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor1 = msg.sender
    require msg.sender == stor1
    stor4[address(msg.sender)] = 1
    stor11 = block.timestamp + (24 * 3600)
    return code.data[896 len 11810]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
address owner;
uint8 stor2; offset 160
uint8 stor2; offset 168
uint128 stor2; offset 168
uint128 stor2; offset 160
address stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
uint256 allocateEndTime;
mapping of uint256 nonce;

function name() {
    return name[0 len name.length].field_0
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

function transferEnabled() {
    return bool(uint8(stor2.field_160))
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

function allocateEndTime() {
    return allocateEndTime
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function setExclude(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 1
    return 1
}

function enableTransfer(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    address(stor2.field_0) = arg1
}

function disableLock(bool arg1) {
    require msg.sender == owner
    Mask(88, 0, stor2.field_168) = Mask(88, 0, arg1)
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function acceptOwnership() {
    require msg.sender == address(stor2.field_0)
    emit OwnerUpdate(owner, address(stor2.field_0));
    owner = address(stor2.field_0)
    address(stor2.field_0) = 0
}

function getBackToken(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    call arg1 with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg2), arg3
    require ext_call.success
}

function addLock(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function removeLock(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor4[address(msg.sender)]:
        require uint8(stor2.field_160)
        if uint8(stor2.field_168):
            require not stor3[address(msg.sender)]
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor4[address(arg1)]:
        require uint8(stor2.field_160)
        if uint8(stor2.field_168):
            require not stor3[address(arg1)]
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

function approveProxy(address arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    mem[200] = uint256(name.field_0)
    idx = 200
    s = 0
    while name.length + 200 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    signer = erecover(sha3(arg1, arg2, arg3, nonce[address(arg1)], mem[200 len name.length]), arg4 << 248, arg5, arg6) 
    require erecover.result
    require arg1 == address(signer)
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
    nonce[address(arg1)]++
    return 1
}

function approveAndCallcode(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
    return 1
}

function allocateTokens(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require allocateEndTime >= block.timestamp
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
        mem[32] = 5
        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
        s = mem[(32 * idx) + (32 * arg1.length) + 160]
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function transferProxy(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    if not stor4[address(arg1)]:
        require uint8(stor2.field_160)
        if uint8(stor2.field_168):
            require not stor3[address(arg1)]
    require balanceOf[address(arg1)] >= arg4 + arg3
    mem[232] = uint256(name.field_0)
    idx = 232
    s = 0
    while name.length + 232 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    signer = erecover(sha3(arg1, arg2, arg3, arg4, nonce[address(arg1)], mem[232 len name.length]), arg5 << 248, arg6, arg7) 
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
