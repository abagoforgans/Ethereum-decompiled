contract main {




// =====================  Runtime code  =====================


address edcAddress;
address stor1;

function edc() {
    return edcAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require stor1 == msg.sender
    require arg1
    stor1 = arg1
}

function setToken(address arg1) {
    require stor1 == msg.sender
    require arg1
    edcAddress = arg1
}

function sub_588dff18(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg3.length
    mem[(32 * arg1.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require stor1 == msg.sender
    require arg1.length == arg3.length
    idx = 0
    while idx < arg1.length:
        require idx < arg3.length
        require idx < arg3.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] == mem[(32 * idx) + (32 * arg1.length) + 184 len 8]
        require idx < arg3.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] > 0
        require idx < arg1.length
        _26 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _28 = mem[(32 * arg1.length) + (32 * idx) + 160]
        mem[(32 * arg3.length) + (32 * arg1.length) + 160] = 0x68ab3db200000000000000000000000000000000000000000000000000000000
        mem[(32 * arg3.length) + (32 * arg1.length) + 164] = _26
        mem[(32 * arg3.length) + (32 * arg1.length) + 196] = arg2
        mem[(32 * arg3.length) + (32 * arg1.length) + 228] = _28
        mem[(32 * arg3.length) + (32 * arg1.length) + 260] = 0
        require ext_code.size(edcAddress)
        call edcAddress.createDefaultGen0EtherDog(uint256 arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args _26, address(arg2), _28, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_aaae15ea(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256] = arg6.length
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    require stor1 == msg.sender
    require edcAddress
    require arg1.length == arg2.length
    require arg2.length == arg3.length
    require arg3.length == arg4.length
    require arg4.length == arg5.length
    require arg5.length == arg6.length
    idx = 0
    while idx < arg3.length:
        require idx < arg1.length
        require idx < arg1.length
        require mem[(32 * idx) + 128] == mem[(32 * idx) + 156 len 4]
        require idx < arg2.length
        require idx < arg2.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] == mem[(32 * idx) + (32 * arg1.length) + 188 len 4]
        require idx < arg5.length
        require idx < arg5.length
        require mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 256] == mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 280 len 8]
        require idx < arg6.length
        require idx < arg6.length
        require mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 288] == mem[(32 * idx) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 318 len 2]
        require idx < arg5.length
        require mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 256] > 0
        require idx < arg6.length
        require mem[(32 * idx) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288] >= 0
        require idx < arg6.length
        require mem[(32 * idx) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288] <= 13
        require idx < arg1.length
        require mem[(32 * idx) + 128] > 0
        require idx < arg2.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] > 0
        require idx < arg1.length
        _86 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _88 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg3.length
        _90 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        require idx < arg4.length
        _92 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        require idx < arg5.length
        _94 = mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256]
        require idx < arg6.length
        _96 = mem[(32 * idx) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288]
        mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288] = 0x2e5cc10300000000000000000000000000000000000000000000000000000000
        mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 292] = _86
        mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 324] = _88
        mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 356] = _90
        mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 388] = address(_92)
        mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 420] = _94
        mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 452] = _96
        require ext_code.size(edcAddress)
        call edcAddress.createDefaultEtherDog(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6) with:
             gas gas_remaining wei
            args _86, _88, _90, address(_92), _94, _96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
