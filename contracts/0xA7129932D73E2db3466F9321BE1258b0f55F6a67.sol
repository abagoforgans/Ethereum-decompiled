contract main {


// =======================  Init code  ======================


array of uint256 stor3;
array of uint256 stor5;
array of uint256 stor6;
uint128 stor7;
address stor8;

function _fallback() payable {
    mem[128] = 'H0.1'
    bool(stor6.length) = 0
    stor6.length.field_1 = 4
    stor6.length.field_8 = 'H0.1' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -7199] = code.data[7871 len -7199]
    require Mask(32, 224, sha3(mem[224 len 16])) == Mask(32, 224, mem[256])
    stor7 = mem[224 len 16]
    stor8 = msg.sender
    stor3[] = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    stor5[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    return code.data[672 len 7199]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of address allowance;
array of uint256 stor2;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
uint128 sub_5752c910;
address owner;
array of struct distributions;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return stor2.length
}

function decimals() {
    return decimals
}

function distributions(uint256 arg1) {
    require arg1 < distributions.length
    return distributions[arg1].field_0, 
           address(distributions[arg1].field_256),
           distributions[arg1].field_512,
           distributions[arg1].field_768
}

function version() {
    return version[0 len version.length]
}

function sub_5752c910(?) {
    return Mask(128, 128, sub_5752c910)
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
    return uint256(allowance[address(arg1)][address(arg2)])
}

function _fallback() {
    revert
}

function approve(address arg1, uint256 arg2) {
    uint256(allowance[address(msg.sender)][address(arg1)]) = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_60787e36(?) {
    require msg.sender == owner
    require Mask(128, 128, sha3(arg1)) == Mask(128, 128, sub_5752c910)
    require Mask(32, 224, sha3(arg2)) == Mask(32, 224, arg3)
    sub_5752c910 = arg2
    owner = arg4
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
    if uint256(allowance[address(arg1)][address(msg.sender)]) < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    uint256(allowance[address(arg1)][address(msg.sender)]) -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_bd49a4d1(?) {
    require msg.sender == owner
    require Mask(128, 128, sha3(arg1)) == Mask(128, 128, sub_5752c910)
    require Mask(32, 224, sha3(arg2)) == Mask(32, 224, arg3)
    sub_5752c910 = arg2
    distributions.length++
    if not distributions.length <= distributions.length + 1:
        idx = 4 * distributions.length + 1
        while 4 * distributions.length > idx:
            distributions[idx].field_0 = 0
            address(distributions[idx].field_256) = 0
            distributions[idx].field_512 = 0
            distributions[idx].field_768 = 0
            idx = idx + 4
            continue 
    require distributions.length < distributions.length
    distributions[distributions.length].field_0 = block.timestamp
    address(distributions[distributions.length].field_256) = arg4
    distributions[distributions.length].field_512 = arg5
    distributions[distributions.length].field_768 = arg6
    balanceOf[address(arg4)] += arg5
    stor2.length += arg5
}

function sub_c610f1c3(?) {
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[64] = (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = arg6.length
    mem[(32 * arg4.length) + (32 * arg5.length) + 192 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    require msg.sender == owner
    require Mask(128, 128, sha3(arg1)) == Mask(128, 128, sub_5752c910)
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = Mask(128, 128, arg2)
    require Mask(32, 224, sha3(arg2)) == Mask(32, 224, arg3)
    sub_5752c910 = arg2
    idx = 0
    while idx < arg4.length:
        require idx < mem[96]
        _33 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg4.length) + 128]
        _35 = mem[(32 * idx) + (32 * arg4.length) + 160]
        require idx < mem[(32 * arg4.length) + (32 * arg5.length) + 160]
        _37 = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192]
        _38 = mem[64]
        mem[64] = mem[64] + 128
        mem[_38] = block.timestamp
        mem[_38 + 32] = address(_33)
        mem[_38 + 64] = _35
        mem[_38 + 96] = _37
        distributions.length++
        if not distributions.length <= distributions.length + 1:
            s = sha3(9) + (4 * distributions.length + 1)
            while sha3(9) + (4 * distributions.length) > s:
                stor[s] = 0
                address(allowance[s]) = 0
                stor2[s] = 0
                name[s] = 0
                s = s + 4
                continue 
        require distributions.length < distributions.length
        distributions[distributions.length].field_0 = block.timestamp
        address(distributions[distributions.length].field_256) = address(_33)
        distributions[distributions.length].field_512 = _35
        distributions[distributions.length].field_768 = _37
        mem[0] = address(_33)
        mem[32] = 0
        balanceOf[address(_33)] += _35
        stor2.length += _35
        idx = idx + 1
        continue 
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    uint256(allowance[address(msg.sender)][address(arg1)]) = arg2
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
