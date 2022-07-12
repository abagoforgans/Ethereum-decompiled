contract main {




// =====================  Runtime code  =====================


#
#  - verify(bytes32 arg1, uint8[] arg2, bytes32[] arg3, bytes32[] arg4)
#  - sub_64a15da0(?)
#  - sub_9706361f(?)
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

function sub_d4cf9655(?) {
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
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = arg7.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    require arg2.length >= threshold
    require arg2.length == arg3.length
    require arg2.length == arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 320] = nonce
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 352] = address(this.address)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 372] = address(arg6)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 392 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + (32 * arg7.length) + 392 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 392 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 288] = (32 * arg7.length) + (32 * arg5.length) + (32 * arg4.length) + 72
    mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 392 len floor32((32 * arg7.length) + (32 * arg5.length) + (32 * arg4.length) + 72)] = nonce, this.address, mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 372 len floor32((32 * arg7.length) + (32 * arg5.length) + (32 * arg4.length) + 72) - 52]
    mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32((32 * arg7.length) + (32 * arg5.length) + (32 * arg4.length) + 72) + -((32 * arg7.length) + (32 * arg5.length) + (32 * arg4.length) + 72 % 32) + 424 len (32 * arg7.length) + (32 * arg5.length) + (32 * arg4.length) + 72 % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + floor32((32 * arg7.length) + (32 * arg5.length) + (32 * arg4.length) + 72) + -((32 * arg7.length) + (32 * arg5.length) + (32 * arg4.length) + 72 % 32) + 352 len (32 * arg7.length) + (32 * arg5.length) + (32 * arg4.length) + 72 % 32]
    _503 = sha3(mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 392 len (32 * arg7.length) + (130 * arg5.length) + (32 * arg4.length) + 72])
    mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 392] = 28
    mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 424] = '\x19Ethereum Signed Message:\n32'
    require 0 < arg1.length
    require 0 < arg2.length
    require 0 < arg3.length
    mem[64] = (64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 488
    mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 488] = _503
    mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 520] = mem[159 len 1]
    mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 552] = mem[(32 * arg1.length) + 160]
    mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 584] = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
    signer = erecover(_503, mem[128] << 248, mem[(32 * arg1.length) + 160], mem[(32 * arg1.length) + (32 * arg2.length) + 192]) 
    mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 456] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if stor2[address(signer)]:
        s = 0
        idx = 0
        s = 0
        while idx < threshold:
            require idx < mem[96]
            _622 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _624 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _632 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            _633 = mem[64]
            mem[64] = mem[64] + 32
            mem[_633 + 32] = _503
            mem[_633 + 64] = uint8(_622)
            mem[_633 + 96] = _624
            mem[_633 + 128] = _632
            signer = erecover(_503, _622 << 248, _624, _632) 
            mem[_633] = signer
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
        _710 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        idx = 0
        s = 0
        while idx < _710:
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
            _783 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
            t = 0
            s = 0
            t = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
            while s < _783:
                require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
                _786 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]
                mem[mem[64] + 4] = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 300 len 20]
                require ext_code.size(arg6)
                call arg6.0x70a08231 with:
                     gas gas_remaining wei
                    args address(_786)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
                if ext_call.return_data[0] <= t:
                    _807 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = arg6
                    require ext_code.size(address(_807))
                    call address(_807).transferToken(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], ext_call.return_data[0], arg6
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _710 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                    _783 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
                    t = ext_call.return_data[0]
                    s = s + 1
                    t = t - ext_call.return_data[0]
                    continue 
                _809 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]
                mem[mem[64] + 36] = t
                mem[mem[64] + 68] = arg6
                require ext_code.size(address(_809))
                call address(_809).transferToken(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], t, arg6
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _710 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                _783 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
                t = ext_call.return_data[0]
                s = s + 1
                t = 0
                continue 
            _710 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
            idx = idx + 1
            s = t
            continue 
    else:
        mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 520 len 0] = None
        mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 524 len 28] = Mask(224, 0, '\x19Ethereum Signed Message:\n32')
        mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 548] = _503
        mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 488] = (127 * arg7.length) + 60
        mem[64] = (64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 580
        mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 580 len floor32((127 * arg7.length) + 60)] = mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 520 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 548 len floor32((127 * arg7.length) + 60) - 28]
        mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32((127 * arg7.length) + 60) + -((127 * arg7.length) + 60 % 32) + 612 len (127 * arg7.length) + 60 % 32] = mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32((127 * arg7.length) + 60) + -((127 * arg7.length) + 60 % 32) + 552 len (127 * arg7.length) + 60 % 32]
        _715 = sha3(mem[(64 * arg7.length) + (64 * arg5.length) + (64 * arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 580 len (127 * arg7.length) + 60])
        s = 0
        idx = 0
        s = 0
        while idx < threshold:
            require idx < mem[96]
            _789 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _791 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _795 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            _796 = mem[64]
            mem[64] = mem[64] + 32
            mem[_796 + 32] = _715
            mem[_796 + 64] = uint8(_789)
            mem[_796 + 96] = _791
            mem[_796 + 128] = _795
            signer = erecover(_715, _789 << 248, _791, _795) 
            mem[_796] = signer
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
        _848 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        idx = 0
        s = 0
        while idx < _848:
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
            _874 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
            t = 0
            s = 0
            t = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
            while s < _874:
                require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
                _876 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]
                mem[mem[64] + 4] = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 300 len 20]
                require ext_code.size(arg6)
                call arg6.0x70a08231 with:
                     gas gas_remaining wei
                    args address(_876)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require s < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
                if ext_call.return_data[0] <= t:
                    _883 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = arg6
                    require ext_code.size(address(_883))
                    call address(_883).transferToken(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], ext_call.return_data[0], arg6
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _848 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                    _874 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
                    t = ext_call.return_data[0]
                    s = s + 1
                    t = t - ext_call.return_data[0]
                    continue 
                _885 = mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 236 len 20]
                mem[mem[64] + 36] = t
                mem[mem[64] + 68] = arg6
                require ext_code.size(address(_885))
                call address(_885).transferToken(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], t, arg6
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _848 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                _874 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
                t = ext_call.return_data[0]
                s = s + 1
                t = 0
                continue 
            _848 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
            idx = idx + 1
            s = t
            continue 
}



}
