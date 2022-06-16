contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address owner_; offset 8
uint256 stor1;
uint256 stor2;
array of uint256 stor3;
mapping of uint8 stor5;

function isActivated() {
    return bool(stor0)
}

function owner_() {
    return owner_
}

function _fallback() payable {
    revert
}

function sub_dfaca421(?) {
    return (arg1 - stor1 / 3 * 3600)
}

function addRequester(address arg1) {
    if owner_ != msg.sender:
        revert with 0, 'Sorry, Owner Only!'
    stor5[address(arg1)] = 1
    emit 0x8112c89b: arg1
}

function removeRequester(address arg1) {
    if owner_ != msg.sender:
        revert with 0, 'Sorry, Owner Only!'
    stor5[address(arg1)] = 0
    emit 0xf2f0fac6: arg1
}

function activate() {
    if owner_ != msg.sender:
        revert with 0, 'Sorry, Owner Only!'
    stor0 = 1
    stor2 = 0
    stor1 = block.timestamp
    emit 0x11c309d0 
}

function getTimeRemaining(uint256 arg1) {
    if block.timestamp - stor1 / 3 * 3600 <= arg1:
        return (stor1 + (3 * 3600 * arg1) + -block.timestamp + (3 * 3600))
    else:
        return 0
}

function sub_011b0d3c(?) {
    if block.timestamp - stor1 / 3 * 3600 <= arg1:
        if arg2 < 10:
            return not stor1 + (3 * 3600 * arg1) + -block.timestamp + (3 * 3600), stor3[arg1][arg2]
    else:
        if arg2 < 10:
            return 1, stor3[arg1][arg2]
    ('ge', ('param', 'arg2'), 10)
    revert
}

function getResult(uint256 arg1) {
    idx = 0
    s = 0
    while idx < 10:
        mem[0] = arg1
        mem[32] = 3
        idx = idx + 1
        s = (10 * s) + stor3[arg1][idx]
        continue 
    if block.timestamp - stor1 / 3 * 3600 <= arg1:
        return not stor1 + (3 * 3600 * arg1) + -block.timestamp + (3 * 3600), 
               0xb616a12b7fe617aa577b986b314d60092381cf8591999d6395d7ddc4214135713f2f3b70f28505222d0f4fbc32d810000000000000000000000000000000000000000 * s
    return 1, 
           0xb616a12b7fe617aa577b986b314d60092381cf8591999d6395d7ddc4214135713f2f3b70f28505222d0f4fbc32d810000000000000000000000000000000000000000 * s
}

function sub_22ad7997(?) {
    mem[64] = 416
    mem[96 len 320] = code.data[3188 len 320]
    if bool(stor0) != 1:
        revert with 0, 'Sorry, Haven't activated yet!'
    mem[0] = msg.sender
    mem[32] = 5
    if bool(stor5[address(msg.sender)]) != 1:
        revert with 0, 'Sorry, Requesters Only!'
    if block.timestamp - stor1 / 3 * 3600 == stor2:
        idx = 0
        while idx < 10:
            mem[(32 * idx) + 96] = idx
            idx = idx + 1
            continue 
        s = 0
        idx = 0
        s = 9
        t = arg1
        while idx < 10:
            _19 = mem[64]
            mem[mem[64] + 32] = block.timestamp
            mem[mem[64] + 64] = block.difficulty
            mem[mem[64] + 96] = address(block.coinbase)
            mem[mem[64] + 116] = t
            _20 = mem[64]
            mem[mem[64]] = 116
            mem[64] = mem[64] + 148
            _22 = mem[_20]
            v = _20 + 32
            w = mem[64]
            u = mem[_20]
            while u >= 32:
                mem[w] = mem[v]
                v = v + 32
                w = w + 32
                u = u - 32
                continue 
            mem[mem[64] + floor32(mem[_20])] = mem[_20 + floor32(mem[_20]) + -(mem[_20] % 32) + 64 len mem[_20] % 32] or Mask(8 * -(mem[_20] % 32) + 32, -(8 * -(mem[_20] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_20])])
            _38 = sha3(mem[mem[64] len _22 + _19 + -mem[64] + 148])
            require s + 1
            require sha3(mem[mem[64] len _22 + _19 + -mem[64] + 148]) % s + 1 < 10
            _40 = mem[(32 * sha3(mem[mem[64] len _22 + _19 + -mem[64] + 148]) % s + 1) + 96]
            mem[0] = stor2
            mem[32] = 3
            require s < 10
            stor3[stor2][s] = _40
            require _38 % s + 1 < 10
            mem[(32 * _38 % s + 1) + 96] = mem[(32 * s) + 96]
            s = _38 % s + 1
            idx = idx + 1
            s = s - 1
            t = t * _38 % s + 1
            continue 
        idx = 0
        s = 0
        while idx < 10:
            mem[0] = stor2
            mem[32] = 3
            idx = idx + 1
            s = (10 * s) + stor3[stor2][idx]
            continue 
        emit 0x4265c2c7: (0xb616a12b7fe617aa577b986b314d60092381cf8591999d6395d7ddc4214135713f2f3b70f28505222d0f4fbc32d810000000000000000000000000000000000000000 * s), stor2
        stor2 = block.timestamp - stor1 / 3 * 3600
}



}
