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

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
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
            call arg1 with:
               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
            require ext_call.success
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Asm Transfer reverted'
    return 1
}

function sub_7435bffc(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (352 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 352
        _474 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require calldata.size - s >= 320
        _481 = mem[64]
        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
        mem[64] = mem[64] + 160
        require s + 31 < calldata.size
        _502 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        require s + 96 <= calldata.size
        u = 0
        v = s
        w = _502
        while u < 3:
            mem[w] = address(cd[v])
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_481] = _502
        require s + 127 < calldata.size
        _730 = mem[64]
        require mem[64] + 128 <= test266151307() and mem[64] + 128 >= mem[64]
        mem[64] = mem[64] + 128
        require s + 224 <= calldata.size
        u = 0
        v = s + 96
        w = _730
        while u < 4:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_481 + 32] = _730
        mem[_481 + 64] = uint8(cd[(s + 224)])
        mem[_481 + 96] = cd[(s + 256)]
        mem[_481 + 128] = cd[(s + 288)]
        mem[_474] = _481
        mem[_474 + 32] = cd[(s + 320)]
        mem[t] = _474
        idx = idx + 1
        s = s + 352
        t = t + 32
        continue 
    mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(exchangeAddress)
    call exchangeAddress.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _709 = mem[96]
    idx = 0
    while idx < _709:
        require idx < mem[96]
        _715 = mem[mem[mem[mem[(32 * idx) + 128]]]]
        require idx < mem[96]
        _720 = mem[mem[mem[mem[(32 * idx) + 128]] + 32]]
        require idx < mem[96]
        _725 = mem[mem[mem[mem[(32 * idx) + 128]]] + 32]
        require idx < mem[96]
        _731 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 32]
        require idx < mem[96]
        _736 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 64]
        require idx < mem[96]
        _741 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 96]
        require idx < mem[96]
        _747 = mem[mem[mem[mem[(32 * idx) + 128]]] + 64]
        require idx < mem[96]
        _752 = mem[mem[mem[(32 * idx) + 128]] + 64]
        require idx < mem[96]
        _756 = mem[mem[mem[(32 * idx) + 128]] + 96]
        require idx < mem[96]
        _760 = mem[mem[mem[(32 * idx) + 128]] + 128]
        require idx < mem[96]
        _764 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64]] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_715)
        mem[mem[64] + 36] = _720
        mem[mem[64] + 68] = address(_725)
        mem[mem[64] + 100] = _731
        mem[mem[64] + 132] = _736
        mem[mem[64] + 164] = _741
        mem[mem[64] + 196] = address(_747)
        mem[mem[64] + 228] = uint8(_752)
        mem[mem[64] + 260] = _756
        mem[mem[64] + 292] = _760
        mem[mem[64] + 324] = _764
        require ext_code.size(exchangeAddress)
        call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
             gas gas_remaining wei
            args address(_715), _720, address(_725), _731, _736, _741, address(_747), _752 << 248, _756, _760, _764
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = this.address
    require ext_code.size(exchangeAddress)
    call exchangeAddress.balanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args 0, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _749 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _762 = mem[_749]
    if not mem[_749]:
        require 0 < mem[96]
        _772 = mem[mem[mem[mem[128]]] + 32]
        mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 44 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _788 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _790 = mem[_788]
        if not mem[_788]:
            require 0 < mem[96]
            if not mem[_788]:
                mem[mem[64]] = mem[_788]
                return memory
                  from mem[64]
                   len 32
            if not mem[mem[mem[mem[128]]] + 44 len 20]:
                call msg.sender with:
                   value mem[_788] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = mem[_788]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(mem[mem[mem[mem[128]]] + 44 len 20])
            call mem[mem[mem[mem[128]]] + 44 len 20] with:
               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                 gas gas_remaining wei
                args msg.sender, mem[_788]
            require ext_call.success
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Asm Transfer reverted'
            return memory
              from _788
               len 32
        mem[mem[64]] = 0x9e281a9800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_772)
        mem[mem[64] + 36] = _790
        require ext_code.size(exchangeAddress)
        call exchangeAddress.withdrawToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_772), _790
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 < mem[96]
        if _790:
            if not mem[mem[mem[mem[128]]] + 44 len 20]:
                call msg.sender with:
                   value _790 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(mem[mem[mem[mem[128]]] + 44 len 20])
                call mem[mem[mem[mem[128]]] + 44 len 20] with:
                   funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                     gas gas_remaining wei
                    args msg.sender, _790
                require ext_call.success
                if return_data.size:
                    require return_data.size == 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Asm Transfer reverted'
        return _790
    mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _762
    require ext_code.size(exchangeAddress)
    call exchangeAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args _762
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not _762:
        require 0 < mem[96]
        _780 = mem[mem[mem[mem[128]]] + 32]
        mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 44 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _794 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _801 = mem[_794]
        if not mem[_794]:
            require 0 < mem[96]
            if not mem[_794]:
                mem[mem[64]] = mem[_794]
                return memory
                  from mem[64]
                   len 32
            if not mem[mem[mem[mem[128]]] + 44 len 20]:
                call msg.sender with:
                   value mem[_794] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = mem[_794]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(mem[mem[mem[mem[128]]] + 44 len 20])
            call mem[mem[mem[mem[128]]] + 44 len 20] with:
               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                 gas gas_remaining wei
                args msg.sender, mem[_794]
            require ext_call.success
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Asm Transfer reverted'
            return memory
              from _794
               len 32
        mem[mem[64]] = 0x9e281a9800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_780)
        mem[mem[64] + 36] = _801
        require ext_code.size(exchangeAddress)
        call exchangeAddress.withdrawToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_780), _801
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 < mem[96]
        if _801:
            if not mem[mem[mem[mem[128]]] + 44 len 20]:
                call msg.sender with:
                   value _801 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(mem[mem[mem[mem[128]]] + 44 len 20])
                call mem[mem[mem[mem[128]]] + 44 len 20] with:
                   funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                     gas gas_remaining wei
                    args msg.sender, _801
                require ext_call.success
                if return_data.size:
                    require return_data.size == 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Asm Transfer reverted'
        return _801
    call msg.sender with:
       value _762 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < mem[96]
    _787 = mem[mem[mem[mem[128]]] + 32]
    mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 44 len 20]
    mem[mem[64] + 36] = this.address
    require ext_code.size(exchangeAddress)
    call exchangeAddress.balanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _800 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _804 = mem[_800]
    if not mem[_800]:
        require 0 < mem[96]
        if not mem[_800]:
            mem[mem[64]] = mem[_800]
            return memory
              from mem[64]
               len 32
        if not mem[mem[mem[mem[128]]] + 44 len 20]:
            call msg.sender with:
               value mem[_800] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = mem[_800]
            return memory
              from mem[64]
               len 32
        require ext_code.size(mem[mem[mem[mem[128]]] + 44 len 20])
        call mem[mem[mem[mem[128]]] + 44 len 20] with:
           funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
             gas gas_remaining wei
            args msg.sender, mem[_800]
        require ext_call.success
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'Asm Transfer reverted'
        return memory
          from _800
           len 32
    mem[mem[64]] = 0x9e281a9800000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(_787)
    mem[mem[64] + 36] = _804
    require ext_code.size(exchangeAddress)
    call exchangeAddress.withdrawToken(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(_787), _804
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < mem[96]
    if _804:
        if not mem[mem[mem[mem[128]]] + 44 len 20]:
            call msg.sender with:
               value _804 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(mem[mem[mem[mem[128]]] + 44 len 20])
            call mem[mem[mem[mem[128]]] + 44 len 20] with:
               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                 gas gas_remaining wei
                args msg.sender, _804
            require ext_call.success
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Asm Transfer reverted'
    return _804
}

function sub_1e31b5b5(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (352 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 352
        _2171 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require calldata.size - s >= 320
        _2182 = mem[64]
        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
        mem[64] = mem[64] + 160
        require s + 31 < calldata.size
        _2185 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        require s + 96 <= calldata.size
        u = 0
        v = s
        w = _2185
        while u < 3:
            mem[w] = address(cd[v])
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_2182] = _2185
        require s + 127 < calldata.size
        _3392 = mem[64]
        require mem[64] + 128 <= test266151307() and mem[64] + 128 >= mem[64]
        mem[64] = mem[64] + 128
        require s + 224 <= calldata.size
        u = 0
        v = s + 96
        w = _3392
        while u < 4:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_2182 + 32] = _3392
        mem[_2182 + 64] = uint8(cd[(s + 224)])
        mem[_2182 + 96] = cd[(s + 256)]
        mem[_2182 + 128] = cd[(s + 288)]
        mem[_2171] = _2182
        mem[_2171 + 32] = cd[(s + 320)]
        mem[t] = _2171
        idx = idx + 1
        s = s + 352
        t = t + 32
        continue 
    require 0 < mem[96]
    _2175 = mem[mem[mem[mem[128]]]]
    require 0 < mem[96]
    _2180 = mem[mem[mem[mem[128]]]]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_2180))
    call address(_2180).0x70a08231 with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2184 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2186 = mem[_2184]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = exchangeAddress
    require ext_code.size(address(_2175))
    call address(_2175).0xdd62ed3e with:
         gas gas_remaining wei
        args address(this.address), exchangeAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_2189] >= _2186:
        require 0 < mem[96]
        _2196 = mem[mem[mem[mem[128]]]]
        require 0 < mem[96]
        _2201 = mem[mem[mem[mem[128]]]]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_2201))
        call address(_2201).0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2206 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2208 = mem[_2206]
        mem[mem[64]] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_2196)
        mem[mem[64] + 36] = _2208
        require ext_code.size(exchangeAddress)
        call exchangeAddress.depositToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_2196), _2208
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3181 = mem[96]
        idx = 0
        while idx < _3181:
            require idx < mem[96]
            _3264 = mem[mem[mem[mem[(32 * idx) + 128]]]]
            require idx < mem[96]
            _3327 = mem[mem[mem[mem[(32 * idx) + 128]] + 32]]
            require idx < mem[96]
            _3369 = mem[mem[mem[mem[(32 * idx) + 128]]] + 32]
            require idx < mem[96]
            _3405 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 32]
            require idx < mem[96]
            _3440 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 64]
            require idx < mem[96]
            _3475 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 96]
            require idx < mem[96]
            _3510 = mem[mem[mem[mem[(32 * idx) + 128]]] + 64]
            require idx < mem[96]
            _3545 = mem[mem[mem[(32 * idx) + 128]] + 64]
            require idx < mem[96]
            _3573 = mem[mem[mem[(32 * idx) + 128]] + 96]
            require idx < mem[96]
            _3608 = mem[mem[mem[(32 * idx) + 128]] + 128]
            require idx < mem[96]
            _3629 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64]] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_3264)
            mem[mem[64] + 36] = _3327
            mem[mem[64] + 68] = address(_3369)
            mem[mem[64] + 100] = _3405
            mem[mem[64] + 132] = _3440
            mem[mem[64] + 164] = _3475
            mem[mem[64] + 196] = address(_3510)
            mem[mem[64] + 228] = uint8(_3545)
            mem[mem[64] + 260] = _3573
            mem[mem[64] + 292] = _3608
            mem[mem[64] + 324] = _3629
            require ext_code.size(exchangeAddress)
            call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining wei
                args address(_3264), _3327, address(_3369), _3405, _3440, _3475, address(_3510), _3545 << 248, _3573, _3608, _3629
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require 0 < mem[96]
        _3262 = mem[mem[mem[mem[128]]]]
        require 0 < mem[96]
        _3326 = mem[mem[mem[mem[128]]]]
        mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 12 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3605 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3605]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3693 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3693]:
                mem[mem[64]] = mem[_3693]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3693]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3693]:
                call msg.sender with:
                   value mem[_3693] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3693
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.withdrawToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_3326), mem[_3605]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not mem[_3605]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3798 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3798]:
                mem[mem[64]] = mem[_3798]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3798]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3798]:
                call msg.sender with:
                   value mem[_3798] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3798
               len 32
        if not address(_3262):
            call msg.sender with:
               value mem[_3605] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3832 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3832]:
                mem[mem[64]] = mem[_3832]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3832]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3832]:
                call msg.sender with:
                   value mem[_3832] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3832
               len 32
        require ext_code.size(address(_3262))
        call address(_3262) with:
           funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
             gas gas_remaining wei
            args msg.sender, mem[_3605]
        require ext_call.success
        if not return_data.size:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3917 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3917]:
                mem[mem[64]] = mem[_3917]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3917]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3917]:
                call msg.sender with:
                   value mem[_3917] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3917
               len 32
        require return_data.size == 32
        mem[0] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            revert with 0, 'Asm Transfer reverted'
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args 0, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3936 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3936]:
            mem[mem[64]] = mem[_3936]
            return memory
              from mem[64]
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[_3936]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_3936]:
            call msg.sender with:
               value mem[_3936] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _3936
           len 32
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = exchangeAddress
    require ext_code.size(address(_2175))
    call address(_2175).0xdd62ed3e with:
         gas gas_remaining wei
        args address(this.address), exchangeAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2205 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require ext_code.size(address(_2175))
    if not mem[_2205]:
        mem[mem[64]] = Mask(32, 224, sha3('approve(address,uint256)'))
        mem[mem[64] + 4] = exchangeAddress
        mem[mem[64] + 36] = _2186
        call address(_2175) with:
           funct Mask(32, 224, sha3('approve(address,uint256)')) >> 224
             gas gas_remaining wei
            args exchangeAddress, _2186
        require ext_call.success
        if not return_data.size:
            require 0 < mem[96]
            _2239 = mem[mem[mem[mem[128]]]]
            require 0 < mem[96]
            _2266 = mem[mem[mem[mem[128]]]]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_2266))
            call address(_2266).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2305 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2330 = mem[_2305]
            mem[mem[64]] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_2239)
            mem[mem[64] + 36] = _2330
            require ext_code.size(exchangeAddress)
            call exchangeAddress.depositToken(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_2239), _2330
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3175 = mem[96]
            idx = 0
            while idx < _3175:
                require idx < mem[96]
                _3240 = mem[mem[mem[mem[(32 * idx) + 128]]]]
                require idx < mem[96]
                _3309 = mem[mem[mem[mem[(32 * idx) + 128]] + 32]]
                require idx < mem[96]
                _3357 = mem[mem[mem[mem[(32 * idx) + 128]]] + 32]
                require idx < mem[96]
                _3393 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 32]
                require idx < mem[96]
                _3428 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 64]
                require idx < mem[96]
                _3463 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 96]
                require idx < mem[96]
                _3498 = mem[mem[mem[mem[(32 * idx) + 128]]] + 64]
                require idx < mem[96]
                _3515 = mem[mem[mem[(32 * idx) + 128]] + 64]
                require idx < mem[96]
                _3549 = mem[mem[mem[(32 * idx) + 128]] + 96]
                require idx < mem[96]
                _3578 = mem[mem[mem[(32 * idx) + 128]] + 128]
                require idx < mem[96]
                _3611 = mem[mem[(32 * idx) + 128] + 32]
                mem[mem[64]] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_3240)
                mem[mem[64] + 36] = _3309
                mem[mem[64] + 68] = address(_3357)
                mem[mem[64] + 100] = _3393
                mem[mem[64] + 132] = _3428
                mem[mem[64] + 164] = _3463
                mem[mem[64] + 196] = address(_3498)
                mem[mem[64] + 228] = uint8(_3515)
                mem[mem[64] + 260] = _3549
                mem[mem[64] + 292] = _3578
                mem[mem[64] + 324] = _3611
                require ext_code.size(exchangeAddress)
                call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas gas_remaining wei
                    args address(_3240), _3309, address(_3357), _3393, _3428, _3463, address(_3498), _3515 << 248, _3549, _3578, _3611
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[96]
            _3238 = mem[mem[mem[mem[128]]]]
            require 0 < mem[96]
            _3308 = mem[mem[mem[mem[128]]]]
            mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 12 len 20]
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3575 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3575]:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.balanceOf(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3687 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3687]:
                    mem[mem[64]] = mem[_3687]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3687]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3687]:
                    call msg.sender with:
                       value mem[_3687] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3687
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.withdrawToken(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_3308), mem[_3575]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_3575]:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.balanceOf(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3780 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3780]:
                    mem[mem[64]] = mem[_3780]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3780]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3780]:
                    call msg.sender with:
                       value mem[_3780] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3780
                   len 32
            if not address(_3238):
                call msg.sender with:
                   value mem[_3575] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.balanceOf(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3820 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3820]:
                    mem[mem[64]] = mem[_3820]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3820]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3820]:
                    call msg.sender with:
                       value mem[_3820] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3820
                   len 32
            require ext_code.size(address(_3238))
            call address(_3238) with:
               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                 gas gas_remaining wei
                args msg.sender, mem[_3575]
            require ext_call.success
            if not return_data.size:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.balanceOf(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3905 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3905]:
                    mem[mem[64]] = mem[_3905]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3905]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3905]:
                    call msg.sender with:
                       value mem[_3905] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3905
                   len 32
            require return_data.size == 32
            mem[0] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                revert with 0, 'Asm Transfer reverted'
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3918 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3918]:
                mem[mem[64]] = mem[_3918]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3918]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3918]:
                call msg.sender with:
                   value mem[_3918] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3918
               len 32
        require return_data.size == 32
        mem[0] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            revert with 0, 'Asm approve failed'
        require 0 < mem[96]
        _2251 = mem[mem[mem[mem[128]]]]
        require 0 < mem[96]
        _2279 = mem[mem[mem[mem[128]]]]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_2279))
        call address(_2279).0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2310 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2347 = mem[_2310]
        mem[mem[64]] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_2251)
        mem[mem[64] + 36] = _2347
        require ext_code.size(exchangeAddress)
        call exchangeAddress.depositToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_2251), _2347
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3176 = mem[96]
        idx = 0
        while idx < _3176:
            require idx < mem[96]
            _3244 = mem[mem[mem[mem[(32 * idx) + 128]]]]
            require idx < mem[96]
            _3312 = mem[mem[mem[mem[(32 * idx) + 128]] + 32]]
            require idx < mem[96]
            _3359 = mem[mem[mem[mem[(32 * idx) + 128]]] + 32]
            require idx < mem[96]
            _3395 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 32]
            require idx < mem[96]
            _3430 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 64]
            require idx < mem[96]
            _3465 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 96]
            require idx < mem[96]
            _3500 = mem[mem[mem[mem[(32 * idx) + 128]]] + 64]
            require idx < mem[96]
            _3520 = mem[mem[mem[(32 * idx) + 128]] + 64]
            require idx < mem[96]
            _3553 = mem[mem[mem[(32 * idx) + 128]] + 96]
            require idx < mem[96]
            _3583 = mem[mem[mem[(32 * idx) + 128]] + 128]
            require idx < mem[96]
            _3614 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64]] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_3244)
            mem[mem[64] + 36] = _3312
            mem[mem[64] + 68] = address(_3359)
            mem[mem[64] + 100] = _3395
            mem[mem[64] + 132] = _3430
            mem[mem[64] + 164] = _3465
            mem[mem[64] + 196] = address(_3500)
            mem[mem[64] + 228] = uint8(_3520)
            mem[mem[64] + 260] = _3553
            mem[mem[64] + 292] = _3583
            mem[mem[64] + 324] = _3614
            require ext_code.size(exchangeAddress)
            call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining wei
                args address(_3244), _3312, address(_3359), _3395, _3430, _3465, address(_3500), _3520 << 248, _3553, _3583, _3614
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require 0 < mem[96]
        _3242 = mem[mem[mem[mem[128]]]]
        require 0 < mem[96]
        _3311 = mem[mem[mem[mem[128]]]]
        mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 12 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3580 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3580]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3688 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3688]:
                mem[mem[64]] = mem[_3688]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3688]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3688]:
                call msg.sender with:
                   value mem[_3688] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3688
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.withdrawToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_3311), mem[_3580]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not mem[_3580]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3783 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3783]:
                mem[mem[64]] = mem[_3783]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3783]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3783]:
                call msg.sender with:
                   value mem[_3783] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3783
               len 32
        if not address(_3242):
            call msg.sender with:
               value mem[_3580] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3822 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3822]:
                mem[mem[64]] = mem[_3822]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3822]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3822]:
                call msg.sender with:
                   value mem[_3822] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3822
               len 32
        require ext_code.size(address(_3242))
        call address(_3242) with:
           funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
             gas gas_remaining wei
            args msg.sender, mem[_3580]
        require ext_call.success
        if not return_data.size:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3907 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3907]:
                mem[mem[64]] = mem[_3907]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3907]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3907]:
                call msg.sender with:
                   value mem[_3907] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3907
               len 32
        require return_data.size == 32
        mem[0] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            revert with 0, 'Asm Transfer reverted'
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args 0, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3921 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3921]:
            mem[mem[64]] = mem[_3921]
            return memory
              from mem[64]
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[_3921]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_3921]:
            call msg.sender with:
               value mem[_3921] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _3921
           len 32
    call address(_2175) with:
       funct Mask(32, 224, sha3('approve(address,uint256)')) >> 224
         gas gas_remaining wei
        args exchangeAddress, 0
    require ext_call.success
    if not return_data.size:
        require ext_code.size(address(_2175))
        mem[mem[64]] = Mask(32, 224, sha3('approve(address,uint256)'))
        mem[mem[64] + 4] = exchangeAddress
        mem[mem[64] + 36] = _2186
        call address(_2175) with:
           funct Mask(32, 224, sha3('approve(address,uint256)')) >> 224
             gas gas_remaining wei
            args exchangeAddress, _2186
        require ext_call.success
        if not return_data.size:
            require 0 < mem[96]
            _2319 = mem[mem[mem[mem[128]]]]
            require 0 < mem[96]
            _2348 = mem[mem[mem[mem[128]]]]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_2348))
            call address(_2348).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2386 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2392 = mem[_2386]
            mem[mem[64]] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_2319)
            mem[mem[64] + 36] = _2392
            require ext_code.size(exchangeAddress)
            call exchangeAddress.depositToken(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_2319), _2392
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3177 = mem[96]
            idx = 0
            while idx < _3177:
                require idx < mem[96]
                _3248 = mem[mem[mem[mem[(32 * idx) + 128]]]]
                require idx < mem[96]
                _3315 = mem[mem[mem[mem[(32 * idx) + 128]] + 32]]
                require idx < mem[96]
                _3361 = mem[mem[mem[mem[(32 * idx) + 128]]] + 32]
                require idx < mem[96]
                _3397 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 32]
                require idx < mem[96]
                _3432 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 64]
                require idx < mem[96]
                _3467 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 96]
                require idx < mem[96]
                _3502 = mem[mem[mem[mem[(32 * idx) + 128]]] + 64]
                require idx < mem[96]
                _3525 = mem[mem[mem[(32 * idx) + 128]] + 64]
                require idx < mem[96]
                _3557 = mem[mem[mem[(32 * idx) + 128]] + 96]
                require idx < mem[96]
                _3588 = mem[mem[mem[(32 * idx) + 128]] + 128]
                require idx < mem[96]
                _3617 = mem[mem[(32 * idx) + 128] + 32]
                mem[mem[64]] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_3248)
                mem[mem[64] + 36] = _3315
                mem[mem[64] + 68] = address(_3361)
                mem[mem[64] + 100] = _3397
                mem[mem[64] + 132] = _3432
                mem[mem[64] + 164] = _3467
                mem[mem[64] + 196] = address(_3502)
                mem[mem[64] + 228] = uint8(_3525)
                mem[mem[64] + 260] = _3557
                mem[mem[64] + 292] = _3588
                mem[mem[64] + 324] = _3617
                require ext_code.size(exchangeAddress)
                call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas gas_remaining wei
                    args address(_3248), _3315, address(_3361), _3397, _3432, _3467, address(_3502), _3525 << 248, _3557, _3588, _3617
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            require 0 < mem[96]
            _3246 = mem[mem[mem[mem[128]]]]
            require 0 < mem[96]
            _3314 = mem[mem[mem[mem[128]]]]
            mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 12 len 20]
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3585 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3585]:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.balanceOf(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3689 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3689]:
                    mem[mem[64]] = mem[_3689]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3689]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3689]:
                    call msg.sender with:
                       value mem[_3689] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3689
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.withdrawToken(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_3314), mem[_3585]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_3585]:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.balanceOf(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3786 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3786]:
                    mem[mem[64]] = mem[_3786]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3786]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3786]:
                    call msg.sender with:
                       value mem[_3786] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3786
                   len 32
            if not address(_3246):
                call msg.sender with:
                   value mem[_3585] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.balanceOf(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3824 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3824]:
                    mem[mem[64]] = mem[_3824]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3824]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3824]:
                    call msg.sender with:
                       value mem[_3824] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3824
                   len 32
            require ext_code.size(address(_3246))
            call address(_3246) with:
               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                 gas gas_remaining wei
                args msg.sender, mem[_3585]
            require ext_call.success
            if not return_data.size:
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = this.address
                require ext_code.size(exchangeAddress)
                call exchangeAddress.balanceOf(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args 0, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3909 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3909]:
                    mem[mem[64]] = mem[_3909]
                    return memory
                      from mem[64]
                       len 32
                require ext_code.size(exchangeAddress)
                call exchangeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_3909]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_3909]:
                    call msg.sender with:
                       value mem[_3909] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return memory
                  from _3909
                   len 32
            require return_data.size == 32
            mem[0] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                revert with 0, 'Asm Transfer reverted'
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3924 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3924]:
                mem[mem[64]] = mem[_3924]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3924]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3924]:
                call msg.sender with:
                   value mem[_3924] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3924
               len 32
        require return_data.size == 32
        mem[0] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            revert with 0, 'Asm approve failed'
        require 0 < mem[96]
        _2334 = mem[mem[mem[mem[128]]]]
        require 0 < mem[96]
        _2363 = mem[mem[mem[mem[128]]]]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_2363))
        call address(_2363).0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2388 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2393 = mem[_2388]
        mem[mem[64]] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_2334)
        mem[mem[64] + 36] = _2393
        require ext_code.size(exchangeAddress)
        call exchangeAddress.depositToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_2334), _2393
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3178 = mem[96]
        idx = 0
        while idx < _3178:
            require idx < mem[96]
            _3252 = mem[mem[mem[mem[(32 * idx) + 128]]]]
            require idx < mem[96]
            _3318 = mem[mem[mem[mem[(32 * idx) + 128]] + 32]]
            require idx < mem[96]
            _3363 = mem[mem[mem[mem[(32 * idx) + 128]]] + 32]
            require idx < mem[96]
            _3399 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 32]
            require idx < mem[96]
            _3434 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 64]
            require idx < mem[96]
            _3469 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 96]
            require idx < mem[96]
            _3504 = mem[mem[mem[mem[(32 * idx) + 128]]] + 64]
            require idx < mem[96]
            _3530 = mem[mem[mem[(32 * idx) + 128]] + 64]
            require idx < mem[96]
            _3561 = mem[mem[mem[(32 * idx) + 128]] + 96]
            require idx < mem[96]
            _3593 = mem[mem[mem[(32 * idx) + 128]] + 128]
            require idx < mem[96]
            _3620 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64]] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_3252)
            mem[mem[64] + 36] = _3318
            mem[mem[64] + 68] = address(_3363)
            mem[mem[64] + 100] = _3399
            mem[mem[64] + 132] = _3434
            mem[mem[64] + 164] = _3469
            mem[mem[64] + 196] = address(_3504)
            mem[mem[64] + 228] = uint8(_3530)
            mem[mem[64] + 260] = _3561
            mem[mem[64] + 292] = _3593
            mem[mem[64] + 324] = _3620
            require ext_code.size(exchangeAddress)
            call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining wei
                args address(_3252), _3318, address(_3363), _3399, _3434, _3469, address(_3504), _3530 << 248, _3561, _3593, _3620
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require 0 < mem[96]
        _3250 = mem[mem[mem[mem[128]]]]
        require 0 < mem[96]
        _3317 = mem[mem[mem[mem[128]]]]
        mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 12 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3590 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3590]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3690 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3690]:
                mem[mem[64]] = mem[_3690]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3690]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3690]:
                call msg.sender with:
                   value mem[_3690] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3690
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.withdrawToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_3317), mem[_3590]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not mem[_3590]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3789 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3789]:
                mem[mem[64]] = mem[_3789]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3789]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3789]:
                call msg.sender with:
                   value mem[_3789] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3789
               len 32
        if not address(_3250):
            call msg.sender with:
               value mem[_3590] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3826 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3826]:
                mem[mem[64]] = mem[_3826]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3826]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3826]:
                call msg.sender with:
                   value mem[_3826] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3826
               len 32
        require ext_code.size(address(_3250))
        call address(_3250) with:
           funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
             gas gas_remaining wei
            args msg.sender, mem[_3590]
        require ext_call.success
        if not return_data.size:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3911 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3911]:
                mem[mem[64]] = mem[_3911]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3911]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3911]:
                call msg.sender with:
                   value mem[_3911] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3911
               len 32
        require return_data.size == 32
        mem[0] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            revert with 0, 'Asm Transfer reverted'
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args 0, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3927 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3927]:
            mem[mem[64]] = mem[_3927]
            return memory
              from mem[64]
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[_3927]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_3927]:
            call msg.sender with:
               value mem[_3927] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _3927
           len 32
    require return_data.size == 32
    mem[0] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'Asm approve failed, non-zero allowance'
    require ext_code.size(address(_2175))
    mem[mem[64]] = Mask(32, 224, sha3('approve(address,uint256)'))
    mem[mem[64] + 4] = exchangeAddress
    mem[mem[64] + 36] = _2186
    call address(_2175) with:
       funct Mask(32, 224, sha3('approve(address,uint256)')) >> 224
         gas gas_remaining wei
        args exchangeAddress, _2186
    require ext_call.success
    if not return_data.size:
        require 0 < mem[96]
        _2337 = mem[mem[mem[mem[128]]]]
        require 0 < mem[96]
        _2365 = mem[mem[mem[mem[128]]]]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_2365))
        call address(_2365).0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2389 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2394 = mem[_2389]
        mem[mem[64]] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_2337)
        mem[mem[64] + 36] = _2394
        require ext_code.size(exchangeAddress)
        call exchangeAddress.depositToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_2337), _2394
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3179 = mem[96]
        idx = 0
        while idx < _3179:
            require idx < mem[96]
            _3256 = mem[mem[mem[mem[(32 * idx) + 128]]]]
            require idx < mem[96]
            _3321 = mem[mem[mem[mem[(32 * idx) + 128]] + 32]]
            require idx < mem[96]
            _3365 = mem[mem[mem[mem[(32 * idx) + 128]]] + 32]
            require idx < mem[96]
            _3401 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 32]
            require idx < mem[96]
            _3436 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 64]
            require idx < mem[96]
            _3471 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 96]
            require idx < mem[96]
            _3506 = mem[mem[mem[mem[(32 * idx) + 128]]] + 64]
            require idx < mem[96]
            _3535 = mem[mem[mem[(32 * idx) + 128]] + 64]
            require idx < mem[96]
            _3565 = mem[mem[mem[(32 * idx) + 128]] + 96]
            require idx < mem[96]
            _3598 = mem[mem[mem[(32 * idx) + 128]] + 128]
            require idx < mem[96]
            _3623 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64]] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_3256)
            mem[mem[64] + 36] = _3321
            mem[mem[64] + 68] = address(_3365)
            mem[mem[64] + 100] = _3401
            mem[mem[64] + 132] = _3436
            mem[mem[64] + 164] = _3471
            mem[mem[64] + 196] = address(_3506)
            mem[mem[64] + 228] = uint8(_3535)
            mem[mem[64] + 260] = _3565
            mem[mem[64] + 292] = _3598
            mem[mem[64] + 324] = _3623
            require ext_code.size(exchangeAddress)
            call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining wei
                args address(_3256), _3321, address(_3365), _3401, _3436, _3471, address(_3506), _3535 << 248, _3565, _3598, _3623
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require 0 < mem[96]
        _3254 = mem[mem[mem[mem[128]]]]
        require 0 < mem[96]
        _3320 = mem[mem[mem[mem[128]]]]
        mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 12 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3595 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3595]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3691 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3691]:
                mem[mem[64]] = mem[_3691]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3691]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3691]:
                call msg.sender with:
                   value mem[_3691] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3691
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.withdrawToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_3320), mem[_3595]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not mem[_3595]:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3792 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3792]:
                mem[mem[64]] = mem[_3792]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3792]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3792]:
                call msg.sender with:
                   value mem[_3792] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3792
               len 32
        if not address(_3254):
            call msg.sender with:
               value mem[_3595] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3828 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3828]:
                mem[mem[64]] = mem[_3828]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3828]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3828]:
                call msg.sender with:
                   value mem[_3828] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3828
               len 32
        require ext_code.size(address(_3254))
        call address(_3254) with:
           funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
             gas gas_remaining wei
            args msg.sender, mem[_3595]
        require ext_call.success
        if not return_data.size:
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = this.address
            require ext_code.size(exchangeAddress)
            call exchangeAddress.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args 0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3913 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_3913]:
                mem[mem[64]] = mem[_3913]
                return memory
                  from mem[64]
                   len 32
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args mem[_3913]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_3913]:
                call msg.sender with:
                   value mem[_3913] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return memory
              from _3913
               len 32
        require return_data.size == 32
        mem[0] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            revert with 0, 'Asm Transfer reverted'
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args 0, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3930 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3930]:
            mem[mem[64]] = mem[_3930]
            return memory
              from mem[64]
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[_3930]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_3930]:
            call msg.sender with:
               value mem[_3930] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _3930
           len 32
    require return_data.size == 32
    mem[0] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'Asm approve failed'
    require 0 < mem[96]
    _2356 = mem[mem[mem[mem[128]]]]
    require 0 < mem[96]
    _2375 = mem[mem[mem[mem[128]]]]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_2375))
    call address(_2375).0x70a08231 with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2391 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2396 = mem[_2391]
    mem[mem[64]] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(_2356)
    mem[mem[64] + 36] = _2396
    require ext_code.size(exchangeAddress)
    call exchangeAddress.depositToken(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(_2356), _2396
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3180 = mem[96]
    idx = 0
    while idx < _3180:
        require idx < mem[96]
        _3260 = mem[mem[mem[mem[(32 * idx) + 128]]]]
        require idx < mem[96]
        _3324 = mem[mem[mem[mem[(32 * idx) + 128]] + 32]]
        require idx < mem[96]
        _3367 = mem[mem[mem[mem[(32 * idx) + 128]]] + 32]
        require idx < mem[96]
        _3403 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 32]
        require idx < mem[96]
        _3438 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 64]
        require idx < mem[96]
        _3473 = mem[mem[mem[mem[(32 * idx) + 128]] + 32] + 96]
        require idx < mem[96]
        _3508 = mem[mem[mem[mem[(32 * idx) + 128]]] + 64]
        require idx < mem[96]
        _3540 = mem[mem[mem[(32 * idx) + 128]] + 64]
        require idx < mem[96]
        _3569 = mem[mem[mem[(32 * idx) + 128]] + 96]
        require idx < mem[96]
        _3603 = mem[mem[mem[(32 * idx) + 128]] + 128]
        require idx < mem[96]
        _3626 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64]] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_3260)
        mem[mem[64] + 36] = _3324
        mem[mem[64] + 68] = address(_3367)
        mem[mem[64] + 100] = _3403
        mem[mem[64] + 132] = _3438
        mem[mem[64] + 164] = _3473
        mem[mem[64] + 196] = address(_3508)
        mem[mem[64] + 228] = uint8(_3540)
        mem[mem[64] + 260] = _3569
        mem[mem[64] + 292] = _3603
        mem[mem[64] + 324] = _3626
        require ext_code.size(exchangeAddress)
        call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
             gas gas_remaining wei
            args address(_3260), _3324, address(_3367), _3403, _3438, _3473, address(_3508), _3540 << 248, _3569, _3603, _3626
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require 0 < mem[96]
    _3258 = mem[mem[mem[mem[128]]]]
    require 0 < mem[96]
    _3323 = mem[mem[mem[mem[128]]]]
    mem[mem[64] + 4] = mem[mem[mem[mem[128]]] + 12 len 20]
    mem[mem[64] + 36] = this.address
    require ext_code.size(exchangeAddress)
    call exchangeAddress.balanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3600 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if not mem[_3600]:
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args 0, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3692 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3692]:
            mem[mem[64]] = mem[_3692]
            return memory
              from mem[64]
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[_3692]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_3692]:
            call msg.sender with:
               value mem[_3692] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _3692
           len 32
    require ext_code.size(exchangeAddress)
    call exchangeAddress.withdrawToken(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(_3323), mem[_3600]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not mem[_3600]:
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args 0, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3795 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3795]:
            mem[mem[64]] = mem[_3795]
            return memory
              from mem[64]
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[_3795]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_3795]:
            call msg.sender with:
               value mem[_3795] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _3795
           len 32
    if not address(_3258):
        call msg.sender with:
           value mem[_3600] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args 0, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3830 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3830]:
            mem[mem[64]] = mem[_3830]
            return memory
              from mem[64]
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[_3830]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_3830]:
            call msg.sender with:
               value mem[_3830] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _3830
           len 32
    require ext_code.size(address(_3258))
    call address(_3258) with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining wei
        args msg.sender, mem[_3600]
    require ext_call.success
    if not return_data.size:
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        require ext_code.size(exchangeAddress)
        call exchangeAddress.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args 0, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3915 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_3915]:
            mem[mem[64]] = mem[_3915]
            return memory
              from mem[64]
               len 32
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[_3915]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_3915]:
            call msg.sender with:
               value mem[_3915] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return memory
          from _3915
           len 32
    require return_data.size == 32
    mem[0] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'Asm Transfer reverted'
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = this.address
    require ext_code.size(exchangeAddress)
    call exchangeAddress.balanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args 0, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3933 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if not mem[_3933]:
        mem[mem[64]] = mem[_3933]
        return memory
          from mem[64]
           len 32
    require ext_code.size(exchangeAddress)
    call exchangeAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args mem[_3933]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[_3933]:
        call msg.sender with:
           value mem[_3933] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return memory
      from _3933
       len 32
}



}
