contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor99;

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function recharge() payable {
  stop
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function withDraw(uint256 arg1) {
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0cf93216(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len arg3.length] = arg3[all]
    require arg1.length > 0
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
    mem[arg3.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 192] = 0
    if stor[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 192 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]]:
        revert with 0, 'logid is invaild'
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 224 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 224 len -(arg3.length % 32) + 32] = Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, Mask(8 * arg3.length % 32, 0, 0), mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + arg3.length + 224 len -(arg3.length % 32) + 32]) << (8 * -(arg3.length % 32) + 32) - 256
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 192] = arg3.length
    mem[arg3.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 224 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(2 * floor32(arg3.length)) + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 256 len arg3.length % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + floor32(arg3.length) + 256 len arg3.length % 32]
    _124 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg3.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 224 len arg3.length % 32])
    mem[arg3.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 256] = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg3.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 224 len arg3.length % 32])
    mem[arg3.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 288] = arg6
    mem[arg3.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 320] = arg4
    mem[arg3.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 352] = arg5
    signer = erecover(_124, arg6 << 248, arg4, arg5) 
    mem[arg3.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 224] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != owner:
        revert with 0, 'invaild signer'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[arg3.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(2 * floor32(arg3.length)) + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 288 len arg3.length % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
    mem[(2 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 256] = 0
    stor[mem[arg3.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 256 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]] = 1
}

function sub_1179a5c7(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len arg4.length] = arg4[all]
    require arg1.length > 0
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 192 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 224 len arg4.length % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg4.length) + -(arg4.length % 32) + 224 len arg4.length % 32]
    mem[arg4.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 192] = 0
    if stor[mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + floor32(arg4.length) + 192 len (arg4.length % 32) + 32]][call.data[arg4 + 36 len floor32(arg4.length)]]:
        revert with 0, 'logid is invaild'
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 256 len arg4.length % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg4.length) + -(arg4.length % 32) + 224 len arg4.length % 32]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + floor32(arg4.length) + 224 len -(arg4.length % 32) + 32] = Mask(8 * -(arg4.length % 32) + 32, -(8 * -(arg4.length % 32) + 32) + 256, Mask(8 * arg4.length % 32, 0, 0), mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + arg4.length + 224 len -(arg4.length % 32) + 32]) << (8 * -(arg4.length % 32) + 32) - 256
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 192] = arg4.length
    mem[arg4.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(2 * floor32(arg4.length)) + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 256 len arg4.length % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 256 len arg4.length % 32]
    _130 = sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[arg4.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + floor32(arg4.length) + 224 len arg4.length % 32])
    mem[arg4.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 256] = sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[arg4.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + floor32(arg4.length) + 224 len arg4.length % 32])
    mem[arg4.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 288] = arg7
    mem[arg4.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 320] = arg5
    mem[arg4.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 352] = arg6
    signer = erecover(_130, arg7 << 248, arg5, arg6) 
    mem[arg4.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 224] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != owner:
        revert with 0, 'invaild signer'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _166 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[arg4.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 260] = mem[(32 * idx) + 140 len 20]
        mem[arg4.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 292] = _166
        require ext_code.size(arg3)
        call arg3.0xa9059cbb with:
             gas gas_remaining wei
            args mem[arg4.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 260], _166
        mem[arg4.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    mem[arg4.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 256 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(2 * floor32(arg4.length)) + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 288 len arg4.length % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg4.length) + -(arg4.length % 32) + 224 len arg4.length % 32]
    mem[(2 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + 256] = 0
    stor[mem[arg4.length + (32 * arg1.length) + (32 * arg2.length) + ceil32(arg4.length) + floor32(arg4.length) + 256 len (arg4.length % 32) + 32]][call.data[arg4 + 36 len floor32(arg4.length)]] = 1
}



}
