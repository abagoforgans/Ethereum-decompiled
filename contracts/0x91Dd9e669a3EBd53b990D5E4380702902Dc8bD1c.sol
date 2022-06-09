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
    return bool(uint8(nonce[address(msg.sender)].field_0))
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
    return address(sub_9e252c1f[arg1].field_0), sub_9e252c1f[arg1].field_256
}

function getNonce() {
    return nonce[address(msg.sender)].field_768
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
    return bool(uint8(nonce[arg1].field_0)), 
           Array(len=nonce[arg1][1].length, data=mem[128 len nonce[arg1][1].length]),
           address(nonce[arg1].field_512),
           nonce[arg1].field_768,
           nonce[arg1].field_1024,
           nonce[arg1].field_1280
}

function _fallback() payable {
    revert
}

function sub_dda611aa(?) {
    if nonce[address(msg.sender)].field_768 + 1 >= nonce[address(msg.sender)].field_768:
        return 1
    else:
        return 0
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
    if uint8(nonce[address(msg.sender)].field_0):
        revert with 0, 'Safe already exist'
    if msg.value <= 0:
        revert with 0, 'Amount must be greater than 0'
    uint8(nonce[address(msg.sender)].field_0) = 1
    nonce[address(msg.sender)][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    if arg2 != msg.sender:
        address(nonce[address(msg.sender)].field_512) = arg2
    else:
        address(nonce[address(msg.sender)].field_512) = 0
        nonce[address(msg.sender)].field_768 % 1 = 0
    nonce[address(msg.sender)].field_768 = 1
    nonce[address(msg.sender)].field_1024 = 0
    nonce[address(msg.sender)].field_1280 = block.timestamp
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
        mem[128 len 32 * sub_94eded1d] = code.data[14461 len 32 * sub_94eded1d]
        mem[(32 * sub_94eded1d) + 128] = sub_94eded1d
        mem[(32 * sub_94eded1d) + 160 len 32 * sub_94eded1d] = code.data[14461 len 32 * sub_94eded1d]
    idx = 0
    while idx < sub_94eded1d:
        require idx < sub_9e252c1f.length
        require idx < sub_94eded1d
        mem[(32 * idx) + 128] = address(sub_9e252c1f[idx].field_0)
        require idx < sub_9e252c1f.length
        mem[0] = 2
        require idx < mem[(32 * sub_94eded1d) + 128]
        mem[(32 * idx) + (32 * sub_94eded1d) + 160] = sub_9e252c1f[idx].field_256
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
    if not uint8(nonce[address(msg.sender)].field_0):
        revert with 0, 'Safe not exist'
    if nonce[address(msg.sender)].field_768 + 1 < nonce[address(msg.sender)].field_768:
        revert with 0, 'Max nonce exceeded, please reset nonce by change safe password'
    if msg.value <= 0:
        revert with 0, 'Amount must be greater than 0'
    mem[ceil32(arg1.length) + 544] = nonce[address(msg.sender)][1].field_0
    idx = ceil32(arg1.length) + 544
    s = 0
    while ceil32(arg1.length) + nonce[address(msg.sender)][1].length + 512 > idx:
        mem[idx + 32] = nonce[address(msg.sender)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + 544] = 13
    mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + 576] = 'EtherSafer:DP'
    mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + 640 len 0] = None
    _177 = sha3(mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + 640 len 13], msg.sender, nonce[address(msg.sender)].field_768, msg.value / 256, mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + 833 len 1])
    nonce[address(msg.sender)].field_768++
    mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + 769 len 1024] = code.data[14461 len 1024]
    idx = 0
    while idx < 32:
        require idx < arg1.length
        require idx < 32
        mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 769 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < 32:
        require idx < 32
        idx = idx + 1
        s = s or Mask(8, 248, mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 769]) / 2^(8 * idx)
        continue 
    mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + 833 len 1024] = code.data[14461 len 1024]
    idx = 0
    while idx < 32:
        require idx + 32 < arg1.length
        require idx < 32
        mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 833 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < 32:
        require idx < 32
        idx = idx + 1
        s = s or Mask(8, 248, mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 833]) / 2^(8 * idx)
        continue 
    mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + 897] = code.data[14461 len 32]
    idx = 0
    while idx < 1:
        require idx + 64 < arg1.length
        require idx < 1
        mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 897 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + 1025] = 0
    signer = erecover(_177, Mask(8, 248, mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + 897]), 0, 0) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + 993] = address(signer)
    if nonce[address(msg.sender)][1].length != 20:
        revert with 0, 'Invalid signature'
    idx = 0
    while idx < 20:
        require idx < nonce[address(msg.sender)][1].length
        require idx < 20
        if Mask(8, 248, mem[ceil32(arg1.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 993]) != Mask(8, 248, mem[ceil32(arg1.length) + idx + 544]):
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
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 0
    if not uint8(nonce[address(msg.sender)].field_0):
        revert with 0, 'Safe not exist'
    mem[32] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = bool(uint8(nonce[address(msg.sender)].field_0))
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 576
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 544] = nonce[address(msg.sender)][1].length
    mem[0] = sha3(address(msg.sender), 1) + 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 576] = nonce[address(msg.sender)][1].field_0
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 576
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + nonce[address(msg.sender)][1].length + 544 > idx:
        mem[idx + 32] = nonce[address(msg.sender)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384] = ceil32(arg1.length) + ceil32(arg2.length) + 544
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416] = address(nonce[address(msg.sender)].field_512)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448] = nonce[address(msg.sender)].field_768
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 480] = nonce[address(msg.sender)].field_1024
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 512] = nonce[address(msg.sender)].field_1280
    if nonce[address(msg.sender)][1].length == arg1.length:
        idx = 0
        while idx < nonce[address(msg.sender)][1].length:
            require idx < arg1.length
            require idx < nonce[address(msg.sender)][1].length
            if Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 576]) == Mask(8, 248, mem[idx + 128]):
                idx = idx + 1
                continue 
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 576] = 13
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 608] = 'EtherSafer:CP'
            s = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 608
            t = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 672
            idx = 13
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 672] = Mask(104, 0, 'EtherSafer:CP') or Mask(152, 104, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 672])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 685] = address(msg.sender)
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 705] = nonce[address(msg.sender)].field_768
            s = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 672
            t = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 737
            idx = 65
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 801] = mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 767 len 1] or Mask(248, 8, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 801])
            _663 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 737 len 65])
            if nonce[address(msg.sender)].field_768 + 1 >= nonce[address(msg.sender)].field_768:
                nonce[address(msg.sender)].field_768++
            else:
                nonce[address(msg.sender)].field_768 = 181114
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 769 len 1024] = code.data[14461 len 1024]
            idx = 0
            while idx < 32:
                require idx < arg2.length
                require idx < 32
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 769 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while idx < 32:
                require idx < 32
                idx = idx + 1
                s = s or Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 769]) / 2^(8 * idx)
                continue 
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 833 len 1024] = code.data[14461 len 1024]
            idx = 0
            while idx < 32:
                require idx + 32 < arg2.length
                require idx < 32
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 833 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while idx < 32:
                require idx < 32
                idx = idx + 1
                s = s or Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 833]) / 2^(8 * idx)
                continue 
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 897] = code.data[14461 len 32]
            idx = 0
            while idx < 1:
                require idx + 64 < arg2.length
                require idx < 1
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 897 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                continue 
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 1025] = 0
            signer = erecover(_663, Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 897]), 0, 0) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 993] = address(signer)
            if nonce[address(msg.sender)][1].length != 20:
                revert with 0, 'Invalid signature'
            idx = 0
            while idx < 20:
                require idx < nonce[address(msg.sender)][1].length
                require idx < 20
                if Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 993]) != Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 576]):
                    revert with 0, 'Invalid signature'
                idx = idx + 1
                continue 
            nonce[address(msg.sender)].field_256 = (2 * arg1.length) + 1
            s = sha3(sha3(address(msg.sender), 1) + 1)
            idx = 128
            while arg1.length + 128 > idx:
                stor[s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(sha3(address(msg.sender), 1) + 1) + (Mask(251, 0, arg1.length + 31) >> 5)
            while sha3(sha3(address(msg.sender), 1) + 1) + (nonce[address(msg.sender)][1].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            emit 0xd07fc3fc: msg.sender
        revert with 0, 'Credential unchanged'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 576] = 13
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 608] = 'EtherSafer:CP'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 672 len 0] = None
    var22001 = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 608
    _570 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 672 len 13], msg.sender, Mask(248, 0, nonce[address(msg.sender)].field_776), mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 801 len 1])
    if nonce[address(msg.sender)].field_768 + 1 >= nonce[address(msg.sender)].field_768:
        nonce[address(msg.sender)].field_768++
    else:
        nonce[address(msg.sender)].field_768 = 181114
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 769 len 1024] = code.data[14461 len 1024]
    idx = 0
    while idx < 32:
        require idx < arg2.length
        require idx < 32
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 769 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < 32:
        require idx < 32
        idx = idx + 1
        s = s or Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 769]) / 2^(8 * idx)
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 833 len 1024] = code.data[14461 len 1024]
    idx = 0
    while idx < 32:
        require idx + 32 < arg2.length
        require idx < 32
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 833 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < 32:
        require idx < 32
        idx = idx + 1
        s = s or Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 833]) / 2^(8 * idx)
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 897] = code.data[14461 len 32]
    idx = 0
    while idx < 1:
        require idx + 64 < arg2.length
        require idx < 1
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 897 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 1025] = 0
    signer = erecover(_570, Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 897]), 0, 0) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + 993] = address(signer)
    if nonce[address(msg.sender)][1].length != 20:
        revert with 0, 'Invalid signature'
    idx = 0
    while idx < 20:
        require idx < nonce[address(msg.sender)][1].length
        require idx < 20
        if Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(nonce[address(msg.sender)][1].length) + idx + 993]) != Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 576]):
            revert with 0, 'Invalid signature'
        idx = idx + 1
        continue 
    nonce[address(msg.sender)][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    emit 0xd07fc3fc: msg.sender
}



}
