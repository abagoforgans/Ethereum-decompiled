contract main {




// =====================  Runtime code  =====================


#
#  - sub_1d4279a2(?)
#
array of struct store;

function store(bytes32 arg1) payable {
    return store[arg1][0 len store[arg1].length].field_0
}

function _fallback() payable {
    revert
}

function pay(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    mem[128] = store['owner'].field_0
    idx = 128
    s = 0
    while store['owner'].length + 96 > idx:
        mem[idx + 32] = store['owner'][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require store['owner'].length >= 32
    if mem[140 len 20] != msg.sender:
        mem[ceil32(store['owner'].length) + 160] = store['factory'].field_0
        idx = ceil32(store['owner'].length) + 160
        s = 0
        while ceil32(store['owner'].length) + store['factory'].length + 128 > idx:
            mem[idx + 32] = store['factory'][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require store['factory'].length >= 32
        require msg.sender == mem[ceil32(store['owner'].length) + 172 len 20]
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function initiate(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = store['factory'].field_0
    idx = 128
    s = 0
    while store['factory'].length + 96 > idx:
        mem[idx + 32] = store['factory'][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require store['factory'].length >= 32
    if mem[140 len 20] != msg.sender:
        return 0
    mem[ceil32(store['factory'].length) + 160] = arg1
    store['owner'].field_0 = 65
    s = 0
    idx = ceil32(store['factory'].length) + 160
    while ceil32(store['factory'].length) + 192 > idx:
        store['owner'][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while store['owner'].length + 31 / 32 > idx:
        store['owner'][idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[ceil32(store['factory'].length) + 224] = 0
    store['nonce'].field_0 = 65
    s = 0
    idx = ceil32(store['factory'].length) + 224
    while ceil32(store['factory'].length) + 256 > idx:
        store['nonce'][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while store['nonce'].length + 31 / 32 > idx:
        store['nonce'][idx].field_0 = 0
        idx = idx + 1
        continue 
    return 1
}

function sub_c8f05381(?) payable {
    require calldata.size - 4 >= 128
    mem[128] = store['factory'].field_0
    idx = 128
    s = 0
    while store['factory'].length + 96 > idx:
        mem[idx + 32] = store['factory'][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require store['factory'].length >= 32
    if mem[140 len 20] != msg.sender:
        revert with 0, 'internal initiate failed'
    mem[ceil32(store['factory'].length) + 160] = arg1
    store['owner'].field_0 = 65
    s = 0
    idx = ceil32(store['factory'].length) + 160
    while ceil32(store['factory'].length) + 192 > idx:
        store['owner'][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while store['owner'].length + 31 / 32 > idx:
        store['owner'][idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[ceil32(store['factory'].length) + 224] = 0
    store['nonce'].field_0 = 65
    s = 0
    idx = ceil32(store['factory'].length) + 224
    while ceil32(store['factory'].length) + 256 > idx:
        store['nonce'][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while store['nonce'].length + 31 / 32 > idx:
        store['nonce'][idx].field_0 = 0
        idx = idx + 1
        continue 
    require ext_code.size(arg4)
    call arg4.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'fee transfer failed'
    return 1
}

function upgrade(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = store['owner'].field_0
    idx = 128
    s = 0
    while store['owner'].length + 96 > idx:
        mem[idx + 32] = store['owner'][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require store['owner'].length >= 32
    if msg.sender == mem[140 len 20]:
        mem[ceil32(store['owner'].length) + 160] = arg1
        store['fallback'].field_0 = 65
        s = 0
        idx = ceil32(store['owner'].length) + 160
        while ceil32(store['owner'].length) + 192 > idx:
            store['fallback'][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
    else:
        mem[ceil32(store['owner'].length) + 160] = store['factory'].field_0
        idx = ceil32(store['owner'].length) + 160
        s = 0
        while ceil32(store['owner'].length) + store['factory'].length + 128 > idx:
            mem[idx + 32] = store['factory'][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require store['factory'].length >= 32
        require msg.sender == mem[ceil32(store['owner'].length) + 172 len 20]
        mem[ceil32(store['owner'].length) + ceil32(store['factory'].length) + 192] = arg1
        store['fallback'].field_0 = 65
        s = 0
        idx = ceil32(store['owner'].length) + ceil32(store['factory'].length) + 192
        while ceil32(store['owner'].length) + ceil32(store['factory'].length) + 224 > idx:
            store['fallback'][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
    idx = 1
    while store['fallback'].length + 31 / 32 > idx:
        store['fallback'][idx].field_0 = 0
        idx = idx + 1
        continue 
    emit Upgrade(arg1);
    return 1
}

function sub_8f26fe52(?) payable {
    require calldata.size - 4 >= 224
    require ext_code.size(0xd23e2f482005a90fc2b8dcdd58affc05d5776cb7)
    staticcall 0xd23e2f482005a90fc2b8dcdd58affc05d5776cb7.0xcb8d406f with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[128] = store['nonce'].field_0
    idx = 128
    s = 0
    while store['nonce'].length + 96 > idx:
        mem[idx + 32] = store['nonce'][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require store['nonce'].length >= 32
    mem[ceil32(store['nonce'].length) + 160] = store['factory'].field_0
    idx = ceil32(store['nonce'].length) + 160
    s = 0
    while ceil32(store['nonce'].length) + store['factory'].length + 128 > idx:
        mem[idx + 32] = store['factory'][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require store['factory'].length >= 32
    mem[ceil32(store['nonce'].length) + ceil32(store['factory'].length) + 496 len 0] = None
    mem[ceil32(store['nonce'].length) + ceil32(store['factory'].length) + 684] = arg7
    signer = erecover(sha3(mem[ceil32(store['nonce'].length) + ceil32(store['factory'].length) + 496 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, arg1, arg4, mem[ceil32(store['nonce'].length) + 172 len 20], arg2, arg3, block.gasprice, mem[128])), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(store['nonce'].length) + ceil32(store['factory'].length) + 620] = store['owner'].field_0
    idx = ceil32(store['nonce'].length) + ceil32(store['factory'].length) + 620
    s = 0
    while ceil32(store['nonce'].length) + ceil32(store['factory'].length) + store['owner'].length + 588 > idx:
        mem[idx + 32] = store['owner'][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require store['owner'].length >= 32
    require mem[ceil32(store['nonce'].length) + ceil32(store['factory'].length) + 632 len 20] == address(signer)
    mem[ceil32(store['nonce'].length) + ceil32(store['factory'].length) + ceil32(store['owner'].length) + 652] = mem[128] + 1
    store['nonce'].field_0 = 65
    s = 0
    idx = ceil32(store['nonce'].length) + ceil32(store['factory'].length) + ceil32(store['owner'].length) + 652
    while ceil32(store['nonce'].length) + ceil32(store['factory'].length) + ceil32(store['owner'].length) + 684 > idx:
        store['nonce'][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while store['nonce'].length + 31 / 32 > idx:
        store['nonce'][idx].field_0 = 0
        idx = idx + 1
        continue 
    require ext_code.size(arg4)
    call arg4.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg4)
    call arg4.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function sub_1c24eb88(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = store['owner'].length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = store['owner'].field_0
    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
    s = 0
    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + store['owner'].length + 192 > idx:
        mem[idx + 32] = store['owner'][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require store['owner'].length >= 32
    if msg.sender == mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]:
        idx = 0
        while idx < arg1.length:
            require idx < arg3.length
            _383 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require idx < arg1.length
            require idx < arg2.length
            _412 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(store['owner'].length) + 228] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(store['owner'].length) + 260] = _412
            require ext_code.size(address(_383))
            call address(_383).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(store['owner'].length) + 228], _412
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(store['owner'].length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(store['owner'].length) + 224] = store['factory'].length
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(store['owner'].length) + 256] = store['factory'].field_0
        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(store['owner'].length) + 256
        s = 0
        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(store['owner'].length) + store['factory'].length + 224 > idx:
            mem[idx + 32] = store['factory'][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require store['factory'].length >= 32
        require msg.sender == mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(store['owner'].length) + 268 len 20]
        idx = 0
        while idx < arg1.length:
            require idx < arg3.length
            _451 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require idx < arg1.length
            require idx < arg2.length
            _455 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(store['owner'].length) + ceil32(store['factory'].length) + 260] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(store['owner'].length) + ceil32(store['factory'].length) + 292] = _455
            require ext_code.size(address(_451))
            call address(_451).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(store['owner'].length) + ceil32(store['factory'].length) + 260], _455
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(store['owner'].length) + ceil32(store['factory'].length) + 256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
    return 1
}



}
