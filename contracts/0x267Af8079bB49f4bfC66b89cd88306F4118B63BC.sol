contract main {




// =====================  Runtime code  =====================


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
    mem[(64 * arg5.length) + (64 * arg4.length) + floor32((32 * arg5.length) + (32 * arg4.length) + 124) + -((32 * arg5.length) + (32 * arg4.length) + 124 % 32) + 348 len (32 * arg5.length) + (32 * arg4.length) + 124 % 32] = mem[(32 * arg4.length) + (32 * arg5.length) + -((32 * arg5.length) + (32 * arg4.length) + 124 % 32) + floor32((32 * arg5.length) + (32 * arg4.length) + 124) + 224 len (32 * arg5.length) + (32 * arg4.length) + 124 % 32]
    hash = sha256hash(mem[(64 * arg5.length) + (64 * arg4.length) + 316 len (96 * arg5.length) + (96 * arg4.length) + 124]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(64 * arg5.length) + (64 * arg4.length) + 316] = hash
    return memory
      from (64 * arg5.length) + (64 * arg4.length) + 316
       len (127 * arg4.length) + 32
}

function sub_7f264a64(?) payable {
    require ext_code.size(arg1)
    call arg1.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    mem[132] = arg2
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160 len 96] = call.data[164 len 96]
    require not stor4
    if arg3.length != arg4.length:
        revert with 0, 'LENGTH_MISMATCH'
    if arg5 < block.timestamp:
        revert with 0, 'EXPIRED'
    mem[(32 * arg3.length) + (32 * arg4.length) + 288] = address(this.address)
    mem[(32 * arg3.length) + (32 * arg4.length) + 308] = address(msg.sender)
    mem[(32 * arg3.length) + (32 * arg4.length) + 328] = address(arg1)
    mem[(32 * arg3.length) + (32 * arg4.length) + 348] = arg2
    mem[(32 * arg3.length) + (32 * arg4.length) + 380 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg3.length) + (32 * arg4.length) + 380 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(64 * arg4.length) + (64 * arg3.length) + 380] = arg5
    mem[(32 * arg3.length) + (32 * arg4.length) + 256] = (32 * arg4.length) + (32 * arg3.length) + 124
    mem[(64 * arg4.length) + (64 * arg3.length) + 412 len floor32((32 * arg4.length) + (32 * arg3.length) + 124)] = this.address, msg.sender, arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + floor32(arg3.length) + 380 len floor32((32 * arg4.length) + (32 * arg3.length) + 124) + -floor32(arg3.length) - 92]
    mem[(64 * arg4.length) + (64 * arg3.length) + floor32((32 * arg4.length) + (32 * arg3.length) + 124) + -((32 * arg4.length) + (32 * arg3.length) + 124 % 32) + 444 len (32 * arg4.length) + (32 * arg3.length) + 124 % 32] = mem[(32 * arg3.length) + (32 * arg4.length) + -((32 * arg4.length) + (32 * arg3.length) + 124 % 32) + floor32((32 * arg4.length) + (32 * arg3.length) + 124) + 320 len (32 * arg4.length) + (32 * arg3.length) + 124 % 32]
    hash = sha256hash(mem[(64 * arg4.length) + (64 * arg3.length) + 412 len (32 * arg4.length) + (160 * arg3.length) + 124]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor9[hash]:
        mem[(64 * arg4.length) + (64 * arg3.length) + 412] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg4.length) + (64 * arg3.length) + 416] = 32
        mem[(64 * arg4.length) + (64 * arg3.length) + 448] = 16
        mem[(64 * arg4.length) + (64 * arg3.length) + 480] = 'OFFER_DUPLICATED'
        revert with memory
          from (64 * arg4.length) + (64 * arg3.length) + 412
           len (127 * arg4.length) + (95 * arg3.length) + 100
    stor9[hash] = 1
    mem[(64 * arg4.length) + (64 * arg3.length) + 444] = '\x19Ethereum Signed Message:\n32'
    mem[(64 * arg4.length) + (64 * arg3.length) + 472] = hash
    mem[(64 * arg4.length) + (64 * arg3.length) + 412] = (127 * arg4.length) + (95 * arg3.length) + 60
    mem[(64 * arg4.length) + (64 * arg3.length) + 504 len floor32((127 * arg4.length) + (95 * arg3.length) + 60)] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, mem[(64 * arg4.length) + (64 * arg3.length) + 472 len floor32((127 * arg4.length) + (95 * arg3.length) + 60) - 28]
    mem[(64 * arg4.length) + (64 * arg3.length) + floor32((127 * arg4.length) + (95 * arg3.length) + 60) + -((127 * arg4.length) + (95 * arg3.length) + 60 % 32) + 536 len (127 * arg4.length) + (95 * arg3.length) + 60 % 32] = mem[(64 * arg4.length) + (64 * arg3.length) + -((127 * arg4.length) + (95 * arg3.length) + 60 % 32) + floor32((127 * arg4.length) + (95 * arg3.length) + 60) + 476 len (127 * arg4.length) + (95 * arg3.length) + 60 % 32]
    _333 = sha3(mem[(64 * arg4.length) + (64 * arg3.length) + 504 len (127 * arg4.length) + (95 * arg3.length) + 60])
    mem[(64 * arg4.length) + (64 * arg3.length) + 536] = sha3(mem[(64 * arg4.length) + (64 * arg3.length) + 504 len (127 * arg4.length) + (95 * arg3.length) + 60])
    mem[(64 * arg4.length) + (64 * arg3.length) + 568] = Mask(8, 248, call.data[164]) >> 248
    mem[(64 * arg4.length) + (64 * arg3.length) + 600] = call.data[196]
    mem[(64 * arg4.length) + (64 * arg3.length) + 632] = call.data[228]
    signer = erecover(_333, Mask(8, 248, call.data[164]), call.data[196], call.data[228]) 
    mem[(64 * arg4.length) + (64 * arg3.length) + 504] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != signerAddress:
        revert with 0, 'SIG_INVALID'
    idx = 0
    s = 0
    while idx < arg3.length:
        require idx < arg3.length
        if not mem[(32 * idx) + 140 len 20]:
            require idx < mem[(32 * arg3.length) + 128]
            if mem[(32 * idx) + (32 * arg3.length) + 160] != msg.value:
                revert with 0, 'ETH MISMATCH'
            if sub_6704c8dbAddress != this.address:
                call sub_6704c8dbAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = 1
            continue 
        require idx < arg3.length
        require idx < mem[(32 * arg3.length) + 128]
        _404 = mem[(32 * idx) + (32 * arg3.length) + 160]
        mem[(64 * arg4.length) + (64 * arg3.length) + 540] = mem[(32 * idx) + 140 len 20]
        mem[(64 * arg4.length) + (64 * arg3.length) + 572] = msg.sender
        mem[(64 * arg4.length) + (64 * arg3.length) + 604] = sub_5e38718cAddress
        mem[(64 * arg4.length) + (64 * arg3.length) + 636] = _404
        require ext_code.size(sub_28b6ceb8Address)
        call sub_28b6ceb8Address.transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args mem[(64 * arg4.length) + (64 * arg3.length) + 540], msg.sender, sub_5e38718cAddress, _404
        mem[(64 * arg4.length) + (64 * arg3.length) + 536] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = s
        continue 
    if not s:
        if msg.value:
            revert with 0, 'ETH MISMATCH'
    if not arg1:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args sub_7869ee71Address, msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    mem[(64 * arg4.length) + (64 * arg3.length) + 536] = arg2
    mem[(64 * arg4.length) + (64 * arg3.length) + 632] = arg5
    mem[(64 * arg4.length) + (64 * arg3.length) + 664] = block.timestamp
    mem[(64 * arg4.length) + (64 * arg3.length) + 568] = 160
    mem[(64 * arg4.length) + (64 * arg3.length) + 696] = arg3.length
    mem[(64 * arg4.length) + (64 * arg3.length) + 728 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg4.length) + (64 * arg3.length) + 600] = (32 * arg3.length) + 192
    mem[(98 * arg3.length) + (64 * arg4.length) + 728] = mem[(32 * arg3.length) + 128]
    mem[(98 * arg3.length) + (64 * arg4.length) + 760 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    emit 0xcdcd8b87: mem[(64 * arg4.length) + (64 * arg3.length) + 536 len (32 * mem[(32 * arg3.length) + 128]) + (32 * arg3.length) + 224], hash, msg.sender, arg1
    mem[(64 * arg4.length) + (64 * arg3.length) + 536] = arg2
    mem[(64 * arg4.length) + (64 * arg3.length) + 632] = arg5
    mem[(64 * arg4.length) + (64 * arg3.length) + 664] = block.timestamp
    mem[(64 * arg4.length) + (64 * arg3.length) + 568] = 160
    mem[(64 * arg4.length) + (64 * arg3.length) + 696] = arg3.length
    mem[(64 * arg4.length) + (64 * arg3.length) + 728 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(64 * arg4.length) + (64 * arg3.length) + 600] = (32 * arg3.length) + 192
    mem[(64 * arg4.length) + (98 * arg3.length) + 728] = arg4.length
    mem[(64 * arg4.length) + (98 * arg3.length) + 760 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    emit 0x8ab3ba73: mem[(64 * arg4.length) + (64 * arg3.length) + 536 len (161 * arg4.length) + (161 * arg3.length) + 224], hash, msg.sender, arg1
}



}
