contract main {




// =====================  Runtime code  =====================


#
#  - ClaimTokens(address arg1, uint256 arg2)
#  - sub_cfe7de07(?)
#
const GetContractBalance = eth.balance(this.address)


uint8 stor0; offset 160
uint128 stor0; offset 160
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

function sub_582bf0b4(?) {
    require calldata.size - 4 >= 64
    require msg.sender == viewSuperOwner
    stor4[address(arg1)] = uint8(arg2)
    emit 0x413e86df: arg2, arg1
}

function CashbackCode(address arg1) {
    require calldata.size - 4 >= 32
    if not cashbackcode[address(msg.sender)]:
        cashbackcode[address(msg.sender)] = arg1
        emit 0x3bf019f5: arg1, msg.sender
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
    while idx < stor9:
        mem[0] = idx
        mem[32] = 8
        if address(stor8[idx].field_768) != msg.sender:
            s = sha3(idx, 8)
            idx = idx + 1
            s = s
            continue 
        if address(stor8[idx].field_1024) != arg1:
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
    mem[128] = stor8[arg1][5].field_0
    idx = 128
    s = 0
    while stor8[arg1][5].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor8[arg1].field_0, 
           address(stor8[arg1].field_768),
           address(stor8[arg1].field_1024),
           stor8[arg1].field_256,
           stor8[arg1].field_512,
           Array(len=stor8[arg1][5].length, data=mem[128 len ceil32(stor8[arg1][5].length)]),
           stor8[arg1].field_1536,
           stor8[arg1].field_2048,
           stor8[arg1].field_2304,
           stor8[arg1].field_2560,
           stor8[arg1].field_2816,
           address(stor8[arg1].field_3328)
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
            require ext_code.size(address(stor8[idx].field_1024))
            call address(stor8[idx].field_1024).0x70a08231 with:
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
            if address(stor8[idx].field_1024) == stor1:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor8[idx].field_1024))
                call address(stor8[idx].field_1024).0x70a08231 with:
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
                require ext_code.size(address(stor8[idx].field_1024))
                call address(stor8[idx].field_1024).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _39 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_39] >= stor8[idx].field_1536
        mem[mem[64] + 4] = address(stor8[idx].field_768)
        mem[mem[64] + 36] = stor8[idx].field_1536
        require ext_code.size(address(stor8[idx].field_1024))
        call address(stor8[idx].field_1024).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor8[idx].field_768), stor8[idx].field_1536
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

function sub_99f57e05(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == viewSuperOwner
    mem[0] = 0
    mem[32] = 14
    if sub_a54f12e4[0] <= 0:
        idx = 0
        s = 0
        t = 0
        t = stor[sha3(mem[0 len 64])]
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
    else:
        if sub_a54f12e4[0] > eth.balance(this.address):
            idx = 0
            s = 0
            t = 0
            t = stor[sha3(mem[0 len 64])]
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
            mem[32] = 14
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
    mem[128 len 32 * sub_1c019a52.length] = code.data[16131 len 32 * sub_1c019a52.length]
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
            mem[32] = 14
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
    mem[_102 + 32 len 32 * sub_1c019a52.length] = code.data[16131 len 32 * sub_1c019a52.length]
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
        mem[32] = 14
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

function sub_e61021e8(?) {
    require calldata.size - 4 >= 64
    require not uint8(stor0.field_160)
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
            if cashbackcode[address(msg.sender)]:
                require 0 <= arg2
                if not arg2:
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    _110 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _162 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _110 + _162 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_162)] = mem[ceil32(return_data.size) + _110 + 576 len ceil32(_162)]
                    if ceil32(_162) <= _162:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9524 = mem[_9481]
                        require mem[_9481] <= test266151307()
                        require _9481 + mem[_9481] + 31 < _9481 + return_data.size
                        _9684 = mem[_9481 + mem[_9481]]
                        require mem[_9481 + mem[_9481]] <= test266151307()
                        require _9481 + ceil32(return_data.size) + ceil32(mem[_9481 + mem[_9481]]) + 32 <= test266151307() and ceil32(mem[_9481 + mem[_9481]]) + 32 >= 0
                        mem[64] = _9481 + ceil32(return_data.size) + ceil32(mem[_9481 + mem[_9481]]) + 32
                        mem[_9481 + ceil32(return_data.size)] = _9684
                        require _9524 + _9684 + 32 <= return_data.size
                        mem[_9481 + ceil32(return_data.size) + 32 len ceil32(_9684)] = mem[_9481 + _9524 + 32 len ceil32(_9684)]
                        if ceil32(_9684) <= _9684:
                            _10516 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9684
                            mem[mem[64] + 128 len ceil32(_9684)] = mem[_9481 + ceil32(return_data.size) + 32 len ceil32(_9684)]
                            if ceil32(_9684) > _9684:
                                mem[mem[64] + _9684 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10516 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10516 + ceil32(_9684) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9481 + ceil32(return_data.size) + _9684 + 32] = 0
                            _10548 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9684
                            mem[mem[64] + 128 len ceil32(_9684)] = mem[_9481 + ceil32(return_data.size) + 32 len ceil32(_9684)]
                            if ceil32(_9684) > _9684:
                                mem[mem[64] + _9684 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10548 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10548 + ceil32(_9684) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _162 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9525 = mem[_9484]
                        require mem[_9484] <= test266151307()
                        require _9484 + mem[_9484] + 31 < _9484 + return_data.size
                        _9685 = mem[_9484 + mem[_9484]]
                        require mem[_9484 + mem[_9484]] <= test266151307()
                        require _9484 + ceil32(return_data.size) + ceil32(mem[_9484 + mem[_9484]]) + 32 <= test266151307() and ceil32(mem[_9484 + mem[_9484]]) + 32 >= 0
                        mem[64] = _9484 + ceil32(return_data.size) + ceil32(mem[_9484 + mem[_9484]]) + 32
                        mem[_9484 + ceil32(return_data.size)] = _9685
                        require _9525 + _9685 + 32 <= return_data.size
                        mem[_9484 + ceil32(return_data.size) + 32 len ceil32(_9685)] = mem[_9484 + _9525 + 32 len ceil32(_9685)]
                        if ceil32(_9685) <= _9685:
                            _10517 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9685
                            mem[mem[64] + 128 len ceil32(_9685)] = mem[_9484 + ceil32(return_data.size) + 32 len ceil32(_9685)]
                            if ceil32(_9685) > _9685:
                                mem[mem[64] + _9685 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10517 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10517 + ceil32(_9685) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9484 + ceil32(return_data.size) + _9685 + 32] = 0
                            _10549 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9685
                            mem[mem[64] + 128 len ceil32(_9685)] = mem[_9484 + ceil32(return_data.size) + 32 len ceil32(_9685)]
                            if ceil32(_9685) > _9685:
                                mem[_10549 + _9685 + 128] = 0
                            mem[_10549 + 32] = arg2
                            mem[_10549 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10549 + ceil32(_9685) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    _144 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _182 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _144 + _182 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_182)] = mem[ceil32(return_data.size) + _144 + 576 len ceil32(_182)]
                    if ceil32(_182) <= _182:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9522 = mem[_9475]
                        require mem[_9475] <= test266151307()
                        require _9475 + mem[_9475] + 31 < _9475 + return_data.size
                        _9682 = mem[_9475 + mem[_9475]]
                        require mem[_9475 + mem[_9475]] <= test266151307()
                        require _9475 + ceil32(return_data.size) + ceil32(mem[_9475 + mem[_9475]]) + 32 <= test266151307() and ceil32(mem[_9475 + mem[_9475]]) + 32 >= 0
                        mem[64] = _9475 + ceil32(return_data.size) + ceil32(mem[_9475 + mem[_9475]]) + 32
                        mem[_9475 + ceil32(return_data.size)] = _9682
                        require _9522 + _9682 + 32 <= return_data.size
                        mem[_9475 + ceil32(return_data.size) + 32 len ceil32(_9682)] = mem[_9475 + _9522 + 32 len ceil32(_9682)]
                        if ceil32(_9682) <= _9682:
                            _10514 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9682
                            mem[mem[64] + 128 len ceil32(_9682)] = mem[_9475 + ceil32(return_data.size) + 32 len ceil32(_9682)]
                            if ceil32(_9682) > _9682:
                                mem[mem[64] + _9682 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10514 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10514 + ceil32(_9682) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9475 + ceil32(return_data.size) + _9682 + 32] = 0
                            _10546 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9682
                            mem[mem[64] + 128 len ceil32(_9682)] = mem[_9475 + ceil32(return_data.size) + 32 len ceil32(_9682)]
                            if ceil32(_9682) > _9682:
                                mem[mem[64] + _9682 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10546 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10546 + ceil32(_9682) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _182 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9523 = mem[_9478]
                        require mem[_9478] <= test266151307()
                        require _9478 + mem[_9478] + 31 < _9478 + return_data.size
                        _9683 = mem[_9478 + mem[_9478]]
                        require mem[_9478 + mem[_9478]] <= test266151307()
                        require _9478 + ceil32(return_data.size) + ceil32(mem[_9478 + mem[_9478]]) + 32 <= test266151307() and ceil32(mem[_9478 + mem[_9478]]) + 32 >= 0
                        mem[64] = _9478 + ceil32(return_data.size) + ceil32(mem[_9478 + mem[_9478]]) + 32
                        mem[_9478 + ceil32(return_data.size)] = _9683
                        require _9523 + _9683 + 32 <= return_data.size
                        mem[_9478 + ceil32(return_data.size) + 32 len ceil32(_9683)] = mem[_9478 + _9523 + 32 len ceil32(_9683)]
                        if ceil32(_9683) <= _9683:
                            _10515 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9683
                            mem[mem[64] + 128 len ceil32(_9683)] = mem[_9478 + ceil32(return_data.size) + 32 len ceil32(_9683)]
                            if ceil32(_9683) > _9683:
                                mem[mem[64] + _9683 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10515 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10515 + ceil32(_9683) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9478 + ceil32(return_data.size) + _9683 + 32] = 0
                            _10547 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9683
                            mem[mem[64] + 128 len ceil32(_9683)] = mem[_9478 + ceil32(return_data.size) + 32 len ceil32(_9683)]
                            if ceil32(_9683) > _9683:
                                mem[_10547 + _9683 + 128] = 0
                            mem[_10547 + 32] = arg2
                            mem[_10547 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10547 + ceil32(_9683) + -mem[64] + 128], msg.sender, arg1
            else:
                if not arg2:
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    _164 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _185 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _164 + _185 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_185)] = mem[ceil32(return_data.size) + _164 + 576 len ceil32(_185)]
                    if ceil32(_185) <= _185:
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9528 = mem[_9493]
                        require mem[_9493] <= test266151307()
                        require _9493 + mem[_9493] + 31 < _9493 + return_data.size
                        _9688 = mem[_9493 + mem[_9493]]
                        require mem[_9493 + mem[_9493]] <= test266151307()
                        require _9493 + ceil32(return_data.size) + ceil32(mem[_9493 + mem[_9493]]) + 32 <= test266151307() and ceil32(mem[_9493 + mem[_9493]]) + 32 >= 0
                        mem[64] = _9493 + ceil32(return_data.size) + ceil32(mem[_9493 + mem[_9493]]) + 32
                        mem[_9493 + ceil32(return_data.size)] = _9688
                        require _9528 + _9688 + 32 <= return_data.size
                        mem[_9493 + ceil32(return_data.size) + 32 len ceil32(_9688)] = mem[_9493 + _9528 + 32 len ceil32(_9688)]
                        if ceil32(_9688) <= _9688:
                            _10520 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9688
                            mem[mem[64] + 128 len ceil32(_9688)] = mem[_9493 + ceil32(return_data.size) + 32 len ceil32(_9688)]
                            if ceil32(_9688) > _9688:
                                mem[mem[64] + _9688 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10520 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10520 + ceil32(_9688) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9493 + ceil32(return_data.size) + _9688 + 32] = 0
                            _10552 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9688
                            mem[mem[64] + 128 len ceil32(_9688)] = mem[_9493 + ceil32(return_data.size) + 32 len ceil32(_9688)]
                            if ceil32(_9688) > _9688:
                                mem[_10552 + _9688 + 128] = 0
                            mem[_10552 + 32] = arg2
                            mem[_10552 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10552 + ceil32(_9688) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _185 + 576] = 0
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9529 = mem[_9496]
                        require mem[_9496] <= test266151307()
                        require _9496 + mem[_9496] + 31 < _9496 + return_data.size
                        _9689 = mem[_9496 + mem[_9496]]
                        require mem[_9496 + mem[_9496]] <= test266151307()
                        require _9496 + ceil32(return_data.size) + ceil32(mem[_9496 + mem[_9496]]) + 32 <= test266151307() and ceil32(mem[_9496 + mem[_9496]]) + 32 >= 0
                        mem[64] = _9496 + ceil32(return_data.size) + ceil32(mem[_9496 + mem[_9496]]) + 32
                        mem[_9496 + ceil32(return_data.size)] = _9689
                        require _9529 + _9689 + 32 <= return_data.size
                        mem[_9496 + ceil32(return_data.size) + 32 len ceil32(_9689)] = mem[_9496 + _9529 + 32 len ceil32(_9689)]
                        if ceil32(_9689) <= _9689:
                            _10521 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9689
                            mem[mem[64] + 128 len ceil32(_9689)] = mem[_9496 + ceil32(return_data.size) + 32 len ceil32(_9689)]
                            if ceil32(_9689) > _9689:
                                mem[mem[64] + _9689 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10521 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10521 + ceil32(_9689) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9496 + ceil32(return_data.size) + _9689 + 32] = 0
                            _10553 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9689
                            mem[mem[64] + 128 len ceil32(_9689)] = mem[_9496 + ceil32(return_data.size) + 32 len ceil32(_9689)]
                            if ceil32(_9689) > _9689:
                                mem[_10553 + _9689 + 128] = 0
                            mem[_10553 + 32] = arg2
                            mem[_10553 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10553 + ceil32(_9689) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _196 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _183 + _196 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_196)] = mem[ceil32(return_data.size) + _183 + 576 len ceil32(_196)]
                    if ceil32(_196) <= _196:
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9526 = mem[_9487]
                        require mem[_9487] <= test266151307()
                        require _9487 + mem[_9487] + 31 < _9487 + return_data.size
                        _9686 = mem[_9487 + mem[_9487]]
                        require mem[_9487 + mem[_9487]] <= test266151307()
                        require _9487 + ceil32(return_data.size) + ceil32(mem[_9487 + mem[_9487]]) + 32 <= test266151307() and ceil32(mem[_9487 + mem[_9487]]) + 32 >= 0
                        mem[64] = _9487 + ceil32(return_data.size) + ceil32(mem[_9487 + mem[_9487]]) + 32
                        mem[_9487 + ceil32(return_data.size)] = _9686
                        require _9526 + _9686 + 32 <= return_data.size
                        mem[_9487 + ceil32(return_data.size) + 32 len ceil32(_9686)] = mem[_9487 + _9526 + 32 len ceil32(_9686)]
                        if ceil32(_9686) <= _9686:
                            _10518 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9686
                            mem[mem[64] + 128 len ceil32(_9686)] = mem[_9487 + ceil32(return_data.size) + 32 len ceil32(_9686)]
                            if ceil32(_9686) > _9686:
                                mem[mem[64] + _9686 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10518 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10518 + ceil32(_9686) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9487 + ceil32(return_data.size) + _9686 + 32] = 0
                            _10550 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9686
                            mem[mem[64] + 128 len ceil32(_9686)] = mem[_9487 + ceil32(return_data.size) + 32 len ceil32(_9686)]
                            if ceil32(_9686) > _9686:
                                mem[mem[64] + _9686 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10550 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10550 + ceil32(_9686) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _196 + 576] = 0
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9527 = mem[_9490]
                        require mem[_9490] <= test266151307()
                        require _9490 + mem[_9490] + 31 < _9490 + return_data.size
                        _9687 = mem[_9490 + mem[_9490]]
                        require mem[_9490 + mem[_9490]] <= test266151307()
                        require _9490 + ceil32(return_data.size) + ceil32(mem[_9490 + mem[_9490]]) + 32 <= test266151307() and ceil32(mem[_9490 + mem[_9490]]) + 32 >= 0
                        mem[64] = _9490 + ceil32(return_data.size) + ceil32(mem[_9490 + mem[_9490]]) + 32
                        mem[_9490 + ceil32(return_data.size)] = _9687
                        require _9527 + _9687 + 32 <= return_data.size
                        mem[_9490 + ceil32(return_data.size) + 32 len ceil32(_9687)] = mem[_9490 + _9527 + 32 len ceil32(_9687)]
                        if ceil32(_9687) <= _9687:
                            _10519 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9687
                            mem[mem[64] + 128 len ceil32(_9687)] = mem[_9490 + ceil32(return_data.size) + 32 len ceil32(_9687)]
                            if ceil32(_9687) > _9687:
                                mem[_10519 + _9687 + 128] = 0
                            mem[_10519 + 32] = arg2
                            mem[_10519 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10519 + ceil32(_9687) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9490 + ceil32(return_data.size) + _9687 + 32] = 0
                            _10551 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9687
                            mem[mem[64] + 128 len ceil32(_9687)] = mem[_9490 + ceil32(return_data.size) + 32 len ceil32(_9687)]
                            if ceil32(_9687) > _9687:
                                mem[mem[64] + _9687 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10551 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10551 + ceil32(_9687) + -mem[64] + 128], msg.sender, arg1
        else:
            require arg2
            require 28 * arg2 / arg2 == 28
            if cashbackcode[address(msg.sender)]:
                require 0 <= arg2
                if not arg2:
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    _142 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _179 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _142 + _179 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_179)] = mem[ceil32(return_data.size) + _142 + 576 len ceil32(_179)]
                    if ceil32(_179) <= _179:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9457 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9516 = mem[_9457]
                        require mem[_9457] <= test266151307()
                        require _9457 + mem[_9457] + 31 < _9457 + return_data.size
                        _9676 = mem[_9457 + mem[_9457]]
                        require mem[_9457 + mem[_9457]] <= test266151307()
                        require _9457 + ceil32(return_data.size) + ceil32(mem[_9457 + mem[_9457]]) + 32 <= test266151307() and ceil32(mem[_9457 + mem[_9457]]) + 32 >= 0
                        mem[64] = _9457 + ceil32(return_data.size) + ceil32(mem[_9457 + mem[_9457]]) + 32
                        mem[_9457 + ceil32(return_data.size)] = _9676
                        require _9516 + _9676 + 32 <= return_data.size
                        mem[_9457 + ceil32(return_data.size) + 32 len ceil32(_9676)] = mem[_9457 + _9516 + 32 len ceil32(_9676)]
                        if ceil32(_9676) <= _9676:
                            _10508 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9676
                            mem[mem[64] + 128 len ceil32(_9676)] = mem[_9457 + ceil32(return_data.size) + 32 len ceil32(_9676)]
                            if ceil32(_9676) > _9676:
                                mem[mem[64] + _9676 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10508 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10508 + ceil32(_9676) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9457 + ceil32(return_data.size) + _9676 + 32] = 0
                            _10540 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9676
                            mem[mem[64] + 128 len ceil32(_9676)] = mem[_9457 + ceil32(return_data.size) + 32 len ceil32(_9676)]
                            if ceil32(_9676) > _9676:
                                mem[mem[64] + _9676 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10540 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10540 + ceil32(_9676) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _179 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9460 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9517 = mem[_9460]
                        require mem[_9460] <= test266151307()
                        require _9460 + mem[_9460] + 31 < _9460 + return_data.size
                        _9677 = mem[_9460 + mem[_9460]]
                        require mem[_9460 + mem[_9460]] <= test266151307()
                        require _9460 + ceil32(return_data.size) + ceil32(mem[_9460 + mem[_9460]]) + 32 <= test266151307() and ceil32(mem[_9460 + mem[_9460]]) + 32 >= 0
                        mem[64] = _9460 + ceil32(return_data.size) + ceil32(mem[_9460 + mem[_9460]]) + 32
                        mem[_9460 + ceil32(return_data.size)] = _9677
                        require _9517 + _9677 + 32 <= return_data.size
                        mem[_9460 + ceil32(return_data.size) + 32 len ceil32(_9677)] = mem[_9460 + _9517 + 32 len ceil32(_9677)]
                        if ceil32(_9677) <= _9677:
                            _10509 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9677
                            mem[mem[64] + 128 len ceil32(_9677)] = mem[_9460 + ceil32(return_data.size) + 32 len ceil32(_9677)]
                            if ceil32(_9677) > _9677:
                                mem[_10509 + _9677 + 128] = 0
                            mem[_10509 + 32] = arg2
                            mem[_10509 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10509 + ceil32(_9677) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9460 + ceil32(return_data.size) + _9677 + 32] = 0
                            _10541 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9677
                            mem[mem[64] + 128 len ceil32(_9677)] = mem[_9460 + ceil32(return_data.size) + 32 len ceil32(_9677)]
                            if ceil32(_9677) > _9677:
                                mem[mem[64] + _9677 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10541 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10541 + ceil32(_9677) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    _169 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _191 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _169 + _191 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_191)] = mem[ceil32(return_data.size) + _169 + 576 len ceil32(_191)]
                    if ceil32(_191) <= _191:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9451 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9514 = mem[_9451]
                        require mem[_9451] <= test266151307()
                        require _9451 + mem[_9451] + 31 < _9451 + return_data.size
                        _9674 = mem[_9451 + mem[_9451]]
                        require mem[_9451 + mem[_9451]] <= test266151307()
                        require _9451 + ceil32(return_data.size) + ceil32(mem[_9451 + mem[_9451]]) + 32 <= test266151307() and ceil32(mem[_9451 + mem[_9451]]) + 32 >= 0
                        mem[64] = _9451 + ceil32(return_data.size) + ceil32(mem[_9451 + mem[_9451]]) + 32
                        mem[_9451 + ceil32(return_data.size)] = _9674
                        require _9514 + _9674 + 32 <= return_data.size
                        mem[_9451 + ceil32(return_data.size) + 32 len ceil32(_9674)] = mem[_9451 + _9514 + 32 len ceil32(_9674)]
                        if ceil32(_9674) <= _9674:
                            _10506 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9674
                            mem[mem[64] + 128 len ceil32(_9674)] = mem[_9451 + ceil32(return_data.size) + 32 len ceil32(_9674)]
                            if ceil32(_9674) > _9674:
                                mem[mem[64] + _9674 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10506 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10506 + ceil32(_9674) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9451 + ceil32(return_data.size) + _9674 + 32] = 0
                            _10538 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9674
                            mem[mem[64] + 128 len ceil32(_9674)] = mem[_9451 + ceil32(return_data.size) + 32 len ceil32(_9674)]
                            if ceil32(_9674) > _9674:
                                mem[mem[64] + _9674 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10538 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10538 + ceil32(_9674) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _191 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9454 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9515 = mem[_9454]
                        require mem[_9454] <= test266151307()
                        require _9454 + mem[_9454] + 31 < _9454 + return_data.size
                        _9675 = mem[_9454 + mem[_9454]]
                        require mem[_9454 + mem[_9454]] <= test266151307()
                        require _9454 + ceil32(return_data.size) + ceil32(mem[_9454 + mem[_9454]]) + 32 <= test266151307() and ceil32(mem[_9454 + mem[_9454]]) + 32 >= 0
                        mem[64] = _9454 + ceil32(return_data.size) + ceil32(mem[_9454 + mem[_9454]]) + 32
                        mem[_9454 + ceil32(return_data.size)] = _9675
                        require _9515 + _9675 + 32 <= return_data.size
                        mem[_9454 + ceil32(return_data.size) + 32 len ceil32(_9675)] = mem[_9454 + _9515 + 32 len ceil32(_9675)]
                        if ceil32(_9675) <= _9675:
                            _10507 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9675
                            mem[mem[64] + 128 len ceil32(_9675)] = mem[_9454 + ceil32(return_data.size) + 32 len ceil32(_9675)]
                            if ceil32(_9675) > _9675:
                                mem[mem[64] + _9675 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10507 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10507 + ceil32(_9675) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9454 + ceil32(return_data.size) + _9675 + 32] = 0
                            _10539 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9675
                            mem[mem[64] + 128 len ceil32(_9675)] = mem[_9454 + ceil32(return_data.size) + 32 len ceil32(_9675)]
                            if ceil32(_9675) > _9675:
                                mem[mem[64] + _9675 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10539 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10539 + ceil32(_9675) + -mem[64] + 128], msg.sender, arg1
            else:
                if not arg2:
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] + (28 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _195 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9520 = mem[_9469]
                        require mem[_9469] <= test266151307()
                        require _9469 + mem[_9469] + 31 < _9469 + return_data.size
                        _9680 = mem[_9469 + mem[_9469]]
                        require mem[_9469 + mem[_9469]] <= test266151307()
                        require _9469 + ceil32(return_data.size) + ceil32(mem[_9469 + mem[_9469]]) + 32 <= test266151307() and ceil32(mem[_9469 + mem[_9469]]) + 32 >= 0
                        mem[64] = _9469 + ceil32(return_data.size) + ceil32(mem[_9469 + mem[_9469]]) + 32
                        mem[_9469 + ceil32(return_data.size)] = _9680
                        require _9520 + _9680 + 32 <= return_data.size
                        mem[_9469 + ceil32(return_data.size) + 32 len ceil32(_9680)] = mem[_9469 + _9520 + 32 len ceil32(_9680)]
                        if ceil32(_9680) <= _9680:
                            _10512 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9680
                            mem[mem[64] + 128 len ceil32(_9680)] = mem[_9469 + ceil32(return_data.size) + 32 len ceil32(_9680)]
                            if ceil32(_9680) > _9680:
                                mem[mem[64] + _9680 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10512 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10512 + ceil32(_9680) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9469 + ceil32(return_data.size) + _9680 + 32] = 0
                            _10544 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9680
                            mem[mem[64] + 128 len ceil32(_9680)] = mem[_9469 + ceil32(return_data.size) + 32 len ceil32(_9680)]
                            if ceil32(_9680) > _9680:
                                mem[mem[64] + _9680 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10544 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10544 + ceil32(_9680) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _195 + 576] = 0
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9521 = mem[_9472]
                        require mem[_9472] <= test266151307()
                        require _9472 + mem[_9472] + 31 < _9472 + return_data.size
                        _9681 = mem[_9472 + mem[_9472]]
                        require mem[_9472 + mem[_9472]] <= test266151307()
                        require _9472 + ceil32(return_data.size) + ceil32(mem[_9472 + mem[_9472]]) + 32 <= test266151307() and ceil32(mem[_9472 + mem[_9472]]) + 32 >= 0
                        mem[64] = _9472 + ceil32(return_data.size) + ceil32(mem[_9472 + mem[_9472]]) + 32
                        mem[_9472 + ceil32(return_data.size)] = _9681
                        require _9521 + _9681 + 32 <= return_data.size
                        mem[_9472 + ceil32(return_data.size) + 32 len ceil32(_9681)] = mem[_9472 + _9521 + 32 len ceil32(_9681)]
                        if ceil32(_9681) <= _9681:
                            _10513 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9681
                            mem[mem[64] + 128 len ceil32(_9681)] = mem[_9472 + ceil32(return_data.size) + 32 len ceil32(_9681)]
                            if ceil32(_9681) > _9681:
                                mem[mem[64] + _9681 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10513 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10513 + ceil32(_9681) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9472 + ceil32(return_data.size) + _9681 + 32] = 0
                            _10545 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9681
                            mem[mem[64] + 128 len ceil32(_9681)] = mem[_9472 + ceil32(return_data.size) + 32 len ceil32(_9681)]
                            if ceil32(_9681) > _9681:
                                mem[mem[64] + _9681 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10545 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10545 + ceil32(_9681) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] + (28 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    _192 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _204 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _192 + _204 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_204)] = mem[ceil32(return_data.size) + _192 + 576 len ceil32(_204)]
                    if ceil32(_204) <= _204:
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9463 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9518 = mem[_9463]
                        require mem[_9463] <= test266151307()
                        require _9463 + mem[_9463] + 31 < _9463 + return_data.size
                        _9678 = mem[_9463 + mem[_9463]]
                        require mem[_9463 + mem[_9463]] <= test266151307()
                        require _9463 + ceil32(return_data.size) + ceil32(mem[_9463 + mem[_9463]]) + 32 <= test266151307() and ceil32(mem[_9463 + mem[_9463]]) + 32 >= 0
                        mem[64] = _9463 + ceil32(return_data.size) + ceil32(mem[_9463 + mem[_9463]]) + 32
                        mem[_9463 + ceil32(return_data.size)] = _9678
                        require _9518 + _9678 + 32 <= return_data.size
                        mem[_9463 + ceil32(return_data.size) + 32 len ceil32(_9678)] = mem[_9463 + _9518 + 32 len ceil32(_9678)]
                        if ceil32(_9678) <= _9678:
                            _10510 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9678
                            mem[mem[64] + 128 len ceil32(_9678)] = mem[_9463 + ceil32(return_data.size) + 32 len ceil32(_9678)]
                            if ceil32(_9678) > _9678:
                                mem[_10510 + _9678 + 128] = 0
                            mem[_10510 + 32] = arg2
                            mem[_10510 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10510 + ceil32(_9678) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9463 + ceil32(return_data.size) + _9678 + 32] = 0
                            _10542 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9678
                            mem[mem[64] + 128 len ceil32(_9678)] = mem[_9463 + ceil32(return_data.size) + 32 len ceil32(_9678)]
                            if ceil32(_9678) > _9678:
                                mem[mem[64] + _9678 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10542 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10542 + ceil32(_9678) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _204 + 576] = 0
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9519 = mem[_9466]
                        require mem[_9466] <= test266151307()
                        require _9466 + mem[_9466] + 31 < _9466 + return_data.size
                        _9679 = mem[_9466 + mem[_9466]]
                        require mem[_9466 + mem[_9466]] <= test266151307()
                        require _9466 + ceil32(return_data.size) + ceil32(mem[_9466 + mem[_9466]]) + 32 <= test266151307() and ceil32(mem[_9466 + mem[_9466]]) + 32 >= 0
                        mem[64] = _9466 + ceil32(return_data.size) + ceil32(mem[_9466 + mem[_9466]]) + 32
                        mem[_9466 + ceil32(return_data.size)] = _9679
                        require _9519 + _9679 + 32 <= return_data.size
                        mem[_9466 + ceil32(return_data.size) + 32 len ceil32(_9679)] = mem[_9466 + _9519 + 32 len ceil32(_9679)]
                        if ceil32(_9679) <= _9679:
                            _10511 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9679
                            mem[mem[64] + 128 len ceil32(_9679)] = mem[_9466 + ceil32(return_data.size) + 32 len ceil32(_9679)]
                            if ceil32(_9679) > _9679:
                                mem[mem[64] + _9679 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10511 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10511 + ceil32(_9679) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9466 + ceil32(return_data.size) + _9679 + 32] = 0
                            _10543 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9679
                            mem[mem[64] + 128 len ceil32(_9679)] = mem[_9466 + ceil32(return_data.size) + 32 len ceil32(_9679)]
                            if ceil32(_9679) > _9679:
                                mem[_10543 + _9679 + 128] = 0
                            mem[_10543 + 32] = arg2
                            mem[_10543 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10543 + ceil32(_9679) + -mem[64] + 128], msg.sender, arg1
    else:
        require arg2
        require 12 * arg2 / arg2 == 12
        if not arg2:
            if cashbackcode[address(msg.sender)]:
                require 12 * arg2 / 100 <= arg2
                if not arg2:
                    require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    _139 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _176 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _139 + _176 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_176)] = mem[ceil32(return_data.size) + _139 + 576 len ceil32(_176)]
                    if ceil32(_176) <= _176:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9433 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9508 = mem[_9433]
                        require mem[_9433] <= test266151307()
                        require _9433 + mem[_9433] + 31 < _9433 + return_data.size
                        _9668 = mem[_9433 + mem[_9433]]
                        require mem[_9433 + mem[_9433]] <= test266151307()
                        require _9433 + ceil32(return_data.size) + ceil32(mem[_9433 + mem[_9433]]) + 32 <= test266151307() and ceil32(mem[_9433 + mem[_9433]]) + 32 >= 0
                        mem[64] = _9433 + ceil32(return_data.size) + ceil32(mem[_9433 + mem[_9433]]) + 32
                        mem[_9433 + ceil32(return_data.size)] = _9668
                        require _9508 + _9668 + 32 <= return_data.size
                        mem[_9433 + ceil32(return_data.size) + 32 len ceil32(_9668)] = mem[_9433 + _9508 + 32 len ceil32(_9668)]
                        if ceil32(_9668) <= _9668:
                            _10500 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9668
                            mem[mem[64] + 128 len ceil32(_9668)] = mem[_9433 + ceil32(return_data.size) + 32 len ceil32(_9668)]
                            if ceil32(_9668) > _9668:
                                mem[mem[64] + _9668 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10500 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10500 + ceil32(_9668) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9433 + ceil32(return_data.size) + _9668 + 32] = 0
                            _10532 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9668
                            mem[mem[64] + 128 len ceil32(_9668)] = mem[_9433 + ceil32(return_data.size) + 32 len ceil32(_9668)]
                            if ceil32(_9668) > _9668:
                                mem[mem[64] + _9668 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10532 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10532 + ceil32(_9668) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _176 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9436 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9509 = mem[_9436]
                        require mem[_9436] <= test266151307()
                        require _9436 + mem[_9436] + 31 < _9436 + return_data.size
                        _9669 = mem[_9436 + mem[_9436]]
                        require mem[_9436 + mem[_9436]] <= test266151307()
                        require _9436 + ceil32(return_data.size) + ceil32(mem[_9436 + mem[_9436]]) + 32 <= test266151307() and ceil32(mem[_9436 + mem[_9436]]) + 32 >= 0
                        mem[64] = _9436 + ceil32(return_data.size) + ceil32(mem[_9436 + mem[_9436]]) + 32
                        mem[_9436 + ceil32(return_data.size)] = _9669
                        require _9509 + _9669 + 32 <= return_data.size
                        mem[_9436 + ceil32(return_data.size) + 32 len ceil32(_9669)] = mem[_9436 + _9509 + 32 len ceil32(_9669)]
                        if ceil32(_9669) <= _9669:
                            _10501 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9669
                            mem[mem[64] + 128 len ceil32(_9669)] = mem[_9436 + ceil32(return_data.size) + 32 len ceil32(_9669)]
                            if ceil32(_9669) > _9669:
                                mem[_10501 + _9669 + 128] = 0
                            mem[_10501 + 32] = arg2
                            mem[_10501 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10501 + ceil32(_9669) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9436 + ceil32(return_data.size) + _9669 + 32] = 0
                            _10533 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9669
                            mem[mem[64] + 128 len ceil32(_9669)] = mem[_9436 + ceil32(return_data.size) + 32 len ceil32(_9669)]
                            if ceil32(_9669) > _9669:
                                mem[mem[64] + _9669 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10533 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10533 + ceil32(_9669) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _189 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _168 + _189 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_189)] = mem[ceil32(return_data.size) + _168 + 576 len ceil32(_189)]
                    if ceil32(_189) <= _189:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9427 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9506 = mem[_9427]
                        require mem[_9427] <= test266151307()
                        require _9427 + mem[_9427] + 31 < _9427 + return_data.size
                        _9666 = mem[_9427 + mem[_9427]]
                        require mem[_9427 + mem[_9427]] <= test266151307()
                        require _9427 + ceil32(return_data.size) + ceil32(mem[_9427 + mem[_9427]]) + 32 <= test266151307() and ceil32(mem[_9427 + mem[_9427]]) + 32 >= 0
                        mem[64] = _9427 + ceil32(return_data.size) + ceil32(mem[_9427 + mem[_9427]]) + 32
                        mem[_9427 + ceil32(return_data.size)] = _9666
                        require _9506 + _9666 + 32 <= return_data.size
                        mem[_9427 + ceil32(return_data.size) + 32 len ceil32(_9666)] = mem[_9427 + _9506 + 32 len ceil32(_9666)]
                        if ceil32(_9666) <= _9666:
                            _10498 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9666
                            mem[mem[64] + 128 len ceil32(_9666)] = mem[_9427 + ceil32(return_data.size) + 32 len ceil32(_9666)]
                            if ceil32(_9666) > _9666:
                                mem[mem[64] + _9666 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10498 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10498 + ceil32(_9666) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9427 + ceil32(return_data.size) + _9666 + 32] = 0
                            _10530 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9666
                            mem[mem[64] + 128 len ceil32(_9666)] = mem[_9427 + ceil32(return_data.size) + 32 len ceil32(_9666)]
                            if ceil32(_9666) > _9666:
                                mem[mem[64] + _9666 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10530 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10530 + ceil32(_9666) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _189 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9430 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9507 = mem[_9430]
                        require mem[_9430] <= test266151307()
                        require _9430 + mem[_9430] + 31 < _9430 + return_data.size
                        _9667 = mem[_9430 + mem[_9430]]
                        require mem[_9430 + mem[_9430]] <= test266151307()
                        require _9430 + ceil32(return_data.size) + ceil32(mem[_9430 + mem[_9430]]) + 32 <= test266151307() and ceil32(mem[_9430 + mem[_9430]]) + 32 >= 0
                        mem[64] = _9430 + ceil32(return_data.size) + ceil32(mem[_9430 + mem[_9430]]) + 32
                        mem[_9430 + ceil32(return_data.size)] = _9667
                        require _9507 + _9667 + 32 <= return_data.size
                        mem[_9430 + ceil32(return_data.size) + 32 len ceil32(_9667)] = mem[_9430 + _9507 + 32 len ceil32(_9667)]
                        if ceil32(_9667) <= _9667:
                            _10499 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9667
                            mem[mem[64] + 128 len ceil32(_9667)] = mem[_9430 + ceil32(return_data.size) + 32 len ceil32(_9667)]
                            if ceil32(_9667) > _9667:
                                mem[mem[64] + _9667 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10499 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10499 + ceil32(_9667) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9430 + ceil32(return_data.size) + _9667 + 32] = 0
                            _10531 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9667
                            mem[mem[64] + 128 len ceil32(_9667)] = mem[_9430 + ceil32(return_data.size) + 32 len ceil32(_9667)]
                            if ceil32(_9667) > _9667:
                                mem[mem[64] + _9667 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10531 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10531 + ceil32(_9667) + -mem[64] + 128], msg.sender, arg1
            else:
                if not arg2:
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _194 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9445 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9512 = mem[_9445]
                        require mem[_9445] <= test266151307()
                        require _9445 + mem[_9445] + 31 < _9445 + return_data.size
                        _9672 = mem[_9445 + mem[_9445]]
                        require mem[_9445 + mem[_9445]] <= test266151307()
                        require _9445 + ceil32(return_data.size) + ceil32(mem[_9445 + mem[_9445]]) + 32 <= test266151307() and ceil32(mem[_9445 + mem[_9445]]) + 32 >= 0
                        mem[64] = _9445 + ceil32(return_data.size) + ceil32(mem[_9445 + mem[_9445]]) + 32
                        mem[_9445 + ceil32(return_data.size)] = _9672
                        require _9512 + _9672 + 32 <= return_data.size
                        mem[_9445 + ceil32(return_data.size) + 32 len ceil32(_9672)] = mem[_9445 + _9512 + 32 len ceil32(_9672)]
                        if ceil32(_9672) <= _9672:
                            _10504 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9672
                            mem[mem[64] + 128 len ceil32(_9672)] = mem[_9445 + ceil32(return_data.size) + 32 len ceil32(_9672)]
                            if ceil32(_9672) > _9672:
                                mem[mem[64] + _9672 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10504 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10504 + ceil32(_9672) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9445 + ceil32(return_data.size) + _9672 + 32] = 0
                            _10536 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9672
                            mem[mem[64] + 128 len ceil32(_9672)] = mem[_9445 + ceil32(return_data.size) + 32 len ceil32(_9672)]
                            if ceil32(_9672) > _9672:
                                mem[mem[64] + _9672 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10536 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10536 + ceil32(_9672) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _194 + 576] = 0
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9448 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9513 = mem[_9448]
                        require mem[_9448] <= test266151307()
                        require _9448 + mem[_9448] + 31 < _9448 + return_data.size
                        _9673 = mem[_9448 + mem[_9448]]
                        require mem[_9448 + mem[_9448]] <= test266151307()
                        require _9448 + ceil32(return_data.size) + ceil32(mem[_9448 + mem[_9448]]) + 32 <= test266151307() and ceil32(mem[_9448 + mem[_9448]]) + 32 >= 0
                        mem[64] = _9448 + ceil32(return_data.size) + ceil32(mem[_9448 + mem[_9448]]) + 32
                        mem[_9448 + ceil32(return_data.size)] = _9673
                        require _9513 + _9673 + 32 <= return_data.size
                        mem[_9448 + ceil32(return_data.size) + 32 len ceil32(_9673)] = mem[_9448 + _9513 + 32 len ceil32(_9673)]
                        if ceil32(_9673) <= _9673:
                            _10505 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9673
                            mem[mem[64] + 128 len ceil32(_9673)] = mem[_9448 + ceil32(return_data.size) + 32 len ceil32(_9673)]
                            if ceil32(_9673) > _9673:
                                mem[_10505 + _9673 + 128] = 0
                            mem[_10505 + 32] = arg2
                            mem[_10505 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10505 + ceil32(_9673) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9448 + ceil32(return_data.size) + _9673 + 32] = 0
                            _10537 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9673
                            mem[mem[64] + 128 len ceil32(_9673)] = mem[_9448 + ceil32(return_data.size) + 32 len ceil32(_9673)]
                            if ceil32(_9673) > _9673:
                                mem[_10537 + _9673 + 128] = 0
                            mem[_10537 + 32] = arg2
                            mem[_10537 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10537 + ceil32(_9673) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    _190 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _203 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _190 + _203 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_203)] = mem[ceil32(return_data.size) + _190 + 576 len ceil32(_203)]
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9439 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9510 = mem[_9439]
                        require mem[_9439] <= test266151307()
                        require _9439 + mem[_9439] + 31 < _9439 + return_data.size
                        _9670 = mem[_9439 + mem[_9439]]
                        require mem[_9439 + mem[_9439]] <= test266151307()
                        require _9439 + ceil32(return_data.size) + ceil32(mem[_9439 + mem[_9439]]) + 32 <= test266151307() and ceil32(mem[_9439 + mem[_9439]]) + 32 >= 0
                        mem[64] = _9439 + ceil32(return_data.size) + ceil32(mem[_9439 + mem[_9439]]) + 32
                        mem[_9439 + ceil32(return_data.size)] = _9670
                        require _9510 + _9670 + 32 <= return_data.size
                        mem[_9439 + ceil32(return_data.size) + 32 len ceil32(_9670)] = mem[_9439 + _9510 + 32 len ceil32(_9670)]
                        if ceil32(_9670) <= _9670:
                            _10502 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9670
                            mem[mem[64] + 128 len ceil32(_9670)] = mem[_9439 + ceil32(return_data.size) + 32 len ceil32(_9670)]
                            if ceil32(_9670) > _9670:
                                mem[mem[64] + _9670 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10502 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10502 + ceil32(_9670) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9439 + ceil32(return_data.size) + _9670 + 32] = 0
                            _10534 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9670
                            mem[mem[64] + 128 len ceil32(_9670)] = mem[_9439 + ceil32(return_data.size) + 32 len ceil32(_9670)]
                            if ceil32(_9670) > _9670:
                                mem[_10534 + _9670 + 128] = 0
                            mem[_10534 + 32] = arg2
                            mem[_10534 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10534 + ceil32(_9670) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _203 + 576] = 0
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9442 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9511 = mem[_9442]
                        require mem[_9442] <= test266151307()
                        require _9442 + mem[_9442] + 31 < _9442 + return_data.size
                        _9671 = mem[_9442 + mem[_9442]]
                        require mem[_9442 + mem[_9442]] <= test266151307()
                        require _9442 + ceil32(return_data.size) + ceil32(mem[_9442 + mem[_9442]]) + 32 <= test266151307() and ceil32(mem[_9442 + mem[_9442]]) + 32 >= 0
                        mem[64] = _9442 + ceil32(return_data.size) + ceil32(mem[_9442 + mem[_9442]]) + 32
                        mem[_9442 + ceil32(return_data.size)] = _9671
                        require _9511 + _9671 + 32 <= return_data.size
                        mem[_9442 + ceil32(return_data.size) + 32 len ceil32(_9671)] = mem[_9442 + _9511 + 32 len ceil32(_9671)]
                        if ceil32(_9671) <= _9671:
                            _10503 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9671
                            mem[mem[64] + 128 len ceil32(_9671)] = mem[_9442 + ceil32(return_data.size) + 32 len ceil32(_9671)]
                            if ceil32(_9671) > _9671:
                                mem[mem[64] + _9671 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10503 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10503 + ceil32(_9671) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9442 + ceil32(return_data.size) + _9671 + 32] = 0
                            _10535 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9671
                            mem[mem[64] + 128 len ceil32(_9671)] = mem[_9442 + ceil32(return_data.size) + 32 len ceil32(_9671)]
                            if ceil32(_9671) > _9671:
                                mem[_10535 + _9671 + 128] = 0
                            mem[_10535 + 32] = arg2
                            mem[_10535 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10535 + ceil32(_9671) + -mem[64] + 128], msg.sender, arg1
        else:
            require arg2
            require 28 * arg2 / arg2 == 28
            if cashbackcode[address(msg.sender)]:
                require 12 * arg2 / 100 <= arg2
                if not arg2:
                    require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    _166 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _186 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _166 + _186 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_186)] = mem[ceil32(return_data.size) + _166 + 576 len ceil32(_186)]
                    if ceil32(_186) <= _186:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9409 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9500 = mem[_9409]
                        require mem[_9409] <= test266151307()
                        require _9409 + mem[_9409] + 31 < _9409 + return_data.size
                        _9660 = mem[_9409 + mem[_9409]]
                        require mem[_9409 + mem[_9409]] <= test266151307()
                        require _9409 + ceil32(return_data.size) + ceil32(mem[_9409 + mem[_9409]]) + 32 <= test266151307() and ceil32(mem[_9409 + mem[_9409]]) + 32 >= 0
                        mem[64] = _9409 + ceil32(return_data.size) + ceil32(mem[_9409 + mem[_9409]]) + 32
                        mem[_9409 + ceil32(return_data.size)] = _9660
                        require _9500 + _9660 + 32 <= return_data.size
                        mem[_9409 + ceil32(return_data.size) + 32 len ceil32(_9660)] = mem[_9409 + _9500 + 32 len ceil32(_9660)]
                        if ceil32(_9660) <= _9660:
                            _10492 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9660
                            mem[mem[64] + 128 len ceil32(_9660)] = mem[_9409 + ceil32(return_data.size) + 32 len ceil32(_9660)]
                            if ceil32(_9660) > _9660:
                                mem[mem[64] + _9660 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10492 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10492 + ceil32(_9660) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9409 + ceil32(return_data.size) + _9660 + 32] = 0
                            _10524 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9660
                            mem[mem[64] + 128 len ceil32(_9660)] = mem[_9409 + ceil32(return_data.size) + 32 len ceil32(_9660)]
                            if ceil32(_9660) > _9660:
                                mem[mem[64] + _9660 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10524 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10524 + ceil32(_9660) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _186 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9412 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9501 = mem[_9412]
                        require mem[_9412] <= test266151307()
                        require _9412 + mem[_9412] + 31 < _9412 + return_data.size
                        _9661 = mem[_9412 + mem[_9412]]
                        require mem[_9412 + mem[_9412]] <= test266151307()
                        require _9412 + ceil32(return_data.size) + ceil32(mem[_9412 + mem[_9412]]) + 32 <= test266151307() and ceil32(mem[_9412 + mem[_9412]]) + 32 >= 0
                        mem[64] = _9412 + ceil32(return_data.size) + ceil32(mem[_9412 + mem[_9412]]) + 32
                        mem[_9412 + ceil32(return_data.size)] = _9661
                        require _9501 + _9661 + 32 <= return_data.size
                        mem[_9412 + ceil32(return_data.size) + 32 len ceil32(_9661)] = mem[_9412 + _9501 + 32 len ceil32(_9661)]
                        if ceil32(_9661) <= _9661:
                            _10493 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9661
                            mem[mem[64] + 128 len ceil32(_9661)] = mem[_9412 + ceil32(return_data.size) + 32 len ceil32(_9661)]
                            if ceil32(_9661) > _9661:
                                mem[_10493 + _9661 + 128] = 0
                            mem[_10493 + 32] = arg2
                            mem[_10493 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10493 + ceil32(_9661) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9412 + ceil32(return_data.size) + _9661 + 32] = 0
                            _10525 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9661
                            mem[mem[64] + 128 len ceil32(_9661)] = mem[_9412 + ceil32(return_data.size) + 32 len ceil32(_9661)]
                            if ceil32(_9661) > _9661:
                                mem[mem[64] + _9661 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10525 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10525 + ceil32(_9661) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    _184 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _197 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _184 + _197 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_197)] = mem[ceil32(return_data.size) + _184 + 576 len ceil32(_197)]
                    if ceil32(_197) <= _197:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9403 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9498 = mem[_9403]
                        require mem[_9403] <= test266151307()
                        require _9403 + mem[_9403] + 31 < _9403 + return_data.size
                        _9658 = mem[_9403 + mem[_9403]]
                        require mem[_9403 + mem[_9403]] <= test266151307()
                        require _9403 + ceil32(return_data.size) + ceil32(mem[_9403 + mem[_9403]]) + 32 <= test266151307() and ceil32(mem[_9403 + mem[_9403]]) + 32 >= 0
                        mem[64] = _9403 + ceil32(return_data.size) + ceil32(mem[_9403 + mem[_9403]]) + 32
                        mem[_9403 + ceil32(return_data.size)] = _9658
                        require _9498 + _9658 + 32 <= return_data.size
                        mem[_9403 + ceil32(return_data.size) + 32 len ceil32(_9658)] = mem[_9403 + _9498 + 32 len ceil32(_9658)]
                        if ceil32(_9658) <= _9658:
                            _10490 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9658
                            mem[mem[64] + 128 len ceil32(_9658)] = mem[_9403 + ceil32(return_data.size) + 32 len ceil32(_9658)]
                            if ceil32(_9658) > _9658:
                                mem[_10490 + _9658 + 128] = 0
                            mem[_10490 + 32] = arg2
                            mem[_10490 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10490 + ceil32(_9658) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9403 + ceil32(return_data.size) + _9658 + 32] = 0
                            _10522 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9658
                            mem[mem[64] + 128 len ceil32(_9658)] = mem[_9403 + ceil32(return_data.size) + 32 len ceil32(_9658)]
                            if ceil32(_9658) > _9658:
                                mem[mem[64] + _9658 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10522 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10522 + ceil32(_9658) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _197 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                        mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                        stor8[stor9].field_0 = stor9
                        stor8[stor9].field_256 = arg2
                        stor8[stor9].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = arg2 - (12 * arg2 / 100)
                        stor8[stor9].field_1792 = 16 * arg2 / 100
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = cashbackcode[address(msg.sender)]
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9406 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9499 = mem[_9406]
                        require mem[_9406] <= test266151307()
                        require _9406 + mem[_9406] + 31 < _9406 + return_data.size
                        _9659 = mem[_9406 + mem[_9406]]
                        require mem[_9406 + mem[_9406]] <= test266151307()
                        require _9406 + ceil32(return_data.size) + ceil32(mem[_9406 + mem[_9406]]) + 32 <= test266151307() and ceil32(mem[_9406 + mem[_9406]]) + 32 >= 0
                        mem[64] = _9406 + ceil32(return_data.size) + ceil32(mem[_9406 + mem[_9406]]) + 32
                        mem[_9406 + ceil32(return_data.size)] = _9659
                        require _9499 + _9659 + 32 <= return_data.size
                        mem[_9406 + ceil32(return_data.size) + 32 len ceil32(_9659)] = mem[_9406 + _9499 + 32 len ceil32(_9659)]
                        if ceil32(_9659) <= _9659:
                            _10491 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9659
                            mem[mem[64] + 128 len ceil32(_9659)] = mem[_9406 + ceil32(return_data.size) + 32 len ceil32(_9659)]
                            if ceil32(_9659) > _9659:
                                mem[mem[64] + _9659 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10491 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10491 + ceil32(_9659) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9406 + ceil32(return_data.size) + _9659 + 32] = 0
                            _10523 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9659
                            mem[mem[64] + 128 len ceil32(_9659)] = mem[_9406 + ceil32(return_data.size) + 32 len ceil32(_9659)]
                            if ceil32(_9659) > _9659:
                                mem[_10523 + _9659 + 128] = 0
                            mem[_10523 + 32] = arg2
                            mem[_10523 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10523 + ceil32(_9659) + -mem[64] + 128], msg.sender, arg1
            else:
                if not arg2:
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] + (28 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    _188 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _202 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _188 + _202 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_202)] = mem[ceil32(return_data.size) + _188 + 576 len ceil32(_202)]
                    if ceil32(_202) <= _202:
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9421 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9504 = mem[_9421]
                        require mem[_9421] <= test266151307()
                        require _9421 + mem[_9421] + 31 < _9421 + return_data.size
                        _9664 = mem[_9421 + mem[_9421]]
                        require mem[_9421 + mem[_9421]] <= test266151307()
                        require _9421 + ceil32(return_data.size) + ceil32(mem[_9421 + mem[_9421]]) + 32 <= test266151307() and ceil32(mem[_9421 + mem[_9421]]) + 32 >= 0
                        mem[64] = _9421 + ceil32(return_data.size) + ceil32(mem[_9421 + mem[_9421]]) + 32
                        mem[_9421 + ceil32(return_data.size)] = _9664
                        require _9504 + _9664 + 32 <= return_data.size
                        mem[_9421 + ceil32(return_data.size) + 32 len ceil32(_9664)] = mem[_9421 + _9504 + 32 len ceil32(_9664)]
                        if ceil32(_9664) <= _9664:
                            _10496 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9664
                            mem[mem[64] + 128 len ceil32(_9664)] = mem[_9421 + ceil32(return_data.size) + 32 len ceil32(_9664)]
                            if ceil32(_9664) > _9664:
                                mem[mem[64] + _9664 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10496 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10496 + ceil32(_9664) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9421 + ceil32(return_data.size) + _9664 + 32] = 0
                            _10528 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9664
                            mem[mem[64] + 128 len ceil32(_9664)] = mem[_9421 + ceil32(return_data.size) + 32 len ceil32(_9664)]
                            if ceil32(_9664) > _9664:
                                mem[mem[64] + _9664 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10528 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10528 + ceil32(_9664) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _202 + 576] = 0
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 0
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9424 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9505 = mem[_9424]
                        require mem[_9424] <= test266151307()
                        require _9424 + mem[_9424] + 31 < _9424 + return_data.size
                        _9665 = mem[_9424 + mem[_9424]]
                        require mem[_9424 + mem[_9424]] <= test266151307()
                        require _9424 + ceil32(return_data.size) + ceil32(mem[_9424 + mem[_9424]]) + 32 <= test266151307() and ceil32(mem[_9424 + mem[_9424]]) + 32 >= 0
                        mem[64] = _9424 + ceil32(return_data.size) + ceil32(mem[_9424 + mem[_9424]]) + 32
                        mem[_9424 + ceil32(return_data.size)] = _9665
                        require _9505 + _9665 + 32 <= return_data.size
                        mem[_9424 + ceil32(return_data.size) + 32 len ceil32(_9665)] = mem[_9424 + _9505 + 32 len ceil32(_9665)]
                        if ceil32(_9665) <= _9665:
                            _10497 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9665
                            mem[mem[64] + 128 len ceil32(_9665)] = mem[_9424 + ceil32(return_data.size) + 32 len ceil32(_9665)]
                            if ceil32(_9665) > _9665:
                                mem[mem[64] + _9665 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10497 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10497 + ceil32(_9665) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9424 + ceil32(return_data.size) + _9665 + 32] = 0
                            _10529 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9665
                            mem[mem[64] + 128 len ceil32(_9665)] = mem[_9424 + ceil32(return_data.size) + 32 len ceil32(_9665)]
                            if ceil32(_9665) > _9665:
                                mem[_10529 + _9665 + 128] = 0
                            mem[_10529 + 32] = arg2
                            mem[_10529 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10529 + ceil32(_9665) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] + (28 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor9
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
                    _198 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _209 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _198 + _209 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_209)] = mem[ceil32(return_data.size) + _198 + 576 len ceil32(_209)]
                    if ceil32(_209) <= _209:
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9415 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9502 = mem[_9415]
                        require mem[_9415] <= test266151307()
                        require _9415 + mem[_9415] + 31 < _9415 + return_data.size
                        _9662 = mem[_9415 + mem[_9415]]
                        require mem[_9415 + mem[_9415]] <= test266151307()
                        require _9415 + ceil32(return_data.size) + ceil32(mem[_9415 + mem[_9415]]) + 32 <= test266151307() and ceil32(mem[_9415 + mem[_9415]]) + 32 >= 0
                        mem[64] = _9415 + ceil32(return_data.size) + ceil32(mem[_9415 + mem[_9415]]) + 32
                        mem[_9415 + ceil32(return_data.size)] = _9662
                        require _9502 + _9662 + 32 <= return_data.size
                        mem[_9415 + ceil32(return_data.size) + 32 len ceil32(_9662)] = mem[_9415 + _9502 + 32 len ceil32(_9662)]
                        if ceil32(_9662) <= _9662:
                            _10494 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9662
                            mem[mem[64] + 128 len ceil32(_9662)] = mem[_9415 + ceil32(return_data.size) + 32 len ceil32(_9662)]
                            if ceil32(_9662) > _9662:
                                mem[mem[64] + _9662 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10494 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10494 + ceil32(_9662) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9415 + ceil32(return_data.size) + _9662 + 32] = 0
                            _10526 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9662
                            mem[mem[64] + 128 len ceil32(_9662)] = mem[_9415 + ceil32(return_data.size) + 32 len ceil32(_9662)]
                            if ceil32(_9662) > _9662:
                                mem[mem[64] + _9662 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10526 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10526 + ceil32(_9662) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _209 + 576] = 0
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
                        address(stor8[stor9].field_768) = msg.sender
                        address(stor8[stor9].field_1024) = uint64(arg1) << 96
                        stor8[stor9][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor8[stor9].field_1536 = 72 * arg2 / 100
                        stor8[stor9].field_1792 = 0
                        stor8[stor9].field_2048 = block.timestamp
                        stor8[stor9].field_2304 = percent
                        stor8[stor9].field_2560 = 0
                        stor8[stor9].field_2816 = 0
                        stor8[stor9].field_3072 = 0
                        address(stor8[stor9].field_3328) = viewSuperOwner
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
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
                        _9418 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9503 = mem[_9418]
                        require mem[_9418] <= test266151307()
                        require _9418 + mem[_9418] + 31 < _9418 + return_data.size
                        _9663 = mem[_9418 + mem[_9418]]
                        require mem[_9418 + mem[_9418]] <= test266151307()
                        require _9418 + ceil32(return_data.size) + ceil32(mem[_9418 + mem[_9418]]) + 32 <= test266151307() and ceil32(mem[_9418 + mem[_9418]]) + 32 >= 0
                        mem[64] = _9418 + ceil32(return_data.size) + ceil32(mem[_9418 + mem[_9418]]) + 32
                        mem[_9418 + ceil32(return_data.size)] = _9663
                        require _9503 + _9663 + 32 <= return_data.size
                        mem[_9418 + ceil32(return_data.size) + 32 len ceil32(_9663)] = mem[_9418 + _9503 + 32 len ceil32(_9663)]
                        if ceil32(_9663) <= _9663:
                            _10495 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9663
                            mem[mem[64] + 128 len ceil32(_9663)] = mem[_9418 + ceil32(return_data.size) + 32 len ceil32(_9663)]
                            if ceil32(_9663) > _9663:
                                mem[mem[64] + _9663 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10495 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10495 + ceil32(_9663) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_9418 + ceil32(return_data.size) + _9663 + 32] = 0
                            _10527 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _9663
                            mem[mem[64] + 128 len ceil32(_9663)] = mem[_9418 + ceil32(return_data.size) + 32 len ceil32(_9663)]
                            if ceil32(_9663) > _9663:
                                mem[mem[64] + _9663 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_10527 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _10527 + ceil32(_9663) + -mem[64] + 128], msg.sender, arg1
}



}
