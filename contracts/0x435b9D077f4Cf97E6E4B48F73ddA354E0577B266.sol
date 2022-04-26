contract main {


// =======================  Init code  ======================


const _fallback = code.data[33 len 5944]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_40316569(?) {
    require 0x5bcf61d3c8fe4928e6c9ed5a9bd2263d6de7 == msg.sender
    call ???????????????????????????????????????? with:
       funct Mask(32, 224, sha3('deposit()')) >> 224
       value arg1 wei
         gas gas_remaining - 34710 wei
}

function sub_b71fddb1(?) {
    require 0x5bcf61d3c8fe4928e6c9ed5a9bd2263d6de7 == msg.sender
    call ???????????????????????????????????????? with:
       funct Mask(32, 224, sha3('withdraw(uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args arg1
}

function sub_513bd11b(?) {
    require 0x5bcf61d3c8fe4928e6c9ed5a9bd2263d6de7 == msg.sender
    require eth.balance(this.address) >= arg1
    call 0x00005bcf61d3c8fe4928e6c9ed5a9bd2263d6de7 with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function sub_1dddd1f8(?) {
    require 0x5bcf61d3c8fe4928e6c9ed5a9bd2263d6de7 == msg.sender
    require arg1
    call ???????????????????????????????????????? with:
       funct Mask(32, 224, sha3('withdrawToken(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg1), arg2
}

function sub_158ab5ba(?) {
    require 0x5bcf61d3c8fe4928e6c9ed5a9bd2263d6de7 == msg.sender
    require arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0x5bcf61d3c8fe4928e6c9ed5a9bd2263d6de7, arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_227913bf(?) {
    require 0x5bcf61d3c8fe4928e6c9ed5a9bd2263d6de7 == msg.sender
    require arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0x8d12a197cb00d4747a1fe03395095ce2a5cc68, arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_5693bedf(?) {
    require 0x5bcf61d3c8fe4928e6c9ed5a9bd2263d6de7 == msg.sender
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc68)
    call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg1, address(address(arg2 xor arg11 xor this.address) xor arg11 xor this.address), arg3, arg4, arg5, address(arg6 xor arg11 xor this.address), arg7 << 248, arg8, arg9, arg10
    require ext_call.success
}

function sub_b3100157(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require 0x5bcf61d3c8fe4928e6c9ed5a9bd2263d6de7 == msg.sender
    require 10 < arg3.length
    require 10 < arg3.length
    mem[448] = mem[448] xor this.address
    require 10 < arg3.length
    require 0 < arg4.length
    require 0 < arg4.length
    mem[(32 * arg3.length) + 160] = address(mem[(32 * arg3.length) + 172 len 20] xor mem[448])
    require 10 < arg3.length
    require 1 < arg4.length
    require 1 < arg4.length
    mem[(32 * arg3.length) + 192] = address(mem[(32 * arg3.length) + 204 len 20] xor mem[448])
    require 10 < arg3.length
    require 2 < arg4.length
    require 2 < arg4.length
    mem[(32 * arg3.length) + 224] = address(mem[(32 * arg3.length) + 236 len 20] xor mem[448])
    require 10 < arg3.length
    require 3 < arg4.length
    require 3 < arg4.length
    mem[(32 * arg3.length) + 256] = address(mem[(32 * arg3.length) + 268 len 20] xor mem[448])
    require 10 < arg3.length
    require 4 < arg4.length
    require 4 < arg4.length
    mem[(32 * arg3.length) + 288] = address(mem[(32 * arg3.length) + 300 len 20] xor mem[448])
    require 10 < arg3.length
    require 5 < arg4.length
    require 5 < arg4.length
    mem[(32 * arg3.length) + 320] = address(mem[(32 * arg3.length) + 332 len 20] xor mem[448])
    require 8 < arg3.length
    _38 = mem[384]
    require 0 < arg4.length
    require 0 < arg3.length
    require 2 < arg4.length
    _46 = mem[(32 * arg3.length) + 224]
    require 2 < arg3.length
    _48 = mem[192]
    require 4 < arg3.length
    _50 = mem[256]
    require 6 < arg3.length
    _52 = mem[320]
    require 4 < arg4.length
    _54 = mem[(32 * arg3.length) + 288]
    require 0 < arg5.length
    _56 = mem[(32 * arg3.length) + (32 * arg4.length) + 192]
    require 2 < arg5.length
    _58 = mem[(32 * arg3.length) + (32 * arg4.length) + 256]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 196] = mem[(32 * arg3.length) + 172 len 20]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = mem[128]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = address(_46)
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = _48
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324] = _50
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 356] = _52
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 388] = address(_54)
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 420] = arg1
    require ext_code.size(0xe0000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
    call ????????????????????????????????????????.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args mem[(32 * arg3.length) + 172 len 20], mem[128], address(_46), _48, _50, _52, address(_54), arg1 << 248, _56, _58
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] < _38:
        emit 0x147370fe: 1, 0
    else:
        require 9 < arg3.length
        _69 = mem[416]
        require 1 < arg4.length
        require 1 < arg3.length
        require 3 < arg4.length
        _77 = mem[(32 * arg3.length) + 256]
        require 3 < arg3.length
        require 5 < arg3.length
        _81 = mem[288]
        require 7 < arg3.length
        _83 = mem[352]
        require 5 < arg4.length
        _85 = mem[(32 * arg3.length) + 320]
        require 1 < arg5.length
        require 3 < arg5.length
        _89 = mem[(32 * arg3.length) + (32 * arg4.length) + 288]
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = mem[(32 * arg3.length) + 268 len 20]
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = mem[224]
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324] = _81
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 356] = _83
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 388] = address(_85)
        require ext_code.size(0xe0000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
        call ????????????????????????????????????????.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
             gas gas_remaining - 710 wei
            args address(mem[(32 * arg3.length) + 192]), mem[160], address(_77), mem[224], _81, _83, address(_85), arg2 << 248, mem[(32 * arg3.length) + (32 * arg4.length) + 224], _89
        require ext_call.success
        if ext_call.return_data[0] < _69:
            emit 0x147370fe: 2, 0
        else:
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 196] = 0
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = this.address
            require ext_code.size(0xe0000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
            call ????????????????????????????????????????.balanceOf(address rg1, address rg2) with:
                 gas gas_remaining - 710 wei
                args 0, this.address
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = ext_call.return_data[0]
            require ext_call.success
            require 0 < arg4.length
            require 0 < arg3.length
            require 2 < arg4.length
            _113 = mem[(32 * arg3.length) + 224]
            require 2 < arg3.length
            _115 = mem[192]
            require 4 < arg3.length
            _117 = mem[256]
            require 6 < arg3.length
            _119 = mem[320]
            require 4 < arg4.length
            _121 = mem[(32 * arg3.length) + 288]
            require 0 < arg5.length
            _123 = mem[(32 * arg3.length) + (32 * arg4.length) + 192]
            require 2 < arg5.length
            _125 = mem[(32 * arg3.length) + (32 * arg4.length) + 256]
            require 8 < arg3.length
            _127 = mem[384]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 196] = mem[(32 * arg3.length) + 172 len 20]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = address(_113)
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = _115
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324] = _117
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 356] = _119
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 420] = arg1
            require ext_code.size(0xe0000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
            call ????????????????????????????????????????.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg3.length) + 172 len 20], mem[128], address(_113), _115, _117, _119, address(_121), arg1 << 248, _123, _125, _127
            require ext_call.success
            require 1 < arg4.length
            _133 = mem[(32 * arg3.length) + 192]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 196] = mem[(32 * arg3.length) + 204 len 20]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = this.address
            require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc68)
            call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.balanceOf(address rg1, address rg2) with:
                 gas gas_remaining - 710 wei
                args address(_133), this.address
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = ext_call.return_data[0]
            require ext_call.success
            require 9 < arg3.length
            require 9 < arg3.length
            require 9 < arg3.length
            require 9 < arg3.length
            mem[416] = ext_call.return_data[0] - (3 * 10^15 * ext_call.return_data[0] / 10^18)
            require 1 < arg3.length
            require 9 < arg3.length
            if ext_call.return_data[0] - (3 * 10^15 * ext_call.return_data[0] / 10^18) <= mem[160]:
                require 1 < arg4.length
                _153 = mem[(32 * arg3.length) + 192]
                require 1 < arg3.length
                require 3 < arg4.length
                _159 = mem[(32 * arg3.length) + 256]
                require 3 < arg3.length
                _164 = mem[224]
                require 5 < arg3.length
                _168 = mem[288]
                require 7 < arg3.length
                _172 = mem[352]
                require 5 < arg4.length
                _176 = mem[(32 * arg3.length) + 320]
                require 1 < arg5.length
                _180 = mem[(32 * arg3.length) + (32 * arg4.length) + 224]
                require 3 < arg5.length
                _184 = mem[(32 * arg3.length) + (32 * arg4.length) + 288]
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 196] = mem[(32 * arg3.length) + 204 len 20]
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = mem[160]
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = address(_159)
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = _164
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324] = _168
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 356] = _172
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 420] = arg2
                require ext_code.size(0xe0000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
                call ????????????????????????????????????????.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
                     gas gas_remaining - 710 wei
                    args address(_153), mem[160], address(_159), _164, _168, _172, address(_176), arg2 << 248, _180, _184
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = ext_call.return_data[0]
                require ext_call.success
                require 0 < arg3.length
                require 0 < arg3.length
                require 9 < arg3.length
                if ext_call.return_data[0] - (3 * 10^15 * ext_call.return_data[0] / 10^18) <= ext_call.return_data[0]:
                    require 1 < arg4.length
                    require 1 < arg3.length
                    require 3 < arg4.length
                    require 3 < arg3.length
                    require 5 < arg3.length
                    require 7 < arg3.length
                    require 5 < arg4.length
                    require 1 < arg5.length
                    require 3 < arg5.length
                    require 9 < arg3.length
                    require ext_code.size(0xe0000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
                    call ????????????????????????????????????????.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas gas_remaining - 710 wei
                        args address(mem[(32 * arg3.length) + 192]), mem[160], address(mem[(32 * arg3.length) + 256]), mem[224], mem[288], mem[352], address(mem[(32 * arg3.length) + 320]), arg2 << 248, mem[(32 * arg3.length) + (32 * arg4.length) + 224], mem[(32 * arg3.length) + (32 * arg4.length) + 288], ext_call.return_data[0] - (3 * 10^15 * ext_call.return_data[0] / 10^18)
                else:
                    require 0 < arg3.length
                    require 9 < arg3.length
                    mem[416] = ext_call.return_data[0]
                    require 1 < arg4.length
                    require 1 < arg3.length
                    require 3 < arg4.length
                    require 3 < arg3.length
                    require 5 < arg3.length
                    require 7 < arg3.length
                    require 5 < arg4.length
                    require 1 < arg5.length
                    require 3 < arg5.length
                    require 9 < arg3.length
                    require ext_code.size(0xe0000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
                    call ????????????????????????????????????????.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas gas_remaining - 710 wei
                        args address(mem[(32 * arg3.length) + 192]), mem[160], address(mem[(32 * arg3.length) + 256]), mem[224], mem[288], mem[352], address(mem[(32 * arg3.length) + 320]), arg2 << 248, mem[(32 * arg3.length) + (32 * arg4.length) + 224], mem[(32 * arg3.length) + (32 * arg4.length) + 288], ext_call.return_data[0]
            else:
                require 1 < arg3.length
                require 9 < arg3.length
                mem[416] = mem[160]
                require 1 < arg4.length
                _166 = mem[(32 * arg3.length) + 192]
                require 1 < arg3.length
                require 3 < arg4.length
                _174 = mem[(32 * arg3.length) + 256]
                require 3 < arg3.length
                _178 = mem[224]
                require 5 < arg3.length
                _182 = mem[288]
                require 7 < arg3.length
                _188 = mem[352]
                require 5 < arg4.length
                _190 = mem[(32 * arg3.length) + 320]
                require 1 < arg5.length
                _195 = mem[(32 * arg3.length) + (32 * arg4.length) + 224]
                require 3 < arg5.length
                _198 = mem[(32 * arg3.length) + (32 * arg4.length) + 288]
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 196] = mem[(32 * arg3.length) + 204 len 20]
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = mem[160]
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = address(_174)
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = _178
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324] = _182
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 356] = _188
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 420] = arg2
                require ext_code.size(0xe0000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
                call ????????????????????????????????????????.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
                     gas gas_remaining - 710 wei
                    args address(_166), mem[160], address(_174), _178, _182, _188, address(_190), arg2 << 248, _195, _198
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = ext_call.return_data[0]
                require ext_call.success
                require 0 < arg3.length
                require 0 < arg3.length
                require 9 < arg3.length
                if mem[160] <= ext_call.return_data[0]:
                    require 1 < arg4.length
                    require 1 < arg3.length
                    require 3 < arg4.length
                    require 3 < arg3.length
                    require 5 < arg3.length
                    require 7 < arg3.length
                    require 5 < arg4.length
                    require 1 < arg5.length
                    require 3 < arg5.length
                    require 9 < arg3.length
                    require ext_code.size(0xe0000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
                    call ????????????????????????????????????????.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas gas_remaining - 710 wei
                        args address(mem[(32 * arg3.length) + 192]), mem[160], address(mem[(32 * arg3.length) + 256]), mem[224], mem[288], mem[352], address(mem[(32 * arg3.length) + 320]), arg2 << 248, mem[(32 * arg3.length) + (32 * arg4.length) + 224], mem[(32 * arg3.length) + (32 * arg4.length) + 288], mem[160]
                else:
                    require 0 < arg3.length
                    require 9 < arg3.length
                    mem[416] = ext_call.return_data[0]
                    require 1 < arg4.length
                    require 1 < arg3.length
                    require 3 < arg4.length
                    require 3 < arg3.length
                    require 5 < arg3.length
                    require 7 < arg3.length
                    require 5 < arg4.length
                    require 1 < arg5.length
                    require 3 < arg5.length
                    require 9 < arg3.length
                    require ext_code.size(0xe0000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
                    call ????????????????????????????????????????.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas gas_remaining - 710 wei
                        args address(mem[(32 * arg3.length) + 192]), mem[160], address(mem[(32 * arg3.length) + 256]), mem[224], mem[288], mem[352], address(mem[(32 * arg3.length) + 320]), arg2 << 248, mem[(32 * arg3.length) + (32 * arg4.length) + 224], mem[(32 * arg3.length) + (32 * arg4.length) + 288], ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc68)
            call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.balanceOf(address rg1, address rg2) with:
                 gas gas_remaining - 710 wei
                args 0, this.address
            require ext_call.success
            require 1 < arg3.length
            require 1 < arg3.length
            require 1 < arg3.length
            if ext_call.return_data[0] < ext_call.return_data[0]:
                emit 0x147370fe: 10, 0
            else:
                emit 0x147370fe: 0
}



}
