contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    if not uint8(stor0.field_160):
        revert with 0, 'Contract Functionality Resumed'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract Paused. Events/Transaction Paused until Further Notice'
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function drop(address arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0, 'Contract Paused. Events/Transaction Paused until Further Notice'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _22 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _24 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_22)
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _24
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_22), _24
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg2.length
        _30 = mem[(32 * idx) + 128]
        require idx < arg3.length
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 160]
        emit TokenDrop(mem[(32 * arg2.length) + (32 * arg3.length) + 160], msg.sender, address(_30));
        idx = idx + 1
        continue 
}



}
