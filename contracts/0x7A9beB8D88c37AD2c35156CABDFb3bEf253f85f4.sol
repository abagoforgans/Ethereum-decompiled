contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], arg2
}

function sub_44ff7ede(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 160
    if not ('cd', 36).length:
        idx = 0
        while ('cd', 36).length != idx:
            require idx < mem[96]
            _66 = mem[(32 * idx) + 128]
            _68 = mem[64]
            mem[64] = mem[64] + 64
            mem[_68] = 0
            mem[_68 + 32] = 0
            mem[mem[64] + 4] = address(_66)
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_66)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_68] = mem[_81]
            mem[_68 + 32] = address(_66)
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[(32 * ('cd', 36).length) + (32 * idx) + 160] = _68
            idx = idx + 1
            continue 
        _67 = mem[64]
        mem[mem[64]] = 32
        _70 = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
        idx = 0
        s = (32 * ('cd', 36).length) + 160
        t = mem[64] + 64
        while idx < _70:
            _94 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_94 + 44 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _67 + (64 * _70) + -mem[64] + 64
    mem[64] = (64 * ('cd', 36).length) + 224
    mem[(64 * ('cd', 36).length) + 160] = 0
    mem[(64 * ('cd', 36).length) + 192] = 0
    mem[var30001] = (64 * ('cd', 36).length) + 160
    s = var30001
    idx = var30002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(64 * ('cd', 36).length) + 160] = 0
        mem[(64 * ('cd', 36).length) + 192] = 0
        mem[s + 32] = (64 * ('cd', 36).length) + 160
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while ('cd', 36).length != idx:
        require idx < mem[96]
        _113 = mem[(32 * idx) + 128]
        _115 = mem[64]
        mem[64] = mem[64] + 64
        mem[_115] = 0
        mem[_115 + 32] = 0
        mem[mem[64] + 4] = address(_113)
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args address(_113)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _122 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_115] = mem[_122]
        mem[_115 + 32] = address(_113)
        require idx < mem[(32 * ('cd', 36).length) + 128]
        mem[(32 * ('cd', 36).length) + (32 * idx) + 160] = _115
        idx = idx + 1
        continue 
    _114 = mem[64]
    mem[mem[64]] = 32
    _117 = mem[(32 * ('cd', 36).length) + 128]
    mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
    idx = 0
    s = (32 * ('cd', 36).length) + 160
    t = mem[64] + 64
    while idx < _117:
        _126 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_126 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _114 + (64 * _117) + -mem[64] + 64
}



}
