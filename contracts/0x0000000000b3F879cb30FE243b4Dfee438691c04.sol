contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 4701]




// =====================  Runtime code  =====================


const name = 'Gastoken.io'

const decimals = 2

const symbol = 'GST2'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor2;
uint256 stor3;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (stor2 - stor3)
}

function transfer(address arg1, uint256 arg2) {
    if arg2 > balanceOf[address(msg.sender)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) {
    idx = 0
    while idx < arg1:
        mem[96] = 0x756eb3f879cb30fe243b4dfee438691c043318585733ff6000526016600af3
        create contract with 0 wei
                        code: 0x756eb3f879cb30fe243b4dfee438691c043318585733ff6000526016600af3
        idx = idx + 1
        continue 
    stor2 += arg1
    balanceOf[address(msg.sender)] += arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    if arg3 > balanceOf[address(arg1)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}

function free(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    mem[0] = msg.sender
    mem[32] = 0
    if arg1 > balanceOf[address(msg.sender)]:
        return 0
    idx = stor3 + 1
    while idx <= stor3 + arg1:
        require idx <= test266151307()
        if 0 >= idx:
            s = 1
            t = 0
            while idx >= s:
                s = 256 * s
                t = t + 1
                continue 
            if 0 >= idx:
                _82 = mem[64]
                mem[64] = mem[64] + 32
                mem[_82] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                call address(sha3(mem[_82 len t + 23])) with:
                     gas gas_remaining - 25710 wei
            else:
                if idx >= 128:
                    _86 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_86] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_86 len t + 23])) with:
                         gas gas_remaining - 25710 wei
                else:
                    _88 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_88] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_88 len t + 23])) with:
                         gas gas_remaining - 25710 wei
        else:
            if idx < 128:
                if 0 >= idx:
                    _46 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_46] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                    call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                         gas gas_remaining - 25710 wei
                else:
                    if idx >= 128:
                        _48 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_48] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        _50 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_50] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                             gas gas_remaining - 25710 wei
            else:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if 0 >= idx:
                    _84 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_84] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_84 len t + 23])) with:
                         gas gas_remaining - 25710 wei
                else:
                    if idx >= 128:
                        _90 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_90] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_90 len t + 23])) with:
                             gas gas_remaining - 25710 wei
                    else:
                        _92 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_92] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_92 len t + 23])) with:
                             gas gas_remaining - 25710 wei
        idx = idx + 1
        continue 
    stor3 += arg1
    balanceOf[address(msg.sender)] -= arg1
    return 1
}

function freeFrom(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    if arg2 > balanceOf[address(arg1)]:
        return 0
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 1)
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    idx = stor3 + 1
    while idx <= stor3 + arg2:
        require idx <= test266151307()
        if 0 >= idx:
            s = 1
            t = 0
            while idx >= s:
                s = 256 * s
                t = t + 1
                continue 
            if 0 >= idx:
                _88 = mem[64]
                mem[64] = mem[64] + 32
                mem[_88] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                call address(sha3(mem[_88 len t + 23])) with:
                     gas gas_remaining - 25710 wei
            else:
                if idx >= 128:
                    _92 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_92] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_92 len t + 23])) with:
                         gas gas_remaining - 25710 wei
                else:
                    _94 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_94] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_94 len t + 23])) with:
                         gas gas_remaining - 25710 wei
        else:
            if idx < 128:
                if 0 >= idx:
                    _52 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_52] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                    call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                         gas gas_remaining - 25710 wei
                else:
                    if idx >= 128:
                        _54 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_54] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        _56 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_56] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                             gas gas_remaining - 25710 wei
            else:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if 0 >= idx:
                    _90 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_90] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_90 len t + 23])) with:
                         gas gas_remaining - 25710 wei
                else:
                    if idx >= 128:
                        _96 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_96 len t + 23])) with:
                             gas gas_remaining - 25710 wei
                    else:
                        _98 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_98] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_98 len t + 23])) with:
                             gas gas_remaining - 25710 wei
        idx = idx + 1
        continue 
    stor3 += arg2
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    return 1
}

function freeUpTo(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    mem[0] = msg.sender
    mem[32] = 0
    if arg1 <= balanceOf[address(msg.sender)]:
        idx = stor3 + 1
        while idx <= stor3 + arg1:
            require idx <= test266151307()
            if 0 >= idx:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if 0 >= idx:
                    _158 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_158] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_158 len t + 23])) with:
                         gas gas_remaining - 25710 wei
                else:
                    if idx >= 128:
                        _166 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_166] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_166 len t + 23])) with:
                             gas gas_remaining - 25710 wei
                    else:
                        _168 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_168] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_168 len t + 23])) with:
                             gas gas_remaining - 25710 wei
            else:
                if idx < 128:
                    if 0 >= idx:
                        _86 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_86] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if idx >= 128:
                            _90 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_90] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            _92 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_92] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                                 gas gas_remaining - 25710 wei
                else:
                    s = 1
                    t = 0
                    while idx >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if 0 >= idx:
                        _160 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_160] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_160 len t + 23])) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if idx >= 128:
                            _170 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_170] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_170 len t + 23])) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            _172 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_172] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_172 len t + 23])) with:
                                 gas gas_remaining - 25710 wei
            idx = idx + 1
            continue 
        stor3 += arg1
        balanceOf[address(msg.sender)] -= arg1
        return arg1
    idx = stor3 + 1
    while idx <= stor3 + balanceOf[address(msg.sender)]:
        require idx <= test266151307()
        if 0 >= idx:
            s = 1
            t = 0
            while idx >= s:
                s = 256 * s
                t = t + 1
                continue 
            if 0 >= idx:
                _162 = mem[64]
                mem[64] = mem[64] + 32
                mem[_162] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                call address(sha3(mem[_162 len t + 23])) with:
                     gas gas_remaining - 25710 wei
            else:
                if idx >= 128:
                    _174 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_174] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_174 len t + 23])) with:
                         gas gas_remaining - 25710 wei
                else:
                    _176 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_176] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_176 len t + 23])) with:
                         gas gas_remaining - 25710 wei
        else:
            if idx < 128:
                if 0 >= idx:
                    _88 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_88] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                    call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                         gas gas_remaining - 25710 wei
                else:
                    if idx >= 128:
                        _94 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_94] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        _96 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_96] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                             gas gas_remaining - 25710 wei
            else:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if 0 >= idx:
                    _164 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_164] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_164 len t + 23])) with:
                         gas gas_remaining - 25710 wei
                else:
                    if idx >= 128:
                        _178 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_178] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_178 len t + 23])) with:
                             gas gas_remaining - 25710 wei
                    else:
                        _180 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_180] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_180 len t + 23])) with:
                             gas gas_remaining - 25710 wei
        idx = idx + 1
        continue 
    stor3 += balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    return balanceOf[address(msg.sender)]
}

function freeFromUpTo(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 1)
    if arg2 <= balanceOf[address(arg1)]:
        if arg2 <= allowance[address(arg1)][address(msg.sender)]:
            idx = stor3 + 1
            while idx <= stor3 + arg2:
                require idx <= test266151307()
                if 0 >= idx:
                    s = 1
                    t = 0
                    while idx >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if 0 >= idx:
                        _326 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_326] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_326 len t + 23])) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if idx >= 128:
                            _342 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_342] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_342 len t + 23])) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            _344 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_344] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_344 len t + 23])) with:
                                 gas gas_remaining - 25710 wei
                else:
                    if idx < 128:
                        if 0 >= idx:
                            _182 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_182] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            if idx >= 128:
                                _190 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_190] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                                call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                     gas gas_remaining - 25710 wei
                            else:
                                _192 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_192] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                                call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                                     gas gas_remaining - 25710 wei
                    else:
                        s = 1
                        t = 0
                        while idx >= s:
                            s = 256 * s
                            t = t + 1
                            continue 
                        if 0 >= idx:
                            _328 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_328] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_328 len t + 23])) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            if idx >= 128:
                                _346 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_346] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                call address(sha3(mem[_346 len t + 23])) with:
                                     gas gas_remaining - 25710 wei
                            else:
                                _348 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_348] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                call address(sha3(mem[_348 len t + 23])) with:
                                     gas gas_remaining - 25710 wei
                idx = idx + 1
                continue 
            stor3 += arg2
            balanceOf[address(arg1)] -= arg2
            allowance[address(arg1)][address(msg.sender)] -= arg2
            return arg2
        idx = stor3 + 1
        while idx <= stor3 + allowance[address(arg1)][address(msg.sender)]:
            require idx <= test266151307()
            if 0 >= idx:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if 0 >= idx:
                    _330 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_330] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_330 len t + 23])) with:
                         gas gas_remaining - 25710 wei
                else:
                    if idx >= 128:
                        _350 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_350] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_350 len t + 23])) with:
                             gas gas_remaining - 25710 wei
                    else:
                        _352 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_352] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_352 len t + 23])) with:
                             gas gas_remaining - 25710 wei
            else:
                if idx < 128:
                    if 0 >= idx:
                        _184 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_184] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if idx >= 128:
                            _194 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_194] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            _196 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_196] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                                 gas gas_remaining - 25710 wei
                else:
                    s = 1
                    t = 0
                    while idx >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if 0 >= idx:
                        _332 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_332] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_332 len t + 23])) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if idx >= 128:
                            _354 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_354] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_354 len t + 23])) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            _356 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_356] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_356 len t + 23])) with:
                                 gas gas_remaining - 25710 wei
            idx = idx + 1
            continue 
    else:
        if balanceOf[address(arg1)] <= allowance[address(arg1)][address(msg.sender)]:
            idx = stor3 + 1
            while idx <= stor3 + balanceOf[address(arg1)]:
                require idx <= test266151307()
                if 0 >= idx:
                    s = 1
                    t = 0
                    while idx >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if 0 >= idx:
                        _334 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_334] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_334 len t + 23])) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if idx >= 128:
                            _358 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_358] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_358 len t + 23])) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            _360 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_360] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_360 len t + 23])) with:
                                 gas gas_remaining - 25710 wei
                else:
                    if idx < 128:
                        if 0 >= idx:
                            _186 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_186] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            if idx >= 128:
                                _198 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_198] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                                call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                     gas gas_remaining - 25710 wei
                            else:
                                _200 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_200] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                                call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                                     gas gas_remaining - 25710 wei
                    else:
                        s = 1
                        t = 0
                        while idx >= s:
                            s = 256 * s
                            t = t + 1
                            continue 
                        if 0 >= idx:
                            _336 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_336] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_336 len t + 23])) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            if idx >= 128:
                                _362 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_362] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                call address(sha3(mem[_362 len t + 23])) with:
                                     gas gas_remaining - 25710 wei
                            else:
                                _364 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_364] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                call address(sha3(mem[_364 len t + 23])) with:
                                     gas gas_remaining - 25710 wei
                idx = idx + 1
                continue 
            stor3 += balanceOf[address(arg1)]
            balanceOf[address(arg1)] = 0
            allowance[address(arg1)][address(msg.sender)] -= balanceOf[address(arg1)]
            return balanceOf[address(arg1)]
        idx = stor3 + 1
        while idx <= stor3 + allowance[address(arg1)][address(msg.sender)]:
            require idx <= test266151307()
            if 0 >= idx:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if 0 >= idx:
                    _338 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_338] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_338 len t + 23])) with:
                         gas gas_remaining - 25710 wei
                else:
                    if idx >= 128:
                        _366 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_366] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_366 len t + 23])) with:
                             gas gas_remaining - 25710 wei
                    else:
                        _368 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_368] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_368 len t + 23])) with:
                             gas gas_remaining - 25710 wei
            else:
                if idx < 128:
                    if 0 >= idx:
                        _188 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_188] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if idx >= 128:
                            _202 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_202] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            _204 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_204] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                                 gas gas_remaining - 25710 wei
                else:
                    s = 1
                    t = 0
                    while idx >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if 0 >= idx:
                        _340 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_340] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_340 len t + 23])) with:
                             gas gas_remaining - 25710 wei
                    else:
                        if idx >= 128:
                            _370 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_370] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_370 len t + 23])) with:
                                 gas gas_remaining - 25710 wei
                        else:
                            _372 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_372] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_372 len t + 23])) with:
                                 gas gas_remaining - 25710 wei
            idx = idx + 1
            continue 
    stor3 += allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] = 0
    return allowance[address(arg1)][address(msg.sender)]
}



}
