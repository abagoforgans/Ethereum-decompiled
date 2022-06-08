contract main {




// =====================  Runtime code  =====================


array of struct stor0;
uint256 stor1;
mapping of struct stor2;

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0.length)
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.value > 0
    stor2[('map', ('data', 'msg.sender', 'callvalue', ('stor', ('name', 'stor1', 1))), ('name', 'stor0', 0))].field_0 = msg.sender
    stor2[('map', ('data', 'msg.sender', 'callvalue', ('stor', ('name', 'stor1', 1))), ('name', 'stor0', 0))].field_256 = msg.value
    stor1++
    emit 0x1c38707f: msg.value, 0, 0, sha3(msg.sender, msg.value, stor1), msg.sender
}

function sub_5bff3376(?) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg3.length == arg4.length
    require arg3.length <= 20
    mem[(32 * arg3.length) + (32 * arg4.length) + 192] = arg1
    mem[(32 * arg3.length) + (32 * arg4.length) + 224] = arg2
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 64
    require stor2[arg1][arg2].field_0 == msg.sender
    mem[0] = sha3(arg1, arg2)
    mem[32] = 2
    mem[(32 * arg3.length) + (32 * arg4.length) + 288] = arg1
    mem[(32 * arg3.length) + (32 * arg4.length) + 320] = arg2
    mem[(32 * arg3.length) + (32 * arg4.length) + 352 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg3.length) + (32 * arg4.length) + 352 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(32 * arg3.length) + (32 * arg4.length) + 256] = (32 * arg4.length) + (32 * arg3.length) + 64
    mem[64] = (64 * arg4.length) + (64 * arg3.length) + 352
    _80 = sha3(arg1, arg2, mem[(32 * arg3.length) + (32 * arg4.length) + 352 len (32 * arg3.length) + (32 * arg4.length)])
    idx = 0
    s = 0
    while idx < arg3.length:
        require idx < mem[96]
        require mem[(32 * idx) + 140 len 20]
        _112 = mem[64]
        mem[mem[64] + 32] = _80
        mem[mem[64] + 64] = idx
        _113 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        _115 = sha3(mem[_113 + 32 len mem[_113]])
        mem[64] = _112 + 160
        require idx < mem[96]
        mem[_112 + 96] = mem[(32 * idx) + 140 len 20]
        require idx < mem[(32 * arg3.length) + 128]
        mem[_112 + 128] = mem[(32 * idx) + (32 * arg3.length) + 160]
        mem[0] = _115
        mem[32] = 2
        stor2[_115].field_0 = mem[_112 + 108 len 20]
        stor2[_115].field_256 = mem[_112 + 128]
        require idx < mem[(32 * arg3.length) + 128]
        require s > s + mem[(32 * idx) + (32 * arg3.length) + 160]
        require idx < mem[(32 * arg3.length) + 128]
        _127 = mem[(32 * idx) + (32 * arg3.length) + 160]
        require idx < mem[96]
        _129 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg3.length) + 128]
        mem[_112 + 160] = mem[(32 * idx) + (32 * arg3.length) + 160]
        mem[_112 + 192] = idx
        emit 0x1c38707f: mem[_112 + 160], idx, arg1, _80, address(_129)
        idx = idx + 1
        s = s + _127
        continue 
    require s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length == stor2[arg1][arg2].field_256
    stor2[arg1][arg2].field_0 = 0
    stor2[arg1][arg2].field_256 = 0
}



}
