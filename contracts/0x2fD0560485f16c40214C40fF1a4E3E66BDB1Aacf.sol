contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[2272 len 20]
    return code.data[75 len 2185]
}



// =====================  Runtime code  =====================


address sub_44624e34Address;
mapping of struct sub_5fa80c12;

function sub_44624e34(?) {
    return sub_44624e34Address
}

function sub_5fa80c12(?) {
    return sub_5fa80c12[arg1].field_0, uint64(sub_5fa80c12[arg1].field_512)
}

function _fallback() payable {
    revert
}

function sub_9844edbd(?) {
    if uint64(sub_5fa80c12[arg1].field_512):
        return not bool(uint64(sub_5fa80c12[arg1].field_512))
    require sub_5fa80c12[arg1].field_256 - 1 < sub_5fa80c12[arg1].field_256
    return uint64(block.timestamp - stor((0.25 / Mask(256, 256, stor[('map', ('param', 'arg1'), ('name', 'stor1', 1))]) - 1) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor1', 1))))[uint8(stor1[arg1].field_256 - 1)]) <= 5400
}

function sub_1948a08b(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    return sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32])
}

function sub_c4a1928e(?) {
    if sub_5fa80c12[arg1].field_256:
        mem[160] = uint64(sub_5fa80c12[arg1][1].field_0)
        idx = 160
        s = 0
        while (32 * sub_5fa80c12[arg1].field_256) + 128 > idx:
            mem[idx + 32] = uint64(sub_5fa80c12[arg1][1].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s))
            idx = idx + 32
            s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
            continue 
    mem[(32 * sub_5fa80c12[arg1].field_256) + 160] = 32
    mem[(32 * sub_5fa80c12[arg1].field_256) + 192] = sub_5fa80c12[arg1].field_256
    if Mask(251, 0, sub_5fa80c12[arg1].field_256):
        mem[(32 * sub_5fa80c12[arg1].field_256) + 224] = mem[160]
        mem[(32 * sub_5fa80c12[arg1].field_256) + 256 len floor32((32 * sub_5fa80c12[arg1].field_256) - 1)] = mem[192 len floor32((32 * sub_5fa80c12[arg1].field_256) - 1)]
    return Array(len=sub_5fa80c12[arg1].field_256, data=mem[(32 * sub_5fa80c12[arg1].field_256) + 224 len 32 * sub_5fa80c12[arg1].field_256]), 
}

function sub_c359febb(?) {
    require ext_code.size(sub_44624e34Address)
    call sub_44624e34Address.0x39bc5a53 with:
         gas gas_remaining - 50 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        if not uint64(sub_5fa80c12[arg1].field_512):
            sub_5fa80c12[arg1].field_0 = arg2
            sub_5fa80c12[arg1].field_256++
            if not sub_5fa80c12[arg1].field_256 <= sub_5fa80c12[arg1].field_256 + 1:
                idx = sub_5fa80c12[arg1].field_256 + 4 / 4
                while sub_5fa80c12[arg1].field_256 + 3 / 4 > idx:
                    sub_5fa80c12[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            stor[Mask(254, 0, sub_5fa80c12[arg1].field_258) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_5fa80c12', 1)))].field_0 = !(test266151307() * 256^(8 * sub_5fa80c12[arg1].field_256 % 4)) and stor[Mask(254, 0, sub_5fa80c12[arg1].field_258) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_5fa80c12', 1)))].field_0 or 256^(8 * sub_5fa80c12[arg1].field_256 % 4) * uint64(block.timestamp)
            emit 0x6609fa21: 'IssueChallenge', arg1
}

function sub_9e3ac9af(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg2.length) + 132] = tx.origin
    require ext_code.size(sub_44624e34Address)
    call sub_44624e34Address.0x39bc5a53 with:
         gas gas_remaining - 50 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        if 1 == bool(sub_5fa80c12[arg1].field_0):
            if not uint64(sub_5fa80c12[arg1].field_512):
                require sub_5fa80c12[arg1].field_256 - 1 < sub_5fa80c12[arg1].field_256
                if uint64(block.timestamp - stor((0.25 / Mask(256, 256, stor[('map', ('param', 'arg1'), ('name', 'stor1', 1))]) - 1) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor1', 1))))[uint8(stor1[arg1].field_256 - 1)]) <= 5400:
                    mem[ceil32(arg2.length) + 128] = arg1
                    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                    if sha3(arg1, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32]) == sub_5fa80c12[arg1].field_0:
                        uint64(sub_5fa80c12[arg1].field_512) = uint64(block.timestamp)
                        emit 0x5ad7bf6f: 'ConfirmSolution', arg1
}

function sub_a22541c0(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 164] = tx.origin
    require ext_code.size(sub_44624e34Address)
    call sub_44624e34Address.0x39bc5a53 with:
         gas gas_remaining - 50 wei
        args tx.origin
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0]:
        require arg1.length == arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _31 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _33 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 0
            mem[(32 * arg2.length) + (32 * arg1.length) + 164] = tx.origin
            require ext_code.size(sub_44624e34Address)
            call sub_44624e34Address.0x39bc5a53 with:
                 gas gas_remaining - 50 wei
                args tx.origin
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0]:
                mem[0] = _31
                mem[32] = 1
                if not uint64(sub_5fa80c12[_31].field_512):
                    mem[32] = 1
                    sub_5fa80c12[_31].field_0 = _33
                    sub_5fa80c12[_31].field_256++
                    if not sub_5fa80c12[_31].field_256 <= sub_5fa80c12[_31].field_256 + 1:
                        s = sha3(sha3(_31, 1) + 1) + (sub_5fa80c12[_31].field_256 + 4 / 4)
                        while sha3(sha3(_31, 1) + 1) + (sub_5fa80c12[_31].field_256 + 3 / 4) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    mem[0] = sha3(_31, 1) + 1
                    stor[Mask(254, 0, sub_5fa80c12[_31].field_258) + ('array', 1, ('map', ('var', '_31'), ('name', 'sub_5fa80c12', 1)))].field_0 = !(test266151307() * 256^(8 * sub_5fa80c12[_31].field_256 % 4)) and stor[Mask(254, 0, sub_5fa80c12[_31].field_258) + ('array', 1, ('map', ('var', '_31'), ('name', 'sub_5fa80c12', 1)))].field_0 or 256^(8 * sub_5fa80c12[_31].field_256 % 4) * uint64(block.timestamp)
                    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'IssueChallenge'
                    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = _31
                    emit 0x6609fa21: 'IssueChallenge', _31
            idx = idx + 1
            continue 
}



}
