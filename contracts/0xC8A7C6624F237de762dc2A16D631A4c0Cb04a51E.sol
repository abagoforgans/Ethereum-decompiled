contract main {




// =====================  Runtime code  =====================


#
#  - verify(bytes32 arg1, uint8[] arg2, bytes32[] arg3, bytes32[] arg4)
#  - sub_64a15da0(?)
#  - sub_d4cf9655(?)
#
const getBalance = eth.balance(this.address)


uint256 nonce;
uint256 threshold;
mapping of uint8 stor2;
array of address sub_5099335e;
uint32 sub_500bf72f; offset 160
address stor5;

function threshold() {
    return threshold
}

function sub_500bf72f(?) {
    return sub_500bf72f
}

function sub_5099335e(?) {
    require arg1 >= 0
    require arg1 < sub_5099335e.length
    return sub_5099335e[arg1]
}

function nonce() {
    return nonce
}

function sub_f8fdac74(?) {
    return sub_5099335e.length
}

function _fallback() payable {
  stop
}

function sub_747a325e(?) {
    require msg.sender == stor5
    idx = 0
    while idx < arg1:
        mem[96 len 1040] = code.data[8552 len 1040]
        create contract with 0 wei
                        code: code.data[8552 len 1040]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        sub_5099335e.length++
        mem[0] = 3
        sub_5099335e[sub_5099335e.length] = address(create.new_address)
        idx = idx + 1
        continue 
}

function getBalance(address arg1) {
    idx = 0
    s = 0
    while idx < sub_5099335e.length:
        mem[0] = 3
        mem[100] = sub_5099335e[idx]
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args sub_5099335e[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    return (s * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length)
}

function getBalanceToken(address arg1) {
    idx = 0
    s = 0
    while idx < sub_5099335e.length:
        mem[0] = 3
        mem[100] = sub_5099335e[idx]
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args sub_5099335e[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    return (s * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length * sub_5099335e.length)
}

function sub_9706361f(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if arg2.length < threshold:
        revert with 0, 'Number of signatures does not match'
    if arg2.length != arg3.length:
        revert with 0, 'Different number of signatures in separated arrays'
    if arg2.length != arg1.length:
        revert with 0, 'Different number of signatures in separated arrays'
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288] = nonce
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 320] = address(this.address)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 340 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 340 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = (32 * arg5.length) + (96 * arg4.length) + 52
    mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 340 len floor32((32 * arg5.length) + (96 * arg4.length) + 52)] = nonce, mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 320 len floor32((32 * arg5.length) + (96 * arg4.length) + 52) - 32]
    mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32((32 * arg5.length) + (96 * arg4.length) + 52) + -((32 * arg5.length) + (96 * arg4.length) + 52 % 32) + 372 len (32 * arg5.length) + (96 * arg4.length) + 52 % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + floor32((32 * arg5.length) + (96 * arg4.length) + 52) + -((32 * arg5.length) + (96 * arg4.length) + 52 % 32) + 320 len (32 * arg5.length) + (96 * arg4.length) + 52 % 32]
    _281 = sha3(mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 340 len (32 * arg5.length) + (96 * arg4.length) + 52])
    mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 340] = 28
    mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 372] = '\x19Ethereum Signed Message:\n32'
    require 0 < arg1.length
    require 0 < arg2.length
    require 0 < arg3.length
    mem[64] = (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 436
    mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 436] = _281
    mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 468] = mem[159 len 1]
    mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 500] = mem[(32 * arg1.length) + 160]
    mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 532] = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
    signer = erecover(_281, mem[128] << 248, mem[(32 * arg1.length) + 160], mem[(32 * arg1.length) + (32 * arg2.length) + 192]) 
    mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 404] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0] = address(signer)
    mem[32] = 2
    if stor2[address(signer)]:
        s = 0
        idx = 0
        s = 0
        while idx < threshold:
            require idx < mem[96]
            _366 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _368 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _376 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            _377 = mem[64]
            mem[64] = mem[64] + 32
            mem[_377 + 32] = _281
            mem[_377 + 64] = uint8(_366)
            mem[_377 + 96] = _368
            mem[_377 + 128] = _376
            signer = erecover(_281, _366 << 248, _368, _376) 
            mem[_377] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) <= address(s):
                revert with 0, 'Wrong signature'
            mem[0] = address(signer)
            mem[32] = 2
            if not stor2[address(signer)]:
                revert with 0, 'Wrong signature'
            s = signer
            idx = idx + 1
            s = signer
            continue 
    else:
        mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 468 len 0] = None
        mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 472 len 28] = Mask(224, 0, '\x19Ethereum Signed Message:\n32')
        mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 496] = _281
        mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 436] = (127 * arg5.length) + 60
        mem[64] = (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 528
        mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 528 len floor32((127 * arg5.length) + 60)] = mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 468 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 496 len floor32((127 * arg5.length) + 60) - 28]
        mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32((127 * arg5.length) + 60) + -((127 * arg5.length) + 60 % 32) + 560 len (127 * arg5.length) + 60 % 32] = mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32((127 * arg5.length) + 60) + -((127 * arg5.length) + 60 % 32) + 500 len (127 * arg5.length) + 60 % 32]
        _425 = sha3(mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 528 len (127 * arg5.length) + 60])
        s = 0
        idx = 0
        s = 0
        while idx < threshold:
            require idx < mem[96]
            _460 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _462 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _465 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            _466 = mem[64]
            mem[64] = mem[64] + 32
            mem[_466 + 32] = _425
            mem[_466 + 64] = uint8(_460)
            mem[_466 + 96] = _462
            mem[_466 + 128] = _465
            signer = erecover(_425, _460 << 248, _462, _465) 
            mem[_466] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) <= address(s):
                revert with 0, 'Wrong signature'
            mem[0] = address(signer)
            mem[32] = 2
            if not stor2[address(signer)]:
                revert with 0, 'Wrong signature'
            s = signer
            idx = idx + 1
            s = signer
            continue 
    nonce++
    idx = 0
    while idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
        call mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20] with:
           value mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] wei
             gas sub_500bf72f wei
        if not ext_call.success:
            revert with 0, 'Withdrawal failed'
        idx = idx + 1
        continue 
}



}
