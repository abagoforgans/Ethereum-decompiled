contract main {




// =====================  Runtime code  =====================


#
#  - ClaimTokens(address arg1, uint256 arg2)
#
const GetContractBalance = eth.balance(this.address)


uint8 stor0; offset 160
address viewSuperOwner;
address stor1;
array of uint256 sub_002b5c0a;
mapping of address cashbackcode;
mapping of uint8 stor4;
uint256 percent;
array of uint256 sub_11a3311c;
mapping of uint256 sub_666a7370;
mapping of struct stor8;
uint256 stor9;
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

function contractaddress(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function cashbackcode(address arg1) {
    require calldata.size - 4 >= 32
    return cashbackcode[arg1]
}

function sub_666a7370(?) {
    require calldata.size - 4 >= 32
    return sub_666a7370[arg1]
}

function percent() {
    return percent
}

function blockedContract() {
    return bool(stor0)
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

function doBlockContract() {
    require msg.sender == viewSuperOwner
    stor0 = 1
    emit 0xadac2a07: 1
}

function unBlockContract() {
    require msg.sender == viewSuperOwner
    stor0 = 0
    emit 0xadac2a07: 0
}

function sub_582bf0b4(?) {
    require calldata.size - 4 >= 64
    require msg.sender == viewSuperOwner
    stor4[address(arg1)] = uint8(arg2)
}

function _fallback() payable {
    require msg.value > 0
    require msg.value + sub_a54f12e4[0] >= sub_a54f12e4[0]
    sub_a54f12e4[0] += msg.value
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

function CashbackCode(address arg1) {
    require calldata.size - 4 >= 32
    if not cashbackcode[msg.sender]:
        cashbackcode[msg.sender] = arg1
        emit 0x3bf019f5: arg1, msg.sender
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == viewSuperOwner
    require viewSuperOwner != arg1
    viewSuperOwner = arg1
    emit 0x178eb363: arg1
}

function WithdrawEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == viewSuperOwner
    require arg1 > 0
    require arg1 <= eth.balance(this.address)
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
    while idx < stor9:
        mem[0] = idx
        mem[32] = 8
        if stor8[idx].field_768 != msg.sender:
            s = sha3(idx, 8)
            idx = idx + 1
            s = s
            continue 
        if stor8[idx].field_1024 != arg1:
            s = sha3(idx, 8)
            idx = idx + 1
            s = s
            continue 
        s = sha3(idx, 8)
        idx = idx + 1
        s = s + stor8[idx].field_256
        continue 
    return s
}

function sub_d9df23c0(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    sub_002b5c0a[msg.sender][] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    emit 0xc5db26e7: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len (4 * ceil32(arg1.length)) + -arg1.length + 32], msg.sender
}

function GetSafe(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = stor8[arg1][5].field_0
    idx = 128
    s = 0
    while stor8[arg1][5].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor8[arg1].field_0, 
           stor8[arg1].field_768,
           stor8[arg1].field_1024,
           stor8[arg1].field_256,
           stor8[arg1].field_512,
           Array(len=stor8[arg1][5].length, data=mem[128 len ceil32(stor8[arg1][5].length)]),
           stor8[arg1].field_1536,
           stor8[arg1].field_2048,
           stor8[arg1].field_2304,
           stor8[arg1].field_2560,
           stor8[arg1].field_2816,
           stor8[arg1].field_3328
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

function sub_99f57e05(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == viewSuperOwner
    if sub_a54f12e4[0] > 0:
        if sub_a54f12e4[0] <= eth.balance(this.address):
            sub_a54f12e4[0] = 0
            call msg.sender with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    s = 0
    t = 0
    t = sub_a54f12e4[0]
    while idx < sub_1c019a52.length:
        mem[0] = address(sub_1c019a52[idx])
        mem[32] = 14
        if sub_a54f12e4[address(stor15[idx])] <= 0:
            idx = idx + 1
            s = s
            t = address(sub_1c019a52[idx])
            t = t
            continue 
        mem[0] = address(sub_1c019a52[idx])
        mem[32] = 14
        sub_a54f12e4[address(stor15[idx])] = 0
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = sub_a54f12e4[address(stor15[idx])]
        require ext_code.size(address(sub_1c019a52[idx]))
        call address(sub_1c019a52[idx]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_a54f12e4[address(stor15[idx])]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        idx = idx + 1
        s = address(sub_1c019a52[idx])
        t = address(sub_1c019a52[idx])
        t = sub_a54f12e4[address(stor15[idx])]
        continue 
    sub_1c019a52.length = 0
    if sub_1c019a52.length > 0:
        idx = 0
        while sub_1c019a52.length > idx:
            uint256(sub_1c019a52[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_650db56d(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require msg.sender == viewSuperOwner
    s = 0
    idx = 1
    s = 0
    while idx < stor9:
        mem[0] = idx
        mem[32] = 8
        if not stor8[idx].field_0:
            s = sha3(idx, 8)
            idx = idx + 1
            s = s
            continue 
        if not arg1:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor8[idx].field_1024)
            call stor8[idx].field_1024.0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_37] >= stor8[idx].field_1536
        else:
            if stor1 == stor8[idx].field_1024:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor8[idx].field_1024)
                call stor8[idx].field_1024.0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _38 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_38] >= stor8[idx].field_1536
            else:
                if arg1:
                    s = sha3(idx, 8)
                    idx = idx + 1
                    s = s
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor8[idx].field_1024)
                call stor8[idx].field_1024.0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _39 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_39] >= stor8[idx].field_1536
        mem[mem[64] + 4] = stor8[idx].field_768
        mem[mem[64] + 36] = stor8[idx].field_1536
        require ext_code.size(stor8[idx].field_1024)
        call stor8[idx].field_1024.0xa9059cbb with:
             gas gas_remaining wei
            args stor8[idx].field_768, stor8[idx].field_1536
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        sub_93002f02--
        s = sha3(idx, 8)
        idx = idx + 1
        s = s + 1
        continue 
    emit 0xaeb4f573: s
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
            mem[0] = 15
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
            require _108 + return_data.size > _108 + mem[_108] + 31
            _128 = mem[_108 + mem[_108]]
            require mem[_108 + mem[_108]] <= test266151307()
            require ceil32(mem[_108 + mem[_108]]) + 32 >= 0 and _108 + ceil32(return_data.size) + ceil32(mem[_108 + mem[_108]]) + 32 <= test266151307()
            mem[64] = _108 + ceil32(return_data.size) + ceil32(mem[_108 + mem[_108]]) + 32
            mem[_108 + ceil32(return_data.size)] = _128
            require _116 + _128 + 32 <= return_data.size
            s = 0
            while s < _128:
                mem[s + _108 + ceil32(return_data.size) + 32] = mem[s + _108 + _116 + 32]
                s = s + 32
                continue 
            if ceil32(_128) > _128:
                mem[_128 + _108 + ceil32(return_data.size) + 32] = 0
            require idx < mem[(32 * sub_1c019a52.length) + 128]
            mem[(32 * sub_1c019a52.length) + (32 * idx) + 160] = _108 + ceil32(return_data.size)
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 14
            require idx < mem[(64 * sub_1c019a52.length) + 160]
            mem[(64 * sub_1c019a52.length) + (32 * idx) + 192] = sub_a54f12e4[mem[(32 * idx) + 140 len 20]]
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
                mem[v + t + 32] = mem[v + _274 + 32]
                v = v + 32
                continue 
            if ceil32(_279) > _279:
                mem[_279 + t + 32] = 0
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
    mem[128 len 32 * sub_1c019a52.length] = code.data[10187 len 32 * sub_1c019a52.length]
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
            mem[0] = 15
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
            require _216 + return_data.size > _216 + mem[_216] + 31
            _230 = mem[_216 + mem[_216]]
            require mem[_216 + mem[_216]] <= test266151307()
            require ceil32(mem[_216 + mem[_216]]) + 32 >= 0 and _216 + ceil32(return_data.size) + ceil32(mem[_216 + mem[_216]]) + 32 <= test266151307()
            mem[64] = _216 + ceil32(return_data.size) + ceil32(mem[_216 + mem[_216]]) + 32
            mem[_216 + ceil32(return_data.size)] = _230
            require _222 + _230 + 32 <= return_data.size
            s = 0
            while s < _230:
                mem[s + _216 + ceil32(return_data.size) + 32] = mem[s + _216 + _222 + 32]
                s = s + 32
                continue 
            if ceil32(_230) > _230:
                mem[_230 + _216 + ceil32(return_data.size) + 32] = 0
            require idx < mem[(32 * sub_1c019a52.length) + 128]
            mem[(32 * sub_1c019a52.length) + (32 * idx) + 160] = _216 + ceil32(return_data.size)
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 14
            require idx < mem[_102]
            mem[_102 + (32 * idx) + 32] = sub_a54f12e4[mem[(32 * idx) + 140 len 20]]
            s = address(sub_1c019a52[idx])
            idx = idx + 1
            continue 
        _195 = mem[64]
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
        _281 = mem[(32 * sub_1c019a52.length) + 128]
        mem[_195 + (32 * _212) + 128] = mem[(32 * sub_1c019a52.length) + 128]
        idx = 0
        s = (32 * sub_1c019a52.length) + 160
        t = _195 + (32 * _212) + (32 * _281) + 160
        u = _195 + (32 * _212) + 160
        while idx < _281:
            mem[u] = t + -_195 + -(32 * _212) - 160
            _320 = mem[s]
            _323 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _323:
                mem[v + t + 32] = mem[v + _320 + 32]
                v = v + 32
                continue 
            if ceil32(_323) > _323:
                mem[_323 + t + 32] = 0
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
    mem[_102 + 32 len 32 * sub_1c019a52.length] = code.data[10187 len 32 * sub_1c019a52.length]
    s = 0
    idx = 0
    while idx < sub_1c019a52.length:
        mem[0] = 15
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(sub_1c019a52[idx])
        require idx < mem[96]
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(sub_1c019a52[idx]))
        call address(sub_1c019a52[idx]).0x95d89b41 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _217 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _223 = mem[_217]
        require mem[_217] <= test266151307()
        require _217 + return_data.size > _217 + mem[_217] + 31
        _231 = mem[_217 + mem[_217]]
        require mem[_217 + mem[_217]] <= test266151307()
        require ceil32(mem[_217 + mem[_217]]) + 32 >= 0 and _217 + ceil32(return_data.size) + ceil32(mem[_217 + mem[_217]]) + 32 <= test266151307()
        mem[64] = _217 + ceil32(return_data.size) + ceil32(mem[_217 + mem[_217]]) + 32
        mem[_217 + ceil32(return_data.size)] = _231
        require _223 + _231 + 32 <= return_data.size
        s = 0
        while s < _231:
            mem[s + _217 + ceil32(return_data.size) + 32] = mem[s + _217 + _223 + 32]
            s = s + 32
            continue 
        if ceil32(_231) > _231:
            mem[_231 + _217 + ceil32(return_data.size) + 32] = 0
        require idx < mem[(32 * sub_1c019a52.length) + 128]
        mem[(32 * sub_1c019a52.length) + (32 * idx) + 160] = _217 + ceil32(return_data.size)
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 14
        require idx < mem[_102]
        mem[_102 + (32 * idx) + 32] = sub_a54f12e4[mem[(32 * idx) + 140 len 20]]
        s = address(sub_1c019a52[idx])
        idx = idx + 1
        continue 
    _198 = mem[64]
    mem[mem[64]] = 96
    _213 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _213:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_198 + 32] = (32 * _213) + 128
    _282 = mem[(32 * sub_1c019a52.length) + 128]
    mem[_198 + (32 * _213) + 128] = mem[(32 * sub_1c019a52.length) + 128]
    idx = 0
    s = (32 * sub_1c019a52.length) + 160
    t = _198 + (32 * _213) + (32 * _282) + 160
    u = _198 + (32 * _213) + 160
    while idx < _282:
        mem[u] = t + -_198 + -(32 * _213) - 160
        _321 = mem[s]
        _324 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _324:
            mem[v + t + 32] = mem[v + _321 + 32]
            v = v + 32
            continue 
        if ceil32(_324) > _324:
            mem[_324 + t + 32] = 0
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
    require stor8[arg2].field_0
    require stor8[arg2].field_1024 == arg1
    mem[128] = stor8[arg2][5].field_0
    idx = 128
    s = 0
    while stor8[arg2][5].length + 96 > idx:
        mem[idx + 32] = stor8[arg2][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor8[arg2].field_512 < block.timestamp:
        require ext_code.size(stor8[arg2].field_1024)
        call stor8[arg2].field_1024.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= stor8[arg2].field_1536
        require ext_code.size(stor8[arg2].field_1024)
        call stor8[arg2].field_1024.0xa9059cbb with:
             gas gas_remaining wei
            args stor8[arg2].field_768, stor8[arg2].field_1536
        mem[ceil32(stor8[arg2][5].length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require stor8[arg2].field_1536 <= sub_666a7370[stor8[arg2].field_1024]
        sub_666a7370[stor8[arg2].field_1024] -= stor8[arg2].field_1536
        stor8[arg2].field_1536 = 0
        mem[ceil32(stor8[arg2][5].length) + (2 * ceil32(return_data.size)) + 128] = 96
        emit 0x959346e7: Array(len=stor8[arg2][5].length, data=mem[128 len ceil32(stor8[arg2][5].length)]), stor8[arg2].field_1536, block.timestamp, msg.sender, stor8[arg2].field_1024
    else:
        require stor8[arg2].field_2048 <= block.timestamp
        if not stor8[arg2].field_256:
            if 0 <= stor8[arg2].field_256 / 10:
                if 0 <= stor8[arg2].field_1536:
                    require stor8[arg2].field_0
                    require stor8[arg2].field_1024 == arg1
                    mem[ceil32(stor8[arg2][5].length) + 160] = stor8[arg2][5].field_0
                    idx = ceil32(stor8[arg2][5].length) + 160
                    s = 0
                    while ceil32(stor8[arg2][5].length) + stor8[arg2][5].length + 128 > idx:
                        mem[idx + 32] = stor8[arg2][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    stor8[arg2].field_2048 = block.timestamp
                    if not stor8[arg2].field_256:
                        require 0 <= stor8[arg2].field_256
                        require stor8[arg2].field_1536 <= stor8[arg2].field_256
                        if not stor8[arg2].field_256 - stor8[arg2].field_1536:
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256 - stor8[arg2].field_1536
                            stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                        else:
                            require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * stor8[arg2].field_1536) / stor8[arg2].field_256 - stor8[arg2].field_1536 == 100 * 10^18
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256 - stor8[arg2].field_1536
                            stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * stor8[arg2].field_1536) / stor8[arg2].field_256
                    else:
                        require 12 * stor8[arg2].field_256 / stor8[arg2].field_256 == 12
                        require 12 * stor8[arg2].field_256 / 100 <= stor8[arg2].field_256
                        require stor8[arg2].field_1536 <= stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                        if not stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536:
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536
                            stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                        else:
                            require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) - (100 * 10^18 * stor8[arg2].field_1536) / stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 == 100 * 10^18
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536
                            stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) - (100 * 10^18 * stor8[arg2].field_1536) / stor8[arg2].field_256
                    require 0 <= sub_666a7370[stor8[arg2].field_1024]
                    mem[(2 * ceil32(stor8[arg2][5].length)) + 164] = this.address
                    require ext_code.size(stor8[arg2].field_1024)
                    call stor8[arg2].field_1024.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[(2 * ceil32(stor8[arg2][5].length)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 0
                    mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 164] = stor8[arg2].field_768
                    mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 196] = 0
                    require ext_code.size(stor8[arg2].field_1024)
                    call stor8[arg2].field_1024.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor8[arg2].field_768, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 160] = 96
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 256] = stor8[arg2][5].length
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288 len ceil32(stor8[arg2][5].length)] = mem[ceil32(stor8[arg2][5].length) + 160 len ceil32(stor8[arg2][5].length)]
                    if ceil32(stor8[arg2][5].length) > stor8[arg2][5].length:
                        mem[stor8[arg2][5].length + (2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288] = 0
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 192] = 0
                else:
                    require stor8[arg2].field_1536 <= stor8[arg2].field_1536
                    require stor8[arg2].field_0
                    require stor8[arg2].field_1024 == arg1
                    mem[ceil32(stor8[arg2][5].length) + 160] = stor8[arg2][5].field_0
                    idx = ceil32(stor8[arg2][5].length) + 160
                    s = 0
                    while ceil32(stor8[arg2][5].length) + stor8[arg2][5].length + 128 > idx:
                        mem[idx + 32] = stor8[arg2][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    stor8[arg2].field_1536 = 0
                    stor8[arg2].field_2048 = block.timestamp
                    if not stor8[arg2].field_256:
                        require 0 <= stor8[arg2].field_256
                        require stor8[arg2].field_256
                        require 100 * 10^18 * stor8[arg2].field_256 / stor8[arg2].field_256 == 100 * 10^18
                        require stor8[arg2].field_256
                        stor8[arg2].field_2816 = stor8[arg2].field_256
                        stor8[arg2].field_2560 = 100 * 10^18 * stor8[arg2].field_256 / stor8[arg2].field_256
                    else:
                        require 12 * stor8[arg2].field_256 / stor8[arg2].field_256 == 12
                        require 12 * stor8[arg2].field_256 / 100 <= stor8[arg2].field_256
                        require 0 <= stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                        if not stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100):
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                            stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                        else:
                            require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) == 100 * 10^18
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                            stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256
                    require stor8[arg2].field_1536 <= sub_666a7370[stor8[arg2].field_1024]
                    sub_666a7370[stor8[arg2].field_1024] -= stor8[arg2].field_1536
                    mem[(2 * ceil32(stor8[arg2][5].length)) + 164] = this.address
                    require ext_code.size(stor8[arg2].field_1024)
                    call stor8[arg2].field_1024.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[(2 * ceil32(stor8[arg2][5].length)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= stor8[arg2].field_1536
                    mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 164] = stor8[arg2].field_768
                    mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 196] = stor8[arg2].field_1536
                    require ext_code.size(stor8[arg2].field_1024)
                    call stor8[arg2].field_1024.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor8[arg2].field_768, stor8[arg2].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 160] = 96
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 256] = stor8[arg2][5].length
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288 len ceil32(stor8[arg2][5].length)] = mem[ceil32(stor8[arg2][5].length) + 160 len ceil32(stor8[arg2][5].length)]
                    if ceil32(stor8[arg2][5].length) > stor8[arg2][5].length:
                        mem[stor8[arg2][5].length + (2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288] = 0
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 192] = stor8[arg2].field_1536
            else:
                if stor8[arg2].field_256 / 10 <= stor8[arg2].field_1536:
                    require stor8[arg2].field_0
                    require stor8[arg2].field_1024 == arg1
                    mem[ceil32(stor8[arg2][5].length) + 160] = stor8[arg2][5].field_0
                    idx = ceil32(stor8[arg2][5].length) + 160
                    s = 0
                    while ceil32(stor8[arg2][5].length) + stor8[arg2][5].length + 128 > idx:
                        mem[idx + 32] = stor8[arg2][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    stor8[arg2].field_1536 -= stor8[arg2].field_256 / 10
                    stor8[arg2].field_2048 = block.timestamp
                    if not stor8[arg2].field_256:
                        require 0 <= stor8[arg2].field_256
                        require stor8[arg2].field_1536 - (stor8[arg2].field_256 / 10) <= stor8[arg2].field_256
                        if not stor8[arg2].field_256 - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10):
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256 - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10)
                            stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                        else:
                            require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * stor8[arg2].field_256 / 10) / stor8[arg2].field_256 - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10) == 100 * 10^18
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256 - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10)
                            stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * stor8[arg2].field_256 / 10) / stor8[arg2].field_256
                    else:
                        require 12 * stor8[arg2].field_256 / stor8[arg2].field_256 == 12
                        require 12 * stor8[arg2].field_256 / 100 <= stor8[arg2].field_256
                        require stor8[arg2].field_1536 - (stor8[arg2].field_256 / 10) <= stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                        if not stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10):
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10)
                            stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                        else:
                            require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * stor8[arg2].field_256 / 10) / stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10) == 100 * 10^18
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10)
                            stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * stor8[arg2].field_256 / 10) / stor8[arg2].field_256
                    require stor8[arg2].field_256 / 10 <= sub_666a7370[stor8[arg2].field_1024]
                    sub_666a7370[stor8[arg2].field_1024] -= stor8[arg2].field_256 / 10
                    mem[(2 * ceil32(stor8[arg2][5].length)) + 164] = this.address
                    require ext_code.size(stor8[arg2].field_1024)
                    call stor8[arg2].field_1024.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[(2 * ceil32(stor8[arg2][5].length)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= stor8[arg2].field_256 / 10
                    mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 164] = stor8[arg2].field_768
                    mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 196] = stor8[arg2].field_256 / 10
                    require ext_code.size(stor8[arg2].field_1024)
                    call stor8[arg2].field_1024.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor8[arg2].field_768, stor8[arg2].field_256 / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 160] = 96
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 256] = stor8[arg2][5].length
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288 len ceil32(stor8[arg2][5].length)] = mem[ceil32(stor8[arg2][5].length) + 160 len ceil32(stor8[arg2][5].length)]
                    if ceil32(stor8[arg2][5].length) > stor8[arg2][5].length:
                        mem[stor8[arg2][5].length + (2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288] = 0
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 192] = stor8[arg2].field_256 / 10
                else:
                    require stor8[arg2].field_1536 <= stor8[arg2].field_1536
                    require stor8[arg2].field_0
                    require stor8[arg2].field_1024 == arg1
                    mem[ceil32(stor8[arg2][5].length) + 160] = stor8[arg2][5].field_0
                    idx = ceil32(stor8[arg2][5].length) + 160
                    s = 0
                    while ceil32(stor8[arg2][5].length) + stor8[arg2][5].length + 128 > idx:
                        mem[idx + 32] = stor8[arg2][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    stor8[arg2].field_1536 = 0
                    stor8[arg2].field_2048 = block.timestamp
                    if not stor8[arg2].field_256:
                        require 0 <= stor8[arg2].field_256
                        require stor8[arg2].field_256
                        require 100 * 10^18 * stor8[arg2].field_256 / stor8[arg2].field_256 == 100 * 10^18
                        require stor8[arg2].field_256
                        stor8[arg2].field_2816 = stor8[arg2].field_256
                        stor8[arg2].field_2560 = 100 * 10^18 * stor8[arg2].field_256 / stor8[arg2].field_256
                    else:
                        require 12 * stor8[arg2].field_256 / stor8[arg2].field_256 == 12
                        require 12 * stor8[arg2].field_256 / 100 <= stor8[arg2].field_256
                        require 0 <= stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                        if not stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100):
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                            stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                        else:
                            require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) == 100 * 10^18
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                            stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256
                    require stor8[arg2].field_1536 <= sub_666a7370[stor8[arg2].field_1024]
                    sub_666a7370[stor8[arg2].field_1024] -= stor8[arg2].field_1536
                    mem[(2 * ceil32(stor8[arg2][5].length)) + 164] = this.address
                    require ext_code.size(stor8[arg2].field_1024)
                    call stor8[arg2].field_1024.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[(2 * ceil32(stor8[arg2][5].length)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= stor8[arg2].field_1536
                    mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 164] = stor8[arg2].field_768
                    mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 196] = stor8[arg2].field_1536
                    require ext_code.size(stor8[arg2].field_1024)
                    call stor8[arg2].field_1024.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor8[arg2].field_768, stor8[arg2].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 160] = 96
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 256] = stor8[arg2][5].length
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288 len ceil32(stor8[arg2][5].length)] = mem[ceil32(stor8[arg2][5].length) + 160 len ceil32(stor8[arg2][5].length)]
                    if ceil32(stor8[arg2][5].length) > stor8[arg2][5].length:
                        mem[stor8[arg2][5].length + (2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288] = 0
                    mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 192] = stor8[arg2].field_1536
        else:
            require stor8[arg2].field_2304 * stor8[arg2].field_256 / stor8[arg2].field_256 == stor8[arg2].field_2304
            if not stor8[arg2].field_2304 * stor8[arg2].field_256 / 100:
                if 0 <= stor8[arg2].field_256 / 10:
                    if 0 <= stor8[arg2].field_1536:
                        require stor8[arg2].field_0
                        require stor8[arg2].field_1024 == arg1
                        mem[ceil32(stor8[arg2][5].length) + 160] = stor8[arg2][5].field_0
                        idx = ceil32(stor8[arg2][5].length) + 160
                        s = 0
                        while ceil32(stor8[arg2][5].length) + stor8[arg2][5].length + 128 > idx:
                            mem[idx + 32] = stor8[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        stor8[arg2].field_2048 = block.timestamp
                        if not stor8[arg2].field_256:
                            require 0 <= stor8[arg2].field_256
                            require stor8[arg2].field_1536 <= stor8[arg2].field_256
                            if not stor8[arg2].field_256 - stor8[arg2].field_1536:
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - stor8[arg2].field_1536
                                stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                            else:
                                require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * stor8[arg2].field_1536) / stor8[arg2].field_256 - stor8[arg2].field_1536 == 100 * 10^18
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - stor8[arg2].field_1536
                                stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * stor8[arg2].field_1536) / stor8[arg2].field_256
                        else:
                            require 12 * stor8[arg2].field_256 / stor8[arg2].field_256 == 12
                            require 12 * stor8[arg2].field_256 / 100 <= stor8[arg2].field_256
                            require stor8[arg2].field_1536 <= stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                            if not stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536:
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536
                                stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                            else:
                                require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) - (100 * 10^18 * stor8[arg2].field_1536) / stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 == 100 * 10^18
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536
                                stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) - (100 * 10^18 * stor8[arg2].field_1536) / stor8[arg2].field_256
                        require 0 <= sub_666a7370[stor8[arg2].field_1024]
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 164] = this.address
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= 0
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 164] = stor8[arg2].field_768
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 196] = 0
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor8[arg2].field_768, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 160] = 96
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 256] = stor8[arg2][5].length
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288 len ceil32(stor8[arg2][5].length)] = mem[ceil32(stor8[arg2][5].length) + 160 len ceil32(stor8[arg2][5].length)]
                        if ceil32(stor8[arg2][5].length) > stor8[arg2][5].length:
                            mem[stor8[arg2][5].length + (2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288] = 0
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 192] = 0
                    else:
                        require stor8[arg2].field_1536 <= stor8[arg2].field_1536
                        require stor8[arg2].field_0
                        require stor8[arg2].field_1024 == arg1
                        mem[ceil32(stor8[arg2][5].length) + 160] = stor8[arg2][5].field_0
                        idx = ceil32(stor8[arg2][5].length) + 160
                        s = 0
                        while ceil32(stor8[arg2][5].length) + stor8[arg2][5].length + 128 > idx:
                            mem[idx + 32] = stor8[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        stor8[arg2].field_1536 = 0
                        stor8[arg2].field_2048 = block.timestamp
                        if not stor8[arg2].field_256:
                            require 0 <= stor8[arg2].field_256
                            require stor8[arg2].field_256
                            require 100 * 10^18 * stor8[arg2].field_256 / stor8[arg2].field_256 == 100 * 10^18
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256
                            stor8[arg2].field_2560 = 100 * 10^18 * stor8[arg2].field_256 / stor8[arg2].field_256
                        else:
                            require 12 * stor8[arg2].field_256 / stor8[arg2].field_256 == 12
                            require 12 * stor8[arg2].field_256 / 100 <= stor8[arg2].field_256
                            require 0 <= stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                            if not stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100):
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                                stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                            else:
                                require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) == 100 * 10^18
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                                stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256
                        require stor8[arg2].field_1536 <= sub_666a7370[stor8[arg2].field_1024]
                        sub_666a7370[stor8[arg2].field_1024] -= stor8[arg2].field_1536
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 164] = this.address
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= stor8[arg2].field_1536
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 164] = stor8[arg2].field_768
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 196] = stor8[arg2].field_1536
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor8[arg2].field_768, stor8[arg2].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 160] = 96
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 256] = stor8[arg2][5].length
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288 len ceil32(stor8[arg2][5].length)] = mem[ceil32(stor8[arg2][5].length) + 160 len ceil32(stor8[arg2][5].length)]
                        if ceil32(stor8[arg2][5].length) > stor8[arg2][5].length:
                            mem[stor8[arg2][5].length + (2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288] = 0
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 192] = stor8[arg2].field_1536
                else:
                    if stor8[arg2].field_256 / 10 <= stor8[arg2].field_1536:
                        require stor8[arg2].field_0
                        require stor8[arg2].field_1024 == arg1
                        mem[ceil32(stor8[arg2][5].length) + 160] = stor8[arg2][5].field_0
                        idx = ceil32(stor8[arg2][5].length) + 160
                        s = 0
                        while ceil32(stor8[arg2][5].length) + stor8[arg2][5].length + 128 > idx:
                            mem[idx + 32] = stor8[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        stor8[arg2].field_1536 -= stor8[arg2].field_256 / 10
                        stor8[arg2].field_2048 = block.timestamp
                        if not stor8[arg2].field_256:
                            require 0 <= stor8[arg2].field_256
                            require stor8[arg2].field_1536 - (stor8[arg2].field_256 / 10) <= stor8[arg2].field_256
                            if not stor8[arg2].field_256 - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10):
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10)
                                stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                            else:
                                require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * stor8[arg2].field_256 / 10) / stor8[arg2].field_256 - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10) == 100 * 10^18
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10)
                                stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * stor8[arg2].field_256 / 10) / stor8[arg2].field_256
                        else:
                            require 12 * stor8[arg2].field_256 / stor8[arg2].field_256 == 12
                            require 12 * stor8[arg2].field_256 / 100 <= stor8[arg2].field_256
                            require stor8[arg2].field_1536 - (stor8[arg2].field_256 / 10) <= stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                            if not stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10):
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10)
                                stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                            else:
                                require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * stor8[arg2].field_256 / 10) / stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10) == 100 * 10^18
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10)
                                stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * stor8[arg2].field_256 / 10) / stor8[arg2].field_256
                        require stor8[arg2].field_256 / 10 <= sub_666a7370[stor8[arg2].field_1024]
                        sub_666a7370[stor8[arg2].field_1024] -= stor8[arg2].field_256 / 10
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 164] = this.address
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= stor8[arg2].field_256 / 10
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 164] = stor8[arg2].field_768
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 196] = stor8[arg2].field_256 / 10
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor8[arg2].field_768, stor8[arg2].field_256 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 160] = 96
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 256] = stor8[arg2][5].length
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288 len ceil32(stor8[arg2][5].length)] = mem[ceil32(stor8[arg2][5].length) + 160 len ceil32(stor8[arg2][5].length)]
                        if ceil32(stor8[arg2][5].length) > stor8[arg2][5].length:
                            mem[stor8[arg2][5].length + (2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288] = 0
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 192] = stor8[arg2].field_256 / 10
                    else:
                        require stor8[arg2].field_1536 <= stor8[arg2].field_1536
                        require stor8[arg2].field_0
                        require stor8[arg2].field_1024 == arg1
                        mem[ceil32(stor8[arg2][5].length) + 160] = stor8[arg2][5].field_0
                        idx = ceil32(stor8[arg2][5].length) + 160
                        s = 0
                        while ceil32(stor8[arg2][5].length) + stor8[arg2][5].length + 128 > idx:
                            mem[idx + 32] = stor8[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        stor8[arg2].field_1536 = 0
                        stor8[arg2].field_2048 = block.timestamp
                        if not stor8[arg2].field_256:
                            require 0 <= stor8[arg2].field_256
                            require stor8[arg2].field_256
                            require 100 * 10^18 * stor8[arg2].field_256 / stor8[arg2].field_256 == 100 * 10^18
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256
                            stor8[arg2].field_2560 = 100 * 10^18 * stor8[arg2].field_256 / stor8[arg2].field_256
                        else:
                            require 12 * stor8[arg2].field_256 / stor8[arg2].field_256 == 12
                            require 12 * stor8[arg2].field_256 / 100 <= stor8[arg2].field_256
                            require 0 <= stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                            if not stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100):
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                                stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                            else:
                                require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) == 100 * 10^18
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                                stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256
                        require stor8[arg2].field_1536 <= sub_666a7370[stor8[arg2].field_1024]
                        sub_666a7370[stor8[arg2].field_1024] -= stor8[arg2].field_1536
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 164] = this.address
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= stor8[arg2].field_1536
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 164] = stor8[arg2].field_768
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 196] = stor8[arg2].field_1536
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor8[arg2].field_768, stor8[arg2].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 160] = 96
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 256] = stor8[arg2][5].length
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288 len ceil32(stor8[arg2][5].length)] = mem[ceil32(stor8[arg2][5].length) + 160 len ceil32(stor8[arg2][5].length)]
                        if ceil32(stor8[arg2][5].length) > stor8[arg2][5].length:
                            mem[stor8[arg2][5].length + (2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288] = 0
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 192] = stor8[arg2].field_1536
            else:
                require block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100 / stor8[arg2].field_2304 * stor8[arg2].field_256 / 100 == block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600
                if block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100 <= stor8[arg2].field_256 / 10:
                    if block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100 <= stor8[arg2].field_1536:
                        require stor8[arg2].field_0
                        require stor8[arg2].field_1024 == arg1
                        mem[ceil32(stor8[arg2][5].length) + 160] = stor8[arg2][5].field_0
                        idx = ceil32(stor8[arg2][5].length) + 160
                        s = 0
                        while ceil32(stor8[arg2][5].length) + stor8[arg2][5].length + 128 > idx:
                            mem[idx + 32] = stor8[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        stor8[arg2].field_1536 += -1 * block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100
                        stor8[arg2].field_2048 = block.timestamp
                        if not stor8[arg2].field_256:
                            require 0 <= stor8[arg2].field_256
                            require stor8[arg2].field_1536 - (block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100) <= stor8[arg2].field_256
                            if not stor8[arg2].field_256 - stor8[arg2].field_1536 + (block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100):
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - stor8[arg2].field_1536 + (block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100)
                                stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                            else:
                                require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256 - stor8[arg2].field_1536 + (block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100) == 100 * 10^18
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - stor8[arg2].field_1536 + (block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100)
                                stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256
                        else:
                            require 12 * stor8[arg2].field_256 / stor8[arg2].field_256 == 12
                            require 12 * stor8[arg2].field_256 / 100 <= stor8[arg2].field_256
                            require stor8[arg2].field_1536 - (block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100) <= stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                            if not stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100):
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100)
                                stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                            else:
                                require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100) == 100 * 10^18
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100)
                                stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256
                        require block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100 <= sub_666a7370[stor8[arg2].field_1024]
                        sub_666a7370[stor8[arg2].field_1024] += -1 * block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 164] = this.address
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 164] = stor8[arg2].field_768
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 196] = block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor8[arg2].field_768, block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 160] = 96
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 256] = stor8[arg2][5].length
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288 len ceil32(stor8[arg2][5].length)] = mem[ceil32(stor8[arg2][5].length) + 160 len ceil32(stor8[arg2][5].length)]
                        if ceil32(stor8[arg2][5].length) > stor8[arg2][5].length:
                            mem[stor8[arg2][5].length + (2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288] = 0
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 192] = block.timestamp - stor8[arg2].field_2048 / 720 * 24 * 3600 * stor8[arg2].field_2304 * stor8[arg2].field_256 / 100
                    else:
                        require stor8[arg2].field_1536 <= stor8[arg2].field_1536
                        require stor8[arg2].field_0
                        require stor8[arg2].field_1024 == arg1
                        mem[ceil32(stor8[arg2][5].length) + 160] = stor8[arg2][5].field_0
                        idx = ceil32(stor8[arg2][5].length) + 160
                        s = 0
                        while ceil32(stor8[arg2][5].length) + stor8[arg2][5].length + 128 > idx:
                            mem[idx + 32] = stor8[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        stor8[arg2].field_1536 = 0
                        stor8[arg2].field_2048 = block.timestamp
                        if not stor8[arg2].field_256:
                            require 0 <= stor8[arg2].field_256
                            require stor8[arg2].field_256
                            require 100 * 10^18 * stor8[arg2].field_256 / stor8[arg2].field_256 == 100 * 10^18
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256
                            stor8[arg2].field_2560 = 100 * 10^18 * stor8[arg2].field_256 / stor8[arg2].field_256
                        else:
                            require 12 * stor8[arg2].field_256 / stor8[arg2].field_256 == 12
                            require 12 * stor8[arg2].field_256 / 100 <= stor8[arg2].field_256
                            require 0 <= stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                            if not stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100):
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                                stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                            else:
                                require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) == 100 * 10^18
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                                stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256
                        require stor8[arg2].field_1536 <= sub_666a7370[stor8[arg2].field_1024]
                        sub_666a7370[stor8[arg2].field_1024] -= stor8[arg2].field_1536
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 164] = this.address
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= stor8[arg2].field_1536
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 164] = stor8[arg2].field_768
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 196] = stor8[arg2].field_1536
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor8[arg2].field_768, stor8[arg2].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 160] = 96
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 256] = stor8[arg2][5].length
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288 len ceil32(stor8[arg2][5].length)] = mem[ceil32(stor8[arg2][5].length) + 160 len ceil32(stor8[arg2][5].length)]
                        if ceil32(stor8[arg2][5].length) > stor8[arg2][5].length:
                            mem[stor8[arg2][5].length + (2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288] = 0
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 192] = stor8[arg2].field_1536
                else:
                    if stor8[arg2].field_256 / 10 <= stor8[arg2].field_1536:
                        require stor8[arg2].field_0
                        require stor8[arg2].field_1024 == arg1
                        mem[ceil32(stor8[arg2][5].length) + 160] = stor8[arg2][5].field_0
                        idx = ceil32(stor8[arg2][5].length) + 160
                        s = 0
                        while ceil32(stor8[arg2][5].length) + stor8[arg2][5].length + 128 > idx:
                            mem[idx + 32] = stor8[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        stor8[arg2].field_1536 -= stor8[arg2].field_256 / 10
                        stor8[arg2].field_2048 = block.timestamp
                        if not stor8[arg2].field_256:
                            require 0 <= stor8[arg2].field_256
                            require stor8[arg2].field_1536 - (stor8[arg2].field_256 / 10) <= stor8[arg2].field_256
                            if not stor8[arg2].field_256 - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10):
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10)
                                stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                            else:
                                require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * stor8[arg2].field_256 / 10) / stor8[arg2].field_256 - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10) == 100 * 10^18
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10)
                                stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * stor8[arg2].field_256 / 10) / stor8[arg2].field_256
                        else:
                            require 12 * stor8[arg2].field_256 / stor8[arg2].field_256 == 12
                            require 12 * stor8[arg2].field_256 / 100 <= stor8[arg2].field_256
                            require stor8[arg2].field_1536 - (stor8[arg2].field_256 / 10) <= stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                            if not stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10):
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10)
                                stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                            else:
                                require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * stor8[arg2].field_256 / 10) / stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10) == 100 * 10^18
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) - stor8[arg2].field_1536 + (stor8[arg2].field_256 / 10)
                                stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) - (100 * 10^18 * stor8[arg2].field_1536) + (100 * 10^18 * stor8[arg2].field_256 / 10) / stor8[arg2].field_256
                        require stor8[arg2].field_256 / 10 <= sub_666a7370[stor8[arg2].field_1024]
                        sub_666a7370[stor8[arg2].field_1024] -= stor8[arg2].field_256 / 10
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 164] = this.address
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= stor8[arg2].field_256 / 10
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 164] = stor8[arg2].field_768
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 196] = stor8[arg2].field_256 / 10
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor8[arg2].field_768, stor8[arg2].field_256 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 160] = 96
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 256] = stor8[arg2][5].length
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288 len ceil32(stor8[arg2][5].length)] = mem[ceil32(stor8[arg2][5].length) + 160 len ceil32(stor8[arg2][5].length)]
                        if ceil32(stor8[arg2][5].length) > stor8[arg2][5].length:
                            mem[stor8[arg2][5].length + (2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288] = 0
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 192] = stor8[arg2].field_256 / 10
                    else:
                        require stor8[arg2].field_1536 <= stor8[arg2].field_1536
                        require stor8[arg2].field_0
                        require stor8[arg2].field_1024 == arg1
                        mem[ceil32(stor8[arg2][5].length) + 160] = stor8[arg2][5].field_0
                        idx = ceil32(stor8[arg2][5].length) + 160
                        s = 0
                        while ceil32(stor8[arg2][5].length) + stor8[arg2][5].length + 128 > idx:
                            mem[idx + 32] = stor8[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        stor8[arg2].field_1536 = 0
                        stor8[arg2].field_2048 = block.timestamp
                        if not stor8[arg2].field_256:
                            require 0 <= stor8[arg2].field_256
                            require stor8[arg2].field_256
                            require 100 * 10^18 * stor8[arg2].field_256 / stor8[arg2].field_256 == 100 * 10^18
                            require stor8[arg2].field_256
                            stor8[arg2].field_2816 = stor8[arg2].field_256
                            stor8[arg2].field_2560 = 100 * 10^18 * stor8[arg2].field_256 / stor8[arg2].field_256
                        else:
                            require 12 * stor8[arg2].field_256 / stor8[arg2].field_256 == 12
                            require 12 * stor8[arg2].field_256 / 100 <= stor8[arg2].field_256
                            require 0 <= stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                            if not stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100):
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                                stor8[arg2].field_2560 = 0 / stor8[arg2].field_256
                            else:
                                require (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100) == 100 * 10^18
                                require stor8[arg2].field_256
                                stor8[arg2].field_2816 = stor8[arg2].field_256 - (12 * stor8[arg2].field_256 / 100)
                                stor8[arg2].field_2560 = (100 * 10^18 * stor8[arg2].field_256) - (100 * 10^18 * 12 * stor8[arg2].field_256 / 100) / stor8[arg2].field_256
                        require stor8[arg2].field_1536 <= sub_666a7370[stor8[arg2].field_1024]
                        sub_666a7370[stor8[arg2].field_1024] -= stor8[arg2].field_1536
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 164] = this.address
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[(2 * ceil32(stor8[arg2][5].length)) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= stor8[arg2].field_1536
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 164] = stor8[arg2].field_768
                        mem[(2 * ceil32(stor8[arg2][5].length)) + ceil32(return_data.size) + 196] = stor8[arg2].field_1536
                        require ext_code.size(stor8[arg2].field_1024)
                        call stor8[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor8[arg2].field_768, stor8[arg2].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 160] = 96
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 256] = stor8[arg2][5].length
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288 len ceil32(stor8[arg2][5].length)] = mem[ceil32(stor8[arg2][5].length) + 160 len ceil32(stor8[arg2][5].length)]
                        if ceil32(stor8[arg2][5].length) > stor8[arg2][5].length:
                            mem[stor8[arg2][5].length + (2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 288] = 0
                        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 192] = stor8[arg2].field_1536
        mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 224] = block.timestamp
        emit 0x959346e7: mem[(2 * ceil32(stor8[arg2][5].length)) + (2 * ceil32(return_data.size)) + 160 len (4 * ceil32(stor8[arg2][5].length)) + 128], msg.sender, stor8[arg2].field_1024
}

function sub_e61021e8(?) {
    require calldata.size - 4 >= 64
    require not stor0
    require arg1
    require arg2 > 0
    require stor4[address(arg1)]
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
        if not arg2:
            if cashbackcode[msg.sender]:
                require 0 <= arg2
                if not arg2:
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _135 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _177 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _135 + _177 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_177)] = mem[ceil32(return_data.size) + _135 + 576 len ceil32(_177)]
                    if ceil32(_177) <= _177:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9492 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9524 = mem[_9492]
                        require mem[_9492] <= test266151307()
                        require _9492 + return_data.size > _9492 + mem[_9492] + 31
                        _9684 = mem[_9492 + mem[_9492]]
                        require mem[_9492 + mem[_9492]] <= test266151307()
                        require ceil32(mem[_9492 + mem[_9492]]) + 32 >= 0 and _9492 + ceil32(return_data.size) + ceil32(mem[_9492 + mem[_9492]]) + 32 <= test266151307()
                        mem[64] = _9492 + ceil32(return_data.size) + ceil32(mem[_9492 + mem[_9492]]) + 32
                        mem[_9492 + ceil32(return_data.size)] = _9684
                        require _9524 + _9684 + 32 <= return_data.size
                        mem[_9492 + ceil32(return_data.size) + 32 len ceil32(_9684)] = mem[_9492 + _9524 + 32 len ceil32(_9684)]
                        if ceil32(_9684) <= _9684:
                            _10542 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9684
                            mem[mem[64] + 128 len ceil32(_9684)] = mem[_9492 + ceil32(return_data.size) + 32 len ceil32(_9684)]
                            if ceil32(_9684) > _9684:
                                mem[_9684 + _10542 + 128] = 0
                            mem[_10542 + 32] = arg2
                            mem[_10542 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10542 + ceil32(_9684) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9684 + _9492 + ceil32(return_data.size) + 32] = 0
                            _10543 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9684
                            mem[mem[64] + 128 len ceil32(_9684)] = mem[_9492 + ceil32(return_data.size) + 32 len ceil32(_9684)]
                            if ceil32(_9684) > _9684:
                                mem[_9684 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10543 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10543 + ceil32(_9684) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_177 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9493 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9525 = mem[_9493]
                        require mem[_9493] <= test266151307()
                        require _9493 + return_data.size > _9493 + mem[_9493] + 31
                        _9685 = mem[_9493 + mem[_9493]]
                        require mem[_9493 + mem[_9493]] <= test266151307()
                        require ceil32(mem[_9493 + mem[_9493]]) + 32 >= 0 and _9493 + ceil32(return_data.size) + ceil32(mem[_9493 + mem[_9493]]) + 32 <= test266151307()
                        mem[64] = _9493 + ceil32(return_data.size) + ceil32(mem[_9493 + mem[_9493]]) + 32
                        mem[_9493 + ceil32(return_data.size)] = _9685
                        require _9525 + _9685 + 32 <= return_data.size
                        mem[_9493 + ceil32(return_data.size) + 32 len ceil32(_9685)] = mem[_9493 + _9525 + 32 len ceil32(_9685)]
                        if ceil32(_9685) <= _9685:
                            _10544 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9685
                            mem[mem[64] + 128 len ceil32(_9685)] = mem[_9493 + ceil32(return_data.size) + 32 len ceil32(_9685)]
                            if ceil32(_9685) > _9685:
                                mem[_9685 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10544 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10544 + ceil32(_9685) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9685 + _9493 + ceil32(return_data.size) + 32] = 0
                            _10545 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9685
                            mem[mem[64] + 128 len ceil32(_9685)] = mem[_9493 + ceil32(return_data.size) + 32 len ceil32(_9685)]
                            if ceil32(_9685) > _9685:
                                mem[_9685 + _10545 + 128] = 0
                            mem[_10545 + 32] = arg2
                            mem[_10545 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10545 + ceil32(_9685) + -mem[64] + 128], msg.sender, arg1
                else:
                    require 16 * arg2 / arg2 == 16
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _160 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _184 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _160 + _184 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_184)] = mem[ceil32(return_data.size) + _160 + 576 len ceil32(_184)]
                    if ceil32(_184) <= _184:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9490 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9522 = mem[_9490]
                        require mem[_9490] <= test266151307()
                        require _9490 + return_data.size > _9490 + mem[_9490] + 31
                        _9682 = mem[_9490 + mem[_9490]]
                        require mem[_9490 + mem[_9490]] <= test266151307()
                        require ceil32(mem[_9490 + mem[_9490]]) + 32 >= 0 and _9490 + ceil32(return_data.size) + ceil32(mem[_9490 + mem[_9490]]) + 32 <= test266151307()
                        mem[64] = _9490 + ceil32(return_data.size) + ceil32(mem[_9490 + mem[_9490]]) + 32
                        mem[_9490 + ceil32(return_data.size)] = _9682
                        require _9522 + _9682 + 32 <= return_data.size
                        mem[_9490 + ceil32(return_data.size) + 32 len ceil32(_9682)] = mem[_9490 + _9522 + 32 len ceil32(_9682)]
                        if ceil32(_9682) <= _9682:
                            _10538 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9682
                            mem[mem[64] + 128 len ceil32(_9682)] = mem[_9490 + ceil32(return_data.size) + 32 len ceil32(_9682)]
                            if ceil32(_9682) > _9682:
                                mem[_9682 + _10538 + 128] = 0
                            mem[_10538 + 32] = arg2
                            mem[_10538 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10538 + ceil32(_9682) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9682 + _9490 + ceil32(return_data.size) + 32] = 0
                            _10539 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9682
                            mem[mem[64] + 128 len ceil32(_9682)] = mem[_9490 + ceil32(return_data.size) + 32 len ceil32(_9682)]
                            if ceil32(_9682) > _9682:
                                mem[_9682 + _10539 + 128] = 0
                            mem[_10539 + 32] = arg2
                            mem[_10539 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10539 + ceil32(_9682) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_184 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9491 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9523 = mem[_9491]
                        require mem[_9491] <= test266151307()
                        require _9491 + return_data.size > _9491 + mem[_9491] + 31
                        _9683 = mem[_9491 + mem[_9491]]
                        require mem[_9491 + mem[_9491]] <= test266151307()
                        require ceil32(mem[_9491 + mem[_9491]]) + 32 >= 0 and _9491 + ceil32(return_data.size) + ceil32(mem[_9491 + mem[_9491]]) + 32 <= test266151307()
                        mem[64] = _9491 + ceil32(return_data.size) + ceil32(mem[_9491 + mem[_9491]]) + 32
                        mem[_9491 + ceil32(return_data.size)] = _9683
                        require _9523 + _9683 + 32 <= return_data.size
                        mem[_9491 + ceil32(return_data.size) + 32 len ceil32(_9683)] = mem[_9491 + _9523 + 32 len ceil32(_9683)]
                        if ceil32(_9683) <= _9683:
                            _10540 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9683
                            mem[mem[64] + 128 len ceil32(_9683)] = mem[_9491 + ceil32(return_data.size) + 32 len ceil32(_9683)]
                            if ceil32(_9683) > _9683:
                                mem[_9683 + _10540 + 128] = 0
                            mem[_10540 + 32] = arg2
                            mem[_10540 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10540 + ceil32(_9683) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9683 + _9491 + ceil32(return_data.size) + 32] = 0
                            _10541 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9683
                            mem[mem[64] + 128 len ceil32(_9683)] = mem[_9491 + ceil32(return_data.size) + 32 len ceil32(_9683)]
                            if ceil32(_9683) > _9683:
                                mem[_9683 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10541 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10541 + ceil32(_9683) + -mem[64] + 128], msg.sender, arg1
            else:
                if not arg2:
                    cashbackcode[msg.sender] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _178 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _194 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _178 + _194 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_194)] = mem[ceil32(return_data.size) + _178 + 576 len ceil32(_194)]
                    if ceil32(_194) <= _194:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9496 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9528 = mem[_9496]
                        require mem[_9496] <= test266151307()
                        require _9496 + return_data.size > _9496 + mem[_9496] + 31
                        _9688 = mem[_9496 + mem[_9496]]
                        require mem[_9496 + mem[_9496]] <= test266151307()
                        require ceil32(mem[_9496 + mem[_9496]]) + 32 >= 0 and _9496 + ceil32(return_data.size) + ceil32(mem[_9496 + mem[_9496]]) + 32 <= test266151307()
                        mem[64] = _9496 + ceil32(return_data.size) + ceil32(mem[_9496 + mem[_9496]]) + 32
                        mem[_9496 + ceil32(return_data.size)] = _9688
                        require _9528 + _9688 + 32 <= return_data.size
                        mem[_9496 + ceil32(return_data.size) + 32 len ceil32(_9688)] = mem[_9496 + _9528 + 32 len ceil32(_9688)]
                        if ceil32(_9688) <= _9688:
                            _10550 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9688
                            mem[mem[64] + 128 len ceil32(_9688)] = mem[_9496 + ceil32(return_data.size) + 32 len ceil32(_9688)]
                            if ceil32(_9688) > _9688:
                                mem[_9688 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10550 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10550 + ceil32(_9688) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9688 + _9496 + ceil32(return_data.size) + 32] = 0
                            _10551 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9688
                            mem[mem[64] + 128 len ceil32(_9688)] = mem[_9496 + ceil32(return_data.size) + 32 len ceil32(_9688)]
                            if ceil32(_9688) > _9688:
                                mem[_9688 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10551 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10551 + ceil32(_9688) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_194 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9497 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9529 = mem[_9497]
                        require mem[_9497] <= test266151307()
                        require _9497 + return_data.size > _9497 + mem[_9497] + 31
                        _9689 = mem[_9497 + mem[_9497]]
                        require mem[_9497 + mem[_9497]] <= test266151307()
                        require ceil32(mem[_9497 + mem[_9497]]) + 32 >= 0 and _9497 + ceil32(return_data.size) + ceil32(mem[_9497 + mem[_9497]]) + 32 <= test266151307()
                        mem[64] = _9497 + ceil32(return_data.size) + ceil32(mem[_9497 + mem[_9497]]) + 32
                        mem[_9497 + ceil32(return_data.size)] = _9689
                        require _9529 + _9689 + 32 <= return_data.size
                        mem[_9497 + ceil32(return_data.size) + 32 len ceil32(_9689)] = mem[_9497 + _9529 + 32 len ceil32(_9689)]
                        if ceil32(_9689) <= _9689:
                            _10552 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9689
                            mem[mem[64] + 128 len ceil32(_9689)] = mem[_9497 + ceil32(return_data.size) + 32 len ceil32(_9689)]
                            if ceil32(_9689) > _9689:
                                mem[_9689 + _10552 + 128] = 0
                            mem[_10552 + 32] = arg2
                            mem[_10552 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10552 + ceil32(_9689) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9689 + _9497 + ceil32(return_data.size) + 32] = 0
                            _10553 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9689
                            mem[mem[64] + 128 len ceil32(_9689)] = mem[_9497 + ceil32(return_data.size) + 32 len ceil32(_9689)]
                            if ceil32(_9689) > _9689:
                                mem[_9689 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10553 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10553 + ceil32(_9689) + -mem[64] + 128], msg.sender, arg1
                else:
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[msg.sender] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _185 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _198 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _185 + _198 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_198)] = mem[ceil32(return_data.size) + _185 + 576 len ceil32(_198)]
                    if ceil32(_198) <= _198:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9494 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9526 = mem[_9494]
                        require mem[_9494] <= test266151307()
                        require _9494 + return_data.size > _9494 + mem[_9494] + 31
                        _9686 = mem[_9494 + mem[_9494]]
                        require mem[_9494 + mem[_9494]] <= test266151307()
                        require ceil32(mem[_9494 + mem[_9494]]) + 32 >= 0 and _9494 + ceil32(return_data.size) + ceil32(mem[_9494 + mem[_9494]]) + 32 <= test266151307()
                        mem[64] = _9494 + ceil32(return_data.size) + ceil32(mem[_9494 + mem[_9494]]) + 32
                        mem[_9494 + ceil32(return_data.size)] = _9686
                        require _9526 + _9686 + 32 <= return_data.size
                        mem[_9494 + ceil32(return_data.size) + 32 len ceil32(_9686)] = mem[_9494 + _9526 + 32 len ceil32(_9686)]
                        if ceil32(_9686) <= _9686:
                            _10546 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9686
                            mem[mem[64] + 128 len ceil32(_9686)] = mem[_9494 + ceil32(return_data.size) + 32 len ceil32(_9686)]
                            if ceil32(_9686) > _9686:
                                mem[_9686 + _10546 + 128] = 0
                            mem[_10546 + 32] = arg2
                            mem[_10546 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10546 + ceil32(_9686) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9686 + _9494 + ceil32(return_data.size) + 32] = 0
                            _10547 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9686
                            mem[mem[64] + 128 len ceil32(_9686)] = mem[_9494 + ceil32(return_data.size) + 32 len ceil32(_9686)]
                            if ceil32(_9686) > _9686:
                                mem[_9686 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10547 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10547 + ceil32(_9686) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_198 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9495 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9527 = mem[_9495]
                        require mem[_9495] <= test266151307()
                        require _9495 + return_data.size > _9495 + mem[_9495] + 31
                        _9687 = mem[_9495 + mem[_9495]]
                        require mem[_9495 + mem[_9495]] <= test266151307()
                        require ceil32(mem[_9495 + mem[_9495]]) + 32 >= 0 and _9495 + ceil32(return_data.size) + ceil32(mem[_9495 + mem[_9495]]) + 32 <= test266151307()
                        mem[64] = _9495 + ceil32(return_data.size) + ceil32(mem[_9495 + mem[_9495]]) + 32
                        mem[_9495 + ceil32(return_data.size)] = _9687
                        require _9527 + _9687 + 32 <= return_data.size
                        mem[_9495 + ceil32(return_data.size) + 32 len ceil32(_9687)] = mem[_9495 + _9527 + 32 len ceil32(_9687)]
                        if ceil32(_9687) <= _9687:
                            _10548 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9687
                            mem[mem[64] + 128 len ceil32(_9687)] = mem[_9495 + ceil32(return_data.size) + 32 len ceil32(_9687)]
                            if ceil32(_9687) > _9687:
                                mem[_9687 + _10548 + 128] = 0
                            mem[_10548 + 32] = arg2
                            mem[_10548 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10548 + ceil32(_9687) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9687 + _9495 + ceil32(return_data.size) + 32] = 0
                            _10549 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9687
                            mem[mem[64] + 128 len ceil32(_9687)] = mem[_9495 + ceil32(return_data.size) + 32 len ceil32(_9687)]
                            if ceil32(_9687) > _9687:
                                mem[_9687 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10549 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10549 + ceil32(_9687) + -mem[64] + 128], msg.sender, arg1
        else:
            require 28 * arg2 / arg2 == 28
            if cashbackcode[msg.sender]:
                require 0 <= arg2
                if not arg2:
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _154 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _182 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _154 + _182 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_182)] = mem[ceil32(return_data.size) + _154 + 576 len ceil32(_182)]
                    if ceil32(_182) <= _182:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9484 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9516 = mem[_9484]
                        require mem[_9484] <= test266151307()
                        require _9484 + return_data.size > _9484 + mem[_9484] + 31
                        _9676 = mem[_9484 + mem[_9484]]
                        require mem[_9484 + mem[_9484]] <= test266151307()
                        require ceil32(mem[_9484 + mem[_9484]]) + 32 >= 0 and _9484 + ceil32(return_data.size) + ceil32(mem[_9484 + mem[_9484]]) + 32 <= test266151307()
                        mem[64] = _9484 + ceil32(return_data.size) + ceil32(mem[_9484 + mem[_9484]]) + 32
                        mem[_9484 + ceil32(return_data.size)] = _9676
                        require _9516 + _9676 + 32 <= return_data.size
                        mem[_9484 + ceil32(return_data.size) + 32 len ceil32(_9676)] = mem[_9484 + _9516 + 32 len ceil32(_9676)]
                        if ceil32(_9676) <= _9676:
                            _10526 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9676
                            mem[mem[64] + 128 len ceil32(_9676)] = mem[_9484 + ceil32(return_data.size) + 32 len ceil32(_9676)]
                            if ceil32(_9676) > _9676:
                                mem[_9676 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10526 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10526 + ceil32(_9676) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9676 + _9484 + ceil32(return_data.size) + 32] = 0
                            _10527 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9676
                            mem[mem[64] + 128 len ceil32(_9676)] = mem[_9484 + ceil32(return_data.size) + 32 len ceil32(_9676)]
                            if ceil32(_9676) > _9676:
                                mem[_9676 + _10527 + 128] = 0
                            mem[_10527 + 32] = arg2
                            mem[_10527 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10527 + ceil32(_9676) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_182 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9485 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9517 = mem[_9485]
                        require mem[_9485] <= test266151307()
                        require _9485 + return_data.size > _9485 + mem[_9485] + 31
                        _9677 = mem[_9485 + mem[_9485]]
                        require mem[_9485 + mem[_9485]] <= test266151307()
                        require ceil32(mem[_9485 + mem[_9485]]) + 32 >= 0 and _9485 + ceil32(return_data.size) + ceil32(mem[_9485 + mem[_9485]]) + 32 <= test266151307()
                        mem[64] = _9485 + ceil32(return_data.size) + ceil32(mem[_9485 + mem[_9485]]) + 32
                        mem[_9485 + ceil32(return_data.size)] = _9677
                        require _9517 + _9677 + 32 <= return_data.size
                        mem[_9485 + ceil32(return_data.size) + 32 len ceil32(_9677)] = mem[_9485 + _9517 + 32 len ceil32(_9677)]
                        if ceil32(_9677) <= _9677:
                            _10528 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9677
                            mem[mem[64] + 128 len ceil32(_9677)] = mem[_9485 + ceil32(return_data.size) + 32 len ceil32(_9677)]
                            if ceil32(_9677) > _9677:
                                mem[_9677 + _10528 + 128] = 0
                            mem[_10528 + 32] = arg2
                            mem[_10528 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10528 + ceil32(_9677) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9677 + _9485 + ceil32(return_data.size) + 32] = 0
                            _10529 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9677
                            mem[mem[64] + 128 len ceil32(_9677)] = mem[_9485 + ceil32(return_data.size) + 32 len ceil32(_9677)]
                            if ceil32(_9677) > _9677:
                                mem[_9677 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10529 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10529 + ceil32(_9677) + -mem[64] + 128], msg.sender, arg1
                else:
                    require 16 * arg2 / arg2 == 16
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _170 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _190 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _170 + _190 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_190)] = mem[ceil32(return_data.size) + _170 + 576 len ceil32(_190)]
                    if ceil32(_190) <= _190:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9482 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9514 = mem[_9482]
                        require mem[_9482] <= test266151307()
                        require _9482 + return_data.size > _9482 + mem[_9482] + 31
                        _9674 = mem[_9482 + mem[_9482]]
                        require mem[_9482 + mem[_9482]] <= test266151307()
                        require ceil32(mem[_9482 + mem[_9482]]) + 32 >= 0 and _9482 + ceil32(return_data.size) + ceil32(mem[_9482 + mem[_9482]]) + 32 <= test266151307()
                        mem[64] = _9482 + ceil32(return_data.size) + ceil32(mem[_9482 + mem[_9482]]) + 32
                        mem[_9482 + ceil32(return_data.size)] = _9674
                        require _9514 + _9674 + 32 <= return_data.size
                        mem[_9482 + ceil32(return_data.size) + 32 len ceil32(_9674)] = mem[_9482 + _9514 + 32 len ceil32(_9674)]
                        if ceil32(_9674) <= _9674:
                            _10522 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9674
                            mem[mem[64] + 128 len ceil32(_9674)] = mem[_9482 + ceil32(return_data.size) + 32 len ceil32(_9674)]
                            if ceil32(_9674) > _9674:
                                mem[_9674 + _10522 + 128] = 0
                            mem[_10522 + 32] = arg2
                            mem[_10522 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10522 + ceil32(_9674) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9674 + _9482 + ceil32(return_data.size) + 32] = 0
                            _10523 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9674
                            mem[mem[64] + 128 len ceil32(_9674)] = mem[_9482 + ceil32(return_data.size) + 32 len ceil32(_9674)]
                            if ceil32(_9674) > _9674:
                                mem[_9674 + _10523 + 128] = 0
                            mem[_10523 + 32] = arg2
                            mem[_10523 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10523 + ceil32(_9674) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_190 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9483 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9515 = mem[_9483]
                        require mem[_9483] <= test266151307()
                        require _9483 + return_data.size > _9483 + mem[_9483] + 31
                        _9675 = mem[_9483 + mem[_9483]]
                        require mem[_9483 + mem[_9483]] <= test266151307()
                        require ceil32(mem[_9483 + mem[_9483]]) + 32 >= 0 and _9483 + ceil32(return_data.size) + ceil32(mem[_9483 + mem[_9483]]) + 32 <= test266151307()
                        mem[64] = _9483 + ceil32(return_data.size) + ceil32(mem[_9483 + mem[_9483]]) + 32
                        mem[_9483 + ceil32(return_data.size)] = _9675
                        require _9515 + _9675 + 32 <= return_data.size
                        mem[_9483 + ceil32(return_data.size) + 32 len ceil32(_9675)] = mem[_9483 + _9515 + 32 len ceil32(_9675)]
                        if ceil32(_9675) <= _9675:
                            _10524 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9675
                            mem[mem[64] + 128 len ceil32(_9675)] = mem[_9483 + ceil32(return_data.size) + 32 len ceil32(_9675)]
                            if ceil32(_9675) > _9675:
                                mem[_9675 + _10524 + 128] = 0
                            mem[_10524 + 32] = arg2
                            mem[_10524 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10524 + ceil32(_9675) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9675 + _9483 + ceil32(return_data.size) + 32] = 0
                            _10525 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9675
                            mem[mem[64] + 128 len ceil32(_9675)] = mem[_9483 + ceil32(return_data.size) + 32 len ceil32(_9675)]
                            if ceil32(_9675) > _9675:
                                mem[_9675 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10525 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10525 + ceil32(_9675) + -mem[64] + 128], msg.sender, arg1
            else:
                if not arg2:
                    cashbackcode[msg.sender] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require (28 * arg2 / 100) + sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _183 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _196 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _183 + _196 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_196)] = mem[ceil32(return_data.size) + _183 + 576 len ceil32(_196)]
                    if ceil32(_196) <= _196:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9488 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9520 = mem[_9488]
                        require mem[_9488] <= test266151307()
                        require _9488 + return_data.size > _9488 + mem[_9488] + 31
                        _9680 = mem[_9488 + mem[_9488]]
                        require mem[_9488 + mem[_9488]] <= test266151307()
                        require ceil32(mem[_9488 + mem[_9488]]) + 32 >= 0 and _9488 + ceil32(return_data.size) + ceil32(mem[_9488 + mem[_9488]]) + 32 <= test266151307()
                        mem[64] = _9488 + ceil32(return_data.size) + ceil32(mem[_9488 + mem[_9488]]) + 32
                        mem[_9488 + ceil32(return_data.size)] = _9680
                        require _9520 + _9680 + 32 <= return_data.size
                        mem[_9488 + ceil32(return_data.size) + 32 len ceil32(_9680)] = mem[_9488 + _9520 + 32 len ceil32(_9680)]
                        if ceil32(_9680) <= _9680:
                            _10534 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9680
                            mem[mem[64] + 128 len ceil32(_9680)] = mem[_9488 + ceil32(return_data.size) + 32 len ceil32(_9680)]
                            if ceil32(_9680) > _9680:
                                mem[_9680 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10534 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10534 + ceil32(_9680) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9680 + _9488 + ceil32(return_data.size) + 32] = 0
                            _10535 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9680
                            mem[mem[64] + 128 len ceil32(_9680)] = mem[_9488 + ceil32(return_data.size) + 32 len ceil32(_9680)]
                            if ceil32(_9680) > _9680:
                                mem[_9680 + _10535 + 128] = 0
                            mem[_10535 + 32] = arg2
                            mem[_10535 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10535 + ceil32(_9680) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_196 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9489 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9521 = mem[_9489]
                        require mem[_9489] <= test266151307()
                        require _9489 + return_data.size > _9489 + mem[_9489] + 31
                        _9681 = mem[_9489 + mem[_9489]]
                        require mem[_9489 + mem[_9489]] <= test266151307()
                        require ceil32(mem[_9489 + mem[_9489]]) + 32 >= 0 and _9489 + ceil32(return_data.size) + ceil32(mem[_9489 + mem[_9489]]) + 32 <= test266151307()
                        mem[64] = _9489 + ceil32(return_data.size) + ceil32(mem[_9489 + mem[_9489]]) + 32
                        mem[_9489 + ceil32(return_data.size)] = _9681
                        require _9521 + _9681 + 32 <= return_data.size
                        mem[_9489 + ceil32(return_data.size) + 32 len ceil32(_9681)] = mem[_9489 + _9521 + 32 len ceil32(_9681)]
                        if ceil32(_9681) <= _9681:
                            _10536 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9681
                            mem[mem[64] + 128 len ceil32(_9681)] = mem[_9489 + ceil32(return_data.size) + 32 len ceil32(_9681)]
                            if ceil32(_9681) > _9681:
                                mem[_9681 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10536 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10536 + ceil32(_9681) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9681 + _9489 + ceil32(return_data.size) + 32] = 0
                            _10537 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9681
                            mem[mem[64] + 128 len ceil32(_9681)] = mem[_9489 + ceil32(return_data.size) + 32 len ceil32(_9681)]
                            if ceil32(_9681) > _9681:
                                mem[_9681 + _10537 + 128] = 0
                            mem[_10537 + 32] = arg2
                            mem[_10537 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10537 + ceil32(_9681) + -mem[64] + 128], msg.sender, arg1
                else:
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[msg.sender] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require (28 * arg2 / 100) + sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _191 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _203 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _191 + _203 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_203)] = mem[ceil32(return_data.size) + _191 + 576 len ceil32(_203)]
                    if ceil32(_203) <= _203:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9486 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9518 = mem[_9486]
                        require mem[_9486] <= test266151307()
                        require _9486 + return_data.size > _9486 + mem[_9486] + 31
                        _9678 = mem[_9486 + mem[_9486]]
                        require mem[_9486 + mem[_9486]] <= test266151307()
                        require ceil32(mem[_9486 + mem[_9486]]) + 32 >= 0 and _9486 + ceil32(return_data.size) + ceil32(mem[_9486 + mem[_9486]]) + 32 <= test266151307()
                        mem[64] = _9486 + ceil32(return_data.size) + ceil32(mem[_9486 + mem[_9486]]) + 32
                        mem[_9486 + ceil32(return_data.size)] = _9678
                        require _9518 + _9678 + 32 <= return_data.size
                        mem[_9486 + ceil32(return_data.size) + 32 len ceil32(_9678)] = mem[_9486 + _9518 + 32 len ceil32(_9678)]
                        if ceil32(_9678) <= _9678:
                            _10530 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9678
                            mem[mem[64] + 128 len ceil32(_9678)] = mem[_9486 + ceil32(return_data.size) + 32 len ceil32(_9678)]
                            if ceil32(_9678) > _9678:
                                mem[_9678 + _10530 + 128] = 0
                            mem[_10530 + 32] = arg2
                            mem[_10530 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10530 + ceil32(_9678) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9678 + _9486 + ceil32(return_data.size) + 32] = 0
                            _10531 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9678
                            mem[mem[64] + 128 len ceil32(_9678)] = mem[_9486 + ceil32(return_data.size) + 32 len ceil32(_9678)]
                            if ceil32(_9678) > _9678:
                                mem[_9678 + _10531 + 128] = 0
                            mem[_10531 + 32] = arg2
                            mem[_10531 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10531 + ceil32(_9678) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_203 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9487 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9519 = mem[_9487]
                        require mem[_9487] <= test266151307()
                        require _9487 + return_data.size > _9487 + mem[_9487] + 31
                        _9679 = mem[_9487 + mem[_9487]]
                        require mem[_9487 + mem[_9487]] <= test266151307()
                        require ceil32(mem[_9487 + mem[_9487]]) + 32 >= 0 and _9487 + ceil32(return_data.size) + ceil32(mem[_9487 + mem[_9487]]) + 32 <= test266151307()
                        mem[64] = _9487 + ceil32(return_data.size) + ceil32(mem[_9487 + mem[_9487]]) + 32
                        mem[_9487 + ceil32(return_data.size)] = _9679
                        require _9519 + _9679 + 32 <= return_data.size
                        mem[_9487 + ceil32(return_data.size) + 32 len ceil32(_9679)] = mem[_9487 + _9519 + 32 len ceil32(_9679)]
                        if ceil32(_9679) <= _9679:
                            _10532 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9679
                            mem[mem[64] + 128 len ceil32(_9679)] = mem[_9487 + ceil32(return_data.size) + 32 len ceil32(_9679)]
                            if ceil32(_9679) > _9679:
                                mem[_9679 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10532 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10532 + ceil32(_9679) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9679 + _9487 + ceil32(return_data.size) + 32] = 0
                            _10533 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9679
                            mem[mem[64] + 128 len ceil32(_9679)] = mem[_9487 + ceil32(return_data.size) + 32 len ceil32(_9679)]
                            if ceil32(_9679) > _9679:
                                mem[_9679 + _10533 + 128] = 0
                            mem[_10533 + 32] = arg2
                            mem[_10533 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10533 + ceil32(_9679) + -mem[64] + 128], msg.sender, arg1
    else:
        require 12 * arg2 / arg2 == 12
        if not arg2:
            if cashbackcode[msg.sender]:
                require 12 * arg2 / 100 <= arg2
                if not arg2:
                    require (12 * arg2 / 100) + sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _148 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _180 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _148 + _180 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_180)] = mem[ceil32(return_data.size) + _148 + 576 len ceil32(_180)]
                    if ceil32(_180) <= _180:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9476 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9508 = mem[_9476]
                        require mem[_9476] <= test266151307()
                        require _9476 + return_data.size > _9476 + mem[_9476] + 31
                        _9668 = mem[_9476 + mem[_9476]]
                        require mem[_9476 + mem[_9476]] <= test266151307()
                        require ceil32(mem[_9476 + mem[_9476]]) + 32 >= 0 and _9476 + ceil32(return_data.size) + ceil32(mem[_9476 + mem[_9476]]) + 32 <= test266151307()
                        mem[64] = _9476 + ceil32(return_data.size) + ceil32(mem[_9476 + mem[_9476]]) + 32
                        mem[_9476 + ceil32(return_data.size)] = _9668
                        require _9508 + _9668 + 32 <= return_data.size
                        mem[_9476 + ceil32(return_data.size) + 32 len ceil32(_9668)] = mem[_9476 + _9508 + 32 len ceil32(_9668)]
                        if ceil32(_9668) <= _9668:
                            _10510 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9668
                            mem[mem[64] + 128 len ceil32(_9668)] = mem[_9476 + ceil32(return_data.size) + 32 len ceil32(_9668)]
                            if ceil32(_9668) > _9668:
                                mem[_9668 + _10510 + 128] = 0
                            mem[_10510 + 32] = arg2
                            mem[_10510 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10510 + ceil32(_9668) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9668 + _9476 + ceil32(return_data.size) + 32] = 0
                            _10511 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9668
                            mem[mem[64] + 128 len ceil32(_9668)] = mem[_9476 + ceil32(return_data.size) + 32 len ceil32(_9668)]
                            if ceil32(_9668) > _9668:
                                mem[_9668 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10511 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10511 + ceil32(_9668) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_180 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9477 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9509 = mem[_9477]
                        require mem[_9477] <= test266151307()
                        require _9477 + return_data.size > _9477 + mem[_9477] + 31
                        _9669 = mem[_9477 + mem[_9477]]
                        require mem[_9477 + mem[_9477]] <= test266151307()
                        require ceil32(mem[_9477 + mem[_9477]]) + 32 >= 0 and _9477 + ceil32(return_data.size) + ceil32(mem[_9477 + mem[_9477]]) + 32 <= test266151307()
                        mem[64] = _9477 + ceil32(return_data.size) + ceil32(mem[_9477 + mem[_9477]]) + 32
                        mem[_9477 + ceil32(return_data.size)] = _9669
                        require _9509 + _9669 + 32 <= return_data.size
                        mem[_9477 + ceil32(return_data.size) + 32 len ceil32(_9669)] = mem[_9477 + _9509 + 32 len ceil32(_9669)]
                        if ceil32(_9669) <= _9669:
                            _10512 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9669
                            mem[mem[64] + 128 len ceil32(_9669)] = mem[_9477 + ceil32(return_data.size) + 32 len ceil32(_9669)]
                            if ceil32(_9669) > _9669:
                                mem[_9669 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10512 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10512 + ceil32(_9669) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9669 + _9477 + ceil32(return_data.size) + 32] = 0
                            _10513 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9669
                            mem[mem[64] + 128 len ceil32(_9669)] = mem[_9477 + ceil32(return_data.size) + 32 len ceil32(_9669)]
                            if ceil32(_9669) > _9669:
                                mem[_9669 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10513 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10513 + ceil32(_9669) + -mem[64] + 128], msg.sender, arg1
                else:
                    require 16 * arg2 / arg2 == 16
                    require (12 * arg2 / 100) + sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _168 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _188 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _168 + _188 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_188)] = mem[ceil32(return_data.size) + _168 + 576 len ceil32(_188)]
                    if ceil32(_188) <= _188:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9474 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9506 = mem[_9474]
                        require mem[_9474] <= test266151307()
                        require _9474 + return_data.size > _9474 + mem[_9474] + 31
                        _9666 = mem[_9474 + mem[_9474]]
                        require mem[_9474 + mem[_9474]] <= test266151307()
                        require ceil32(mem[_9474 + mem[_9474]]) + 32 >= 0 and _9474 + ceil32(return_data.size) + ceil32(mem[_9474 + mem[_9474]]) + 32 <= test266151307()
                        mem[64] = _9474 + ceil32(return_data.size) + ceil32(mem[_9474 + mem[_9474]]) + 32
                        mem[_9474 + ceil32(return_data.size)] = _9666
                        require _9506 + _9666 + 32 <= return_data.size
                        mem[_9474 + ceil32(return_data.size) + 32 len ceil32(_9666)] = mem[_9474 + _9506 + 32 len ceil32(_9666)]
                        if ceil32(_9666) <= _9666:
                            _10506 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9666
                            mem[mem[64] + 128 len ceil32(_9666)] = mem[_9474 + ceil32(return_data.size) + 32 len ceil32(_9666)]
                            if ceil32(_9666) > _9666:
                                mem[_9666 + _10506 + 128] = 0
                            mem[_10506 + 32] = arg2
                            mem[_10506 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10506 + ceil32(_9666) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9666 + _9474 + ceil32(return_data.size) + 32] = 0
                            _10507 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9666
                            mem[mem[64] + 128 len ceil32(_9666)] = mem[_9474 + ceil32(return_data.size) + 32 len ceil32(_9666)]
                            if ceil32(_9666) > _9666:
                                mem[_9666 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10507 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10507 + ceil32(_9666) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_188 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9475 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9507 = mem[_9475]
                        require mem[_9475] <= test266151307()
                        require _9475 + return_data.size > _9475 + mem[_9475] + 31
                        _9667 = mem[_9475 + mem[_9475]]
                        require mem[_9475 + mem[_9475]] <= test266151307()
                        require ceil32(mem[_9475 + mem[_9475]]) + 32 >= 0 and _9475 + ceil32(return_data.size) + ceil32(mem[_9475 + mem[_9475]]) + 32 <= test266151307()
                        mem[64] = _9475 + ceil32(return_data.size) + ceil32(mem[_9475 + mem[_9475]]) + 32
                        mem[_9475 + ceil32(return_data.size)] = _9667
                        require _9507 + _9667 + 32 <= return_data.size
                        mem[_9475 + ceil32(return_data.size) + 32 len ceil32(_9667)] = mem[_9475 + _9507 + 32 len ceil32(_9667)]
                        if ceil32(_9667) <= _9667:
                            _10508 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9667
                            mem[mem[64] + 128 len ceil32(_9667)] = mem[_9475 + ceil32(return_data.size) + 32 len ceil32(_9667)]
                            if ceil32(_9667) > _9667:
                                mem[_9667 + _10508 + 128] = 0
                            mem[_10508 + 32] = arg2
                            mem[_10508 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10508 + ceil32(_9667) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9667 + _9475 + ceil32(return_data.size) + 32] = 0
                            _10509 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9667
                            mem[mem[64] + 128 len ceil32(_9667)] = mem[_9475 + ceil32(return_data.size) + 32 len ceil32(_9667)]
                            if ceil32(_9667) > _9667:
                                mem[_9667 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10509 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10509 + ceil32(_9667) + -mem[64] + 128], msg.sender, arg1
            else:
                if not arg2:
                    cashbackcode[msg.sender] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _181 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _195 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _181 + _195 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_195)] = mem[ceil32(return_data.size) + _181 + 576 len ceil32(_195)]
                    if ceil32(_195) <= _195:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9480 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9512 = mem[_9480]
                        require mem[_9480] <= test266151307()
                        require _9480 + return_data.size > _9480 + mem[_9480] + 31
                        _9672 = mem[_9480 + mem[_9480]]
                        require mem[_9480 + mem[_9480]] <= test266151307()
                        require ceil32(mem[_9480 + mem[_9480]]) + 32 >= 0 and _9480 + ceil32(return_data.size) + ceil32(mem[_9480 + mem[_9480]]) + 32 <= test266151307()
                        mem[64] = _9480 + ceil32(return_data.size) + ceil32(mem[_9480 + mem[_9480]]) + 32
                        mem[_9480 + ceil32(return_data.size)] = _9672
                        require _9512 + _9672 + 32 <= return_data.size
                        mem[_9480 + ceil32(return_data.size) + 32 len ceil32(_9672)] = mem[_9480 + _9512 + 32 len ceil32(_9672)]
                        if ceil32(_9672) <= _9672:
                            _10518 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9672
                            mem[mem[64] + 128 len ceil32(_9672)] = mem[_9480 + ceil32(return_data.size) + 32 len ceil32(_9672)]
                            if ceil32(_9672) > _9672:
                                mem[_9672 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10518 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10518 + ceil32(_9672) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9672 + _9480 + ceil32(return_data.size) + 32] = 0
                            _10519 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9672
                            mem[mem[64] + 128 len ceil32(_9672)] = mem[_9480 + ceil32(return_data.size) + 32 len ceil32(_9672)]
                            if ceil32(_9672) > _9672:
                                mem[_9672 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10519 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10519 + ceil32(_9672) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_195 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9481 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9513 = mem[_9481]
                        require mem[_9481] <= test266151307()
                        require _9481 + return_data.size > _9481 + mem[_9481] + 31
                        _9673 = mem[_9481 + mem[_9481]]
                        require mem[_9481 + mem[_9481]] <= test266151307()
                        require ceil32(mem[_9481 + mem[_9481]]) + 32 >= 0 and _9481 + ceil32(return_data.size) + ceil32(mem[_9481 + mem[_9481]]) + 32 <= test266151307()
                        mem[64] = _9481 + ceil32(return_data.size) + ceil32(mem[_9481 + mem[_9481]]) + 32
                        mem[_9481 + ceil32(return_data.size)] = _9673
                        require _9513 + _9673 + 32 <= return_data.size
                        mem[_9481 + ceil32(return_data.size) + 32 len ceil32(_9673)] = mem[_9481 + _9513 + 32 len ceil32(_9673)]
                        if ceil32(_9673) <= _9673:
                            _10520 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9673
                            mem[mem[64] + 128 len ceil32(_9673)] = mem[_9481 + ceil32(return_data.size) + 32 len ceil32(_9673)]
                            if ceil32(_9673) > _9673:
                                mem[_9673 + _10520 + 128] = 0
                            mem[_10520 + 32] = arg2
                            mem[_10520 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10520 + ceil32(_9673) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9673 + _9481 + ceil32(return_data.size) + 32] = 0
                            _10521 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9673
                            mem[mem[64] + 128 len ceil32(_9673)] = mem[_9481 + ceil32(return_data.size) + 32 len ceil32(_9673)]
                            if ceil32(_9673) > _9673:
                                mem[_9673 + _10521 + 128] = 0
                            mem[_10521 + 32] = arg2
                            mem[_10521 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10521 + ceil32(_9673) + -mem[64] + 128], msg.sender, arg1
                else:
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[msg.sender] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _189 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _201 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _189 + _201 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_201)] = mem[ceil32(return_data.size) + _189 + 576 len ceil32(_201)]
                    if ceil32(_201) <= _201:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9478 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9510 = mem[_9478]
                        require mem[_9478] <= test266151307()
                        require _9478 + return_data.size > _9478 + mem[_9478] + 31
                        _9670 = mem[_9478 + mem[_9478]]
                        require mem[_9478 + mem[_9478]] <= test266151307()
                        require ceil32(mem[_9478 + mem[_9478]]) + 32 >= 0 and _9478 + ceil32(return_data.size) + ceil32(mem[_9478 + mem[_9478]]) + 32 <= test266151307()
                        mem[64] = _9478 + ceil32(return_data.size) + ceil32(mem[_9478 + mem[_9478]]) + 32
                        mem[_9478 + ceil32(return_data.size)] = _9670
                        require _9510 + _9670 + 32 <= return_data.size
                        mem[_9478 + ceil32(return_data.size) + 32 len ceil32(_9670)] = mem[_9478 + _9510 + 32 len ceil32(_9670)]
                        if ceil32(_9670) <= _9670:
                            _10514 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9670
                            mem[mem[64] + 128 len ceil32(_9670)] = mem[_9478 + ceil32(return_data.size) + 32 len ceil32(_9670)]
                            if ceil32(_9670) > _9670:
                                mem[_9670 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10514 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10514 + ceil32(_9670) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9670 + _9478 + ceil32(return_data.size) + 32] = 0
                            _10515 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9670
                            mem[mem[64] + 128 len ceil32(_9670)] = mem[_9478 + ceil32(return_data.size) + 32 len ceil32(_9670)]
                            if ceil32(_9670) > _9670:
                                mem[_9670 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10515 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10515 + ceil32(_9670) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_201 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9479 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9511 = mem[_9479]
                        require mem[_9479] <= test266151307()
                        require _9479 + return_data.size > _9479 + mem[_9479] + 31
                        _9671 = mem[_9479 + mem[_9479]]
                        require mem[_9479 + mem[_9479]] <= test266151307()
                        require ceil32(mem[_9479 + mem[_9479]]) + 32 >= 0 and _9479 + ceil32(return_data.size) + ceil32(mem[_9479 + mem[_9479]]) + 32 <= test266151307()
                        mem[64] = _9479 + ceil32(return_data.size) + ceil32(mem[_9479 + mem[_9479]]) + 32
                        mem[_9479 + ceil32(return_data.size)] = _9671
                        require _9511 + _9671 + 32 <= return_data.size
                        mem[_9479 + ceil32(return_data.size) + 32 len ceil32(_9671)] = mem[_9479 + _9511 + 32 len ceil32(_9671)]
                        if ceil32(_9671) <= _9671:
                            _10516 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9671
                            mem[mem[64] + 128 len ceil32(_9671)] = mem[_9479 + ceil32(return_data.size) + 32 len ceil32(_9671)]
                            if ceil32(_9671) > _9671:
                                mem[_9671 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10516 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10516 + ceil32(_9671) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9671 + _9479 + ceil32(return_data.size) + 32] = 0
                            _10517 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9671
                            mem[mem[64] + 128 len ceil32(_9671)] = mem[_9479 + ceil32(return_data.size) + 32 len ceil32(_9671)]
                            if ceil32(_9671) > _9671:
                                mem[_9671 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10517 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10517 + ceil32(_9671) + -mem[64] + 128], msg.sender, arg1
        else:
            require 28 * arg2 / arg2 == 28
            if cashbackcode[msg.sender]:
                require 12 * arg2 / 100 <= arg2
                if not arg2:
                    require (12 * arg2 / 100) + sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _162 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _186 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _162 + _186 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_186)] = mem[ceil32(return_data.size) + _162 + 576 len ceil32(_186)]
                    if ceil32(_186) <= _186:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9468 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9500 = mem[_9468]
                        require mem[_9468] <= test266151307()
                        require _9468 + return_data.size > _9468 + mem[_9468] + 31
                        _9660 = mem[_9468 + mem[_9468]]
                        require mem[_9468 + mem[_9468]] <= test266151307()
                        require ceil32(mem[_9468 + mem[_9468]]) + 32 >= 0 and _9468 + ceil32(return_data.size) + ceil32(mem[_9468 + mem[_9468]]) + 32 <= test266151307()
                        mem[64] = _9468 + ceil32(return_data.size) + ceil32(mem[_9468 + mem[_9468]]) + 32
                        mem[_9468 + ceil32(return_data.size)] = _9660
                        require _9500 + _9660 + 32 <= return_data.size
                        mem[_9468 + ceil32(return_data.size) + 32 len ceil32(_9660)] = mem[_9468 + _9500 + 32 len ceil32(_9660)]
                        if ceil32(_9660) <= _9660:
                            _10494 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9660
                            mem[mem[64] + 128 len ceil32(_9660)] = mem[_9468 + ceil32(return_data.size) + 32 len ceil32(_9660)]
                            if ceil32(_9660) > _9660:
                                mem[_9660 + _10494 + 128] = 0
                            mem[_10494 + 32] = arg2
                            mem[_10494 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10494 + ceil32(_9660) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9660 + _9468 + ceil32(return_data.size) + 32] = 0
                            _10495 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9660
                            mem[mem[64] + 128 len ceil32(_9660)] = mem[_9468 + ceil32(return_data.size) + 32 len ceil32(_9660)]
                            if ceil32(_9660) > _9660:
                                mem[_9660 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10495 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10495 + ceil32(_9660) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_186 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9469 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9501 = mem[_9469]
                        require mem[_9469] <= test266151307()
                        require _9469 + return_data.size > _9469 + mem[_9469] + 31
                        _9661 = mem[_9469 + mem[_9469]]
                        require mem[_9469 + mem[_9469]] <= test266151307()
                        require ceil32(mem[_9469 + mem[_9469]]) + 32 >= 0 and _9469 + ceil32(return_data.size) + ceil32(mem[_9469 + mem[_9469]]) + 32 <= test266151307()
                        mem[64] = _9469 + ceil32(return_data.size) + ceil32(mem[_9469 + mem[_9469]]) + 32
                        mem[_9469 + ceil32(return_data.size)] = _9661
                        require _9501 + _9661 + 32 <= return_data.size
                        mem[_9469 + ceil32(return_data.size) + 32 len ceil32(_9661)] = mem[_9469 + _9501 + 32 len ceil32(_9661)]
                        if ceil32(_9661) <= _9661:
                            _10496 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9661
                            mem[mem[64] + 128 len ceil32(_9661)] = mem[_9469 + ceil32(return_data.size) + 32 len ceil32(_9661)]
                            if ceil32(_9661) > _9661:
                                mem[_9661 + _10496 + 128] = 0
                            mem[_10496 + 32] = arg2
                            mem[_10496 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10496 + ceil32(_9661) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9661 + _9469 + ceil32(return_data.size) + 32] = 0
                            _10497 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9661
                            mem[mem[64] + 128 len ceil32(_9661)] = mem[_9469 + ceil32(return_data.size) + 32 len ceil32(_9661)]
                            if ceil32(_9661) > _9661:
                                mem[_9661 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10497 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10497 + ceil32(_9661) + -mem[64] + 128], msg.sender, arg1
                else:
                    require 16 * arg2 / arg2 == 16
                    require (12 * arg2 / 100) + sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _173 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _192 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _173 + _192 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_192)] = mem[ceil32(return_data.size) + _173 + 576 len ceil32(_192)]
                    if ceil32(_192) <= _192:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9466 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9498 = mem[_9466]
                        require mem[_9466] <= test266151307()
                        require _9466 + return_data.size > _9466 + mem[_9466] + 31
                        _9658 = mem[_9466 + mem[_9466]]
                        require mem[_9466 + mem[_9466]] <= test266151307()
                        require ceil32(mem[_9466 + mem[_9466]]) + 32 >= 0 and _9466 + ceil32(return_data.size) + ceil32(mem[_9466 + mem[_9466]]) + 32 <= test266151307()
                        mem[64] = _9466 + ceil32(return_data.size) + ceil32(mem[_9466 + mem[_9466]]) + 32
                        mem[_9466 + ceil32(return_data.size)] = _9658
                        require _9498 + _9658 + 32 <= return_data.size
                        mem[_9466 + ceil32(return_data.size) + 32 len ceil32(_9658)] = mem[_9466 + _9498 + 32 len ceil32(_9658)]
                        if ceil32(_9658) <= _9658:
                            _10490 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9658
                            mem[mem[64] + 128 len ceil32(_9658)] = mem[_9466 + ceil32(return_data.size) + 32 len ceil32(_9658)]
                            if ceil32(_9658) > _9658:
                                mem[_9658 + _10490 + 128] = 0
                            mem[_10490 + 32] = arg2
                            mem[_10490 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10490 + ceil32(_9658) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9658 + _9466 + ceil32(return_data.size) + 32] = 0
                            _10491 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9658
                            mem[mem[64] + 128 len ceil32(_9658)] = mem[_9466 + ceil32(return_data.size) + 32 len ceil32(_9658)]
                            if ceil32(_9658) > _9658:
                                mem[_9658 + _10491 + 128] = 0
                            mem[_10491 + 32] = arg2
                            mem[_10491 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10491 + ceil32(_9658) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_192 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[msg.sender]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = cashbackcode[msg.sender]
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9467 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9499 = mem[_9467]
                        require mem[_9467] <= test266151307()
                        require _9467 + return_data.size > _9467 + mem[_9467] + 31
                        _9659 = mem[_9467 + mem[_9467]]
                        require mem[_9467 + mem[_9467]] <= test266151307()
                        require ceil32(mem[_9467 + mem[_9467]]) + 32 >= 0 and _9467 + ceil32(return_data.size) + ceil32(mem[_9467 + mem[_9467]]) + 32 <= test266151307()
                        mem[64] = _9467 + ceil32(return_data.size) + ceil32(mem[_9467 + mem[_9467]]) + 32
                        mem[_9467 + ceil32(return_data.size)] = _9659
                        require _9499 + _9659 + 32 <= return_data.size
                        mem[_9467 + ceil32(return_data.size) + 32 len ceil32(_9659)] = mem[_9467 + _9499 + 32 len ceil32(_9659)]
                        if ceil32(_9659) <= _9659:
                            _10492 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9659
                            mem[mem[64] + 128 len ceil32(_9659)] = mem[_9467 + ceil32(return_data.size) + 32 len ceil32(_9659)]
                            if ceil32(_9659) > _9659:
                                mem[_9659 + _10492 + 128] = 0
                            mem[_10492 + 32] = arg2
                            mem[_10492 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10492 + ceil32(_9659) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9659 + _9467 + ceil32(return_data.size) + 32] = 0
                            _10493 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9659
                            mem[mem[64] + 128 len ceil32(_9659)] = mem[_9467 + ceil32(return_data.size) + 32 len ceil32(_9659)]
                            if ceil32(_9659) > _9659:
                                mem[_9659 + _10493 + 128] = 0
                            mem[_10493 + 32] = arg2
                            mem[_10493 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10493 + ceil32(_9659) + -mem[64] + 128], msg.sender, arg1
            else:
                if not arg2:
                    cashbackcode[msg.sender] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require (28 * arg2 / 100) + sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _187 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _199 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _187 + _199 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_199)] = mem[ceil32(return_data.size) + _187 + 576 len ceil32(_199)]
                    if ceil32(_199) <= _199:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9472 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9504 = mem[_9472]
                        require mem[_9472] <= test266151307()
                        require _9472 + return_data.size > _9472 + mem[_9472] + 31
                        _9664 = mem[_9472 + mem[_9472]]
                        require mem[_9472 + mem[_9472]] <= test266151307()
                        require ceil32(mem[_9472 + mem[_9472]]) + 32 >= 0 and _9472 + ceil32(return_data.size) + ceil32(mem[_9472 + mem[_9472]]) + 32 <= test266151307()
                        mem[64] = _9472 + ceil32(return_data.size) + ceil32(mem[_9472 + mem[_9472]]) + 32
                        mem[_9472 + ceil32(return_data.size)] = _9664
                        require _9504 + _9664 + 32 <= return_data.size
                        mem[_9472 + ceil32(return_data.size) + 32 len ceil32(_9664)] = mem[_9472 + _9504 + 32 len ceil32(_9664)]
                        if ceil32(_9664) <= _9664:
                            _10502 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9664
                            mem[mem[64] + 128 len ceil32(_9664)] = mem[_9472 + ceil32(return_data.size) + 32 len ceil32(_9664)]
                            if ceil32(_9664) > _9664:
                                mem[_9664 + _10502 + 128] = 0
                            mem[_10502 + 32] = arg2
                            mem[_10502 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10502 + ceil32(_9664) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9664 + _9472 + ceil32(return_data.size) + 32] = 0
                            _10503 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9664
                            mem[mem[64] + 128 len ceil32(_9664)] = mem[_9472 + ceil32(return_data.size) + 32 len ceil32(_9664)]
                            if ceil32(_9664) > _9664:
                                mem[_9664 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10503 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10503 + ceil32(_9664) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_199 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9473 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9505 = mem[_9473]
                        require mem[_9473] <= test266151307()
                        require _9473 + return_data.size > _9473 + mem[_9473] + 31
                        _9665 = mem[_9473 + mem[_9473]]
                        require mem[_9473 + mem[_9473]] <= test266151307()
                        require ceil32(mem[_9473 + mem[_9473]]) + 32 >= 0 and _9473 + ceil32(return_data.size) + ceil32(mem[_9473 + mem[_9473]]) + 32 <= test266151307()
                        mem[64] = _9473 + ceil32(return_data.size) + ceil32(mem[_9473 + mem[_9473]]) + 32
                        mem[_9473 + ceil32(return_data.size)] = _9665
                        require _9505 + _9665 + 32 <= return_data.size
                        mem[_9473 + ceil32(return_data.size) + 32 len ceil32(_9665)] = mem[_9473 + _9505 + 32 len ceil32(_9665)]
                        if ceil32(_9665) <= _9665:
                            _10504 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9665
                            mem[mem[64] + 128 len ceil32(_9665)] = mem[_9473 + ceil32(return_data.size) + 32 len ceil32(_9665)]
                            if ceil32(_9665) > _9665:
                                mem[_9665 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10504 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10504 + ceil32(_9665) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9665 + _9473 + ceil32(return_data.size) + 32] = 0
                            _10505 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9665
                            mem[mem[64] + 128 len ceil32(_9665)] = mem[_9473 + ceil32(return_data.size) + 32 len ceil32(_9665)]
                            if ceil32(_9665) > _9665:
                                mem[_9665 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10505 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10505 + ceil32(_9665) + -mem[64] + 128], msg.sender, arg1
                else:
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[msg.sender] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require (28 * arg2 / 100) + sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_11a3311c[msg.sender]++
                    sub_11a3311c[msg.sender][sub_11a3311c[msg.sender]] = stor9
                    mem[ceil32(return_data.size) + 96] = stor9
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
                    require return_data.size >= 32
                    _193 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 544 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575
                    _206 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _193 + _206 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_206)] = mem[ceil32(return_data.size) + _193 + 576 len ceil32(_206)]
                    if ceil32(_206) <= _206:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9470 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9502 = mem[_9470]
                        require mem[_9470] <= test266151307()
                        require _9470 + return_data.size > _9470 + mem[_9470] + 31
                        _9662 = mem[_9470 + mem[_9470]]
                        require mem[_9470 + mem[_9470]] <= test266151307()
                        require ceil32(mem[_9470 + mem[_9470]]) + 32 >= 0 and _9470 + ceil32(return_data.size) + ceil32(mem[_9470 + mem[_9470]]) + 32 <= test266151307()
                        mem[64] = _9470 + ceil32(return_data.size) + ceil32(mem[_9470 + mem[_9470]]) + 32
                        mem[_9470 + ceil32(return_data.size)] = _9662
                        require _9502 + _9662 + 32 <= return_data.size
                        mem[_9470 + ceil32(return_data.size) + 32 len ceil32(_9662)] = mem[_9470 + _9502 + 32 len ceil32(_9662)]
                        if ceil32(_9662) <= _9662:
                            _10498 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9662
                            mem[mem[64] + 128 len ceil32(_9662)] = mem[_9470 + ceil32(return_data.size) + 32 len ceil32(_9662)]
                            if ceil32(_9662) > _9662:
                                mem[_9662 + _10498 + 128] = 0
                            mem[_10498 + 32] = arg2
                            mem[_10498 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10498 + ceil32(_9662) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9662 + _9470 + ceil32(return_data.size) + 32] = 0
                            _10499 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9662
                            mem[mem[64] + 128 len ceil32(_9662)] = mem[_9470 + ceil32(return_data.size) + 32 len ceil32(_9662)]
                            if ceil32(_9662) > _9662:
                                mem[_9662 + _10499 + 128] = 0
                            mem[_10499 + 32] = arg2
                            mem[_10499 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10499 + ceil32(_9662) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[_206 + (2 * ceil32(return_data.size)) + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        stor8[stor9].field_768 = msg.sender
                        stor8[stor9].field_1024 = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        stor8[stor9].field_3328 = viewSuperOwner
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 7
                        sub_666a7370[address(arg1)] += arg2
                        stor9++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9471 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9503 = mem[_9471]
                        require mem[_9471] <= test266151307()
                        require _9471 + return_data.size > _9471 + mem[_9471] + 31
                        _9663 = mem[_9471 + mem[_9471]]
                        require mem[_9471 + mem[_9471]] <= test266151307()
                        require ceil32(mem[_9471 + mem[_9471]]) + 32 >= 0 and _9471 + ceil32(return_data.size) + ceil32(mem[_9471 + mem[_9471]]) + 32 <= test266151307()
                        mem[64] = _9471 + ceil32(return_data.size) + ceil32(mem[_9471 + mem[_9471]]) + 32
                        mem[_9471 + ceil32(return_data.size)] = _9663
                        require _9503 + _9663 + 32 <= return_data.size
                        mem[_9471 + ceil32(return_data.size) + 32 len ceil32(_9663)] = mem[_9471 + _9503 + 32 len ceil32(_9663)]
                        if ceil32(_9663) <= _9663:
                            _10500 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9663
                            mem[mem[64] + 128 len ceil32(_9663)] = mem[_9471 + ceil32(return_data.size) + 32 len ceil32(_9663)]
                            if ceil32(_9663) > _9663:
                                mem[_9663 + mem[64] + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10500 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10500 + ceil32(_9663) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9663 + _9471 + ceil32(return_data.size) + 32] = 0
                            _10501 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9663
                            mem[mem[64] + 128 len ceil32(_9663)] = mem[_9471 + ceil32(return_data.size) + 32 len ceil32(_9663)]
                            if ceil32(_9663) > _9663:
                                mem[_9663 + _10501 + 128] = 0
                            mem[_10501 + 32] = arg2
                            mem[_10501 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10501 + ceil32(_9663) + -mem[64] + 128], msg.sender, arg1
}



}
