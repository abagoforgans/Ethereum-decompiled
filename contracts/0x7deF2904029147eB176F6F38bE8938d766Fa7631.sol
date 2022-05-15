contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of address stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor0 = 1
    stor6 = 0
    stor7 = 0
    require not msg.value
    mem[96 len -2804] = code.data[3423 len -2804]
    mem[64] = -2708
    require mem[mem[96] + 96] == mem[mem[128] + 96]
    stor2.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
        mem[0] = mem[160]
        mem[32] = 3
        stor3[mem[160]] = mem[mem[128] + 96]
        if not mem[mem[128] + 96]:
            idx = 0
            while stor3[mem[160]] > idx:
                stor3[mem[160]][idx] = 0
                idx = idx + 1
                continue 
            stor1.length++
            if not stor1.length > stor1.length + 1:
                stor1[stor1.length] = mem[160]
                stor5 = mem[mem[96] + 96]
                idx = 0
                s = 0
                while idx < mem[mem[96] + 96]:
                    require idx < mem[mem[128] + 96]
                    _167 = mem[(32 * idx) + mem[128] + 128]
                    require mem[(32 * idx) + mem[128] + 128] + s >= s
                    idx = idx + 1
                    s = mem[(32 * idx) + mem[128] + 128] + s
                    continue 
                stor4 = _167 * mem[mem[96] + 96]
            else:
                idx = stor1.length + 1
                while stor1.length > idx:
                    stor1[idx] = 0
                    idx = idx + 1
                    continue 
                stor1[stor1.length] = mem[160]
                stor5 = mem[mem[96] + 96]
                idx = 0
                s = 0
                while idx < mem[mem[96] + 96]:
                    require idx < mem[mem[128] + 96]
                    _212 = mem[(32 * idx) + mem[128] + 128]
                    require mem[(32 * idx) + mem[128] + 128] + s >= s
                    idx = idx + 1
                    s = mem[(32 * idx) + mem[128] + 128] + s
                    continue 
                stor4 = _212 * mem[mem[96] + 96]
        else:
            s = 0
            idx = mem[128] + 128
            while mem[128] + (32 * mem[mem[128] + 96]) + 128 > idx:
                stor3[mem[160]][s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[mem[128] + 96]) + 31) >> 5
            while stor3[mem[160]] > idx:
                stor3[mem[160]][idx] = 0
                idx = idx + 1
                continue 
            stor1.length++
            if not stor1.length > stor1.length + 1:
                stor1[stor1.length] = mem[160]
                stor5 = mem[mem[96] + 96]
                idx = 0
                s = 0
                while idx < mem[mem[96] + 96]:
                    require idx < mem[mem[128] + 96]
                    _213 = mem[(32 * idx) + mem[128] + 128]
                    require mem[(32 * idx) + mem[128] + 128] + s >= s
                    idx = idx + 1
                    s = mem[(32 * idx) + mem[128] + 128] + s
                    continue 
                stor4 = _213 * mem[mem[96] + 96]
            else:
                idx = stor1.length + 1
                while stor1.length > idx:
                    stor1[idx] = 0
                    idx = idx + 1
                    continue 
                stor1[stor1.length] = mem[160]
                stor5 = mem[mem[96] + 96]
                idx = 0
                s = 0
                while idx < mem[mem[96] + 96]:
                    require idx < mem[mem[128] + 96]
                    _242 = mem[(32 * idx) + mem[128] + 128]
                    require mem[(32 * idx) + mem[128] + 128] + s >= s
                    idx = idx + 1
                    s = mem[(32 * idx) + mem[128] + 128] + s
                    continue 
                stor4 = _242 * mem[mem[96] + 96]
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor2[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
        mem[0] = mem[160]
        mem[32] = 3
        stor3[mem[160]] = mem[mem[128] + 96]
        if not mem[mem[128] + 96]:
            idx = 0
            while stor3[mem[160]] > idx:
                stor3[mem[160]][idx] = 0
                idx = idx + 1
                continue 
            stor1.length++
            if not stor1.length > stor1.length + 1:
                stor1[stor1.length] = mem[160]
                stor5 = mem[mem[96] + 96]
                idx = 0
                s = 0
                while idx < mem[mem[96] + 96]:
                    require idx < mem[mem[128] + 96]
                    _214 = mem[(32 * idx) + mem[128] + 128]
                    require mem[(32 * idx) + mem[128] + 128] + s >= s
                    idx = idx + 1
                    s = mem[(32 * idx) + mem[128] + 128] + s
                    continue 
                stor4 = _214 * mem[mem[96] + 96]
            else:
                idx = stor1.length + 1
                while stor1.length > idx:
                    stor1[idx] = 0
                    idx = idx + 1
                    continue 
                stor1[stor1.length] = mem[160]
                stor5 = mem[mem[96] + 96]
                idx = 0
                s = 0
                while idx < mem[mem[96] + 96]:
                    require idx < mem[mem[128] + 96]
                    _243 = mem[(32 * idx) + mem[128] + 128]
                    require mem[(32 * idx) + mem[128] + 128] + s >= s
                    idx = idx + 1
                    s = mem[(32 * idx) + mem[128] + 128] + s
                    continue 
                stor4 = _243 * mem[mem[96] + 96]
        else:
            s = 0
            idx = mem[128] + 128
            while mem[128] + (32 * mem[mem[128] + 96]) + 128 > idx:
                stor3[mem[160]][s] = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[mem[128] + 96]) + 31) >> 5
            while stor3[mem[160]] > idx:
                stor3[mem[160]][idx] = 0
                idx = idx + 1
                continue 
            stor1.length++
            if not stor1.length > stor1.length + 1:
                stor1[stor1.length] = mem[160]
                stor5 = mem[mem[96] + 96]
                idx = 0
                s = 0
                while idx < mem[mem[96] + 96]:
                    require idx < mem[mem[128] + 96]
                    _244 = mem[(32 * idx) + mem[128] + 128]
                    require mem[(32 * idx) + mem[128] + 128] + s >= s
                    idx = idx + 1
                    s = mem[(32 * idx) + mem[128] + 128] + s
                    continue 
                stor4 = _244 * mem[mem[96] + 96]
            else:
                idx = stor1.length + 1
                while stor1.length > idx:
                    stor1[idx] = 0
                    idx = idx + 1
                    continue 
                stor1[stor1.length] = mem[160]
                stor5 = mem[mem[96] + 96]
                idx = 0
                s = 0
                while idx < mem[mem[96] + 96]:
                    require idx < mem[mem[128] + 96]
                    _252 = mem[(32 * idx) + mem[128] + 128]
                    require mem[(32 * idx) + mem[128] + 128] + s >= s
                    idx = idx + 1
                    s = mem[(32 * idx) + mem[128] + 128] + s
                    continue 
                stor4 = _252 * mem[mem[96] + 96]
    return code.data[619 len 2804]
}



// =====================  Runtime code  =====================


#
#  - sub_639e88e8(?)
#
uint256 version;
array of uint256 stor1;
array of struct stor2;
mapping of struct stor3;
uint256 sub_a4a5e1fc;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function version() {
    return version
}

function sub_a4a5e1fc(?) {
    require 0 < stor2.length
    idx = 0
    while stor2[idx].field_0 != msg.sender:
        require idx + 1 < stor2.length
        mem[0] = 2
        idx = idx + 1
        continue 
    return sub_a4a5e1fc
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender);
        require msg.value + stor6 >= stor6
        stor6 += msg.value
        require msg.value + stor7 >= stor7
        stor7 += msg.value
}

function sub_413e6cae(?) {
    require 0 < stor2.length
    idx = 0
    while stor2[idx].field_0 != msg.sender:
        require idx + 1 < stor2.length
        mem[0] = 2
        idx = idx + 1
        continue 
    if not stor2.length:
        mem[(32 * stor2.length) + 160] = 32
        mem[(32 * stor2.length) + 192] = stor2.length
        mem[(32 * stor2.length) + 224 len floor32(stor2.length)] = mem[160 len floor32(stor2.length)]
        return memory
          from (32 * stor2.length) + 160
           len (96 * stor2.length) + 64
    mem[160] = address(stor2.field_0)
    idx = 160
    s = 0
    while (32 * stor2.length) + 128 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 224 len floor32(stor2.length)] = mem[160 len floor32(stor2.length)]
    return Array(len=stor2.length, data=mem[160 len floor32(stor2.length)], mem[(32 * stor2.length) + floor32(stor2.length) + 224 len (32 * stor2.length) - floor32(stor2.length)]), 
}

function sub_90d13e1e(?) {
    require 0 < stor2.length
    idx = 0
    while stor2[idx].field_0 != msg.sender:
        require idx + 1 < stor2.length
        mem[0] = 2
        idx = idx + 1
        continue 
    if not stor3[arg1].field_0:
        mem[(32 * stor3[arg1].field_0) + 160] = 32
        mem[(32 * stor3[arg1].field_0) + 192] = stor3[arg1].field_0
        mem[(32 * stor3[arg1].field_0) + 224 len floor32(stor3[arg1].field_0)] = mem[160 len floor32(stor3[arg1].field_0)]
        return memory
          from (32 * stor3[arg1].field_0) + 160
           len (96 * stor3[arg1].field_0) + 64
    mem[160] = stor3[arg1].field_0
    idx = 160
    s = 0
    while (32 * stor3[arg1].field_0) + 128 > idx:
        mem[idx + 32] = stor3[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3[arg1].field_0) + 224 len floor32(stor3[arg1].field_0)] = mem[160 len floor32(stor3[arg1].field_0)]
    return Array(len=stor3[arg1].field_0, data=mem[160 len floor32(stor3[arg1].field_0)], mem[(32 * stor3[arg1].field_0) + floor32(stor3[arg1].field_0) + 224 len (32 * stor3[arg1].field_0) - floor32(stor3[arg1].field_0)]), 
}

function sub_b89e4f58(?) {
    mem[64] = 128
    mem[96] = 0
    require 0 < stor2.length
    mem[0] = 2
    idx = 0
    while stor2[idx].field_0 != msg.sender:
        require idx + 1 < stor2.length
        mem[0] = 2
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < stor1.length:
        require idx < stor1.length
        if stor6 <= s:
            mem[0] = 1
            idx = idx + 1
            s = stor1[idx]
            continue 
        if stor6 > stor1[idx]:
            require idx < stor1.length
            mem[0] = 1
            idx = idx + 1
            s = stor1[idx]
            continue 
        mem[64] = (32 * stor3[s].field_0) + 160
        mem[128] = stor3[s].field_0
        if not stor3[s].field_0:
            t = 0
            t = 0
            idx = 0
            while idx < stor5 - 1:
                require idx < stor3[s].field_0
                _256 = mem[(32 * idx) + 160]
                if mem[(32 * idx) + 160]:
                    require mem[(32 * idx) + 160]
                    require 10000 * mem[(32 * idx) + 160] / mem[(32 * idx) + 160] == 10000
                require sub_a4a5e1fc
                if eth.balance(this.address):
                    require eth.balance(this.address)
                    require 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc * eth.balance(this.address) / eth.balance(this.address) == 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc
                require idx < stor2.length
                call stor2[idx].field_0 with:
                   value 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc * eth.balance(this.address) / 10000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require idx < stor2.length
                mem[0] = 2
                mem[(32 * stor3[s].field_0) + 160] = 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc * eth.balance(this.address) / 10000
                emit Transfer(mem[(32 * stor3[s].field_0) + 160], this.address, stor2[idx].field_0);
                t = 10000 * _256 / sub_a4a5e1fc * eth.balance(this.address) / 10000
                t = 10000 * _256 / sub_a4a5e1fc
                idx = idx + 1
                continue 
        else:
            mem[0] = sha3(s, 3)
            mem[160] = stor3[s].field_0
            t = 160
            u = sha3(sha3(s, 3))
            while (32 * stor3[s].field_0) + 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            s = 0
            s = 0
            idx = 0
            while idx < stor5 - 1:
                require idx < mem[128]
                _400 = mem[(32 * idx) + 160]
                if mem[(32 * idx) + 160]:
                    require mem[(32 * idx) + 160]
                    require 10000 * mem[(32 * idx) + 160] / mem[(32 * idx) + 160] == 10000
                require sub_a4a5e1fc
                if eth.balance(this.address):
                    require eth.balance(this.address)
                    require 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc * eth.balance(this.address) / eth.balance(this.address) == 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc
                require idx < stor2.length
                call stor2[idx].field_0 with:
                   value 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc * eth.balance(this.address) / 10000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require idx < stor2.length
                mem[0] = 2
                mem[mem[64]] = 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc * eth.balance(this.address) / 10000
                emit Transfer(mem[mem[64]], this.address, stor2[idx].field_0);
                s = 10000 * _400 / sub_a4a5e1fc * eth.balance(this.address) / 10000
                s = 10000 * _400 / sub_a4a5e1fc
                idx = idx + 1
                continue 
        require stor5 - 1 < stor2.length
        call stor2[stor5].field_0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require stor5 - 1 < stor2.length
        emit Transfer(eth.balance(this.address), this.address, stor2[stor5].field_0);
        require eth.balance(this.address) <= stor7
        stor7 -= eth.balance(this.address)
        emit 0xce63f555: eth.balance(this.address), idx
        return 1
    mem[64] = (32 * stor3[s].field_0) + 160
    mem[128] = stor3[s].field_0
    if not stor3[s].field_0:
        t = 0
        t = 0
        idx = 0
        while idx < stor5 - 1:
            require idx < stor3[s].field_0
            _252 = mem[(32 * idx) + 160]
            if mem[(32 * idx) + 160]:
                require mem[(32 * idx) + 160]
                require 10000 * mem[(32 * idx) + 160] / mem[(32 * idx) + 160] == 10000
            require sub_a4a5e1fc
            if eth.balance(this.address):
                require eth.balance(this.address)
                require 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc * eth.balance(this.address) / eth.balance(this.address) == 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc
            require idx < stor2.length
            call stor2[idx].field_0 with:
               value 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc * eth.balance(this.address) / 10000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require idx < stor2.length
            mem[0] = 2
            mem[(32 * stor3[s].field_0) + 160] = 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc * eth.balance(this.address) / 10000
            emit Transfer(mem[(32 * stor3[s].field_0) + 160], this.address, stor2[idx].field_0);
            t = 10000 * _252 / sub_a4a5e1fc * eth.balance(this.address) / 10000
            t = 10000 * _252 / sub_a4a5e1fc
            idx = idx + 1
            continue 
    else:
        mem[0] = sha3(s, 3)
        mem[160] = stor3[s].field_0
        t = 160
        u = 0
        while (32 * stor3[s].field_0) + 128 > t:
            mem[t + 32] = stor3[s][u].field_256
            t = t + 32
            u = u + 1
            continue 
        s = 0
        s = 0
        idx = 0
        while idx < stor5 - 1:
            require idx < mem[128]
            _396 = mem[(32 * idx) + 160]
            if mem[(32 * idx) + 160]:
                require mem[(32 * idx) + 160]
                require 10000 * mem[(32 * idx) + 160] / mem[(32 * idx) + 160] == 10000
            require sub_a4a5e1fc
            if eth.balance(this.address):
                require eth.balance(this.address)
                require 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc * eth.balance(this.address) / eth.balance(this.address) == 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc
            require idx < stor2.length
            call stor2[idx].field_0 with:
               value 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc * eth.balance(this.address) / 10000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require idx < stor2.length
            mem[0] = 2
            mem[mem[64]] = 10000 * mem[(32 * idx) + 160] / sub_a4a5e1fc * eth.balance(this.address) / 10000
            emit Transfer(mem[mem[64]], this.address, stor2[idx].field_0);
            s = 10000 * _396 / sub_a4a5e1fc * eth.balance(this.address) / 10000
            s = 10000 * _396 / sub_a4a5e1fc
            idx = idx + 1
            continue 
    require stor5 - 1 < stor2.length
    call stor2[stor5].field_0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require stor5 - 1 < stor2.length
    emit Transfer(eth.balance(this.address), this.address, stor2[stor5].field_0);
    require eth.balance(this.address) <= stor7
    stor7 -= eth.balance(this.address)
    emit 0xce63f555: eth.balance(this.address), idx
    return 1
}



}
