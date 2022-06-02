contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)


uint8 stor0;
uint8 sub_b1c2c82c; offset 160
uint8 sub_73cd515a; offset 168
uint8 stor0; offset 176
address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of struct stor3;
uint256 startBlock;
uint256 id;

function sub_090a434f(?) {
    return bool(sub_0b165039[arg1][2][address(arg2)].field_768)
}

function sub_0b165039(?) {
    require arg2 < sub_0b165039[arg1].field_768
    return sub_0b165039[arg1][2][stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'sub_0b165039', 6))) + arg2].field_0].field_256
}

function sub_15ec12cd(?) {
    require arg2 < sub_0b165039[arg1].field_768
    return stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'sub_0b165039', 6))) + arg2].field_0
}

function sub_2f6dc41c(?) {
    require id == arg1
    return stor1.length
}

function sub_47f8642f(?) {
    return id
}

function sub_52f4c59b(?) {
    require arg2 < sub_0b165039[arg1].field_768
    return sub_0b165039[arg1][2][stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'sub_0b165039', 6))) + arg2].field_0].field_0
}

function getId() {
    return id
}

function sub_72ec61e7(?) {
    require arg2 < sub_0b165039[arg1].field_768
    return sub_0b165039[arg1][2][stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'sub_0b165039', 6))) + arg2].field_0].field_512
}

function sub_73cd515a(?) {
    return sub_73cd515a
}

function sub_89ccf6e9(?) {
    require id == arg1
    return sub_0b165039[arg1].field_2048
}

function getPrizeAmount(uint256 arg1) {
    require id == arg1
    return sub_0b165039[arg1].field_1024
}

function getStartBlock() {
    return startBlock
}

function sub_b1c2c82c(?) {
    return sub_b1c2c82c
}

function getFinished() {
    return bool(stor3.length)
}

function getRandom(uint256 arg1) {
    require id == arg1
    return sub_0b165039[arg1].field_1792
}

function sub_ea451e8c(?) {
    return sub_0b165039[arg1].field_768
}

function sub_ec61a5b4(?) {
    return bool(sub_0b165039[arg1][2][address(arg2)].field_776)
}

function _fallback() payable {
    revert
}

function sub_e2dd0a39(?) {
    return sha3(arg1)
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == address(stor0.field_0)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
}

function sub_b82d2921(?) {
    require msg.sender == address(stor0.field_0)
    require stor3.length
    id++
    sub_b1c2c82c = arg1
    sub_73cd515a = arg2
    uint8(stor0.field_176) = arg3
    stor1.length = 10^18 * arg4 / 100
    stor3.length = 0
    startBlock = block.number
    stor2.length = arg5
    emit 0x5b52c6e2: uint8(stor0.field_0), uint8(stor0.field_0), uint8(stor0.field_0), stor1.length, stor2.length, startBlock, id
}

function sub_25f22780(?) {
    require block.number <= startBlock + sub_b1c2c82c + sub_73cd515a
    require id == arg1
    require sub_0b165039[arg1][2][address(msg.sender)].field_0
    require sha3(arg2) == sub_0b165039[arg1][2][address(msg.sender)].field_0
    if bool(sub_0b165039[arg1][2][address(msg.sender)].field_768) != 1:
        sub_0b165039[arg1][2][address(msg.sender)].field_768 = 1
        sub_0b165039[arg1][2][address(msg.sender)].field_256 = arg2
        sub_0b165039[arg1].field_1280 += sub_0b165039[arg1][2][address(msg.sender)].field_512
        sub_0b165039[arg1].field_1536++
        emit 0xb9ec8de8: arg2, sub_0b165039[arg1].field_1536, arg3, arg1, msg.sender
}

function sub_6f0485b4(?) payable {
    require msg.value >= stor1.length
    require block.number <= startBlock + sub_b1c2c82c
    require id == arg1
    require not sub_0b165039[arg1][2][address(msg.sender)].field_0
    if sub_0b165039[arg1].field_768:
        idx = 1056
        s = 0
        while (32 * sub_0b165039[arg1].field_768) + 1024 > idx:
            mem[idx + 32] = sub_0b165039[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if sub_0b165039[arg1].field_768:
        sub_0b165039[arg1].field_768++
        stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'sub_0b165039', 6))) + sub_0b165039[arg1].field_768].field_0 = msg.sender
        sub_0b165039[arg1][2][address(msg.sender)].field_0 = arg2
        sub_0b165039[arg1][2][address(msg.sender)].field_256 = 0
        sub_0b165039[arg1][2][address(msg.sender)].field_512 = msg.value
        sub_0b165039[arg1][2][address(msg.sender)].field_768 = 0
        sub_0b165039[arg1][2][address(msg.sender)].field_776 = 0
        sub_0b165039[arg1].field_1024 += msg.value
    else:
        sub_0b165039[arg1].field_0 = sub_b1c2c82c
        sub_0b165039[arg1].field_8 = sub_73cd515a
        sub_0b165039[arg1].field_16 = uint8(stor0.field_176)
        sub_0b165039[arg1].field_256 = stor1.length
        sub_0b165039[arg1].field_768++
        stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'sub_0b165039', 6))) + sub_0b165039[arg1].field_768].field_0 = msg.sender
        sub_0b165039[arg1][2][address(msg.sender)].field_0 = arg2
        sub_0b165039[arg1][2][address(msg.sender)].field_256 = 0
        sub_0b165039[arg1][2][address(msg.sender)].field_512 = msg.value
        sub_0b165039[arg1][2][address(msg.sender)].field_768 = 0
        sub_0b165039[arg1][2][address(msg.sender)].field_776 = 0
        sub_0b165039[arg1].field_2304 = stor2.length
        sub_0b165039[arg1].field_1024 = msg.value
    emit 0x618cb075: arg2, arg1, arg3, msg.sender, msg.value
}

function open(uint256 arg1) {
    require not sub_0b165039[arg1].field_2208
    require msg.sender == address(stor0.field_0)
    require block.number >= startBlock + sub_b1c2c82c + sub_73cd515a
    require not stor3.length
    mem[0] = arg1
    mem[32] = 6
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[64] = (32 * sub_0b165039[arg1].field_768) + 288
    mem[256] = sub_0b165039[arg1].field_768
    if not sub_0b165039[arg1].field_768:
        s = 96
        s = 0
        idx = 0
        s = 0
        while idx < sub_0b165039[arg1].field_768:
            require idx < mem[256]
            _36 = mem[(32 * idx) + 288]
            mem[0] = mem[(32 * idx) + 300 len 20]
            mem[32] = sha3(arg1, 6) + 2
            _37 = sha3(mem[(32 * idx) + 300 len 20], sha3(arg1, 6) + 2)
            _38 = mem[64]
            mem[64] = mem[64] + 160
            mem[_38] = sub_0b165039[arg1][2][mem[(32 * idx) + 300 len 20]].field_0
            mem[_38 + 32] = stor1[_37]
            mem[_38 + 64] = stor2[_37]
            mem[_38 + 96] = bool(stor3[_37].field_0)
            mem[_38 + 128] = bool(stor3[_37].field_8)
            if bool(stor3[_37].field_0) != 1:
                s = _38
                s = _36
                idx = idx + 1
                s = s
                continue 
            s = _38
            s = _36
            idx = idx + 1
            s = s xor stor1[_37]
            continue 
        mem[mem[64]] = s
        _35 = mem[64]
        mem[64] = mem[64] + (32 * sub_0b165039[arg1].field_768) + 32
        mem[_35] = sub_0b165039[arg1].field_768
        if not sub_0b165039[arg1].field_768:
            t = 0
            u = 0
            u = 0
            idx = 0
            u = 0
            v = 0
            while idx < sub_0b165039[arg1].field_768:
                require idx < mem[_35]
                _61 = mem[(32 * idx) + _35 + 32]
                mem[0] = mem[(32 * idx) + _35 + 44 len 20]
                mem[32] = sha3(arg1, 6) + 2
                if bool(sub_0b165039[arg1][2][mem[0]].field_768) == 1:
                    if sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256 <= v:
                        t = sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256
                        u = sha3(mem[0], sha3(arg1, 6) + 2)
                        u = _61
                        idx = idx + 1
                        u = u
                        v = v
                        continue 
                    t = sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256
                    u = sha3(mem[0], sha3(arg1, 6) + 2)
                    u = _61
                    idx = idx + 1
                    u = _61
                    v = sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256
                    continue 
                if not sub_0b165039[arg1][2][mem[0]].field_776:
                    call address(_61) with:
                       value 8 * sub_0b165039[arg1][2][mem[0]].field_512 / 10 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        sub_0b165039[arg1][2][mem[0]].field_776 = 1
                t = t
                u = sha3(mem[0], sha3(arg1, 6) + 2)
                u = _61
                idx = idx + 1
                u = u
                v = v
                continue 
        else:
            mem[0] = sha3(arg1, 6) + 3
            mem[_35 + 32] = sub_0b165039[arg1][3].field_0
            idx = _35 + 32
            t = 0
            while _35 + (32 * sub_0b165039[arg1].field_768) > idx:
                mem[idx + 32] = sub_0b165039[arg1][t + 3].field_256
                idx = idx + 32
                t = t + 1
                continue 
            t = 0
            u = 0
            u = 0
            idx = 0
            u = 0
            v = 0
            while idx < sub_0b165039[arg1].field_768:
                require idx < mem[_35]
                _134 = mem[(32 * idx) + _35 + 32]
                mem[0] = mem[(32 * idx) + _35 + 44 len 20]
                mem[32] = sha3(arg1, 6) + 2
                if bool(sub_0b165039[arg1][2][mem[0]].field_768) == 1:
                    if sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256 <= v:
                        t = sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256
                        u = sha3(mem[0], sha3(arg1, 6) + 2)
                        u = _134
                        idx = idx + 1
                        u = u
                        v = v
                        continue 
                    t = sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256
                    u = sha3(mem[0], sha3(arg1, 6) + 2)
                    u = _134
                    idx = idx + 1
                    u = _134
                    v = sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256
                    continue 
                if not sub_0b165039[arg1][2][mem[0]].field_776:
                    call address(_134) with:
                       value 8 * sub_0b165039[arg1][2][mem[0]].field_512 / 10 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        sub_0b165039[arg1][2][mem[0]].field_776 = 1
                t = t
                u = sha3(mem[0], sha3(arg1, 6) + 2)
                u = _134
                idx = idx + 1
                u = u
                v = v
                continue 
        sub_0b165039[arg1].field_2048 = address(u)
        sub_0b165039[arg1].field_1792 = sha3(s)
        call address(stor0.field_0) with:
           value sub_0b165039[arg1].field_1280 - (sub_0b165039[arg1].field_1280 * stor2.length / 100) wei
             gas 2300 * is_zero(value) wei
        call address(u) with:
           value sub_0b165039[arg1].field_1280 * stor2.length / 100 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            sub_0b165039[arg1].field_2208 = 1
            emit 0xeb6dd3ea: sha3(s), sub_0b165039[arg1].field_1280 * stor2.length / 100, arg1, address(u)
    else:
        mem[0] = sha3(arg1, 6) + 3
        mem[288] = sub_0b165039[arg1][3].field_0
        idx = 288
        s = 0
        while (32 * sub_0b165039[arg1].field_768) + 256 > idx:
            mem[idx + 32] = sub_0b165039[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        s = 96
        s = 0
        idx = 0
        s = 0
        while idx < sub_0b165039[arg1].field_768:
            require idx < mem[256]
            _98 = mem[(32 * idx) + 288]
            mem[0] = mem[(32 * idx) + 300 len 20]
            mem[32] = sha3(arg1, 6) + 2
            _99 = sha3(mem[(32 * idx) + 300 len 20], sha3(arg1, 6) + 2)
            _100 = mem[64]
            mem[64] = mem[64] + 160
            mem[_100] = sub_0b165039[arg1][2][mem[(32 * idx) + 300 len 20]].field_0
            mem[_100 + 32] = stor1[_99]
            mem[_100 + 64] = stor2[_99]
            mem[_100 + 96] = bool(stor3[_99].field_0)
            mem[_100 + 128] = bool(stor3[_99].field_8)
            if bool(stor3[_99].field_0) != 1:
                s = _100
                s = _98
                idx = idx + 1
                s = s
                continue 
            s = _100
            s = _98
            idx = idx + 1
            s = s xor stor1[_99]
            continue 
        mem[mem[64]] = s
        _97 = mem[64]
        mem[64] = mem[64] + (32 * sub_0b165039[arg1].field_768) + 32
        mem[_97] = sub_0b165039[arg1].field_768
        if not sub_0b165039[arg1].field_768:
            t = 0
            u = 0
            u = 0
            idx = 0
            u = 0
            v = 0
            while idx < sub_0b165039[arg1].field_768:
                require idx < mem[_97]
                _140 = mem[(32 * idx) + _97 + 32]
                mem[0] = mem[(32 * idx) + _97 + 44 len 20]
                mem[32] = sha3(arg1, 6) + 2
                if bool(sub_0b165039[arg1][2][mem[0]].field_768) == 1:
                    if sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256 <= v:
                        t = sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256
                        u = sha3(mem[0], sha3(arg1, 6) + 2)
                        u = _140
                        idx = idx + 1
                        u = u
                        v = v
                        continue 
                    t = sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256
                    u = sha3(mem[0], sha3(arg1, 6) + 2)
                    u = _140
                    idx = idx + 1
                    u = _140
                    v = sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256
                    continue 
                if not sub_0b165039[arg1][2][mem[0]].field_776:
                    call address(_140) with:
                       value 8 * sub_0b165039[arg1][2][mem[0]].field_512 / 10 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        sub_0b165039[arg1][2][mem[0]].field_776 = 1
                t = t
                u = sha3(mem[0], sha3(arg1, 6) + 2)
                u = _140
                idx = idx + 1
                u = u
                v = v
                continue 
        else:
            mem[0] = sha3(arg1, 6) + 3
            mem[_97 + 32] = sub_0b165039[arg1][3].field_0
            idx = _97 + 32
            t = 0
            while _97 + (32 * sub_0b165039[arg1].field_768) > idx:
                mem[idx + 32] = sub_0b165039[arg1][t + 3].field_256
                idx = idx + 32
                t = t + 1
                continue 
            t = 0
            u = 0
            u = 0
            idx = 0
            u = 0
            v = 0
            while idx < sub_0b165039[arg1].field_768:
                require idx < mem[_97]
                _168 = mem[(32 * idx) + _97 + 32]
                mem[0] = mem[(32 * idx) + _97 + 44 len 20]
                mem[32] = sha3(arg1, 6) + 2
                if bool(sub_0b165039[arg1][2][mem[0]].field_768) == 1:
                    if sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256 <= v:
                        t = sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256
                        u = sha3(mem[0], sha3(arg1, 6) + 2)
                        u = _168
                        idx = idx + 1
                        u = u
                        v = v
                        continue 
                    t = sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256
                    u = sha3(mem[0], sha3(arg1, 6) + 2)
                    u = _168
                    idx = idx + 1
                    u = _168
                    v = sha3(s) xor sub_0b165039[arg1][2][mem[0]].field_256
                    continue 
                if not sub_0b165039[arg1][2][mem[0]].field_776:
                    call address(_168) with:
                       value 8 * sub_0b165039[arg1][2][mem[0]].field_512 / 10 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        sub_0b165039[arg1][2][mem[0]].field_776 = 1
                t = t
                u = sha3(mem[0], sha3(arg1, 6) + 2)
                u = _168
                idx = idx + 1
                u = u
                v = v
                continue 
        sub_0b165039[arg1].field_2048 = address(u)
        sub_0b165039[arg1].field_1792 = sha3(s)
        call address(stor0.field_0) with:
           value sub_0b165039[arg1].field_1280 - (sub_0b165039[arg1].field_1280 * stor2.length / 100) wei
             gas 2300 * is_zero(value) wei
        call address(u) with:
           value sub_0b165039[arg1].field_1280 * stor2.length / 100 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            sub_0b165039[arg1].field_2208 = 1
            emit 0xeb6dd3ea: sha3(s), sub_0b165039[arg1].field_1280 * stor2.length / 100, arg1, address(u)
    stor3.length = 1
}



}
