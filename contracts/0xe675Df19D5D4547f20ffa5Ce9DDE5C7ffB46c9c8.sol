contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(address arg1, uint256 arg2, bytes arg3)
#
address tokenContractAddress;
mapping of struct nonce;
array of struct sub_9e252c1f;
uint256 sub_94eded1d;
uint256 sub_29e9ad82;

function sub_1f1742d1(?) {
    return bool(nonce[msg.sender].field_0)
}

function sub_29e9ad82(?) {
    return sub_29e9ad82
}

function tokenContract() {
    return tokenContractAddress
}

function sub_94eded1d(?) {
    return sub_94eded1d
}

function sub_9e252c1f(?) {
    require arg1 < sub_9e252c1f.length
    return sub_9e252c1f[arg1].field_0, sub_9e252c1f[arg1].field_256
}

function getNonce() {
    return nonce[msg.sender].field_768
}

function sub_f47f43fd(?) {
    mem[128] = nonce[arg1][1].field_0
    idx = 128
    s = 0
    while nonce[arg1][1].length + 96 > idx:
        mem[idx + 32] = nonce[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(nonce[arg1].field_0), 
           Array(len=nonce[arg1][1].length, data=mem[128 len nonce[arg1][1].length]),
           nonce[arg1].field_512,
           nonce[arg1].field_768,
           nonce[arg1].field_1024,
           nonce[arg1].field_1280
}

function _fallback() payable {
    revert
}

function getBalance() {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_46a364a1(?) payable {
    if nonce[msg.sender].field_0:
        revert with 0, 'Safe already exist'
    if msg.value <= 0:
        revert with 0, 'Amount must be greater than 0'
    nonce[msg.sender].field_0 = 1
    nonce[msg.sender][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    if arg2 != msg.sender:
        nonce[msg.sender].field_512 = arg2
    else:
        nonce[msg.sender].field_512 = 0
        nonce[msg.sender].field_768 = 0
    nonce[msg.sender].field_768 = 1
    nonce[msg.sender].field_1024 = 0
    nonce[msg.sender].field_1280 = block.timestamp
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x26748d0b: msg.value, 1, msg.sender
}

function sub_b4ac2066(?) {
    if not sub_94eded1d:
        mem[(32 * sub_94eded1d) + 128] = sub_94eded1d
    else:
        mem[128 len 32 * sub_94eded1d] = code.data[9398 len 32 * sub_94eded1d]
        mem[(32 * sub_94eded1d) + 128] = sub_94eded1d
        mem[(32 * sub_94eded1d) + 160 len 32 * sub_94eded1d] = code.data[9398 len 32 * sub_94eded1d]
    idx = 0
    while idx < sub_94eded1d:
        require idx < sub_9e252c1f.length
        require idx < sub_94eded1d
        mem[(32 * idx) + 128] = sub_9e252c1f[idx].field_0
        require idx < sub_9e252c1f.length
        mem[0] = 2
        require idx < mem[(32 * sub_94eded1d) + 128]
        mem[(32 * sub_94eded1d) + (32 * idx) + 160] = sub_9e252c1f[idx].field_256
        idx = idx + 1
        continue 
    mem[(64 * sub_94eded1d) + 160] = 64
    mem[(64 * sub_94eded1d) + 224] = sub_94eded1d
    s = 0
    while sub_94eded1d < 32 * sub_94eded1d:
        mem[(66 * sub_94eded1d) + 256] = mem[sub_94eded1d + 128]
        s = sub_94eded1d + 32
        continue 
    mem[(64 * sub_94eded1d) + 192] = (32 * sub_94eded1d) + 96
    mem[(98 * sub_94eded1d) + 256] = mem[(32 * sub_94eded1d) + 128]
    mem[(98 * sub_94eded1d) + 288 len floor32(mem[(32 * sub_94eded1d) + 128])] = mem[(32 * sub_94eded1d) + 160 len floor32(mem[(32 * sub_94eded1d) + 128])]
    return memory
      from (64 * sub_94eded1d) + 160
       len (32 * mem[(32 * sub_94eded1d) + 128]) + (161 * sub_94eded1d) + 128
}

function deposit(bytes arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 96
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224] = 0
    if not nonce[msg.sender].field_0:
        revert with 0, 'Safe not exist'
    if msg.value <= 0:
        revert with 0, 'Amount must be greater than 0'
    mem[ceil32(arg1.length) + 544] = nonce[msg.sender][1].field_0
    idx = ceil32(arg1.length) + 544
    s = 0
    while ceil32(arg1.length) + nonce[msg.sender][1].length + 512 > idx:
        mem[idx + 32] = nonce[msg.sender][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + 544] = 13
    mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + 576] = 'EtherSafer:DP'
    mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + 640 len 0] = None
    nonce[msg.sender].field_768++
    mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + 769 len 1024] = code.data[9398 len 1024]
    idx = 0
    while idx < 32:
        require idx < arg1.length
        require idx < 32
        mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + idx + 769 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < 32:
        require idx < 32
        _212 = mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + idx + 769]
        idx = idx + 1
        s = Mask(8, 248, mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + idx + 769]) / 2^(8 * idx) or s
        continue 
    mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + 833 len 1024] = code.data[9398 len 1024]
    idx = 0
    while idx < 32:
        require idx + 32 < arg1.length
        require idx < 32
        mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + idx + 833 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < 32:
        require idx < 32
        _246 = mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + idx + 833]
        idx = idx + 1
        s = Mask(8, 248, mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + idx + 833]) / 2^(8 * idx) or s
        continue 
    mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + 897] = code.data[9398 len 32]
    idx = 0
    while idx < 1:
        require idx + 64 < arg1.length
        require idx < 1
        mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + idx + 897 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + 1025] = 32 * Mask(8, 248, _212) / 2^256
    signer = erecover(sha3(mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + 640 len 13], msg.sender, nonce[msg.sender].field_768, msg.value), Mask(8, 248, mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + 897]), 32 * Mask(8, 248, _212) / 2^256, 32 * Mask(8, 248, _246) / 2^256) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + 993] = address(signer)
    if nonce[msg.sender][1].length != 20:
        revert with 0, 'Invalid signature'
    idx = 0
    while idx < 20:
        require idx < nonce[msg.sender][1].length
        require idx < 20
        if Mask(8, 248, mem[ceil32(arg1.length) + ceil32(nonce[msg.sender][1].length) + idx + 993]) != Mask(8, 248, mem[ceil32(arg1.length) + idx + 544]):
            revert with 0, 'Invalid signature'
        idx = idx + 1
        continue 
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x26748d0b: msg.value, 0, msg.sender
}

function sub_6b415343(?) {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 0
    if not nonce[msg.sender].field_0:
        revert with 0, 'Safe not exist'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 576] = nonce[msg.sender][1].field_0
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 576
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + nonce[msg.sender][1].length + 544 > idx:
        mem[idx + 32] = nonce[msg.sender][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + 576] = 13
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + 608] = 'EtherSafer:CP'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + 672 len 0] = None
    nonce[msg.sender].field_768++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + 769 len 1024] = code.data[9398 len 1024]
    idx = 0
    while idx < 32:
        require idx < arg2.length
        require idx < 32
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + idx + 769 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < 32:
        require idx < 32
        _211 = mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + idx + 769]
        idx = idx + 1
        s = Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + idx + 769]) / 2^(8 * idx) or s
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + 833 len 1024] = code.data[9398 len 1024]
    idx = 0
    while idx < 32:
        require idx + 32 < arg2.length
        require idx < 32
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + idx + 833 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < 32:
        require idx < 32
        _245 = mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + idx + 833]
        idx = idx + 1
        s = Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + idx + 833]) / 2^(8 * idx) or s
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + 897] = code.data[9398 len 32]
    idx = 0
    while idx < 1:
        require idx + 64 < arg2.length
        require idx < 1
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + idx + 897 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + 1025] = 32 * Mask(8, 248, _211) / 2^256
    signer = erecover(sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + 672 len 13], msg.sender, nonce[msg.sender].field_776, nonce[msg.sender].field_768), Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + 897]), 32 * Mask(8, 248, _211) / 2^256, 32 * Mask(8, 248, _245) / 2^256) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + 993] = address(signer)
    if nonce[msg.sender][1].length != 20:
        revert with 0, 'Invalid signature'
    idx = 0
    while idx < 20:
        require idx < nonce[msg.sender][1].length
        require idx < 20
        if Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[msg.sender][1].length) + idx + 993]) != Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 576]):
            revert with 0, 'Invalid signature'
        idx = idx + 1
        continue 
    nonce[msg.sender][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    emit 0xd07fc3fc: msg.sender
}



}
