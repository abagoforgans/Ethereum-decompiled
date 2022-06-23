contract main {




// =====================  Runtime code  =====================


const ETH = 0

const MAX_UINT = -1


address owner;
address exchangeAddress;

function owner() {
    return owner
}

function exchange() {
    return exchangeAddress
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setExchange(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    exchangeAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not arg1:
            call owner with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg2:
            else:
                require return_data.size >= 32
    return 1
}

function sub_3fad220e(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    require cd[36] + (352 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size - s >= 352
        _450 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require calldata.size - s >= 320
        _457 = mem[64]
        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
        mem[64] = mem[64] + 160
        require s + 31 < calldata.size
        _478 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        require s + 96 <= calldata.size
        u = 0
        v = s
        w = _478
        while u < 3:
            mem[w] = address(cd[v])
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_457] = _478
        require s + 127 < calldata.size
        _694 = mem[64]
        require mem[64] + 128 <= test266151307() and mem[64] + 128 >= mem[64]
        mem[64] = mem[64] + 128
        require s + 224 <= calldata.size
        u = 0
        v = s + 96
        w = _694
        while u < 4:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_457 + 32] = _694
        mem[_457 + 64] = uint8(cd[(s + 224)])
        mem[_457 + 96] = cd[(s + 256)]
        mem[_457 + 128] = cd[(s + 288)]
        mem[_450] = _457
        mem[_450 + 32] = cd[(s + 320)]
        mem[t] = _450
        idx = idx + 1
        s = s + 352
        t = t + 32
        continue 
    mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(exchangeAddress)
    call exchangeAddress.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _673 = mem[96]
    idx = 0
    while idx < _673:
        require idx < mem[96]
        _679 = mem[mem[mem[mem[(32 * idx) + 128]]]]
        require idx < mem[96]
        _684 = mem[mem[mem[mem[(32 * idx) + 128]] + 32]]
        require idx < mem[96]
        _689 = mem[mem[mem[mem[(32 * idx) + 128]]] + 32]
        require idx < mem[96]
        _695 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 32]
        require idx < mem[96]
        _700 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 64]
        require idx < mem[96]
        _705 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 96]
        require idx < mem[96]
        _711 = mem[mem[mem[mem[(32 * idx) + 128]]] + 64]
        require idx < mem[96]
        _716 = mem[mem[mem[(32 * idx) + 128]] + 64]
        require idx < mem[96]
        _720 = mem[mem[mem[(32 * idx) + 128]] + 96]
        require idx < mem[96]
        _724 = mem[mem[mem[(32 * idx) + 128]] + 128]
        require idx < mem[96]
        _728 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64]] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_679)
        mem[mem[64] + 36] = _684
        mem[mem[64] + 68] = address(_689)
        mem[mem[64] + 100] = _695
        mem[mem[64] + 132] = _700
        mem[mem[64] + 164] = _705
        mem[mem[64] + 196] = address(_711)
        mem[mem[64] + 228] = uint8(_716)
        mem[mem[64] + 260] = _720
        mem[mem[64] + 292] = _724
        mem[mem[64] + 324] = _728
        require ext_code.size(exchangeAddress)
        call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
             gas gas_remaining wei
            args address(_679), _684, address(_689), _695, _700, _705, address(_711), _716 << 248, _720, _724, _728
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = this.address
    require ext_code.size(exchangeAddress)
    call exchangeAddress.0xf7888aec with:
         gas gas_remaining wei
        args 0, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _713 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _726 = mem[_713]
    if not mem[_713]:
        require 0 < mem[96]
        _736 = mem[mem[mem[mem[128]]] + 32]
        mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 44 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0xf7888aec with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _752 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _754 = mem[_752]
        if not mem[_752]:
            require 0 < mem[96]
            if not mem[_752]:
                mem[mem[64]] = mem[_752]
                return memory
                  from mem[64]
                   len 32
            if not mem[mem[mem[mem[128]]] + 44 len 20]:
                call msg.sender with:
                   value mem[_752] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = mem[_752]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(mem[mem[mem[mem[128]]] + 44 len 20])
            call mem[mem[mem[mem[128]]] + 44 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, mem[_752]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not cd[4]:
            else:
                require return_data.size >= 32
            return memory
              from _752
               len 32
        mem[mem[64]] = 0x9e281a9800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_736)
        mem[mem[64] + 36] = _754
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x9e281a98 with:
             gas gas_remaining wei
            args address(_736), _754
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 < mem[96]
        if _754:
            if not mem[mem[mem[mem[128]]] + 44 len 20]:
                call msg.sender with:
                   value _754 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(mem[mem[mem[mem[128]]] + 44 len 20])
                call mem[mem[mem[mem[128]]] + 44 len 20].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _754
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not cd[4]:
                else:
                    require return_data.size >= 32
        return _754
    mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _726
    require ext_code.size(exchangeAddress)
    call exchangeAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args _726
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not _726:
        require 0 < mem[96]
        _744 = mem[mem[mem[mem[128]]] + 32]
        mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 44 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0xf7888aec with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _758 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _765 = mem[_758]
        if not mem[_758]:
            require 0 < mem[96]
            if not mem[_758]:
                mem[mem[64]] = mem[_758]
                return memory
                  from mem[64]
                   len 32
            if not mem[mem[mem[mem[128]]] + 44 len 20]:
                call msg.sender with:
                   value mem[_758] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = mem[_758]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(mem[mem[mem[mem[128]]] + 44 len 20])
            call mem[mem[mem[mem[128]]] + 44 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, mem[_758]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not cd[4]:
            else:
                require return_data.size >= 32
            return memory
              from _758
               len 32
        mem[mem[64]] = 0x9e281a9800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_744)
        mem[mem[64] + 36] = _765
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x9e281a98 with:
             gas gas_remaining wei
            args address(_744), _765
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 < mem[96]
        if _765:
            if not mem[mem[mem[mem[128]]] + 44 len 20]:
                call msg.sender with:
                   value _765 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(mem[mem[mem[mem[128]]] + 44 len 20])
                call mem[mem[mem[mem[128]]] + 44 len 20].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _765
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not cd[4]:
                else:
                    require return_data.size >= 32
        return _765
    call msg.sender with:
       value _726 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < mem[96]
    _751 = mem[mem[mem[mem[128]]] + 32]
    mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 44 len 20]
    mem[mem[64] + 36] = this.address
    require ext_code.size(exchangeAddress)
    call exchangeAddress.0xf7888aec with:
         gas gas_remaining wei
        args mem[mem[64] + 4], address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _764 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _770 = mem[_764]
    if not mem[_764]:
        require 0 < mem[96]
        if not mem[_764]:
            mem[mem[64]] = mem[_764]
            return memory
              from mem[64]
               len 32
        if not mem[mem[mem[mem[128]]] + 44 len 20]:
            call msg.sender with:
               value mem[_764] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = mem[_764]
            return memory
              from mem[64]
               len 32
        require ext_code.size(mem[mem[mem[mem[128]]] + 44 len 20])
        call mem[mem[mem[mem[128]]] + 44 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[_764]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not cd[4]:
        else:
            require return_data.size >= 32
        return memory
          from _764
           len 32
    mem[mem[64]] = 0x9e281a9800000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(_751)
    mem[mem[64] + 36] = _770
    require ext_code.size(exchangeAddress)
    call exchangeAddress.0x9e281a98 with:
         gas gas_remaining wei
        args address(_751), _770
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < mem[96]
    if _770:
        if not mem[mem[mem[mem[128]]] + 44 len 20]:
            call msg.sender with:
               value _770 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(mem[mem[mem[mem[128]]] + 44 len 20])
            call mem[mem[mem[mem[128]]] + 44 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _770
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not cd[4]:
            else:
                require return_data.size >= 32
    return _770
}

function sub_e5248ace(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    require cd[36] + (352 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size - s >= 352
        _1895 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require calldata.size - s >= 320
        _1906 = mem[64]
        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
        mem[64] = mem[64] + 160
        require s + 31 < calldata.size
        _1909 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        require s + 96 <= calldata.size
        u = 0
        v = s
        w = _1909
        while u < 3:
            mem[w] = address(cd[v])
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_1906] = _1909
        require s + 127 < calldata.size
        _2907 = mem[64]
        require mem[64] + 128 <= test266151307() and mem[64] + 128 >= mem[64]
        mem[64] = mem[64] + 128
        require s + 224 <= calldata.size
        u = 0
        v = s + 96
        w = _2907
        while u < 4:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_1906 + 32] = _2907
        mem[_1906 + 64] = uint8(cd[(s + 224)])
        mem[_1906 + 96] = cd[(s + 256)]
        mem[_1906 + 128] = cd[(s + 288)]
        mem[_1895] = _1906
        mem[_1895 + 32] = cd[(s + 320)]
        mem[t] = _1895
        idx = idx + 1
        s = s + 352
        t = t + 32
        continue 
    require 0 < mem[96]
    _1899 = mem[mem[mem[mem[128]]]]
    require 0 < mem[96]
    _1904 = mem[mem[mem[mem[128]]]]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_1904))
    call address(_1904).0x70a08231 with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1908 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1910 = mem[_1908]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = exchangeAddress
    require ext_code.size(address(_1899))
    call address(_1899).0xdd62ed3e with:
         gas gas_remaining wei
        args address(this.address), exchangeAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not cd[4]:
        _1915 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_1915] >= _1910:
            require 0 < mem[96]
            _1929 = mem[mem[mem[mem[128]]]]
            require 0 < mem[96]
            _1939 = mem[mem[mem[mem[128]]]]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1939))
            call address(_1939).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1948 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1952 = mem[_1948]
            mem[mem[64]] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_1929)
            mem[mem[64] + 36] = _1952
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x338b5dea with:
                 gas gas_remaining wei
                args address(_1929), _1952
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2744 = mem[96]
            idx = 0
            while idx < _2744:
                require idx < mem[96]
                _2799 = mem[mem[mem[mem[(32 * idx) + 128]]]]
                require idx < mem[96]
                _2848 = mem[mem[mem[mem[(32 * idx) + 128]] + 32]]
                require idx < mem[96]
                _2884 = mem[mem[mem[mem[(32 * idx) + 128]]] + 32]
                require idx < mem[96]
                _2912 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 32]
                require idx < mem[96]
                _2939 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 64]
                require idx < mem[96]
                _2968 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 96]
                require idx < mem[96]
                _2995 = mem[mem[mem[mem[(32 * idx) + 128]]] + 64]
                require idx < mem[96]
                _3015 = mem[mem[mem[(32 * idx) + 128]] + 64]
                require idx < mem[96]
                _3037 = mem[mem[mem[(32 * idx) + 128]] + 96]
                require idx < mem[96]
                _3061 = mem[mem[mem[(32 * idx) + 128]] + 128]
                require idx < mem[96]
                _3083 = mem[mem[(32 * idx) + 128] + 32]
                mem[mem[64]] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_2799)
                mem[mem[64] + 36] = _2848
                mem[mem[64] + 68] = address(_2884)
                mem[mem[64] + 100] = _2912
                mem[mem[64] + 132] = _2939
                mem[mem[64] + 164] = _2968
                mem[mem[64] + 196] = address(_2995)
                mem[mem[64] + 228] = uint8(_3015)
                mem[mem[64] + 260] = _3037
                mem[mem[64] + 292] = _3061
                mem[mem[64] + 324] = _3083
                require ext_code.size(exchangeAddress)
                call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas gas_remaining wei
                    args address(_2799), _2848, address(_2884), _2912, _2939, _2968, address(_2995), _3015 << 248, _3037, _3061, _3083
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[96]
            _2797 = mem[mem[mem[mem[128]]]]
            require 0 < mem[96]
            _2847 = mem[mem[mem[mem[128]]]]
            mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 12 len 20]
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3058 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3058]:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0xf7888aec with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3176 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3176]:
                    mem[mem[64]] = mem[_3176]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3176]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3176]:
                    call msg.sender with:
                       value mem[_3176] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3176
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x9e281a98 with:
                 gas gas_remaining wei
                args address(_2847), mem[_3058]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_3058]:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0xf7888aec with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3228 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3228]:
                    mem[mem[64]] = mem[_3228]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3228]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3228]:
                    call msg.sender with:
                       value mem[_3228] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3228
                   len 32
            if not address(_2797):
                call msg.sender with:
                   value mem[_3058] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0xf7888aec with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3258 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3258]:
                    mem[mem[64]] = mem[_3258]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3258]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3258]:
                    call msg.sender with:
                       value mem[_3258] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3258
                   len 32
            require ext_code.size(address(_2797))
            call address(_2797).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, mem[_3058]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not cd[4]:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0xf7888aec with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3334 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3334]:
                    mem[mem[64]] = mem[_3334]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3334]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3334]:
                    call msg.sender with:
                       value mem[_3334] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3334
                   len 32
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3385 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3385]:
                mem[mem[64]] = mem[_3385]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3385]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3385]:
                call msg.sender with:
                   value mem[_3385] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3385
               len 32
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = exchangeAddress
        require ext_code.size(address(_1899))
        call address(_1899).0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), exchangeAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1947 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_1947]:
            mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = exchangeAddress
            mem[mem[64] + 36] = _1910
            require ext_code.size(address(_1899))
            call address(_1899).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args exchangeAddress, _1910
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 0 < mem[96]
            _2013 = mem[mem[mem[mem[128]]]]
            require 0 < mem[96]
            _2033 = mem[mem[mem[mem[128]]]]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_2033))
            call address(_2033).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2089 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2112 = mem[_2089]
            mem[mem[64]] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_2013)
            mem[mem[64] + 36] = _2112
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x338b5dea with:
                 gas gas_remaining wei
                args address(_2013), _2112
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2742 = mem[96]
            idx = 0
            while idx < _2742:
                require idx < mem[96]
                _2791 = mem[mem[mem[mem[(32 * idx) + 128]]]]
                require idx < mem[96]
                _2842 = mem[mem[mem[mem[(32 * idx) + 128]] + 32]]
                require idx < mem[96]
                _2880 = mem[mem[mem[mem[(32 * idx) + 128]]] + 32]
                require idx < mem[96]
                _2908 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 32]
                require idx < mem[96]
                _2935 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 64]
                require idx < mem[96]
                _2964 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 96]
                require idx < mem[96]
                _2991 = mem[mem[mem[mem[(32 * idx) + 128]]] + 64]
                require idx < mem[96]
                _3005 = mem[mem[mem[(32 * idx) + 128]] + 64]
                require idx < mem[96]
                _3029 = mem[mem[mem[(32 * idx) + 128]] + 96]
                require idx < mem[96]
                _3051 = mem[mem[mem[(32 * idx) + 128]] + 128]
                require idx < mem[96]
                _3077 = mem[mem[(32 * idx) + 128] + 32]
                mem[mem[64]] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_2791)
                mem[mem[64] + 36] = _2842
                mem[mem[64] + 68] = address(_2880)
                mem[mem[64] + 100] = _2908
                mem[mem[64] + 132] = _2935
                mem[mem[64] + 164] = _2964
                mem[mem[64] + 196] = address(_2991)
                mem[mem[64] + 228] = uint8(_3005)
                mem[mem[64] + 260] = _3029
                mem[mem[64] + 292] = _3051
                mem[mem[64] + 324] = _3077
                require ext_code.size(exchangeAddress)
                call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas gas_remaining wei
                    args address(_2791), _2842, address(_2880), _2908, _2935, _2964, address(_2991), _3005 << 248, _3029, _3051, _3077
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[96]
            _2789 = mem[mem[mem[mem[128]]]]
            require 0 < mem[96]
            _2841 = mem[mem[mem[mem[128]]]]
            mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 12 len 20]
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3048 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3048]:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0xf7888aec with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3174 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3174]:
                    mem[mem[64]] = mem[_3174]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3174]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3174]:
                    call msg.sender with:
                       value mem[_3174] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3174
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x9e281a98 with:
                 gas gas_remaining wei
                args address(_2841), mem[_3048]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_3048]:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0xf7888aec with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3224]:
                    mem[mem[64]] = mem[_3224]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3224]:
                    call msg.sender with:
                       value mem[_3224] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3224
                   len 32
            if not address(_2789):
                call msg.sender with:
                   value mem[_3048] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0xf7888aec with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3254 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3254]:
                    mem[mem[64]] = mem[_3254]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3254]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3254]:
                    call msg.sender with:
                       value mem[_3254] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3254
                   len 32
            require ext_code.size(address(_2789))
            call address(_2789).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, mem[_3048]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not cd[4]:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0xf7888aec with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3330 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3330]:
                    mem[mem[64]] = mem[_3330]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3330]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3330]:
                    call msg.sender with:
                       value mem[_3330] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3330
                   len 32
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3379 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3379]:
                mem[mem[64]] = mem[_3379]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3379]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3379]:
                call msg.sender with:
                   value mem[_3379] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3379
               len 32
        require ext_code.size(address(_1899))
        call address(_1899).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args exchangeAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = exchangeAddress
        mem[mem[64] + 36] = _1910
        require ext_code.size(address(_1899))
        call address(_1899).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args exchangeAddress, _1910
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 < mem[96]
        _2133 = mem[mem[mem[mem[128]]]]
        require 0 < mem[96]
        _2143 = mem[mem[mem[mem[128]]]]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_2143))
        call address(_2143).0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2153 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2158 = mem[_2153]
        mem[mem[64]] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_2133)
        mem[mem[64] + 36] = _2158
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x338b5dea with:
             gas gas_remaining wei
            args address(_2133), _2158
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2743 = mem[96]
        idx = 0
        while idx < _2743:
            require idx < mem[96]
            _2795 = mem[mem[mem[mem[(32 * idx) + 128]]]]
            require idx < mem[96]
            _2845 = mem[mem[mem[mem[(32 * idx) + 128]] + 32]]
            require idx < mem[96]
            _2882 = mem[mem[mem[mem[(32 * idx) + 128]]] + 32]
            require idx < mem[96]
            _2910 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 32]
            require idx < mem[96]
            _2937 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 64]
            require idx < mem[96]
            _2966 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 96]
            require idx < mem[96]
            _2993 = mem[mem[mem[mem[(32 * idx) + 128]]] + 64]
            require idx < mem[96]
            _3010 = mem[mem[mem[(32 * idx) + 128]] + 64]
            require idx < mem[96]
            _3033 = mem[mem[mem[(32 * idx) + 128]] + 96]
            require idx < mem[96]
            _3056 = mem[mem[mem[(32 * idx) + 128]] + 128]
            require idx < mem[96]
            _3080 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64]] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_2795)
            mem[mem[64] + 36] = _2845
            mem[mem[64] + 68] = address(_2882)
            mem[mem[64] + 100] = _2910
            mem[mem[64] + 132] = _2937
            mem[mem[64] + 164] = _2966
            mem[mem[64] + 196] = address(_2993)
            mem[mem[64] + 228] = uint8(_3010)
            mem[mem[64] + 260] = _3033
            mem[mem[64] + 292] = _3056
            mem[mem[64] + 324] = _3080
            require ext_code.size(exchangeAddress)
            call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining wei
                args address(_2795), _2845, address(_2882), _2910, _2937, _2966, address(_2993), _3010 << 248, _3033, _3056, _3080
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require 0 < mem[96]
        _2793 = mem[mem[mem[mem[128]]]]
        require 0 < mem[96]
        _2844 = mem[mem[mem[mem[128]]]]
        mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 12 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0xf7888aec with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3053 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3053]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3175 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3175]:
                mem[mem[64]] = mem[_3175]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3175]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3175]:
                call msg.sender with:
                   value mem[_3175] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3175
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x9e281a98 with:
             gas gas_remaining wei
            args address(_2844), mem[_3053]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not mem[_3053]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3226 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3226]:
                mem[mem[64]] = mem[_3226]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3226]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3226]:
                call msg.sender with:
                   value mem[_3226] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3226
               len 32
        if not address(_2793):
            call msg.sender with:
               value mem[_3053] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3256 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3256]:
                mem[mem[64]] = mem[_3256]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3256]:
                call msg.sender with:
                   value mem[_3256] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3256
               len 32
        require ext_code.size(address(_2793))
        call address(_2793).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[_3053]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not cd[4]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3332 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3332]:
                mem[mem[64]] = mem[_3332]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3332]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3332]:
                call msg.sender with:
                   value mem[_3332] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3332
               len 32
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0xf7888aec with:
             gas gas_remaining wei
            args 0, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3382 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3382]:
            mem[mem[64]] = mem[_3382]
            return memory
              from mem[64]
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[_3382]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_3382]:
            call msg.sender with:
               value mem[_3382] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _3382
           len 32
    _1916 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_1916] >= _1910:
        require 0 < mem[96]
        _1931 = mem[mem[mem[mem[128]]]]
        require 0 < mem[96]
        _1941 = mem[mem[mem[mem[128]]]]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_1941))
        call address(_1941).0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1950 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1954 = mem[_1950]
        mem[mem[64]] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_1931)
        mem[mem[64] + 36] = _1954
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x338b5dea with:
             gas gas_remaining wei
            args address(_1931), _1954
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2746 = mem[96]
        idx = 0
        while idx < _2746:
            require idx < mem[96]
            _2807 = mem[mem[mem[mem[(32 * idx) + 128]]]]
            require idx < mem[96]
            _2857 = mem[mem[mem[mem[(32 * idx) + 128]] + 32]]
            require idx < mem[96]
            _2890 = mem[mem[mem[mem[(32 * idx) + 128]]] + 32]
            require idx < mem[96]
            _2916 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 32]
            require idx < mem[96]
            _2944 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 64]
            require idx < mem[96]
            _2973 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 96]
            require idx < mem[96]
            _3000 = mem[mem[mem[mem[(32 * idx) + 128]]] + 64]
            require idx < mem[96]
            _3025 = mem[mem[mem[(32 * idx) + 128]] + 64]
            require idx < mem[96]
            _3046 = mem[mem[mem[(32 * idx) + 128]] + 96]
            require idx < mem[96]
            _3074 = mem[mem[mem[(32 * idx) + 128]] + 128]
            require idx < mem[96]
            _3089 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64]] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_2807)
            mem[mem[64] + 36] = _2857
            mem[mem[64] + 68] = address(_2890)
            mem[mem[64] + 100] = _2916
            mem[mem[64] + 132] = _2944
            mem[mem[64] + 164] = _2973
            mem[mem[64] + 196] = address(_3000)
            mem[mem[64] + 228] = uint8(_3025)
            mem[mem[64] + 260] = _3046
            mem[mem[64] + 292] = _3074
            mem[mem[64] + 324] = _3089
            require ext_code.size(exchangeAddress)
            call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining wei
                args address(_2807), _2857, address(_2890), _2916, _2944, _2973, address(_3000), _3025 << 248, _3046, _3074, _3089
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require 0 < mem[96]
        _2805 = mem[mem[mem[mem[128]]]]
        require 0 < mem[96]
        _2856 = mem[mem[mem[mem[128]]]]
        mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 12 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0xf7888aec with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3071 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3071]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3179 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3179]:
                mem[mem[64]] = mem[_3179]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3179]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3179]:
                call msg.sender with:
                   value mem[_3179] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3179
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x9e281a98 with:
             gas gas_remaining wei
            args address(_2856), mem[_3071]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not mem[_3071]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3233 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3233]:
                mem[mem[64]] = mem[_3233]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3233]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3233]:
                call msg.sender with:
                   value mem[_3233] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3233
               len 32
        if not address(_2805):
            call msg.sender with:
               value mem[_3071] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3262 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3262]:
                mem[mem[64]] = mem[_3262]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3262]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3262]:
                call msg.sender with:
                   value mem[_3262] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3262
               len 32
        require ext_code.size(address(_2805))
        call address(_2805).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[_3071]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not cd[4]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3338 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3338]:
                mem[mem[64]] = mem[_3338]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3338]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3338]:
                call msg.sender with:
                   value mem[_3338] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3338
               len 32
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0xf7888aec with:
             gas gas_remaining wei
            args 0, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3391 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3391]:
            mem[mem[64]] = mem[_3391]
            return memory
              from mem[64]
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[_3391]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_3391]:
            call msg.sender with:
               value mem[_3391] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _3391
           len 32
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = exchangeAddress
    require ext_code.size(address(_1899))
    call address(_1899).0xdd62ed3e with:
         gas gas_remaining wei
        args address(this.address), exchangeAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1949 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if not mem[_1949]:
        mem[mem[64] + 4] = exchangeAddress
        mem[mem[64] + 36] = _1910
        require ext_code.size(address(_1899))
        call address(_1899).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args exchangeAddress, _1910
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require 0 < mem[96]
        _2067 = mem[mem[mem[mem[128]]]]
        require 0 < mem[96]
        _2084 = mem[mem[mem[mem[128]]]]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_2084))
        call address(_2084).0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2147 = mem[_2145]
        mem[mem[64]] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_2067)
        mem[mem[64] + 36] = _2147
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x338b5dea with:
             gas gas_remaining wei
            args address(_2067), _2147
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2745 = mem[96]
        idx = 0
        while idx < _2745:
            require idx < mem[96]
            _2803 = mem[mem[mem[mem[(32 * idx) + 128]]]]
            require idx < mem[96]
            _2851 = mem[mem[mem[mem[(32 * idx) + 128]] + 32]]
            require idx < mem[96]
            _2886 = mem[mem[mem[mem[(32 * idx) + 128]]] + 32]
            require idx < mem[96]
            _2914 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 32]
            require idx < mem[96]
            _2941 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 64]
            require idx < mem[96]
            _2970 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 96]
            require idx < mem[96]
            _2997 = mem[mem[mem[mem[(32 * idx) + 128]]] + 64]
            require idx < mem[96]
            _3020 = mem[mem[mem[(32 * idx) + 128]] + 64]
            require idx < mem[96]
            _3041 = mem[mem[mem[(32 * idx) + 128]] + 96]
            require idx < mem[96]
            _3066 = mem[mem[mem[(32 * idx) + 128]] + 128]
            require idx < mem[96]
            _3086 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64]] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_2803)
            mem[mem[64] + 36] = _2851
            mem[mem[64] + 68] = address(_2886)
            mem[mem[64] + 100] = _2914
            mem[mem[64] + 132] = _2941
            mem[mem[64] + 164] = _2970
            mem[mem[64] + 196] = address(_2997)
            mem[mem[64] + 228] = uint8(_3020)
            mem[mem[64] + 260] = _3041
            mem[mem[64] + 292] = _3066
            mem[mem[64] + 324] = _3086
            require ext_code.size(exchangeAddress)
            call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining wei
                args address(_2803), _2851, address(_2886), _2914, _2941, _2970, address(_2997), _3020 << 248, _3041, _3066, _3086
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require 0 < mem[96]
        _2801 = mem[mem[mem[mem[128]]]]
        require 0 < mem[96]
        _2850 = mem[mem[mem[mem[128]]]]
        mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 12 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0xf7888aec with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3063 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3063]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3177]:
                mem[mem[64]] = mem[_3177]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3177]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3177]:
                call msg.sender with:
                   value mem[_3177] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3177
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x9e281a98 with:
             gas gas_remaining wei
            args address(_2850), mem[_3063]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not mem[_3063]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3230 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3230]:
                mem[mem[64]] = mem[_3230]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3230]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3230]:
                call msg.sender with:
                   value mem[_3230] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3230
               len 32
        if not address(_2801):
            call msg.sender with:
               value mem[_3063] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3260 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3260]:
                mem[mem[64]] = mem[_3260]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3260]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3260]:
                call msg.sender with:
                   value mem[_3260] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3260
               len 32
        require ext_code.size(address(_2801))
        call address(_2801).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[_3063]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not cd[4]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0xf7888aec with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3336 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3336]:
                mem[mem[64]] = mem[_3336]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3336]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3336]:
                call msg.sender with:
                   value mem[_3336] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3336
               len 32
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0xf7888aec with:
             gas gas_remaining wei
            args 0, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3388 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3388]:
            mem[mem[64]] = mem[_3388]
            return memory
              from mem[64]
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[_3388]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_3388]:
            call msg.sender with:
               value mem[_3388] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _3388
           len 32
    require ext_code.size(address(_1899))
    call address(_1899).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args exchangeAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = exchangeAddress
    mem[mem[64] + 36] = _1910
    require ext_code.size(address(_1899))
    call address(_1899).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args exchangeAddress, _1910
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require 0 < mem[96]
    _2162 = mem[mem[mem[mem[128]]]]
    require 0 < mem[96]
    _2171 = mem[mem[mem[mem[128]]]]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_2171))
    call address(_2171).0x70a08231 with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2223 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2253 = mem[_2223]
    mem[mem[64]] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(_2162)
    mem[mem[64] + 36] = _2253
    require ext_code.size(exchangeAddress)
    call exchangeAddress.0x338b5dea with:
         gas gas_remaining wei
        args address(_2162), _2253
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3544 = mem[96]
    idx = 0
    while idx < _3544:
        require idx < mem[96]
        _3555 = mem[mem[mem[mem[(32 * idx) + 128]]]]
        require idx < mem[96]
        _3564 = mem[mem[mem[mem[(32 * idx) + 128]] + 32]]
        require idx < mem[96]
        _3570 = mem[mem[mem[mem[(32 * idx) + 128]]] + 32]
        require idx < mem[96]
        _3575 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 32]
        require idx < mem[96]
        _3580 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 64]
        require idx < mem[96]
        _3585 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 96]
        require idx < mem[96]
        _3590 = mem[mem[mem[mem[(32 * idx) + 128]]] + 64]
        require idx < mem[96]
        _3595 = mem[mem[mem[(32 * idx) + 128]] + 64]
        require idx < mem[96]
        _3599 = mem[mem[mem[(32 * idx) + 128]] + 96]
        require idx < mem[96]
        _3604 = mem[mem[mem[(32 * idx) + 128]] + 128]
        require idx < mem[96]
        _3607 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64]] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_3555)
        mem[mem[64] + 36] = _3564
        mem[mem[64] + 68] = address(_3570)
        mem[mem[64] + 100] = _3575
        mem[mem[64] + 132] = _3580
        mem[mem[64] + 164] = _3585
        mem[mem[64] + 196] = address(_3590)
        mem[mem[64] + 228] = uint8(_3595)
        mem[mem[64] + 260] = _3599
        mem[mem[64] + 292] = _3604
        mem[mem[64] + 324] = _3607
        require ext_code.size(exchangeAddress)
        call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
             gas gas_remaining wei
            args address(_3555), _3564, address(_3570), _3575, _3580, _3585, address(_3590), _3595 << 248, _3599, _3604, _3607
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require 0 < mem[96]
    _3553 = mem[mem[mem[mem[128]]]]
    require 0 < mem[96]
    _3563 = mem[mem[mem[mem[128]]]]
    mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 12 len 20]
    mem[mem[64] + 36] = this.address
    require ext_code.size(exchangeAddress)
    call exchangeAddress.0xf7888aec with:
         gas gas_remaining wei
        args mem[mem[64] + 4], address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3601 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if not mem[_3601]:
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0xf7888aec with:
             gas gas_remaining wei
            args 0, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3619 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3619]:
            mem[mem[64]] = mem[_3619]
            return memory
              from mem[64]
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[_3619]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_3619]:
            call msg.sender with:
               value mem[_3619] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _3619
           len 32
    require ext_code.size(exchangeAddress)
    call exchangeAddress.0x9e281a98 with:
         gas gas_remaining wei
        args address(_3563), mem[_3601]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not mem[_3601]:
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0xf7888aec with:
             gas gas_remaining wei
            args 0, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3628 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3628]:
            mem[mem[64]] = mem[_3628]
            return memory
              from mem[64]
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[_3628]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_3628]:
            call msg.sender with:
               value mem[_3628] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _3628
           len 32
    if not address(_3553):
        call msg.sender with:
           value mem[_3601] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0xf7888aec with:
             gas gas_remaining wei
            args 0, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3633 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3633]:
            mem[mem[64]] = mem[_3633]
            return memory
              from mem[64]
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[_3633]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_3633]:
            call msg.sender with:
               value mem[_3633] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _3633
           len 32
    require ext_code.size(address(_3553))
    call address(_3553).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, mem[_3601]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not cd[4]:
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0xf7888aec with:
             gas gas_remaining wei
            args 0, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3649 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3649]:
            mem[mem[64]] = mem[_3649]
            return memory
              from mem[64]
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[_3649]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_3649]:
            call msg.sender with:
               value mem[_3649] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _3649
           len 32
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = this.address
    require ext_code.size(exchangeAddress)
    call exchangeAddress.0xf7888aec with:
         gas gas_remaining wei
        args 0, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3658 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if not mem[_3658]:
        mem[mem[64]] = mem[_3658]
        return memory
          from mem[64]
           len 32
    require ext_code.size(exchangeAddress)
    call exchangeAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args mem[_3658]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[_3658]:
        call msg.sender with:
           value mem[_3658] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return memory
      from _3658
       len 32
}



}
