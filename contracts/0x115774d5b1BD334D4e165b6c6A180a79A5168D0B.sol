contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    require not msg.value
    return code.data[92 len 3755]
}



// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function close() {
    require owner == msg.sender
    selfdestruct(owner)
}

function deposit() payable {
  stop
}

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_f1b83630(?) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_2cf2c0af(?) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function balanceOf(address arg1) {
    require ext_code.size(stor1)
    call stor1.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    require ext_code.size(stor1)
    call stor1.0xfb6e155f with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_5c73dcea(?) {
    require ext_code.size(stor1)
    call stor1.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10, this.address
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11, this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        emit 0x34d6d9be: 257
        return 0
    emit 0x34d6d9be: 256
    require ext_code.size(stor1)
    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11
    require ext_call.success
    return 1
}

function sub_8acb062e(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require owner == msg.sender
    require 11 < arg2.length
    _5 = mem[(32 * arg1.length) + 512]
    require 11 < arg2.length
    _7 = mem[(32 * arg1.length) + 512]
    require 3 < arg1.length
    _9 = mem[224]
    require 6 < arg2.length
    _11 = mem[(32 * arg1.length) + 352]
    require 4 < arg1.length
    _13 = mem[256]
    require 7 < arg2.length
    _15 = mem[(32 * arg1.length) + 384]
    require 9 < arg2.length
    _17 = mem[(32 * arg1.length) + 448]
    require 10 < arg2.length
    _19 = mem[(32 * arg1.length) + 480]
    require 5 < arg1.length
    _21 = mem[288]
    require 2 < arg3.length
    _23 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
    require 3 < arg3.length
    _25 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = mem[236 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 228] = _11
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 260] = address(_13)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 292] = _15
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 324] = _17
    require ext_code.size(stor1)
    call stor1.0xfb6e155f with:
         gas gas_remaining - 710 wei
        args address(_9), _11, address(_13), _15, _17, _19, address(_21), _7 << 248, _23, _25
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        emit 0x34d6d9be: 1
    else:
        emit 0x34d6d9be: 0
        emit 0x34d6d9be: ext_call.return_data[0]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 11 * ext_call.return_data[0] / 10
        emit 0x34d6d9be: (11 * ext_call.return_data[0] / 10)
        require 5 < arg2.length
        _48 = mem[(32 * arg1.length) + 320]
        require 0 < arg1.length
        require 0 < arg2.length
        require 1 < arg1.length
        require 1 < arg2.length
        _56 = mem[(32 * arg1.length) + 192]
        require 3 < arg2.length
        _58 = mem[(32 * arg1.length) + 256]
        require 4 < arg2.length
        _60 = mem[(32 * arg1.length) + 288]
        require 2 < arg1.length
        _62 = mem[192]
        require 0 < arg3.length
        _64 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
        require 1 < arg3.length
        _66 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
        require owner == msg.sender
        require ext_code.size(stor1)
        call stor1.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
             gas gas_remaining - 710 wei
            args mem[140 len 20], mem[(32 * arg1.length) + 160], mem[172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], address(mem[192]), mem[(32 * arg1.length) + 320] << 248, mem[(32 * arg1.length) + (32 * arg2.length) + 192], mem[(32 * arg1.length) + (32 * arg2.length) + 224], 11 * ext_call.return_data[0] / 10, this.address
        require ext_call.success
        if not ext_call.return_data[0]:
            emit 0x34d6d9be: 257
            emit 0x34d6d9be: 17
        else:
            emit 0x34d6d9be: 256
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = mem[140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 228] = mem[(32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 260] = mem[172 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 292] = _56
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 324] = _58
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 356] = _60
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 388] = address(_62)
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 420] = uint8(_48)
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 452] = _64
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 484] = _66
            require ext_code.size(stor1)
            call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 710 wei
                args mem[140 len 20], mem[(32 * arg1.length) + 160], mem[172 len 20], _56, _58, _60, address(_62), _48 << 248, _64, _66, 11 * ext_call.return_data[0] / 10
            require ext_call.success
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 16
            emit 0x34d6d9be: 16
            require 3 < arg1.length
            require 6 < arg2.length
            require 4 < arg1.length
            require 7 < arg2.length
            require 9 < arg2.length
            require 10 < arg2.length
            require 5 < arg1.length
            require 2 < arg3.length
            require 3 < arg3.length
            require owner == msg.sender
            require ext_code.size(stor1)
            call stor1.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
                 gas gas_remaining - 710 wei
                args address(mem[224]), mem[(32 * arg1.length) + 352], address(mem[256]), mem[(32 * arg1.length) + 384], mem[(32 * arg1.length) + 448], mem[(32 * arg1.length) + 480], address(mem[288]), _5 << 248, mem[(32 * arg1.length) + (32 * arg2.length) + 256], mem[(32 * arg1.length) + (32 * arg2.length) + 288], ext_call.return_data[0], this.address
            require ext_call.success
            if not ext_call.return_data[0]:
                emit 0x34d6d9be: 257
                emit 0x34d6d9be: 33
            else:
                emit 0x34d6d9be: 256
                require ext_code.size(stor1)
                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args address(mem[224]), mem[(32 * arg1.length) + 352], address(mem[256]), mem[(32 * arg1.length) + 384], mem[(32 * arg1.length) + 448], mem[(32 * arg1.length) + 480], address(mem[288]), _5 << 248, mem[(32 * arg1.length) + (32 * arg2.length) + 256], mem[(32 * arg1.length) + (32 * arg2.length) + 288], ext_call.return_data[0]
                require ext_call.success
                emit 0x34d6d9be: 32
}



}
