contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 4512]
}



// =====================  Runtime code  =====================


address adminAddress;

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function sub_8afc141c(?) {
    require adminAddress == msg.sender
    call arg1 with:
       funct Mask(32, 224, sha3('deposit()')) >> 224
       value arg2 wei
         gas gas_remaining - 34710 wei
}

function sub_9a588c06(?) {
    require adminAddress == msg.sender
    call arg1 with:
       funct Mask(32, 224, sha3('withdraw(uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args arg2
}

function sub_513bd11b(?) {
    require adminAddress == msg.sender
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function sub_da03d507(?) {
    require adminAddress == msg.sender
    require arg2
    call arg1 with:
       funct Mask(32, 224, sha3('withdrawToken(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg2), arg3
}

function sub_158ab5ba(?) {
    require adminAddress == msg.sender
    require arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_ace30bea(?) {
    require adminAddress == msg.sender
    require arg2
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_b5a4b539(?) {
    require adminAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11
    require ext_call.success
}

function sub_7831ce79(?) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = arg6.length
    mem[(32 * arg4.length) + (32 * arg5.length) + 192 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    require adminAddress == msg.sender
    require 8 < arg4.length
    _5 = mem[384]
    require 0 < arg5.length
    require 0 < arg4.length
    require 2 < arg5.length
    _11 = mem[(32 * arg4.length) + 224]
    require 2 < arg4.length
    _13 = mem[192]
    require 4 < arg4.length
    _15 = mem[256]
    require 6 < arg4.length
    _17 = mem[320]
    require 4 < arg5.length
    _19 = mem[(32 * arg4.length) + 288]
    require 0 < arg6.length
    _21 = mem[(32 * arg4.length) + (32 * arg5.length) + 192]
    require 2 < arg6.length
    _23 = mem[(32 * arg4.length) + (32 * arg5.length) + 256]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 196] = mem[(32 * arg4.length) + 172 len 20]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 228] = mem[128]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 260] = address(_11)
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 292] = _13
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 324] = _15
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 356] = _17
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 388] = address(_19)
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 420] = arg2
    require ext_code.size(arg1)
    call arg1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args mem[(32 * arg4.length) + 172 len 20], mem[128], address(_11), _13, _15, _17, address(_19), arg2 << 248, _21, _23
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] < _5:
        emit 0x147370fe: 1, 0
    else:
        require 9 < arg4.length
        _34 = mem[416]
        require 1 < arg5.length
        require 1 < arg4.length
        require 3 < arg5.length
        _40 = mem[(32 * arg4.length) + 256]
        require 3 < arg4.length
        require 5 < arg4.length
        _44 = mem[288]
        require 7 < arg4.length
        _46 = mem[352]
        require 5 < arg5.length
        _48 = mem[(32 * arg4.length) + 320]
        require 1 < arg6.length
        require 3 < arg6.length
        _52 = mem[(32 * arg4.length) + (32 * arg5.length) + 288]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 260] = mem[(32 * arg4.length) + 268 len 20]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 292] = mem[224]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 324] = _44
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 356] = _46
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 388] = address(_48)
        require ext_code.size(arg1)
        call arg1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
             gas gas_remaining - 710 wei
            args address(mem[(32 * arg4.length) + 192]), mem[160], address(_40), mem[224], _44, _46, address(_48), arg3 << 248, mem[(32 * arg4.length) + (32 * arg5.length) + 224], _52
        require ext_call.success
        if ext_call.return_data[0] < _34:
            emit 0x147370fe: 2, 0
        else:
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 196] = 0
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 228] = msg.sender
            require ext_code.size(arg1)
            call arg1.balanceOf(address rg1, address rg2) with:
                 gas gas_remaining - 710 wei
                args 0, msg.sender
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = ext_call.return_data[0]
            require ext_call.success
            require 0 < arg5.length
            require 0 < arg4.length
            require 2 < arg5.length
            _72 = mem[(32 * arg4.length) + 224]
            require 2 < arg4.length
            _74 = mem[192]
            require 4 < arg4.length
            _76 = mem[256]
            require 6 < arg4.length
            _78 = mem[320]
            require 4 < arg5.length
            _80 = mem[(32 * arg4.length) + 288]
            require 0 < arg6.length
            _82 = mem[(32 * arg4.length) + (32 * arg5.length) + 192]
            require 2 < arg6.length
            _84 = mem[(32 * arg4.length) + (32 * arg5.length) + 256]
            require 8 < arg4.length
            _86 = mem[384]
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 196] = mem[(32 * arg4.length) + 172 len 20]
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 260] = address(_72)
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 292] = _74
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 324] = _76
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 356] = _78
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 420] = arg2
            require ext_code.size(arg1)
            call arg1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg4.length) + 172 len 20], mem[128], address(_72), _74, _76, _78, address(_80), arg2 << 248, _82, _84, _86
            require ext_call.success
            require 1 < arg5.length
            _90 = mem[(32 * arg4.length) + 192]
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 196] = mem[(32 * arg4.length) + 204 len 20]
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 228] = msg.sender
            require ext_code.size(arg1)
            call arg1.balanceOf(address rg1, address rg2) with:
                 gas gas_remaining - 710 wei
                args address(_90), msg.sender
            mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = ext_call.return_data[0]
            require ext_call.success
            require 9 < arg4.length
            mem[416] = ext_call.return_data[0]
            require 1 < arg4.length
            require 9 < arg4.length
            if ext_call.return_data[0] <= mem[160]:
                require 1 < arg5.length
                require 1 < arg4.length
                require 3 < arg5.length
                require 3 < arg4.length
                require 5 < arg4.length
                require 7 < arg4.length
                require 5 < arg5.length
                require 1 < arg6.length
                require 3 < arg6.length
                require 9 < arg4.length
                require ext_code.size(arg1)
                call arg1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args address(mem[(32 * arg4.length) + 192]), mem[160], address(mem[(32 * arg4.length) + 256]), mem[224], mem[288], mem[352], address(mem[(32 * arg4.length) + 320]), arg3 << 248, mem[(32 * arg4.length) + (32 * arg5.length) + 224], mem[(32 * arg4.length) + (32 * arg5.length) + 288], ext_call.return_data[0]
            else:
                require 1 < arg4.length
                require 9 < arg4.length
                mem[416] = mem[160]
                require 1 < arg5.length
                require 1 < arg4.length
                require 3 < arg5.length
                require 3 < arg4.length
                require 5 < arg4.length
                require 7 < arg4.length
                require 5 < arg5.length
                require 1 < arg6.length
                require 3 < arg6.length
                require 9 < arg4.length
                require ext_code.size(arg1)
                call arg1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args address(mem[(32 * arg4.length) + 192]), mem[160], address(mem[(32 * arg4.length) + 256]), mem[224], mem[288], mem[352], address(mem[(32 * arg4.length) + 320]), arg3 << 248, mem[(32 * arg4.length) + (32 * arg5.length) + 224], mem[(32 * arg4.length) + (32 * arg5.length) + 288], mem[160]
            require ext_call.success
            require ext_code.size(arg1)
            call arg1.balanceOf(address rg1, address rg2) with:
                 gas gas_remaining - 710 wei
                args 0, msg.sender
            require ext_call.success
            require 0 < arg4.length
            require 0 < arg4.length
            require 0 < arg4.length
            if ext_call.return_data[0] < ext_call.return_data[0]:
                emit 0x147370fe: 10, 0
            else:
                emit 0x147370fe: 0
}



}
