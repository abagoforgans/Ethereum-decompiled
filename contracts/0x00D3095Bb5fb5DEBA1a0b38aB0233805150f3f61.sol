contract main {


// =======================  Init code  ======================


const _fallback = code.data[33 len 10229]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_40316569(?) {
    require 0x13303476fec8d6a06ce236d7bada4e359dbeca11 == msg.sender
    call ???????????????????????????????????????? with:
       funct Mask(32, 224, sha3('deposit()')) >> 224
       value arg1 wei
         gas gas_remaining - 34710 wei
}

function sub_b71fddb1(?) {
    require 0x13303476fec8d6a06ce236d7bada4e359dbeca11 == msg.sender
    call ???????????????????????????????????????? with:
       funct Mask(32, 224, sha3('withdraw(uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args arg1
}

function sub_513bd11b(?) {
    require 0x13303476fec8d6a06ce236d7bada4e359dbeca11 == msg.sender
    require eth.balance(this.address) >= arg1
    call 0x13303476fec8d6a06ce236d7bada4e359dbeca11 with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function sub_1dddd1f8(?) {
    require 0x13303476fec8d6a06ce236d7bada4e359dbeca11 == msg.sender
    require arg1
    call ???????????????????????????????????????? with:
       funct Mask(32, 224, sha3('withdrawToken(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg1), arg2
}

function sub_227913bf(?) {
    require 0x13303476fec8d6a06ce236d7bada4e359dbeca11 == msg.sender
    require arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0x8d12a197cb00d4747a1fe03395095ce2a5cc68, arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_158ab5ba(?) {
    require 0x13303476fec8d6a06ce236d7bada4e359dbeca11 == msg.sender
    require arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0x13303476fec8d6a06ce236d7bada4e359dbeca11, arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_5693bedf(?) {
    require 0x13303476fec8d6a06ce236d7bada4e359dbeca11 == msg.sender
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc68)
    call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg1, address(address(arg2 xor arg11 xor this.address) xor arg11 xor this.address), arg3, arg4, arg5, address(arg6 xor arg11 xor this.address), arg7 << 248, arg8, arg9, arg10
    require ext_call.success
}

function sub_94d6ab42(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
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
    require 10 < arg3.length
    _38 = mem[448]
    require 10 < arg3.length
    _40 = mem[448]
    require 10 < arg3.length
    require 0 < arg3.length
    require 0 < arg3.length
    mem[128] = mem[128] xor mem[448]
    require 10 < arg3.length
    require 1 < arg3.length
    require 1 < arg3.length
    mem[160] = mem[160] xor mem[448]
    require 10 < arg3.length
    require 2 < arg3.length
    require 2 < arg3.length
    mem[192] = mem[192] xor mem[448]
    require 10 < arg3.length
    require 3 < arg3.length
    require 3 < arg3.length
    mem[224] = mem[224] xor mem[448]
    require 10 < arg3.length
    require 4 < arg3.length
    require 4 < arg3.length
    mem[256] = mem[256] xor mem[448]
    require 10 < arg3.length
    require 5 < arg3.length
    require 5 < arg3.length
    mem[288] = mem[288] xor mem[448]
    require 10 < arg3.length
    require 6 < arg3.length
    require 6 < arg3.length
    mem[320] = mem[320] xor mem[448]
    require 10 < arg3.length
    require 7 < arg3.length
    require 7 < arg3.length
    mem[352] = mem[352] xor mem[448]
    require 10 < arg3.length
    require 8 < arg3.length
    require 8 < arg3.length
    mem[384] = mem[384] xor mem[448]
    require 10 < arg3.length
    require 9 < arg3.length
    require 9 < arg3.length
    mem[416] = mem[416] xor mem[448]
    require 10 < arg3.length
    require 0 < arg5.length
    require 0 < arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192] = mem[(32 * arg3.length) + (32 * arg4.length) + 192] xor mem[448]
    require 10 < arg3.length
    require 1 < arg5.length
    require 1 < arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 224] = mem[(32 * arg3.length) + (32 * arg4.length) + 224] xor mem[448]
    require 10 < arg3.length
    require 2 < arg5.length
    require 2 < arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 256] = mem[(32 * arg3.length) + (32 * arg4.length) + 256] xor mem[448]
    require 10 < arg3.length
    require 3 < arg5.length
    require 3 < arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 288] = mem[(32 * arg3.length) + (32 * arg4.length) + 288] xor mem[448]
    emit logi(uint8(arg1 xor _38));
    emit logi(uint8(arg2 xor _40));
    require 0 < arg3.length
    emit logi(mem[128]);
    require 1 < arg3.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[160]
    emit logi(mem[160]);
    require 2 < arg3.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[192]
    emit logi(mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]);
    require 3 < arg3.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[224]
    emit logi(mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]);
    require 4 < arg3.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[256]
    emit logi(mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]);
    require 5 < arg3.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[288]
    emit logi(mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]);
    require 6 < arg3.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[320]
    emit logi(mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]);
    require 7 < arg3.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[352]
    emit logi(mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]);
    require 8 < arg3.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[384]
    emit logi(mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]);
    require 9 < arg3.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[416]
    emit logi(mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]);
    require 0 < arg4.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[(32 * arg3.length) + 172 len 20]
    emit 0xe7e85af0: mem[(32 * arg3.length) + 172 len 20]
    require 1 < arg4.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[(32 * arg3.length) + 204 len 20]
    emit 0xe7e85af0: mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
    require 2 < arg4.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[(32 * arg3.length) + 236 len 20]
    emit 0xe7e85af0: mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
    require 3 < arg4.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[(32 * arg3.length) + 268 len 20]
    emit 0xe7e85af0: mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
    require 4 < arg4.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[(32 * arg3.length) + 300 len 20]
    emit 0xe7e85af0: mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
    require 5 < arg4.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[(32 * arg3.length) + 332 len 20]
    emit 0xe7e85af0: mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
    require 0 < arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[(32 * arg3.length) + (32 * arg4.length) + 192]
    emit 0x7cb35b2d: mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
    require 1 < arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[(32 * arg3.length) + (32 * arg4.length) + 224]
    emit 0x7cb35b2d: mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
    require 2 < arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[(32 * arg3.length) + (32 * arg4.length) + 256]
    emit 0x7cb35b2d: mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
    require 3 < arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = mem[(32 * arg3.length) + (32 * arg4.length) + 288]
    emit 0x7cb35b2d: mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
}

function sub_b3100157(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require 0x13303476fec8d6a06ce236d7bada4e359dbeca11 == msg.sender
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
    require 10 < arg3.length
    _38 = mem[448]
    require 10 < arg3.length
    _40 = mem[448]
    require 10 < arg3.length
    require 0 < arg3.length
    require 0 < arg3.length
    mem[128] = mem[128] xor mem[448]
    require 10 < arg3.length
    require 1 < arg3.length
    require 1 < arg3.length
    mem[160] = mem[160] xor mem[448]
    require 10 < arg3.length
    require 2 < arg3.length
    require 2 < arg3.length
    mem[192] = mem[192] xor mem[448]
    require 10 < arg3.length
    require 3 < arg3.length
    require 3 < arg3.length
    mem[224] = mem[224] xor mem[448]
    require 10 < arg3.length
    require 4 < arg3.length
    require 4 < arg3.length
    mem[256] = mem[256] xor mem[448]
    require 10 < arg3.length
    require 5 < arg3.length
    require 5 < arg3.length
    mem[288] = mem[288] xor mem[448]
    require 10 < arg3.length
    require 6 < arg3.length
    require 6 < arg3.length
    mem[320] = mem[320] xor mem[448]
    require 10 < arg3.length
    require 7 < arg3.length
    require 7 < arg3.length
    mem[352] = mem[352] xor mem[448]
    require 10 < arg3.length
    require 8 < arg3.length
    require 8 < arg3.length
    mem[384] = mem[384] xor mem[448]
    require 10 < arg3.length
    require 9 < arg3.length
    require 9 < arg3.length
    mem[416] = mem[416] xor mem[448]
    require 10 < arg3.length
    require 0 < arg5.length
    require 0 < arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192] = mem[(32 * arg3.length) + (32 * arg4.length) + 192] xor mem[448]
    require 10 < arg3.length
    require 1 < arg5.length
    require 1 < arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 224] = mem[(32 * arg3.length) + (32 * arg4.length) + 224] xor mem[448]
    require 10 < arg3.length
    require 2 < arg5.length
    require 2 < arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 256] = mem[(32 * arg3.length) + (32 * arg4.length) + 256] xor mem[448]
    require 10 < arg3.length
    require 3 < arg5.length
    require 3 < arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 288] = mem[(32 * arg3.length) + (32 * arg4.length) + 288] xor mem[448]
    require 8 < arg3.length
    _112 = mem[384]
    require 0 < arg4.length
    require 0 < arg3.length
    require 2 < arg4.length
    _120 = mem[(32 * arg3.length) + 224]
    require 2 < arg3.length
    _122 = mem[192]
    require 4 < arg3.length
    _124 = mem[256]
    require 6 < arg3.length
    _126 = mem[320]
    require 4 < arg4.length
    _128 = mem[(32 * arg3.length) + 288]
    require 0 < arg5.length
    _130 = mem[(32 * arg3.length) + (32 * arg4.length) + 192]
    require 2 < arg5.length
    _132 = mem[(32 * arg3.length) + (32 * arg4.length) + 256]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 196] = mem[(32 * arg3.length) + 172 len 20]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = mem[128]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = address(_120)
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = _122
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324] = _124
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 356] = _126
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 388] = address(_128)
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 420] = uint8(arg1 xor _38)
    require ext_code.size(0x740000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
    call ????????????????????????????????????????.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args mem[(32 * arg3.length) + 172 len 20], mem[128], address(_120), _122, _124, _126, address(_128), arg1 xor _38 << 248, _130, _132
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] < _112:
        emit 0x25147370: 1, 0
    else:
        require 9 < arg3.length
        _143 = mem[416]
        require 1 < arg4.length
        require 1 < arg3.length
        require 3 < arg4.length
        _151 = mem[(32 * arg3.length) + 256]
        require 3 < arg3.length
        require 5 < arg3.length
        _155 = mem[288]
        require 7 < arg3.length
        _157 = mem[352]
        require 5 < arg4.length
        _159 = mem[(32 * arg3.length) + 320]
        require 1 < arg5.length
        require 3 < arg5.length
        _163 = mem[(32 * arg3.length) + (32 * arg4.length) + 288]
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = mem[(32 * arg3.length) + 268 len 20]
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = mem[224]
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324] = _155
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 356] = _157
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 388] = address(_159)
        require ext_code.size(0x740000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
        call ????????????????????????????????????????.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
             gas gas_remaining - 710 wei
            args address(mem[(32 * arg3.length) + 192]), mem[160], address(_151), mem[224], _155, _157, address(_159), arg2 xor _40 << 248, mem[(32 * arg3.length) + (32 * arg4.length) + 224], _163
        require ext_call.success
        if ext_call.return_data[0] < _143:
            emit 0x25147370: 2, 0
        else:
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 196] = 0
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = this.address
            require ext_code.size(0x740000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
            call ????????????????????????????????????????.balanceOf(address rg1, address rg2) with:
                 gas gas_remaining - 710 wei
                args 0, this.address
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = ext_call.return_data[0]
            require ext_call.success
            require 0 < arg4.length
            require 0 < arg3.length
            require 2 < arg4.length
            _187 = mem[(32 * arg3.length) + 224]
            require 2 < arg3.length
            _189 = mem[192]
            require 4 < arg3.length
            _191 = mem[256]
            require 6 < arg3.length
            _193 = mem[320]
            require 4 < arg4.length
            _195 = mem[(32 * arg3.length) + 288]
            require 0 < arg5.length
            _197 = mem[(32 * arg3.length) + (32 * arg4.length) + 192]
            require 2 < arg5.length
            _199 = mem[(32 * arg3.length) + (32 * arg4.length) + 256]
            require 8 < arg3.length
            _201 = mem[384]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 196] = mem[(32 * arg3.length) + 172 len 20]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = address(_187)
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = _189
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324] = _191
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 356] = _193
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 420] = uint8(arg1 xor _38)
            require ext_code.size(0x740000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
            call ????????????????????????????????????????.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg3.length) + 172 len 20], mem[128], address(_187), _189, _191, _193, address(_195), arg1 xor _38 << 248, _197, _199, _201
            require ext_call.success
            require 1 < arg4.length
            _207 = mem[(32 * arg3.length) + 192]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 196] = mem[(32 * arg3.length) + 204 len 20]
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = this.address
            require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc68)
            call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.balanceOf(address rg1, address rg2) with:
                 gas gas_remaining - 710 wei
                args address(_207), this.address
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
                _227 = mem[(32 * arg3.length) + 192]
                require 1 < arg3.length
                require 3 < arg4.length
                _233 = mem[(32 * arg3.length) + 256]
                require 3 < arg3.length
                _238 = mem[224]
                require 5 < arg3.length
                _242 = mem[288]
                require 7 < arg3.length
                _246 = mem[352]
                require 5 < arg4.length
                _250 = mem[(32 * arg3.length) + 320]
                require 1 < arg5.length
                _254 = mem[(32 * arg3.length) + (32 * arg4.length) + 224]
                require 3 < arg5.length
                _258 = mem[(32 * arg3.length) + (32 * arg4.length) + 288]
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 196] = mem[(32 * arg3.length) + 204 len 20]
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = mem[160]
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = address(_233)
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = _238
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324] = _242
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 356] = _246
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 420] = uint8(arg2 xor _40)
                require ext_code.size(0x740000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
                call ????????????????????????????????????????.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
                     gas gas_remaining - 710 wei
                    args address(_227), mem[160], address(_233), _238, _242, _246, address(_250), arg2 xor _40 << 248, _254, _258
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
                    require ext_code.size(0x740000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
                    call ????????????????????????????????????????.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas gas_remaining - 710 wei
                        args address(mem[(32 * arg3.length) + 192]), mem[160], address(mem[(32 * arg3.length) + 256]), mem[224], mem[288], mem[352], address(mem[(32 * arg3.length) + 320]), arg2 xor _40 << 248, mem[(32 * arg3.length) + (32 * arg4.length) + 224], mem[(32 * arg3.length) + (32 * arg4.length) + 288], ext_call.return_data[0] - (3 * 10^15 * ext_call.return_data[0] / 10^18)
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
                    require ext_code.size(0x740000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
                    call ????????????????????????????????????????.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas gas_remaining - 710 wei
                        args address(mem[(32 * arg3.length) + 192]), mem[160], address(mem[(32 * arg3.length) + 256]), mem[224], mem[288], mem[352], address(mem[(32 * arg3.length) + 320]), arg2 xor _40 << 248, mem[(32 * arg3.length) + (32 * arg4.length) + 224], mem[(32 * arg3.length) + (32 * arg4.length) + 288], ext_call.return_data[0]
            else:
                require 1 < arg3.length
                require 9 < arg3.length
                mem[416] = mem[160]
                require 1 < arg4.length
                _240 = mem[(32 * arg3.length) + 192]
                require 1 < arg3.length
                require 3 < arg4.length
                _248 = mem[(32 * arg3.length) + 256]
                require 3 < arg3.length
                _252 = mem[224]
                require 5 < arg3.length
                _256 = mem[288]
                require 7 < arg3.length
                _262 = mem[352]
                require 5 < arg4.length
                _264 = mem[(32 * arg3.length) + 320]
                require 1 < arg5.length
                _269 = mem[(32 * arg3.length) + (32 * arg4.length) + 224]
                require 3 < arg5.length
                _272 = mem[(32 * arg3.length) + (32 * arg4.length) + 288]
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 196] = mem[(32 * arg3.length) + 204 len 20]
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 228] = mem[160]
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = address(_248)
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = _252
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324] = _256
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 356] = _262
                mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 420] = uint8(arg2 xor _40)
                require ext_code.size(0x740000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
                call ????????????????????????????????????????.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
                     gas gas_remaining - 710 wei
                    args address(_240), mem[160], address(_248), _252, _256, _262, address(_264), arg2 xor _40 << 248, _269, _272
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
                    require ext_code.size(0x740000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
                    call ????????????????????????????????????????.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas gas_remaining - 710 wei
                        args address(mem[(32 * arg3.length) + 192]), mem[160], address(mem[(32 * arg3.length) + 256]), mem[224], mem[288], mem[352], address(mem[(32 * arg3.length) + 320]), arg2 xor _40 << 248, mem[(32 * arg3.length) + (32 * arg4.length) + 224], mem[(32 * arg3.length) + (32 * arg4.length) + 288], mem[160]
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
                    require ext_code.size(0x740000000000000000000000008d12a197cb00d4747a1fe03395095ce2a5cc68)
                    call ????????????????????????????????????????.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas gas_remaining - 710 wei
                        args address(mem[(32 * arg3.length) + 192]), mem[160], address(mem[(32 * arg3.length) + 256]), mem[224], mem[288], mem[352], address(mem[(32 * arg3.length) + 320]), arg2 xor _40 << 248, mem[(32 * arg3.length) + (32 * arg4.length) + 224], mem[(32 * arg3.length) + (32 * arg4.length) + 288], ext_call.return_data[0]
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
                emit 0x25147370: 10, 0
            else:
                emit 0x25147370: 0
}



}
