contract main {




// =====================  Runtime code  =====================


const GetContractBalance = eth.balance(this.address)


uint8 stor0; offset 160
uint128 stor0; offset 160
address viewSuperOwner;
address stor1;
array of uint256 sub_002b5c0a;
uint256 percent;
array of uint256 sub_11a3311c;
mapping of uint256 sub_666a7370;
mapping of struct stor6;
uint256 stor7;
uint256 sub_93002f02;
uint256 sub_e2afe3bb;
uint256 sub_da546cb2;
uint256 comission;
mapping of uint256 sub_a54f12e4;
array of address sub_1c019a52;

function sub_002b5c0a(?) {
    return sub_002b5c0a[arg1][0 len sub_002b5c0a[arg1].length]
}

function sub_11a3311c(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_11a3311c[arg1]
    return sub_11a3311c[arg1][arg2]
}

function sub_1c019a52(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_1c019a52.length
    return address(sub_1c019a52[arg1])
}

function comission() {
    return comission
}

function sub_666a7370(?) {
    require calldata.size - 4 >= 32
    return sub_666a7370[arg1]
}

function percent() {
    return percent
}

function blockedContract() {
    return bool(uint8(stor0.field_160))
}

function sub_93002f02(?) {
    return sub_93002f02
}

function sub_a54f12e4(?) {
    require calldata.size - 4 >= 32
    return sub_a54f12e4[address(arg1)]
}

function viewSuperOwner() {
    return viewSuperOwner
}

function GetUserSafesLength(address arg1) {
    require calldata.size - 4 >= 32
    return sub_11a3311c[address(arg1)]
}

function sub_da546cb2(?) {
    return sub_da546cb2
}

function sub_e2afe3bb(?) {
    return sub_e2afe3bb
}

function _fallback() payable {
    require msg.value > 0
    require sub_a54f12e4[0] + msg.value >= sub_a54f12e4[0]
    sub_a54f12e4[0] += msg.value
}

function doBlockContract() {
    require msg.sender == viewSuperOwner
    Mask(96, 0, stor0.field_160) = 1
    emit 0xadac2a07: bool(uint8(stor0.field_160))
}

function unBlockContract() {
    require msg.sender == viewSuperOwner
    Mask(96, 0, stor0.field_160) = 0
    emit 0xadac2a07: bool(uint8(stor0.field_160))
}

function sub_365655f0(?) {
    require calldata.size - 4 >= 32
    require msg.sender == viewSuperOwner
    require arg1 > sub_da546cb2
    sub_da546cb2 = arg1
}

function ChangeComission(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == viewSuperOwner
    require arg1 <= 30
    comission = arg1
}

function sub_79883bba(?) {
    require calldata.size - 4 >= 32
    require msg.sender == viewSuperOwner
    require arg1 >= 60
    sub_e2afe3bb = 24 * 3600 * arg1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == viewSuperOwner
    require arg1 != viewSuperOwner
    viewSuperOwner = arg1
    emit 0x178eb363: viewSuperOwner
}

function WithdrawEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == viewSuperOwner
    require arg1 > 0
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_98c7aba2(?) {
    require calldata.size - 4 >= 32
    require arg1
    s = 0
    idx = 1
    s = 0
    while idx < stor7:
        mem[0] = idx
        mem[32] = 6
        if address(stor6[idx].field_768) != msg.sender:
            s = sha3(idx, 6)
            idx = idx + 1
            s = s
            continue 
        if address(stor6[idx].field_1024) != arg1:
            s = sha3(idx, 6)
            idx = idx + 1
            s = s
            continue 
        s = sha3(idx, 6)
        idx = idx + 1
        s = s + stor6[idx].field_256
        continue 
    return s
}

function sub_d9df23c0(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    sub_002b5c0a[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    emit 0xc5db26e7: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len (4 * ceil32(arg1.length)) + -arg1.length + 32], msg.sender
}

function sub_539a67bf(?) {
    require calldata.size - 4 >= 32
    require msg.sender == viewSuperOwner
    require sub_a54f12e4[address(arg1)] > 0
    sub_a54f12e4[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= sub_a54f12e4[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_a54f12e4[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function GetSafe(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = stor6[arg1][5].field_0
    idx = 128
    s = 0
    while stor6[arg1][5].length + 96 > idx:
        mem[idx + 32] = stor6[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor6[arg1].field_0, 
           address(stor6[arg1].field_768),
           address(stor6[arg1].field_1024),
           stor6[arg1].field_256,
           stor6[arg1].field_512,
           Array(len=stor6[arg1][5].length, data=mem[128 len ceil32(stor6[arg1][5].length)]),
           stor6[arg1].field_1536,
           stor6[arg1].field_2048,
           stor6[arg1].field_2304,
           stor6[arg1].field_2560,
           stor6[arg1].field_2816,
           address(stor6[arg1].field_3328)
}

function sub_650db56d(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require msg.sender == viewSuperOwner
    s = 0
    idx = 1
    s = 0
    while idx < stor7:
        mem[0] = idx
        mem[32] = 6
        if not stor6[idx].field_0:
            s = sha3(idx, 6)
            idx = idx + 1
            s = s
            continue 
        if not arg1:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor6[idx].field_1024))
            call address(stor6[idx].field_1024).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_37] >= stor6[idx].field_1536
        else:
            if address(stor6[idx].field_1024) == stor1:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor6[idx].field_1024))
                call address(stor6[idx].field_1024).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _38 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_38] >= stor6[idx].field_1536
            else:
                if arg1:
                    s = sha3(idx, 6)
                    idx = idx + 1
                    s = s
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor6[idx].field_1024))
                call address(stor6[idx].field_1024).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _39 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_39] >= stor6[idx].field_1536
        mem[mem[64] + 4] = address(stor6[idx].field_768)
        mem[mem[64] + 36] = stor6[idx].field_1536
        require ext_code.size(address(stor6[idx].field_1024))
        call address(stor6[idx].field_1024).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor6[idx].field_768), stor6[idx].field_1536
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        sub_93002f02--
        s = sha3(idx, 6)
        idx = idx + 1
        s = s + 1
        continue 
    emit 0xaeb4f573: s
}

function sub_99f57e05(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == viewSuperOwner
    mem[0] = 0
    mem[32] = 12
    if sub_a54f12e4[0] <= 0:
        idx = 0
        s = 0
        t = 0
        t = stor[sha3(mem[0 len 64])]
        while idx < sub_1c019a52.length:
            mem[0] = address(sub_1c019a52[idx])
            mem[32] = 12
            if sub_a54f12e4[address(stor13[idx])] <= 0:
                idx = idx + 1
                s = s
                t = address(sub_1c019a52[idx])
                t = t
                continue 
            mem[0] = address(sub_1c019a52[idx])
            mem[32] = 12
            sub_a54f12e4[address(stor13[idx])] = 0
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = sub_a54f12e4[address(stor13[idx])]
            require ext_code.size(address(sub_1c019a52[idx]))
            call address(sub_1c019a52[idx]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_a54f12e4[address(stor13[idx])]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            idx = idx + 1
            s = address(sub_1c019a52[idx])
            t = address(sub_1c019a52[idx])
            t = sub_a54f12e4[address(stor13[idx])]
            continue 
    else:
        if sub_a54f12e4[0] > eth.balance(this.address):
            idx = 0
            s = 0
            t = 0
            t = stor[sha3(mem[0 len 64])]
            while idx < sub_1c019a52.length:
                mem[0] = address(sub_1c019a52[idx])
                mem[32] = 12
                if sub_a54f12e4[address(stor13[idx])] <= 0:
                    idx = idx + 1
                    s = s
                    t = address(sub_1c019a52[idx])
                    t = t
                    continue 
                mem[0] = address(sub_1c019a52[idx])
                mem[32] = 12
                sub_a54f12e4[address(stor13[idx])] = 0
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = sub_a54f12e4[address(stor13[idx])]
                require ext_code.size(address(sub_1c019a52[idx]))
                call address(sub_1c019a52[idx]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_a54f12e4[address(stor13[idx])]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = idx + 1
                s = address(sub_1c019a52[idx])
                t = address(sub_1c019a52[idx])
                t = sub_a54f12e4[address(stor13[idx])]
                continue 
        else:
            sub_a54f12e4[0] = 0
            call msg.sender with:
               value sub_a54f12e4[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = 0
            t = 0
            t = sub_a54f12e4[0]
            while idx < sub_1c019a52.length:
                mem[0] = address(sub_1c019a52[idx])
                mem[32] = 12
                if sub_a54f12e4[address(stor13[idx])] <= 0:
                    idx = idx + 1
                    s = s
                    t = address(sub_1c019a52[idx])
                    t = t
                    continue 
                mem[0] = address(sub_1c019a52[idx])
                mem[32] = 12
                sub_a54f12e4[address(stor13[idx])] = 0
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = sub_a54f12e4[address(stor13[idx])]
                require ext_code.size(address(sub_1c019a52[idx]))
                call address(sub_1c019a52[idx]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_a54f12e4[address(stor13[idx])]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = idx + 1
                s = address(sub_1c019a52[idx])
                t = address(sub_1c019a52[idx])
                t = sub_a54f12e4[address(stor13[idx])]
                continue 
    sub_1c019a52.length = 0
    if sub_1c019a52.length > 0:
        idx = 0
        while sub_1c019a52.length > idx:
            uint256(sub_1c019a52[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_bbe316be(?) {
    require msg.sender == viewSuperOwner
    mem[96] = sub_1c019a52.length
    if not sub_1c019a52.length:
        mem[(32 * sub_1c019a52.length) + 128] = sub_1c019a52.length
        mem[(64 * sub_1c019a52.length) + 160] = sub_1c019a52.length
        mem[64] = (98 * sub_1c019a52.length) + 192
        s = 0
        idx = 0
        while idx < sub_1c019a52.length:
            mem[0] = 13
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(sub_1c019a52[idx])
            require idx < mem[96]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(sub_1c019a52[idx]))
            call address(sub_1c019a52[idx]).0x95d89b41 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _108 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _116 = mem[_108]
            require mem[_108] <= test266151307()
            require _108 + mem[_108] + 31 < _108 + return_data.size
            _128 = mem[_108 + mem[_108]]
            require mem[_108 + mem[_108]] <= test266151307()
            require _108 + ceil32(return_data.size) + ceil32(mem[_108 + mem[_108]]) + 32 <= test266151307() and ceil32(mem[_108 + mem[_108]]) + 32 >= 0
            mem[64] = _108 + ceil32(return_data.size) + ceil32(mem[_108 + mem[_108]]) + 32
            mem[_108 + ceil32(return_data.size)] = _128
            require _116 + _128 + 32 <= return_data.size
            s = 0
            while s < _128:
                mem[_108 + ceil32(return_data.size) + s + 32] = mem[_108 + _116 + s + 32]
                s = s + 32
                continue 
            if ceil32(_128) > _128:
                mem[_108 + ceil32(return_data.size) + _128 + 32] = 0
            require idx < mem[(32 * sub_1c019a52.length) + 128]
            mem[(32 * idx) + (32 * sub_1c019a52.length) + 160] = _108 + ceil32(return_data.size)
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 12
            require idx < mem[(64 * sub_1c019a52.length) + 160]
            mem[(32 * idx) + (64 * sub_1c019a52.length) + 192] = sub_a54f12e4[mem[(32 * idx) + 140 len 20]]
            s = address(sub_1c019a52[idx])
            idx = idx + 1
            continue 
        _99 = mem[64]
        mem[mem[64]] = 96
        _107 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _107:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _107) + 128
        _203 = mem[(32 * sub_1c019a52.length) + 128]
        mem[_99 + (32 * _107) + 128] = mem[(32 * sub_1c019a52.length) + 128]
        idx = 0
        s = (32 * sub_1c019a52.length) + 160
        t = _99 + (32 * _107) + (32 * _203) + 160
        u = _99 + (32 * _107) + 160
        while idx < _203:
            mem[u] = t + -_99 + -(32 * _107) - 160
            _274 = mem[s]
            _279 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _279:
                mem[t + v + 32] = mem[_274 + v + 32]
                v = v + 32
                continue 
            if ceil32(_279) > _279:
                mem[t + _279 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_279) + 32
            u = u + 32
            continue 
        mem[_99 + 64] = t - _99
        _280 = mem[(64 * sub_1c019a52.length) + 160]
        mem[t] = mem[(64 * sub_1c019a52.length) + 160]
        mem[t + 32 len 32 * _280] = mem[(64 * sub_1c019a52.length) + 192 len 32 * _280]
        return memory
          from mem[64]
           len t + (32 * _280) + -mem[64] + 32
    mem[128 len 32 * sub_1c019a52.length] = code.data[13949 len 32 * sub_1c019a52.length]
    mem[(32 * sub_1c019a52.length) + 128] = sub_1c019a52.length
    mem[64] = (64 * sub_1c019a52.length) + 160
    mem[(32 * sub_1c019a52.length) + 160] = 96
    s = (32 * sub_1c019a52.length) + 160
    idx = sub_1c019a52.length
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _102 = mem[64]
    mem[mem[64]] = sub_1c019a52.length
    mem[64] = mem[64] + (32 * sub_1c019a52.length) + 32
    if not sub_1c019a52.length:
        s = 0
        idx = 0
        while idx < sub_1c019a52.length:
            mem[0] = 13
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(sub_1c019a52[idx])
            require idx < mem[96]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(sub_1c019a52[idx]))
            call address(sub_1c019a52[idx]).0x95d89b41 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _215 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _221 = mem[_215]
            require mem[_215] <= test266151307()
            require _215 + mem[_215] + 31 < _215 + return_data.size
            _230 = mem[_215 + mem[_215]]
            require mem[_215 + mem[_215]] <= test266151307()
            require _215 + ceil32(return_data.size) + ceil32(mem[_215 + mem[_215]]) + 32 <= test266151307() and ceil32(mem[_215 + mem[_215]]) + 32 >= 0
            mem[64] = _215 + ceil32(return_data.size) + ceil32(mem[_215 + mem[_215]]) + 32
            mem[_215 + ceil32(return_data.size)] = _230
            require _221 + _230 + 32 <= return_data.size
            s = 0
            while s < _230:
                mem[_215 + ceil32(return_data.size) + s + 32] = mem[_215 + _221 + s + 32]
                s = s + 32
                continue 
            if ceil32(_230) > _230:
                mem[_215 + ceil32(return_data.size) + _230 + 32] = 0
            require idx < mem[(32 * sub_1c019a52.length) + 128]
            mem[(32 * idx) + (32 * sub_1c019a52.length) + 160] = _215 + ceil32(return_data.size)
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 12
            require idx < mem[_102]
            mem[(32 * idx) + _102 + 32] = sub_a54f12e4[mem[(32 * idx) + 140 len 20]]
            s = address(sub_1c019a52[idx])
            idx = idx + 1
            continue 
        _195 = mem[64]
        mem[mem[64]] = 96
        _211 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _211:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _211) + 128
        _281 = mem[(32 * sub_1c019a52.length) + 128]
        mem[_195 + (32 * _211) + 128] = mem[(32 * sub_1c019a52.length) + 128]
        idx = 0
        s = (32 * sub_1c019a52.length) + 160
        t = _195 + (32 * _211) + (32 * _281) + 160
        u = _195 + (32 * _211) + 160
        while idx < _281:
            mem[u] = t + -_195 + -(32 * _211) - 160
            _320 = mem[s]
            _323 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _323:
                mem[t + v + 32] = mem[_320 + v + 32]
                v = v + 32
                continue 
            if ceil32(_323) > _323:
                mem[t + _323 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_323) + 32
            u = u + 32
            continue 
        mem[_195 + 64] = t - _195
        _325 = mem[_102]
        mem[t] = mem[_102]
        mem[t + 32 len 32 * _325] = mem[_102 + 32 len 32 * _325]
        return memory
          from mem[64]
           len t + (32 * _325) + -mem[64] + 32
    mem[_102 + 32 len 32 * sub_1c019a52.length] = code.data[13949 len 32 * sub_1c019a52.length]
    s = 0
    idx = 0
    while idx < sub_1c019a52.length:
        mem[0] = 13
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(sub_1c019a52[idx])
        require idx < mem[96]
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(sub_1c019a52[idx]))
        call address(sub_1c019a52[idx]).0x95d89b41 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _216 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _222 = mem[_216]
        require mem[_216] <= test266151307()
        require _216 + mem[_216] + 31 < _216 + return_data.size
        _231 = mem[_216 + mem[_216]]
        require mem[_216 + mem[_216]] <= test266151307()
        require _216 + ceil32(return_data.size) + ceil32(mem[_216 + mem[_216]]) + 32 <= test266151307() and ceil32(mem[_216 + mem[_216]]) + 32 >= 0
        mem[64] = _216 + ceil32(return_data.size) + ceil32(mem[_216 + mem[_216]]) + 32
        mem[_216 + ceil32(return_data.size)] = _231
        require _222 + _231 + 32 <= return_data.size
        s = 0
        while s < _231:
            mem[_216 + ceil32(return_data.size) + s + 32] = mem[_216 + _222 + s + 32]
            s = s + 32
            continue 
        if ceil32(_231) > _231:
            mem[_216 + ceil32(return_data.size) + _231 + 32] = 0
        require idx < mem[(32 * sub_1c019a52.length) + 128]
        mem[(32 * idx) + (32 * sub_1c019a52.length) + 160] = _216 + ceil32(return_data.size)
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        require idx < mem[_102]
        mem[(32 * idx) + _102 + 32] = sub_a54f12e4[mem[(32 * idx) + 140 len 20]]
        s = address(sub_1c019a52[idx])
        idx = idx + 1
        continue 
    _198 = mem[64]
    mem[mem[64]] = 96
    _212 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _212:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * _212) + 128
    _282 = mem[(32 * sub_1c019a52.length) + 128]
    mem[_198 + (32 * _212) + 128] = mem[(32 * sub_1c019a52.length) + 128]
    idx = 0
    s = (32 * sub_1c019a52.length) + 160
    t = _198 + (32 * _212) + (32 * _282) + 160
    u = _198 + (32 * _212) + 160
    while idx < _282:
        mem[u] = t + -_198 + -(32 * _212) - 160
        _321 = mem[s]
        _324 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _324:
            mem[t + v + 32] = mem[_321 + v + 32]
            v = v + 32
            continue 
        if ceil32(_324) > _324:
            mem[t + _324 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_324) + 32
        u = u + 32
        continue 
    mem[_198 + 64] = t - _198
    _326 = mem[_102]
    mem[t] = mem[_102]
    mem[t + 32 len 32 * _326] = mem[_102 + 32 len 32 * _326]
    return memory
      from mem[64]
       len t + (32 * _326) + -mem[64] + 32
}

function sub_cfe7de07(?) {
    require calldata.size - 4 >= 64
    require msg.sender == viewSuperOwner
    require arg1
    require arg2
    require stor6[arg2].field_0
    require address(stor6[arg2].field_1024) == arg1
    mem[128] = stor6[arg2][5].field_0
    idx = 128
    s = 0
    while stor6[arg2][5].length + 96 > idx:
        mem[idx + 32] = stor6[arg2][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor6[arg2].field_512 < block.timestamp:
        require ext_code.size(address(stor6[arg2].field_1024))
        call address(stor6[arg2].field_1024).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= stor6[arg2].field_1536
        require ext_code.size(address(stor6[arg2].field_1024))
        call address(stor6[arg2].field_1024).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor6[arg2].field_768), stor6[arg2].field_1536
        mem[ceil32(stor6[arg2][5].length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require stor6[arg2].field_1536 <= sub_666a7370[address(stor6[arg2].field_1024)]
        sub_666a7370[address(stor6[arg2].field_1024)] -= stor6[arg2].field_1536
        stor6[arg2].field_1536 = 0
        mem[ceil32(stor6[arg2][5].length) + (2 * ceil32(return_data.size)) + 128] = 96
        emit 0x959346e7: Array(len=stor6[arg2][5].length, data=mem[128 len ceil32(stor6[arg2][5].length)]), stor6[arg2].field_1536, block.timestamp, msg.sender, address(stor6[arg2].field_1024)
    else:
        require stor6[arg2].field_2048 <= block.timestamp
        if not stor6[arg2].field_256:
            if (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600 <= 0:
                require stor6[arg2].field_0
                require address(stor6[arg2].field_1024) == arg1
                stor6[arg2].field_1536 -= (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
                stor6[arg2].field_2048 = block.timestamp
                require stor6[arg2].field_256
                if not stor6[arg2].field_256:
                    stor6[arg2].field_2816 = stor6[arg2].field_256 - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600)
                    stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600) / stor6[arg2].field_256
                else:
                    require 12 * stor6[arg2].field_256 / stor6[arg2].field_256 == 12
                    require stor6[arg2].field_256
                    stor6[arg2].field_2816 = stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600)
                    stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600) / stor6[arg2].field_256
                require (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600 <= sub_666a7370[address(stor6[arg2].field_1024)]
                sub_666a7370[address(stor6[arg2].field_1024)] -= (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
                require ext_code.size(address(stor6[arg2].field_1024))
                call address(stor6[arg2].field_1024).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
                require ext_code.size(address(stor6[arg2].field_1024))
                call address(stor6[arg2].field_1024).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor6[arg2].field_768), (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
            else:
                if 0 <= stor6[arg2].field_1536:
                    require stor6[arg2].field_0
                    require address(stor6[arg2].field_1024) == arg1
                    stor6[arg2].field_2048 = block.timestamp
                    require stor6[arg2].field_256
                    if not stor6[arg2].field_256:
                        stor6[arg2].field_2816 = stor6[arg2].field_256 - stor6[arg2].field_1536
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - stor6[arg2].field_1536 / stor6[arg2].field_256
                    else:
                        require 12 * stor6[arg2].field_256 / stor6[arg2].field_256 == 12
                        require stor6[arg2].field_256
                        stor6[arg2].field_2816 = stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536 / stor6[arg2].field_256
                    require 0 <= sub_666a7370[address(stor6[arg2].field_1024)]
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 0
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor6[arg2].field_768), 0
                else:
                    require stor6[arg2].field_1536 <= stor6[arg2].field_1536
                    require stor6[arg2].field_0
                    require address(stor6[arg2].field_1024) == arg1
                    stor6[arg2].field_1536 = 0
                    stor6[arg2].field_2048 = block.timestamp
                    require stor6[arg2].field_256
                    if not stor6[arg2].field_256:
                        stor6[arg2].field_2816 = stor6[arg2].field_256
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 / stor6[arg2].field_256
                    else:
                        require 12 * stor6[arg2].field_256 / stor6[arg2].field_256 == 12
                        require stor6[arg2].field_256
                        stor6[arg2].field_2816 = stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100)
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) / stor6[arg2].field_256
                    require stor6[arg2].field_1536 <= sub_666a7370[address(stor6[arg2].field_1024)]
                    sub_666a7370[address(stor6[arg2].field_1024)] -= stor6[arg2].field_1536
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= stor6[arg2].field_1536
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor6[arg2].field_768), stor6[arg2].field_1536
        else:
            require stor6[arg2].field_256
            require 10 * stor6[arg2].field_256 / stor6[arg2].field_256 == 10
            if (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600 <= 10 * stor6[arg2].field_256:
                if (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600 <= stor6[arg2].field_1536:
                    require stor6[arg2].field_0
                    require address(stor6[arg2].field_1024) == arg1
                    stor6[arg2].field_1536 -= (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
                    stor6[arg2].field_2048 = block.timestamp
                    require stor6[arg2].field_256
                    if not stor6[arg2].field_256:
                        stor6[arg2].field_2816 = stor6[arg2].field_256 - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600)
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600) / stor6[arg2].field_256
                    else:
                        require 12 * stor6[arg2].field_256 / stor6[arg2].field_256 == 12
                        require stor6[arg2].field_256
                        stor6[arg2].field_2816 = stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600)
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600) / stor6[arg2].field_256
                    require (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600 <= sub_666a7370[address(stor6[arg2].field_1024)]
                    sub_666a7370[address(stor6[arg2].field_1024)] -= (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor6[arg2].field_768), (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
                else:
                    require stor6[arg2].field_1536 <= stor6[arg2].field_1536
                    require stor6[arg2].field_0
                    require address(stor6[arg2].field_1024) == arg1
                    stor6[arg2].field_1536 = 0
                    stor6[arg2].field_2048 = block.timestamp
                    require stor6[arg2].field_256
                    if not stor6[arg2].field_256:
                        stor6[arg2].field_2816 = stor6[arg2].field_256
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 / stor6[arg2].field_256
                    else:
                        require 12 * stor6[arg2].field_256 / stor6[arg2].field_256 == 12
                        require stor6[arg2].field_256
                        stor6[arg2].field_2816 = stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100)
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) / stor6[arg2].field_256
                    require stor6[arg2].field_1536 <= sub_666a7370[address(stor6[arg2].field_1024)]
                    sub_666a7370[address(stor6[arg2].field_1024)] -= stor6[arg2].field_1536
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= stor6[arg2].field_1536
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor6[arg2].field_768), stor6[arg2].field_1536
            else:
                if 10 * stor6[arg2].field_256 <= stor6[arg2].field_1536:
                    require stor6[arg2].field_0
                    require address(stor6[arg2].field_1024) == arg1
                    stor6[arg2].field_1536 += -10 * stor6[arg2].field_256
                    stor6[arg2].field_2048 = block.timestamp
                    require stor6[arg2].field_256
                    if not stor6[arg2].field_256:
                        stor6[arg2].field_2816 = (11 * stor6[arg2].field_256) - stor6[arg2].field_1536
                        stor6[arg2].field_2560 = 100 * 10^18 * (11 * stor6[arg2].field_256) - stor6[arg2].field_1536 / stor6[arg2].field_256
                    else:
                        require 12 * stor6[arg2].field_256 / stor6[arg2].field_256 == 12
                        require stor6[arg2].field_256
                        stor6[arg2].field_2816 = (11 * stor6[arg2].field_256) - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536
                        stor6[arg2].field_2560 = 100 * 10^18 * (11 * stor6[arg2].field_256) - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536 / stor6[arg2].field_256
                    require 10 * stor6[arg2].field_256 <= sub_666a7370[address(stor6[arg2].field_1024)]
                    sub_666a7370[address(stor6[arg2].field_1024)] += -10 * stor6[arg2].field_256
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 10 * stor6[arg2].field_256
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor6[arg2].field_768), 10 * stor6[arg2].field_256
                else:
                    require stor6[arg2].field_1536 <= stor6[arg2].field_1536
                    require stor6[arg2].field_0
                    require address(stor6[arg2].field_1024) == arg1
                    stor6[arg2].field_1536 = 0
                    stor6[arg2].field_2048 = block.timestamp
                    require stor6[arg2].field_256
                    if not stor6[arg2].field_256:
                        stor6[arg2].field_2816 = stor6[arg2].field_256
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 / stor6[arg2].field_256
                    else:
                        require 12 * stor6[arg2].field_256 / stor6[arg2].field_256 == 12
                        require stor6[arg2].field_256
                        stor6[arg2].field_2816 = stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100)
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) / stor6[arg2].field_256
                    require stor6[arg2].field_1536 <= sub_666a7370[address(stor6[arg2].field_1024)]
                    sub_666a7370[address(stor6[arg2].field_1024)] -= stor6[arg2].field_1536
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= stor6[arg2].field_1536
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor6[arg2].field_768), stor6[arg2].field_1536
        mem[ceil32(stor6[arg2][5].length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(stor6[arg2][5].length) + (2 * ceil32(return_data.size)) + 128] = 96
        emit 0x959346e7: 96, 0, block.timestamp, stor6[arg2][5].length, mem[128 len ceil32(stor6[arg2][5].length)], msg.sender, address(stor6[arg2].field_1024)
}

function ClaimTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2
    require address(stor6[arg2].field_768) == msg.sender
    require stor6[arg2].field_1536
    require stor6[arg2].field_0
    require address(stor6[arg2].field_1024) == arg1
    mem[128] = stor6[arg2][5].field_0
    idx = 128
    s = 0
    while stor6[arg2][5].length + 96 > idx:
        mem[idx + 32] = stor6[arg2][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor6[arg2].field_512 < block.timestamp:
        require ext_code.size(address(stor6[arg2].field_1024))
        call address(stor6[arg2].field_1024).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= stor6[arg2].field_1536
        require ext_code.size(address(stor6[arg2].field_1024))
        call address(stor6[arg2].field_1024).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor6[arg2].field_768), stor6[arg2].field_1536
        mem[ceil32(stor6[arg2][5].length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require stor6[arg2].field_1536 <= sub_666a7370[address(stor6[arg2].field_1024)]
        sub_666a7370[address(stor6[arg2].field_1024)] -= stor6[arg2].field_1536
        stor6[arg2].field_1536 = 0
        mem[ceil32(stor6[arg2][5].length) + (2 * ceil32(return_data.size)) + 128] = 96
        emit 0x959346e7: Array(len=stor6[arg2][5].length, data=mem[128 len ceil32(stor6[arg2][5].length)]), stor6[arg2].field_1536, block.timestamp, msg.sender, address(stor6[arg2].field_1024)
    else:
        require stor6[arg2].field_2048 <= block.timestamp
        if not stor6[arg2].field_256:
            if (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600 <= 0:
                require stor6[arg2].field_0
                require address(stor6[arg2].field_1024) == arg1
                stor6[arg2].field_1536 -= (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
                stor6[arg2].field_2048 = block.timestamp
                require stor6[arg2].field_256
                if not stor6[arg2].field_256:
                    stor6[arg2].field_2816 = stor6[arg2].field_256 - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600)
                    stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600) / stor6[arg2].field_256
                else:
                    require 12 * stor6[arg2].field_256 / stor6[arg2].field_256 == 12
                    require stor6[arg2].field_256
                    stor6[arg2].field_2816 = stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600)
                    stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600) / stor6[arg2].field_256
                require (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600 <= sub_666a7370[address(stor6[arg2].field_1024)]
                sub_666a7370[address(stor6[arg2].field_1024)] -= (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
                require ext_code.size(address(stor6[arg2].field_1024))
                call address(stor6[arg2].field_1024).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
                require ext_code.size(address(stor6[arg2].field_1024))
                call address(stor6[arg2].field_1024).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor6[arg2].field_768), (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
            else:
                if 0 <= stor6[arg2].field_1536:
                    require stor6[arg2].field_0
                    require address(stor6[arg2].field_1024) == arg1
                    stor6[arg2].field_2048 = block.timestamp
                    require stor6[arg2].field_256
                    if not stor6[arg2].field_256:
                        stor6[arg2].field_2816 = stor6[arg2].field_256 - stor6[arg2].field_1536
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - stor6[arg2].field_1536 / stor6[arg2].field_256
                    else:
                        require 12 * stor6[arg2].field_256 / stor6[arg2].field_256 == 12
                        require stor6[arg2].field_256
                        stor6[arg2].field_2816 = stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536 / stor6[arg2].field_256
                    require 0 <= sub_666a7370[address(stor6[arg2].field_1024)]
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 0
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor6[arg2].field_768), 0
                else:
                    require stor6[arg2].field_1536 <= stor6[arg2].field_1536
                    require stor6[arg2].field_0
                    require address(stor6[arg2].field_1024) == arg1
                    stor6[arg2].field_1536 = 0
                    stor6[arg2].field_2048 = block.timestamp
                    require stor6[arg2].field_256
                    if not stor6[arg2].field_256:
                        stor6[arg2].field_2816 = stor6[arg2].field_256
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 / stor6[arg2].field_256
                    else:
                        require 12 * stor6[arg2].field_256 / stor6[arg2].field_256 == 12
                        require stor6[arg2].field_256
                        stor6[arg2].field_2816 = stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100)
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) / stor6[arg2].field_256
                    require stor6[arg2].field_1536 <= sub_666a7370[address(stor6[arg2].field_1024)]
                    sub_666a7370[address(stor6[arg2].field_1024)] -= stor6[arg2].field_1536
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= stor6[arg2].field_1536
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor6[arg2].field_768), stor6[arg2].field_1536
        else:
            require stor6[arg2].field_256
            require 10 * stor6[arg2].field_256 / stor6[arg2].field_256 == 10
            if (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600 <= 10 * stor6[arg2].field_256:
                if (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600 <= stor6[arg2].field_1536:
                    require stor6[arg2].field_0
                    require address(stor6[arg2].field_1024) == arg1
                    stor6[arg2].field_1536 -= (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
                    stor6[arg2].field_2048 = block.timestamp
                    require stor6[arg2].field_256
                    if not stor6[arg2].field_256:
                        stor6[arg2].field_2816 = stor6[arg2].field_256 - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600)
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600) / stor6[arg2].field_256
                    else:
                        require 12 * stor6[arg2].field_256 / stor6[arg2].field_256 == 12
                        require stor6[arg2].field_256
                        stor6[arg2].field_2816 = stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600)
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536 + ((block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600) / stor6[arg2].field_256
                    require (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600 <= sub_666a7370[address(stor6[arg2].field_1024)]
                    sub_666a7370[address(stor6[arg2].field_1024)] -= (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor6[arg2].field_768), (block.timestamp * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) - (stor6[arg2].field_2048 * stor6[arg2].field_256 * stor6[arg2].field_2304 / 100) / 720 * 24 * 3600
                else:
                    require stor6[arg2].field_1536 <= stor6[arg2].field_1536
                    require stor6[arg2].field_0
                    require address(stor6[arg2].field_1024) == arg1
                    stor6[arg2].field_1536 = 0
                    stor6[arg2].field_2048 = block.timestamp
                    require stor6[arg2].field_256
                    if not stor6[arg2].field_256:
                        stor6[arg2].field_2816 = stor6[arg2].field_256
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 / stor6[arg2].field_256
                    else:
                        require 12 * stor6[arg2].field_256 / stor6[arg2].field_256 == 12
                        require stor6[arg2].field_256
                        stor6[arg2].field_2816 = stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100)
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) / stor6[arg2].field_256
                    require stor6[arg2].field_1536 <= sub_666a7370[address(stor6[arg2].field_1024)]
                    sub_666a7370[address(stor6[arg2].field_1024)] -= stor6[arg2].field_1536
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= stor6[arg2].field_1536
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor6[arg2].field_768), stor6[arg2].field_1536
            else:
                if 10 * stor6[arg2].field_256 <= stor6[arg2].field_1536:
                    require stor6[arg2].field_0
                    require address(stor6[arg2].field_1024) == arg1
                    stor6[arg2].field_1536 += -10 * stor6[arg2].field_256
                    stor6[arg2].field_2048 = block.timestamp
                    require stor6[arg2].field_256
                    if not stor6[arg2].field_256:
                        stor6[arg2].field_2816 = (11 * stor6[arg2].field_256) - stor6[arg2].field_1536
                        stor6[arg2].field_2560 = 100 * 10^18 * (11 * stor6[arg2].field_256) - stor6[arg2].field_1536 / stor6[arg2].field_256
                    else:
                        require 12 * stor6[arg2].field_256 / stor6[arg2].field_256 == 12
                        require stor6[arg2].field_256
                        stor6[arg2].field_2816 = (11 * stor6[arg2].field_256) - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536
                        stor6[arg2].field_2560 = 100 * 10^18 * (11 * stor6[arg2].field_256) - (12 * stor6[arg2].field_256 / 100) - stor6[arg2].field_1536 / stor6[arg2].field_256
                    require 10 * stor6[arg2].field_256 <= sub_666a7370[address(stor6[arg2].field_1024)]
                    sub_666a7370[address(stor6[arg2].field_1024)] += -10 * stor6[arg2].field_256
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 10 * stor6[arg2].field_256
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor6[arg2].field_768), 10 * stor6[arg2].field_256
                else:
                    require stor6[arg2].field_1536 <= stor6[arg2].field_1536
                    require stor6[arg2].field_0
                    require address(stor6[arg2].field_1024) == arg1
                    stor6[arg2].field_1536 = 0
                    stor6[arg2].field_2048 = block.timestamp
                    require stor6[arg2].field_256
                    if not stor6[arg2].field_256:
                        stor6[arg2].field_2816 = stor6[arg2].field_256
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 / stor6[arg2].field_256
                    else:
                        require 12 * stor6[arg2].field_256 / stor6[arg2].field_256 == 12
                        require stor6[arg2].field_256
                        stor6[arg2].field_2816 = stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100)
                        stor6[arg2].field_2560 = 100 * 10^18 * stor6[arg2].field_256 - (12 * stor6[arg2].field_256 / 100) / stor6[arg2].field_256
                    require stor6[arg2].field_1536 <= sub_666a7370[address(stor6[arg2].field_1024)]
                    sub_666a7370[address(stor6[arg2].field_1024)] -= stor6[arg2].field_1536
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= stor6[arg2].field_1536
                    require ext_code.size(address(stor6[arg2].field_1024))
                    call address(stor6[arg2].field_1024).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor6[arg2].field_768), stor6[arg2].field_1536
        mem[ceil32(stor6[arg2][5].length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(stor6[arg2][5].length) + (2 * ceil32(return_data.size)) + 128] = 96
        emit 0x959346e7: 96, 0, block.timestamp, stor6[arg2][5].length, mem[128 len ceil32(stor6[arg2][5].length)], msg.sender, address(stor6[arg2].field_1024)
}

function sub_e61021e8(?) {
    require calldata.size - 4 >= 64
    require not uint8(stor0.field_160)
    require arg1
    require arg2 > 0
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not arg2:
        require 0 <= arg2
        if not arg2:
            mem[32] = 4
            sub_11a3311c[address(msg.sender)]++
            mem[0] = sha3(address(msg.sender), 4)
            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor7
            mem[ceil32(return_data.size) + 96] = stor7
            mem[ceil32(return_data.size) + 128] = arg2
            mem[ceil32(return_data.size) + 160] = block.timestamp + sub_e2afe3bb
            mem[ceil32(return_data.size) + 192] = msg.sender
            mem[ceil32(return_data.size) + 224] = arg1
            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            call arg1.0x95d89b41 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 544
            require return_data.size >= 32
            _28 = mem[ceil32(return_data.size) + 544]
            require mem[ceil32(return_data.size) + 544] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
            _32 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
            mem[(2 * ceil32(return_data.size)) + 544] = _32
            require _28 + _32 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_32)] = mem[ceil32(return_data.size) + _28 + 576 len ceil32(_32)]
            if ceil32(_32) <= _32:
                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                mem[ceil32(return_data.size) + 288] = arg2
                mem[ceil32(return_data.size) + 320] = 0
                mem[ceil32(return_data.size) + 352] = block.timestamp
                mem[ceil32(return_data.size) + 384] = percent
                mem[ceil32(return_data.size) + 416] = 0
                mem[ceil32(return_data.size) + 448] = 0
                mem[ceil32(return_data.size) + 480] = 0
                mem[ceil32(return_data.size) + 512] = viewSuperOwner
                stor6[stor7].field_0 = stor7
                stor6[stor7].field_256 = arg2
                stor6[stor7].field_512 = block.timestamp + sub_e2afe3bb
                address(stor6[stor7].field_768) = msg.sender
                address(stor6[stor7].field_1024) = uint64(arg1) << 96
                stor6[stor7][5][].field_0 = Array(len=_32, data=mem[(2 * ceil32(return_data.size)) + 576 len _32])
                stor6[stor7].field_1536 = arg2
                stor6[stor7].field_1792 = 0
                stor6[stor7].field_2048 = block.timestamp
                stor6[stor7].field_2304 = percent
                stor6[stor7].field_2560 = 0
                stor6[stor7].field_2816 = 0
                stor6[stor7].field_3072 = 0
                address(stor6[stor7].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                sub_666a7370[address(arg1)] += arg2
                require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                mem[0] = arg1
                mem[32] = 12
                stor7++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2532 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2559 = mem[_2532]
                require mem[_2532] <= test266151307()
                require _2532 + mem[_2532] + 31 < _2532 + return_data.size
                _2567 = mem[_2532 + mem[_2532]]
                require mem[_2532 + mem[_2532]] <= test266151307()
                require _2532 + ceil32(return_data.size) + ceil32(mem[_2532 + mem[_2532]]) + 32 <= test266151307() and ceil32(mem[_2532 + mem[_2532]]) + 32 >= 0
                mem[64] = _2532 + ceil32(return_data.size) + ceil32(mem[_2532 + mem[_2532]]) + 32
                mem[_2532 + ceil32(return_data.size)] = _2567
                require _2559 + _2567 + 32 <= return_data.size
                mem[_2532 + ceil32(return_data.size) + 32 len ceil32(_2567)] = mem[_2532 + _2559 + 32 len ceil32(_2567)]
                if ceil32(_2567) <= _2567:
                    _2775 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2567
                    mem[mem[64] + 128 len ceil32(_2567)] = mem[_2532 + ceil32(return_data.size) + 32 len ceil32(_2567)]
                    if ceil32(_2567) > _2567:
                        mem[mem[64] + _2567 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2775 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2775 + ceil32(_2567) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2532 + ceil32(return_data.size) + _2567 + 32] = 0
                    _2783 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2567
                    mem[mem[64] + 128 len ceil32(_2567)] = mem[_2532 + ceil32(return_data.size) + 32 len ceil32(_2567)]
                    if ceil32(_2567) > _2567:
                        mem[mem[64] + _2567 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2783 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2783 + ceil32(_2567) + -mem[64] + 128], msg.sender, arg1
            else:
                mem[(2 * ceil32(return_data.size)) + _32 + 576] = 0
                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                mem[ceil32(return_data.size) + 288] = arg2
                mem[ceil32(return_data.size) + 320] = 0
                mem[ceil32(return_data.size) + 352] = block.timestamp
                mem[ceil32(return_data.size) + 384] = percent
                mem[ceil32(return_data.size) + 416] = 0
                mem[ceil32(return_data.size) + 448] = 0
                mem[ceil32(return_data.size) + 480] = 0
                mem[ceil32(return_data.size) + 512] = viewSuperOwner
                stor6[stor7].field_0 = stor7
                stor6[stor7].field_256 = arg2
                stor6[stor7].field_512 = block.timestamp + sub_e2afe3bb
                address(stor6[stor7].field_768) = msg.sender
                address(stor6[stor7].field_1024) = uint64(arg1) << 96
                stor6[stor7][5][].field_0 = Array(len=_32, data=mem[(2 * ceil32(return_data.size)) + 576 len _32])
                stor6[stor7].field_1536 = arg2
                stor6[stor7].field_1792 = 0
                stor6[stor7].field_2048 = block.timestamp
                stor6[stor7].field_2304 = percent
                stor6[stor7].field_2560 = 0
                stor6[stor7].field_2816 = 0
                stor6[stor7].field_3072 = 0
                address(stor6[stor7].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                sub_666a7370[address(arg1)] += arg2
                require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                mem[0] = arg1
                mem[32] = 12
                stor7++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2535 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2560 = mem[_2535]
                require mem[_2535] <= test266151307()
                require _2535 + mem[_2535] + 31 < _2535 + return_data.size
                _2568 = mem[_2535 + mem[_2535]]
                require mem[_2535 + mem[_2535]] <= test266151307()
                require _2535 + ceil32(return_data.size) + ceil32(mem[_2535 + mem[_2535]]) + 32 <= test266151307() and ceil32(mem[_2535 + mem[_2535]]) + 32 >= 0
                mem[64] = _2535 + ceil32(return_data.size) + ceil32(mem[_2535 + mem[_2535]]) + 32
                mem[_2535 + ceil32(return_data.size)] = _2568
                require _2560 + _2568 + 32 <= return_data.size
                mem[_2535 + ceil32(return_data.size) + 32 len ceil32(_2568)] = mem[_2535 + _2560 + 32 len ceil32(_2568)]
                if ceil32(_2568) <= _2568:
                    _2776 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2568
                    mem[mem[64] + 128 len ceil32(_2568)] = mem[_2535 + ceil32(return_data.size) + 32 len ceil32(_2568)]
                    if ceil32(_2568) > _2568:
                        mem[mem[64] + _2568 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2776 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2776 + ceil32(_2568) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2535 + ceil32(return_data.size) + _2568 + 32] = 0
                    _2784 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2568
                    mem[mem[64] + 128 len ceil32(_2568)] = mem[_2535 + ceil32(return_data.size) + 32 len ceil32(_2568)]
                    if ceil32(_2568) > _2568:
                        mem[mem[64] + _2568 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2784 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2784 + ceil32(_2568) + -mem[64] + 128], msg.sender, arg1
        else:
            require arg2
            require 16 * arg2 / arg2 == 16
            mem[32] = 4
            sub_11a3311c[address(msg.sender)]++
            mem[0] = sha3(address(msg.sender), 4)
            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor7
            mem[ceil32(return_data.size) + 96] = stor7
            mem[ceil32(return_data.size) + 128] = arg2
            mem[ceil32(return_data.size) + 160] = block.timestamp + sub_e2afe3bb
            mem[ceil32(return_data.size) + 192] = msg.sender
            mem[ceil32(return_data.size) + 224] = arg1
            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            call arg1.0x95d89b41 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 544
            require return_data.size >= 32
            _31 = mem[ceil32(return_data.size) + 544]
            require mem[ceil32(return_data.size) + 544] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
            _35 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
            mem[(2 * ceil32(return_data.size)) + 544] = _35
            require _31 + _35 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_35)] = mem[ceil32(return_data.size) + _31 + 576 len ceil32(_35)]
            if ceil32(_35) <= _35:
                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                mem[ceil32(return_data.size) + 288] = arg2
                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                mem[ceil32(return_data.size) + 352] = block.timestamp
                mem[ceil32(return_data.size) + 384] = percent
                mem[ceil32(return_data.size) + 416] = 0
                mem[ceil32(return_data.size) + 448] = 0
                mem[ceil32(return_data.size) + 480] = 0
                mem[ceil32(return_data.size) + 512] = viewSuperOwner
                stor6[stor7].field_0 = stor7
                stor6[stor7].field_256 = arg2
                stor6[stor7].field_512 = block.timestamp + sub_e2afe3bb
                address(stor6[stor7].field_768) = msg.sender
                address(stor6[stor7].field_1024) = uint64(arg1) << 96
                stor6[stor7][5][].field_0 = Array(len=_35, data=mem[(2 * ceil32(return_data.size)) + 576 len _35])
                stor6[stor7].field_1536 = arg2
                stor6[stor7].field_1792 = 16 * arg2 / 100
                stor6[stor7].field_2048 = block.timestamp
                stor6[stor7].field_2304 = percent
                stor6[stor7].field_2560 = 0
                stor6[stor7].field_2816 = 0
                stor6[stor7].field_3072 = 0
                address(stor6[stor7].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                sub_666a7370[address(arg1)] += arg2
                require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                mem[0] = arg1
                mem[32] = 12
                stor7++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2526 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2557 = mem[_2526]
                require mem[_2526] <= test266151307()
                require _2526 + mem[_2526] + 31 < _2526 + return_data.size
                _2565 = mem[_2526 + mem[_2526]]
                require mem[_2526 + mem[_2526]] <= test266151307()
                require _2526 + ceil32(return_data.size) + ceil32(mem[_2526 + mem[_2526]]) + 32 <= test266151307() and ceil32(mem[_2526 + mem[_2526]]) + 32 >= 0
                mem[64] = _2526 + ceil32(return_data.size) + ceil32(mem[_2526 + mem[_2526]]) + 32
                mem[_2526 + ceil32(return_data.size)] = _2565
                require _2557 + _2565 + 32 <= return_data.size
                mem[_2526 + ceil32(return_data.size) + 32 len ceil32(_2565)] = mem[_2526 + _2557 + 32 len ceil32(_2565)]
                if ceil32(_2565) <= _2565:
                    _2773 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2565
                    mem[mem[64] + 128 len ceil32(_2565)] = mem[_2526 + ceil32(return_data.size) + 32 len ceil32(_2565)]
                    if ceil32(_2565) > _2565:
                        mem[mem[64] + _2565 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2773 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2773 + ceil32(_2565) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2526 + ceil32(return_data.size) + _2565 + 32] = 0
                    _2781 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2565
                    mem[mem[64] + 128 len ceil32(_2565)] = mem[_2526 + ceil32(return_data.size) + 32 len ceil32(_2565)]
                    if ceil32(_2565) > _2565:
                        mem[mem[64] + _2565 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2781 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2781 + ceil32(_2565) + -mem[64] + 128], msg.sender, arg1
            else:
                mem[(2 * ceil32(return_data.size)) + _35 + 576] = 0
                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                mem[ceil32(return_data.size) + 288] = arg2
                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                mem[ceil32(return_data.size) + 352] = block.timestamp
                mem[ceil32(return_data.size) + 384] = percent
                mem[ceil32(return_data.size) + 416] = 0
                mem[ceil32(return_data.size) + 448] = 0
                mem[ceil32(return_data.size) + 480] = 0
                mem[ceil32(return_data.size) + 512] = viewSuperOwner
                stor6[stor7].field_0 = stor7
                stor6[stor7].field_256 = arg2
                stor6[stor7].field_512 = block.timestamp + sub_e2afe3bb
                address(stor6[stor7].field_768) = msg.sender
                address(stor6[stor7].field_1024) = uint64(arg1) << 96
                stor6[stor7][5][].field_0 = Array(len=_35, data=mem[(2 * ceil32(return_data.size)) + 576 len _35])
                stor6[stor7].field_1536 = arg2
                stor6[stor7].field_1792 = 16 * arg2 / 100
                stor6[stor7].field_2048 = block.timestamp
                stor6[stor7].field_2304 = percent
                stor6[stor7].field_2560 = 0
                stor6[stor7].field_2816 = 0
                stor6[stor7].field_3072 = 0
                address(stor6[stor7].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                sub_666a7370[address(arg1)] += arg2
                require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                mem[0] = arg1
                mem[32] = 12
                stor7++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2529 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2558 = mem[_2529]
                require mem[_2529] <= test266151307()
                require _2529 + mem[_2529] + 31 < _2529 + return_data.size
                _2566 = mem[_2529 + mem[_2529]]
                require mem[_2529 + mem[_2529]] <= test266151307()
                require _2529 + ceil32(return_data.size) + ceil32(mem[_2529 + mem[_2529]]) + 32 <= test266151307() and ceil32(mem[_2529 + mem[_2529]]) + 32 >= 0
                mem[64] = _2529 + ceil32(return_data.size) + ceil32(mem[_2529 + mem[_2529]]) + 32
                mem[_2529 + ceil32(return_data.size)] = _2566
                require _2558 + _2566 + 32 <= return_data.size
                mem[_2529 + ceil32(return_data.size) + 32 len ceil32(_2566)] = mem[_2529 + _2558 + 32 len ceil32(_2566)]
                if ceil32(_2566) <= _2566:
                    _2774 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2566
                    mem[mem[64] + 128 len ceil32(_2566)] = mem[_2529 + ceil32(return_data.size) + 32 len ceil32(_2566)]
                    if ceil32(_2566) > _2566:
                        mem[mem[64] + _2566 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2774 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2774 + ceil32(_2566) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2529 + ceil32(return_data.size) + _2566 + 32] = 0
                    _2782 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2566
                    mem[mem[64] + 128 len ceil32(_2566)] = mem[_2529 + ceil32(return_data.size) + 32 len ceil32(_2566)]
                    if ceil32(_2566) > _2566:
                        mem[mem[64] + _2566 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2782 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2782 + ceil32(_2566) + -mem[64] + 128], msg.sender, arg1
    else:
        require arg2
        require 12 * arg2 / arg2 == 12
        require 12 * arg2 / 100 <= arg2
        if not arg2:
            mem[32] = 4
            sub_11a3311c[address(msg.sender)]++
            mem[0] = sha3(address(msg.sender), 4)
            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor7
            mem[ceil32(return_data.size) + 96] = stor7
            mem[ceil32(return_data.size) + 128] = arg2
            mem[ceil32(return_data.size) + 160] = block.timestamp + sub_e2afe3bb
            mem[ceil32(return_data.size) + 192] = msg.sender
            mem[ceil32(return_data.size) + 224] = arg1
            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            call arg1.0x95d89b41 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 544
            require return_data.size >= 32
            _30 = mem[ceil32(return_data.size) + 544]
            require mem[ceil32(return_data.size) + 544] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
            _34 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
            mem[(2 * ceil32(return_data.size)) + 544] = _34
            require _30 + _34 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_34)] = mem[ceil32(return_data.size) + _30 + 576 len ceil32(_34)]
            if ceil32(_34) <= _34:
                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                mem[ceil32(return_data.size) + 320] = 0
                mem[ceil32(return_data.size) + 352] = block.timestamp
                mem[ceil32(return_data.size) + 384] = percent
                mem[ceil32(return_data.size) + 416] = 0
                mem[ceil32(return_data.size) + 448] = 0
                mem[ceil32(return_data.size) + 480] = 0
                mem[ceil32(return_data.size) + 512] = viewSuperOwner
                stor6[stor7].field_0 = stor7
                stor6[stor7].field_256 = arg2
                stor6[stor7].field_512 = block.timestamp + sub_e2afe3bb
                address(stor6[stor7].field_768) = msg.sender
                address(stor6[stor7].field_1024) = uint64(arg1) << 96
                stor6[stor7][5][].field_0 = Array(len=_34, data=mem[(2 * ceil32(return_data.size)) + 576 len _34])
                stor6[stor7].field_1536 = arg2 - (12 * arg2 / 100)
                stor6[stor7].field_1792 = 0
                stor6[stor7].field_2048 = block.timestamp
                stor6[stor7].field_2304 = percent
                stor6[stor7].field_2560 = 0
                stor6[stor7].field_2816 = 0
                stor6[stor7].field_3072 = 0
                address(stor6[stor7].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                sub_666a7370[address(arg1)] += arg2
                require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                mem[0] = arg1
                mem[32] = 12
                sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                stor7++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2520 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2555 = mem[_2520]
                require mem[_2520] <= test266151307()
                require _2520 + mem[_2520] + 31 < _2520 + return_data.size
                _2563 = mem[_2520 + mem[_2520]]
                require mem[_2520 + mem[_2520]] <= test266151307()
                require _2520 + ceil32(return_data.size) + ceil32(mem[_2520 + mem[_2520]]) + 32 <= test266151307() and ceil32(mem[_2520 + mem[_2520]]) + 32 >= 0
                mem[64] = _2520 + ceil32(return_data.size) + ceil32(mem[_2520 + mem[_2520]]) + 32
                mem[_2520 + ceil32(return_data.size)] = _2563
                require _2555 + _2563 + 32 <= return_data.size
                mem[_2520 + ceil32(return_data.size) + 32 len ceil32(_2563)] = mem[_2520 + _2555 + 32 len ceil32(_2563)]
                if ceil32(_2563) <= _2563:
                    _2771 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2563
                    mem[mem[64] + 128 len ceil32(_2563)] = mem[_2520 + ceil32(return_data.size) + 32 len ceil32(_2563)]
                    if ceil32(_2563) > _2563:
                        mem[mem[64] + _2563 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2771 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2771 + ceil32(_2563) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2520 + ceil32(return_data.size) + _2563 + 32] = 0
                    _2779 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2563
                    mem[mem[64] + 128 len ceil32(_2563)] = mem[_2520 + ceil32(return_data.size) + 32 len ceil32(_2563)]
                    if ceil32(_2563) > _2563:
                        mem[mem[64] + _2563 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2779 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2779 + ceil32(_2563) + -mem[64] + 128], msg.sender, arg1
            else:
                mem[(2 * ceil32(return_data.size)) + _34 + 576] = 0
                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                mem[ceil32(return_data.size) + 320] = 0
                mem[ceil32(return_data.size) + 352] = block.timestamp
                mem[ceil32(return_data.size) + 384] = percent
                mem[ceil32(return_data.size) + 416] = 0
                mem[ceil32(return_data.size) + 448] = 0
                mem[ceil32(return_data.size) + 480] = 0
                mem[ceil32(return_data.size) + 512] = viewSuperOwner
                stor6[stor7].field_0 = stor7
                stor6[stor7].field_256 = arg2
                stor6[stor7].field_512 = block.timestamp + sub_e2afe3bb
                address(stor6[stor7].field_768) = msg.sender
                address(stor6[stor7].field_1024) = uint64(arg1) << 96
                stor6[stor7][5][].field_0 = Array(len=_34, data=mem[(2 * ceil32(return_data.size)) + 576 len _34])
                stor6[stor7].field_1536 = arg2 - (12 * arg2 / 100)
                stor6[stor7].field_1792 = 0
                stor6[stor7].field_2048 = block.timestamp
                stor6[stor7].field_2304 = percent
                stor6[stor7].field_2560 = 0
                stor6[stor7].field_2816 = 0
                stor6[stor7].field_3072 = 0
                address(stor6[stor7].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                sub_666a7370[address(arg1)] += arg2
                require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                mem[0] = arg1
                mem[32] = 12
                sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                stor7++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2523 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2556 = mem[_2523]
                require mem[_2523] <= test266151307()
                require _2523 + mem[_2523] + 31 < _2523 + return_data.size
                _2564 = mem[_2523 + mem[_2523]]
                require mem[_2523 + mem[_2523]] <= test266151307()
                require _2523 + ceil32(return_data.size) + ceil32(mem[_2523 + mem[_2523]]) + 32 <= test266151307() and ceil32(mem[_2523 + mem[_2523]]) + 32 >= 0
                mem[64] = _2523 + ceil32(return_data.size) + ceil32(mem[_2523 + mem[_2523]]) + 32
                mem[_2523 + ceil32(return_data.size)] = _2564
                require _2556 + _2564 + 32 <= return_data.size
                mem[_2523 + ceil32(return_data.size) + 32 len ceil32(_2564)] = mem[_2523 + _2556 + 32 len ceil32(_2564)]
                if ceil32(_2564) <= _2564:
                    _2772 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2564
                    mem[mem[64] + 128 len ceil32(_2564)] = mem[_2523 + ceil32(return_data.size) + 32 len ceil32(_2564)]
                    if ceil32(_2564) > _2564:
                        mem[mem[64] + _2564 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2772 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2772 + ceil32(_2564) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2523 + ceil32(return_data.size) + _2564 + 32] = 0
                    _2780 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2564
                    mem[mem[64] + 128 len ceil32(_2564)] = mem[_2523 + ceil32(return_data.size) + 32 len ceil32(_2564)]
                    if ceil32(_2564) > _2564:
                        mem[mem[64] + _2564 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2780 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2780 + ceil32(_2564) + -mem[64] + 128], msg.sender, arg1
        else:
            require arg2
            require 16 * arg2 / arg2 == 16
            mem[32] = 4
            sub_11a3311c[address(msg.sender)]++
            mem[0] = sha3(address(msg.sender), 4)
            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor7
            mem[ceil32(return_data.size) + 96] = stor7
            mem[ceil32(return_data.size) + 128] = arg2
            mem[ceil32(return_data.size) + 160] = block.timestamp + sub_e2afe3bb
            mem[ceil32(return_data.size) + 192] = msg.sender
            mem[ceil32(return_data.size) + 224] = arg1
            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            call arg1.0x95d89b41 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 544
            require return_data.size >= 32
            _33 = mem[ceil32(return_data.size) + 544]
            require mem[ceil32(return_data.size) + 544] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
            _36 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
            mem[(2 * ceil32(return_data.size)) + 544] = _36
            require _33 + _36 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_36)] = mem[ceil32(return_data.size) + _33 + 576 len ceil32(_36)]
            if ceil32(_36) <= _36:
                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                mem[ceil32(return_data.size) + 352] = block.timestamp
                mem[ceil32(return_data.size) + 384] = percent
                mem[ceil32(return_data.size) + 416] = 0
                mem[ceil32(return_data.size) + 448] = 0
                mem[ceil32(return_data.size) + 480] = 0
                mem[ceil32(return_data.size) + 512] = viewSuperOwner
                stor6[stor7].field_0 = stor7
                stor6[stor7].field_256 = arg2
                stor6[stor7].field_512 = block.timestamp + sub_e2afe3bb
                address(stor6[stor7].field_768) = msg.sender
                address(stor6[stor7].field_1024) = uint64(arg1) << 96
                stor6[stor7][5][].field_0 = Array(len=_36, data=mem[(2 * ceil32(return_data.size)) + 576 len _36])
                stor6[stor7].field_1536 = arg2 - (12 * arg2 / 100)
                stor6[stor7].field_1792 = 16 * arg2 / 100
                stor6[stor7].field_2048 = block.timestamp
                stor6[stor7].field_2304 = percent
                stor6[stor7].field_2560 = 0
                stor6[stor7].field_2816 = 0
                stor6[stor7].field_3072 = 0
                address(stor6[stor7].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                sub_666a7370[address(arg1)] += arg2
                require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                mem[0] = arg1
                mem[32] = 12
                sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                stor7++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2514 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2553 = mem[_2514]
                require mem[_2514] <= test266151307()
                require _2514 + mem[_2514] + 31 < _2514 + return_data.size
                _2561 = mem[_2514 + mem[_2514]]
                require mem[_2514 + mem[_2514]] <= test266151307()
                require _2514 + ceil32(return_data.size) + ceil32(mem[_2514 + mem[_2514]]) + 32 <= test266151307() and ceil32(mem[_2514 + mem[_2514]]) + 32 >= 0
                mem[64] = _2514 + ceil32(return_data.size) + ceil32(mem[_2514 + mem[_2514]]) + 32
                mem[_2514 + ceil32(return_data.size)] = _2561
                require _2553 + _2561 + 32 <= return_data.size
                mem[_2514 + ceil32(return_data.size) + 32 len ceil32(_2561)] = mem[_2514 + _2553 + 32 len ceil32(_2561)]
                if ceil32(_2561) <= _2561:
                    _2769 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2561
                    mem[mem[64] + 128 len ceil32(_2561)] = mem[_2514 + ceil32(return_data.size) + 32 len ceil32(_2561)]
                    if ceil32(_2561) > _2561:
                        mem[mem[64] + _2561 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2769 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2769 + ceil32(_2561) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2514 + ceil32(return_data.size) + _2561 + 32] = 0
                    _2777 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2561
                    mem[mem[64] + 128 len ceil32(_2561)] = mem[_2514 + ceil32(return_data.size) + 32 len ceil32(_2561)]
                    if ceil32(_2561) > _2561:
                        mem[mem[64] + _2561 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2777 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2777 + ceil32(_2561) + -mem[64] + 128], msg.sender, arg1
            else:
                mem[(2 * ceil32(return_data.size)) + _36 + 576] = 0
                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                mem[ceil32(return_data.size) + 352] = block.timestamp
                mem[ceil32(return_data.size) + 384] = percent
                mem[ceil32(return_data.size) + 416] = 0
                mem[ceil32(return_data.size) + 448] = 0
                mem[ceil32(return_data.size) + 480] = 0
                mem[ceil32(return_data.size) + 512] = viewSuperOwner
                stor6[stor7].field_0 = stor7
                stor6[stor7].field_256 = arg2
                stor6[stor7].field_512 = block.timestamp + sub_e2afe3bb
                address(stor6[stor7].field_768) = msg.sender
                address(stor6[stor7].field_1024) = uint64(arg1) << 96
                stor6[stor7][5][].field_0 = Array(len=_36, data=mem[(2 * ceil32(return_data.size)) + 576 len _36])
                stor6[stor7].field_1536 = arg2 - (12 * arg2 / 100)
                stor6[stor7].field_1792 = 16 * arg2 / 100
                stor6[stor7].field_2048 = block.timestamp
                stor6[stor7].field_2304 = percent
                stor6[stor7].field_2560 = 0
                stor6[stor7].field_2816 = 0
                stor6[stor7].field_3072 = 0
                address(stor6[stor7].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                sub_666a7370[address(arg1)] += arg2
                require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                mem[0] = arg1
                mem[32] = 12
                sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                stor7++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2517 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2554 = mem[_2517]
                require mem[_2517] <= test266151307()
                require _2517 + mem[_2517] + 31 < _2517 + return_data.size
                _2562 = mem[_2517 + mem[_2517]]
                require mem[_2517 + mem[_2517]] <= test266151307()
                require _2517 + ceil32(return_data.size) + ceil32(mem[_2517 + mem[_2517]]) + 32 <= test266151307() and ceil32(mem[_2517 + mem[_2517]]) + 32 >= 0
                mem[64] = _2517 + ceil32(return_data.size) + ceil32(mem[_2517 + mem[_2517]]) + 32
                mem[_2517 + ceil32(return_data.size)] = _2562
                require _2554 + _2562 + 32 <= return_data.size
                mem[_2517 + ceil32(return_data.size) + 32 len ceil32(_2562)] = mem[_2517 + _2554 + 32 len ceil32(_2562)]
                if ceil32(_2562) <= _2562:
                    _2770 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2562
                    mem[mem[64] + 128 len ceil32(_2562)] = mem[_2517 + ceil32(return_data.size) + 32 len ceil32(_2562)]
                    if ceil32(_2562) > _2562:
                        mem[mem[64] + _2562 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2770 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2770 + ceil32(_2562) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2517 + ceil32(return_data.size) + _2562 + 32] = 0
                    _2778 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2562
                    mem[mem[64] + 128 len ceil32(_2562)] = mem[_2517 + ceil32(return_data.size) + 32 len ceil32(_2562)]
                    if ceil32(_2562) > _2562:
                        mem[mem[64] + _2562 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2778 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2778 + ceil32(_2562) + -mem[64] + 128], msg.sender, arg1
}



}
