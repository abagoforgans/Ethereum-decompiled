contract main {




// =====================  Runtime code  =====================


#
#  - sub_7f264a64(?)
#
address owner;
address rbacAddress;
array of uint256 sub_7a5d6ba5;
array of struct sub_d11d5299;
uint8 stor4;
address signerAddress; offset 8
address sub_6704c8dbAddress;
address sub_5e38718cAddress;
address sub_7869ee71Address;
address sub_28b6ceb8Address;
mapping of uint8 stor9;

function signer() {
    return signerAddress
}

function sub_28b6ceb8(?) {
    return sub_28b6ceb8Address
}

function sub_5e38718c(?) {
    return sub_5e38718cAddress
}

function sub_6704c8db(?) {
    return sub_6704c8dbAddress
}

function sub_6ef0edc8(?) {
    return bool(stor9[arg1])
}

function sub_7869ee71(?) {
    return sub_7869ee71Address
}

function sub_7a5d6ba5(?) {
    return sub_7a5d6ba5[0 len sub_7a5d6ba5.length]
}

function owner() {
    return owner
}

function rbac() {
    return rbacAddress
}

function sub_d11d5299(?) {
    return sub_d11d5299[0 len sub_d11d5299.length].field_0
}

function sub_d75f0da7(?) {
    return bool(stor4)
}

function _fallback() payable {
    revert
}

function sub_c53f16c9(?) {
    require msg.sender == owner
    sub_28b6ceb8Address = arg1
}

function sub_cdfb1369(?) {
    require msg.sender == owner
    sub_7869ee71Address = arg1
}

function setSigner(address arg1) {
    require msg.sender == owner
    signerAddress = arg1
}

function depositEther() payable {
    require not stor4
    emit Deposit(msg.sender, msg.value);
}

function sub_d3be6051(?) {
    require msg.sender == owner
    require arg1
    rbacAddress = arg1
    emit 0x6def2c1c: rbacAddress
}

function sub_42478df5(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'INVALID_ETH_DEST'
    sub_6704c8dbAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_6235174b(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'INVALID_PAYMENT_TOKEN_DEST'
    sub_5e38718cAddress = arg1
}

function sub_7026fe9c(?) {
    require ext_code.size(rbacAddress)
    call rbacAddress.0x7026fe9c with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all]), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function hasRole(string arg1, address arg2) {
    require ext_code.size(rbacAddress)
    call rbacAddress.0x6c9cd097 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all]), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_cb306ea9(?) {
    require msg.sender == owner
    sub_7a5d6ba5.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_7a5d6ba5[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_7a5d6ba5.length + 31 / 32 > idx:
        sub_7a5d6ba5[idx] = 0
        idx = idx + 1
        continue 
}

function sub_fd194fa0(?) {
    require msg.sender == owner
    sub_d11d5299.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_d11d5299[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_d11d5299.length + 31 / 32 > idx:
        sub_d11d5299[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function withdrawEther(uint256 arg1) {
    mem[128] = uint256(sub_d11d5299.field_0)
    idx = 128
    s = 0
    while sub_d11d5299.length + 96 > idx:
        mem[idx + 32] = sub_d11d5299[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(rbacAddress)
    call rbacAddress.0x7026fe9c with:
         gas gas_remaining wei
        args Array(len=sub_d11d5299.length, data=mem[128 len sub_d11d5299.length]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(msg.sender, arg1);
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function sub_c723dfc0(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    stor4 = 1
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _23 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 132] = msg.sender
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_23))
        call address(_23).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        s = _23
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Blocked()
}

function sub_6e482f54(?) {
    mem[(32 * arg4.length) + (32 * arg5.length) + 284 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(64 * arg4.length) + (32 * arg5.length) + 284 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[(64 * arg5.length) + (64 * arg4.length) + 284] = arg6
    mem[(64 * arg5.length) + (64 * arg4.length) + 316 len floor32((32 * arg5.length) + (32 * arg4.length) + 124)] = this.address, arg1, arg2, arg3, call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + (32 * arg5.length) + floor32(arg4.length) + 284 len floor32((32 * arg5.length) + (32 * arg4.length) + 124) + -floor32(arg4.length) - 92]
    mem[(64 * arg5.length) + (64 * arg4.length) + floor32((32 * arg5.length) + (32 * arg4.length) + 124) + -((32 * arg5.length) + (32 * arg4.length) + 124 % 32) + 348 len (32 * arg5.length) + (32 * arg4.length) + 124 % 32] = mem[(32 * arg4.length) + (32 * arg5.length) + floor32((32 * arg5.length) + (32 * arg4.length) + 124) + -((32 * arg5.length) + (32 * arg4.length) + 124 % 32) + 224 len (32 * arg5.length) + (32 * arg4.length) + 124 % 32]
    hash = sha256hash(mem[(64 * arg5.length) + (64 * arg4.length) + 316 len (161 * arg5.length) + (161 * arg4.length) + 124]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return hash
}



}
