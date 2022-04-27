contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    require code.data[2089 len 20]
    stor1 = code.data[2089 len 20]
    return code.data[248 len 1829]
}



// =====================  Runtime code  =====================


address owner;
address sub_d8ffdcc4Address;
mapping of uint8 stor2;

function owner() {
    return owner
}

function sub_d8ffdcc4(?) {
    return sub_d8ffdcc4Address
}

function _fallback() payable {
    revert
}

function setDistributor(address arg1, bool arg2) {
    require msg.sender == owner
    stor2[address(arg1)] = uint8(arg2)
    return 1
}

function sub_b2b2c008(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = 0
    require stor2[address(msg.sender)]
    require arg1.length == arg2.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = arg1.length
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        require idx < arg1.length
        _85 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _95 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 292] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
        mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 324] = address(_85)
        mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 356] = _95
        require ext_code.size(sub_d8ffdcc4Address)
        call sub_d8ffdcc4Address.0x23b872dd with:
             gas gas_remaining - 710 wei
            args mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 292], address(_85), _95
        mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 288] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            s = ext_call.return_data[0]
            idx = idx + 1
            s = s
            continue 
        require idx < arg1.length
        require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
        mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 288] = mem[(32 * idx) + 140 len 20]
        require idx < mem[(32 * arg1.length) + 128]
        require idx < arg1.length
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        emit 0x334b3b1d: mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * arg1.length) + 160]
        s = ext_call.return_data[0]
        idx = idx + 1
        s = s + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 288] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 320] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
    mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 352 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256])] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 288 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256])]
    return Array(len=mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256], data=mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 352 len 32 * mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]]), 
}



}
