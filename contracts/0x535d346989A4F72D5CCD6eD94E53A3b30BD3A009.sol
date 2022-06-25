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
uint256 percent;
uint256 sub_e2afe3bb;
uint256 stor4;
uint256 sub_93002f02;
uint256 sub_da546cb2;
uint256 comission;
array of uint256 sub_002b5c0a;
mapping of uint8 stor9;
mapping of address cashbackcode;
mapping of uint256 sub_666a7370;
array of uint256 sub_11a3311c;
mapping of uint256 sub_a54f12e4;
mapping of struct stor14;
mapping of uint256 sub_99613956;
mapping of uint256 sub_6a37f573;
mapping of uint256 sub_0d826c0b;
mapping of uint256 sub_bb142c2d;
mapping of uint256 sub_d76ca047;
mapping of uint256 sub_910592de;
array of address sub_1c019a52;

function sub_002b5c0a(?) {
    return sub_002b5c0a[arg1][0 len sub_002b5c0a[arg1].length]
}

function sub_0d826c0b(?) {
    require calldata.size - 4 >= 32
    return sub_0d826c0b[arg1]
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
    return bool(stor9[arg1])
}

function cashbackcode(address arg1) {
    require calldata.size - 4 >= 32
    return cashbackcode[arg1]
}

function sub_666a7370(?) {
    require calldata.size - 4 >= 32
    return sub_666a7370[arg1]
}

function sub_6a37f573(?) {
    require calldata.size - 4 >= 32
    return sub_6a37f573[arg1]
}

function percent() {
    return percent
}

function blockedContract() {
    return bool(uint8(stor0.field_160))
}

function sub_910592de(?) {
    require calldata.size - 4 >= 64
    return sub_910592de[arg1][arg2]
}

function sub_93002f02(?) {
    return sub_93002f02
}

function sub_99613956(?) {
    require calldata.size - 4 >= 32
    return sub_99613956[arg1]
}

function sub_a54f12e4(?) {
    require calldata.size - 4 >= 32
    return sub_a54f12e4[address(arg1)]
}

function sub_bb142c2d(?) {
    require calldata.size - 4 >= 64
    return sub_bb142c2d[arg1][arg2]
}

function viewSuperOwner() {
    return viewSuperOwner
}

function sub_d76ca047(?) {
    require calldata.size - 4 >= 64
    return sub_d76ca047[arg1][arg2]
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

function sub_a0493521(?) {
    require calldata.size - 4 >= 64
    require msg.sender == viewSuperOwner
    sub_99613956[address(arg1)] = arg2
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

function sub_79883bba(?) {
    require calldata.size - 4 >= 32
    require msg.sender == viewSuperOwner
    require arg1 >= 180
    sub_e2afe3bb = 24 * 3600 * arg1
}

function sub_fc1a92a0(?) {
    require calldata.size - 4 >= 32
    require msg.sender == viewSuperOwner
    require arg1 <= 12
    comission = arg1
    percent = arg1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == viewSuperOwner
    require arg1 != viewSuperOwner
    viewSuperOwner = arg1
    emit 0x178eb363: viewSuperOwner
}

function sub_4c3970de(?) {
    require calldata.size - 4 >= 96
    require msg.sender == viewSuperOwner
    stor9[address(arg1)] = uint8(arg2)
    sub_99613956[address(arg1)] = arg3
    emit 0xf10649bf: arg2, arg3, arg1
}

function CashbackCode(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 != msg.sender
    if not cashbackcode[address(msg.sender)]:
        cashbackcode[address(msg.sender)] = arg1
        emit 0x3bf019f5: arg1, msg.sender
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
    while idx < stor4:
        mem[0] = idx
        mem[32] = 14
        if address(stor14[idx].field_768) != msg.sender:
            s = sha3(idx, 14)
            idx = idx + 1
            s = s
            continue 
        if address(stor14[idx].field_1024) != arg1:
            s = sha3(idx, 14)
            idx = idx + 1
            s = s
            continue 
        s = sha3(idx, 14)
        idx = idx + 1
        s = s + stor14[idx].field_256
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
    mem[128] = stor14[arg1][5].field_0
    idx = 128
    s = 0
    while stor14[arg1][5].length + 96 > idx:
        mem[idx + 32] = stor14[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor14[arg1].field_0, 
           address(stor14[arg1].field_768),
           address(stor14[arg1].field_1024),
           stor14[arg1].field_256,
           stor14[arg1].field_512,
           Array(len=stor14[arg1][5].length, data=mem[128 len ceil32(stor14[arg1][5].length)]),
           stor14[arg1].field_1536,
           stor14[arg1].field_2048,
           stor14[arg1].field_2304,
           stor14[arg1].field_2560,
           stor14[arg1].field_2816,
           address(stor14[arg1].field_3328)
}

function WithdrawAffiliate(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2
    require arg1 == msg.sender
    require sub_d76ca047[address(msg.sender)][address(arg2)] <= sub_666a7370[address(arg2)]
    sub_666a7370[address(arg2)] -= sub_d76ca047[address(msg.sender)][address(arg2)]
    sub_d76ca047[address(msg.sender)][address(arg2)] = 0
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= sub_d76ca047[address(msg.sender)][address(arg2)]
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), sub_d76ca047[address(msg.sender)][address(arg2)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_99f57e05(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == viewSuperOwner
    mem[0] = 0
    mem[32] = 13
    if sub_a54f12e4[0] <= 0:
        idx = 0
        s = 0
        t = 0
        t = stor[sha3(mem[0 len 64])]
        while idx < sub_1c019a52.length:
            mem[0] = address(sub_1c019a52[idx])
            mem[32] = 13
            if sub_a54f12e4[address(stor21[idx])] <= 0:
                idx = idx + 1
                s = s
                t = address(sub_1c019a52[idx])
                t = t
                continue 
            mem[0] = address(sub_1c019a52[idx])
            mem[32] = 13
            sub_a54f12e4[address(stor21[idx])] = 0
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = sub_a54f12e4[address(stor21[idx])]
            require ext_code.size(address(sub_1c019a52[idx]))
            call address(sub_1c019a52[idx]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_a54f12e4[address(stor21[idx])]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            idx = idx + 1
            s = address(sub_1c019a52[idx])
            t = address(sub_1c019a52[idx])
            t = sub_a54f12e4[address(stor21[idx])]
            continue 
    else:
        if sub_a54f12e4[0] > eth.balance(this.address):
            idx = 0
            s = 0
            t = 0
            t = stor[sha3(mem[0 len 64])]
            while idx < sub_1c019a52.length:
                mem[0] = address(sub_1c019a52[idx])
                mem[32] = 13
                if sub_a54f12e4[address(stor21[idx])] <= 0:
                    idx = idx + 1
                    s = s
                    t = address(sub_1c019a52[idx])
                    t = t
                    continue 
                mem[0] = address(sub_1c019a52[idx])
                mem[32] = 13
                sub_a54f12e4[address(stor21[idx])] = 0
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = sub_a54f12e4[address(stor21[idx])]
                require ext_code.size(address(sub_1c019a52[idx]))
                call address(sub_1c019a52[idx]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_a54f12e4[address(stor21[idx])]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = idx + 1
                s = address(sub_1c019a52[idx])
                t = address(sub_1c019a52[idx])
                t = sub_a54f12e4[address(stor21[idx])]
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
                mem[32] = 13
                if sub_a54f12e4[address(stor21[idx])] <= 0:
                    idx = idx + 1
                    s = s
                    t = address(sub_1c019a52[idx])
                    t = t
                    continue 
                mem[0] = address(sub_1c019a52[idx])
                mem[32] = 13
                sub_a54f12e4[address(stor21[idx])] = 0
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = sub_a54f12e4[address(stor21[idx])]
                require ext_code.size(address(sub_1c019a52[idx]))
                call address(sub_1c019a52[idx]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_a54f12e4[address(stor21[idx])]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = idx + 1
                s = address(sub_1c019a52[idx])
                t = address(sub_1c019a52[idx])
                t = sub_a54f12e4[address(stor21[idx])]
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
    while idx < stor4:
        mem[0] = idx
        mem[32] = 14
        if not stor14[idx].field_0:
            s = sha3(idx, 14)
            idx = idx + 1
            s = s
            continue 
        if not arg1:
            require sub_0d826c0b[address(stor14[idx].field_1024)] + stor14[idx].field_1536 >= sub_0d826c0b[address(stor14[idx].field_1024)]
            mem[0] = address(stor14[idx].field_1024)
            mem[32] = 17
            sub_0d826c0b[address(stor14[idx].field_1024)] += stor14[idx].field_1536
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor14[idx].field_1024))
            call address(stor14[idx].field_1024).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_67] >= stor14[idx].field_1536
        else:
            if address(stor14[idx].field_1024) == stor1:
                require sub_0d826c0b[address(stor14[idx].field_1024)] + stor14[idx].field_1536 >= sub_0d826c0b[address(stor14[idx].field_1024)]
                mem[0] = address(stor14[idx].field_1024)
                mem[32] = 17
                sub_0d826c0b[address(stor14[idx].field_1024)] += stor14[idx].field_1536
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor14[idx].field_1024))
                call address(stor14[idx].field_1024).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _68 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_68] >= stor14[idx].field_1536
            else:
                if arg1:
                    s = sha3(idx, 14)
                    idx = idx + 1
                    s = s
                    continue 
                require sub_0d826c0b[address(stor14[idx].field_1024)] + stor14[idx].field_1536 >= sub_0d826c0b[address(stor14[idx].field_1024)]
                mem[0] = address(stor14[idx].field_1024)
                mem[32] = 17
                sub_0d826c0b[address(stor14[idx].field_1024)] += stor14[idx].field_1536
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor14[idx].field_1024))
                call address(stor14[idx].field_1024).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _69 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_69] >= stor14[idx].field_1536
        mem[mem[64] + 4] = address(stor14[idx].field_768)
        mem[mem[64] + 36] = stor14[idx].field_1536
        require ext_code.size(address(stor14[idx].field_1024))
        call address(stor14[idx].field_1024).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor14[idx].field_768), stor14[idx].field_1536
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        stor14[idx].field_3072 = stor14[idx].field_1536
        stor14[idx].field_1536 = 0
        stor14[idx].field_2048 = block.timestamp
        if not stor14[idx].field_256:
            stor14[idx].field_2816 = 0
        else:
            require stor14[idx].field_256
            require 88 * stor14[idx].field_256 / stor14[idx].field_256 == 88
            stor14[idx].field_2816 = 88 * stor14[idx].field_256 / 100
        stor14[idx].field_2560 = 880000 * 10^18
        require sub_0d826c0b[address(stor14[idx].field_1024)] + stor14[idx].field_1536 >= sub_0d826c0b[address(stor14[idx].field_1024)]
        sub_0d826c0b[address(stor14[idx].field_1024)] += stor14[idx].field_1536
        mem[0] = address(stor14[idx].field_1024)
        mem[32] = 11
        sub_666a7370[address(stor14[idx].field_1024)] = 0
        sub_93002f02--
        s = sha3(idx, 14)
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
            mem[0] = 21
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
            mem[32] = 13
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
        mem[_99 + 32] = (32 * _107) + 128
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
    mem[128 len 32 * sub_1c019a52.length] = code.data[20540 len 32 * sub_1c019a52.length]
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
            mem[0] = 21
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
            mem[32] = 13
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
    mem[_102 + 32 len 32 * sub_1c019a52.length] = code.data[20540 len 32 * sub_1c019a52.length]
    s = 0
    idx = 0
    while idx < sub_1c019a52.length:
        mem[0] = 21
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
        mem[32] = 13
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
    mem[_198 + 32] = (32 * _212) + 128
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
    require arg2 <= sub_99613956[address(arg1)]
    require stor9[address(arg1)]
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
            if not cashbackcode[address(msg.sender)]:
                if not arg2:
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                    mem[ceil32(return_data.size) + 96] = stor4
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
                    _206 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _272 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _206 + _272 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_272)] = mem[ceil32(return_data.size) + _206 + 576 len ceil32(_272)]
                    if ceil32(_272) <= _272:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 0
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23241 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23305 = mem[_23241]
                        require mem[_23241] <= test266151307()
                        require _23241 + mem[_23241] + 31 < _23241 + return_data.size
                        _23369 = mem[_23241 + mem[_23241]]
                        require mem[_23241 + mem[_23241]] <= test266151307()
                        require _23241 + ceil32(return_data.size) + ceil32(mem[_23241 + mem[_23241]]) + 32 <= test266151307() and ceil32(mem[_23241 + mem[_23241]]) + 32 >= 0
                        mem[64] = _23241 + ceil32(return_data.size) + ceil32(mem[_23241 + mem[_23241]]) + 32
                        mem[_23241 + ceil32(return_data.size)] = _23369
                        require _23305 + _23369 + 32 <= return_data.size
                        mem[_23241 + ceil32(return_data.size) + 32 len ceil32(_23369)] = mem[_23241 + _23305 + 32 len ceil32(_23369)]
                        if ceil32(_23369) <= _23369:
                            _25033 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23369
                            mem[mem[64] + 128 len ceil32(_23369)] = mem[_23241 + ceil32(return_data.size) + 32 len ceil32(_23369)]
                            if ceil32(_23369) > _23369:
                                mem[_25033 + _23369 + 128] = 0
                            mem[_25033 + 32] = arg2
                            mem[_25033 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25033 + ceil32(_23369) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23241 + ceil32(return_data.size) + _23369 + 32] = 0
                            _25097 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23369
                            mem[mem[64] + 128 len ceil32(_23369)] = mem[_23241 + ceil32(return_data.size) + 32 len ceil32(_23369)]
                            if ceil32(_23369) > _23369:
                                mem[mem[64] + _23369 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25097 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25097 + ceil32(_23369) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _272 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 0
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23242 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23306 = mem[_23242]
                        require mem[_23242] <= test266151307()
                        require _23242 + mem[_23242] + 31 < _23242 + return_data.size
                        _23370 = mem[_23242 + mem[_23242]]
                        require mem[_23242 + mem[_23242]] <= test266151307()
                        require _23242 + ceil32(return_data.size) + ceil32(mem[_23242 + mem[_23242]]) + 32 <= test266151307() and ceil32(mem[_23242 + mem[_23242]]) + 32 >= 0
                        mem[64] = _23242 + ceil32(return_data.size) + ceil32(mem[_23242 + mem[_23242]]) + 32
                        mem[_23242 + ceil32(return_data.size)] = _23370
                        require _23306 + _23370 + 32 <= return_data.size
                        mem[_23242 + ceil32(return_data.size) + 32 len ceil32(_23370)] = mem[_23242 + _23306 + 32 len ceil32(_23370)]
                        if ceil32(_23370) <= _23370:
                            _25034 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23370
                            mem[mem[64] + 128 len ceil32(_23370)] = mem[_23242 + ceil32(return_data.size) + 32 len ceil32(_23370)]
                            if ceil32(_23370) > _23370:
                                mem[_25034 + _23370 + 128] = 0
                            mem[_25034 + 32] = arg2
                            mem[_25034 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25034 + ceil32(_23370) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23242 + ceil32(return_data.size) + _23370 + 32] = 0
                            _25098 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23370
                            mem[mem[64] + 128 len ceil32(_23370)] = mem[_23242 + ceil32(return_data.size) + 32 len ceil32(_23370)]
                            if ceil32(_23370) > _23370:
                                mem[mem[64] + _23370 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25098 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25098 + ceil32(_23370) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                    mem[ceil32(return_data.size) + 96] = stor4
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
                    _255 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _325 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _255 + _325 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_325)] = mem[ceil32(return_data.size) + _255 + 576 len ceil32(_325)]
                    if ceil32(_325) <= _325:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 72 * arg2 / 100
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23239 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23303 = mem[_23239]
                        require mem[_23239] <= test266151307()
                        require _23239 + mem[_23239] + 31 < _23239 + return_data.size
                        _23367 = mem[_23239 + mem[_23239]]
                        require mem[_23239 + mem[_23239]] <= test266151307()
                        require _23239 + ceil32(return_data.size) + ceil32(mem[_23239 + mem[_23239]]) + 32 <= test266151307() and ceil32(mem[_23239 + mem[_23239]]) + 32 >= 0
                        mem[64] = _23239 + ceil32(return_data.size) + ceil32(mem[_23239 + mem[_23239]]) + 32
                        mem[_23239 + ceil32(return_data.size)] = _23367
                        require _23303 + _23367 + 32 <= return_data.size
                        mem[_23239 + ceil32(return_data.size) + 32 len ceil32(_23367)] = mem[_23239 + _23303 + 32 len ceil32(_23367)]
                        if ceil32(_23367) <= _23367:
                            _25031 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23367
                            mem[mem[64] + 128 len ceil32(_23367)] = mem[_23239 + ceil32(return_data.size) + 32 len ceil32(_23367)]
                            if ceil32(_23367) > _23367:
                                mem[mem[64] + _23367 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25031 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25031 + ceil32(_23367) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23239 + ceil32(return_data.size) + _23367 + 32] = 0
                            _25095 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23367
                            mem[mem[64] + 128 len ceil32(_23367)] = mem[_23239 + ceil32(return_data.size) + 32 len ceil32(_23367)]
                            if ceil32(_23367) > _23367:
                                mem[mem[64] + _23367 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25095 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25095 + ceil32(_23367) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _325 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 72 * arg2 / 100
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23240 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23304 = mem[_23240]
                        require mem[_23240] <= test266151307()
                        require _23240 + mem[_23240] + 31 < _23240 + return_data.size
                        _23368 = mem[_23240 + mem[_23240]]
                        require mem[_23240 + mem[_23240]] <= test266151307()
                        require _23240 + ceil32(return_data.size) + ceil32(mem[_23240 + mem[_23240]]) + 32 <= test266151307() and ceil32(mem[_23240 + mem[_23240]]) + 32 >= 0
                        mem[64] = _23240 + ceil32(return_data.size) + ceil32(mem[_23240 + mem[_23240]]) + 32
                        mem[_23240 + ceil32(return_data.size)] = _23368
                        require _23304 + _23368 + 32 <= return_data.size
                        mem[_23240 + ceil32(return_data.size) + 32 len ceil32(_23368)] = mem[_23240 + _23304 + 32 len ceil32(_23368)]
                        if ceil32(_23368) <= _23368:
                            _25032 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23368
                            mem[mem[64] + 128 len ceil32(_23368)] = mem[_23240 + ceil32(return_data.size) + 32 len ceil32(_23368)]
                            if ceil32(_23368) > _23368:
                                mem[mem[64] + _23368 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25032 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25032 + ceil32(_23368) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23240 + ceil32(return_data.size) + _23368 + 32] = 0
                            _25096 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23368
                            mem[mem[64] + 128 len ceil32(_23368)] = mem[_23240 + ceil32(return_data.size) + 32 len ceil32(_23368)]
                            if ceil32(_23368) > _23368:
                                mem[mem[64] + _23368 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25096 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25096 + ceil32(_23368) + -mem[64] + 128], msg.sender, arg1
            else:
                require 0 <= arg2
                if not arg2:
                    if sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor10[address(msg.sender)]][address(arg1)] >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                        mem[ceil32(return_data.size) + 96] = stor4
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
                        _254 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                        _324 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                        mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require _254 + _324 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_324)] = mem[ceil32(return_data.size) + _254 + 576 len ceil32(_324)]
                        if ceil32(_324) <= _324:
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2
                            mem[ceil32(return_data.size) + 320] = 0
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2
                            stor14[stor4].field_1792 = 0
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23237 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23301 = mem[_23237]
                            require mem[_23237] <= test266151307()
                            require _23237 + mem[_23237] + 31 < _23237 + return_data.size
                            _23365 = mem[_23237 + mem[_23237]]
                            require mem[_23237 + mem[_23237]] <= test266151307()
                            require _23237 + ceil32(return_data.size) + ceil32(mem[_23237 + mem[_23237]]) + 32 <= test266151307() and ceil32(mem[_23237 + mem[_23237]]) + 32 >= 0
                            mem[64] = _23237 + ceil32(return_data.size) + ceil32(mem[_23237 + mem[_23237]]) + 32
                            mem[_23237 + ceil32(return_data.size)] = _23365
                            require _23301 + _23365 + 32 <= return_data.size
                            mem[_23237 + ceil32(return_data.size) + 32 len ceil32(_23365)] = mem[_23237 + _23301 + 32 len ceil32(_23365)]
                            if ceil32(_23365) <= _23365:
                                _25029 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23365
                                mem[mem[64] + 128 len ceil32(_23365)] = mem[_23237 + ceil32(return_data.size) + 32 len ceil32(_23365)]
                                if ceil32(_23365) > _23365:
                                    mem[mem[64] + _23365 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25029 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25029 + ceil32(_23365) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23237 + ceil32(return_data.size) + _23365 + 32] = 0
                                _25093 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23365
                                mem[mem[64] + 128 len ceil32(_23365)] = mem[_23237 + ceil32(return_data.size) + 32 len ceil32(_23365)]
                                if ceil32(_23365) > _23365:
                                    mem[_25093 + _23365 + 128] = 0
                                mem[_25093 + 32] = arg2
                                mem[_25093 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25093 + ceil32(_23365) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[(2 * ceil32(return_data.size)) + _324 + 576] = 0
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2
                            mem[ceil32(return_data.size) + 320] = 0
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2
                            stor14[stor4].field_1792 = 0
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23238 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23302 = mem[_23238]
                            require mem[_23238] <= test266151307()
                            require _23238 + mem[_23238] + 31 < _23238 + return_data.size
                            _23366 = mem[_23238 + mem[_23238]]
                            require mem[_23238 + mem[_23238]] <= test266151307()
                            require _23238 + ceil32(return_data.size) + ceil32(mem[_23238 + mem[_23238]]) + 32 <= test266151307() and ceil32(mem[_23238 + mem[_23238]]) + 32 >= 0
                            mem[64] = _23238 + ceil32(return_data.size) + ceil32(mem[_23238 + mem[_23238]]) + 32
                            mem[_23238 + ceil32(return_data.size)] = _23366
                            require _23302 + _23366 + 32 <= return_data.size
                            mem[_23238 + ceil32(return_data.size) + 32 len ceil32(_23366)] = mem[_23238 + _23302 + 32 len ceil32(_23366)]
                            if ceil32(_23366) <= _23366:
                                _25030 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23366
                                mem[mem[64] + 128 len ceil32(_23366)] = mem[_23238 + ceil32(return_data.size) + 32 len ceil32(_23366)]
                                if ceil32(_23366) > _23366:
                                    mem[mem[64] + _23366 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25030 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25030 + ceil32(_23366) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23238 + ceil32(return_data.size) + _23366 + 32] = 0
                                _25094 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23366
                                mem[mem[64] + 128 len ceil32(_23366)] = mem[_23238 + ceil32(return_data.size) + 32 len ceil32(_23366)]
                                if ceil32(_23366) > _23366:
                                    mem[_25094 + _23366 + 128] = 0
                                mem[_25094 + 32] = arg2
                                mem[_25094 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25094 + ceil32(_23366) + -mem[64] + 128], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _507 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _582 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _507 + _582 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_582)] = mem[ceil32(return_data.size) + _507 + 576 len ceil32(_582)]
                            if ceil32(_582) <= _582:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23235 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23299 = mem[_23235]
                                require mem[_23235] <= test266151307()
                                require _23235 + mem[_23235] + 31 < _23235 + return_data.size
                                _23363 = mem[_23235 + mem[_23235]]
                                require mem[_23235 + mem[_23235]] <= test266151307()
                                require _23235 + ceil32(return_data.size) + ceil32(mem[_23235 + mem[_23235]]) + 32 <= test266151307() and ceil32(mem[_23235 + mem[_23235]]) + 32 >= 0
                                mem[64] = _23235 + ceil32(return_data.size) + ceil32(mem[_23235 + mem[_23235]]) + 32
                                mem[_23235 + ceil32(return_data.size)] = _23363
                                require _23299 + _23363 + 32 <= return_data.size
                                mem[_23235 + ceil32(return_data.size) + 32 len ceil32(_23363)] = mem[_23235 + _23299 + 32 len ceil32(_23363)]
                                if ceil32(_23363) <= _23363:
                                    _25027 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23363
                                    mem[mem[64] + 128 len ceil32(_23363)] = mem[_23235 + ceil32(return_data.size) + 32 len ceil32(_23363)]
                                    if ceil32(_23363) > _23363:
                                        mem[mem[64] + _23363 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25027 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25027 + ceil32(_23363) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23235 + ceil32(return_data.size) + _23363 + 32] = 0
                                    _25091 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23363
                                    mem[mem[64] + 128 len ceil32(_23363)] = mem[_23235 + ceil32(return_data.size) + 32 len ceil32(_23363)]
                                    if ceil32(_23363) > _23363:
                                        mem[mem[64] + _23363 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25091 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25091 + ceil32(_23363) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _582 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23236 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23300 = mem[_23236]
                                require mem[_23236] <= test266151307()
                                require _23236 + mem[_23236] + 31 < _23236 + return_data.size
                                _23364 = mem[_23236 + mem[_23236]]
                                require mem[_23236 + mem[_23236]] <= test266151307()
                                require _23236 + ceil32(return_data.size) + ceil32(mem[_23236 + mem[_23236]]) + 32 <= test266151307() and ceil32(mem[_23236 + mem[_23236]]) + 32 >= 0
                                mem[64] = _23236 + ceil32(return_data.size) + ceil32(mem[_23236 + mem[_23236]]) + 32
                                mem[_23236 + ceil32(return_data.size)] = _23364
                                require _23300 + _23364 + 32 <= return_data.size
                                mem[_23236 + ceil32(return_data.size) + 32 len ceil32(_23364)] = mem[_23236 + _23300 + 32 len ceil32(_23364)]
                                if ceil32(_23364) <= _23364:
                                    _25028 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23364
                                    mem[mem[64] + 128 len ceil32(_23364)] = mem[_23236 + ceil32(return_data.size) + 32 len ceil32(_23364)]
                                    if ceil32(_23364) > _23364:
                                        mem[mem[64] + _23364 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25028 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25028 + ceil32(_23364) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23236 + ceil32(return_data.size) + _23364 + 32] = 0
                                    _25092 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23364
                                    mem[mem[64] + 128 len ceil32(_23364)] = mem[_23236 + ceil32(return_data.size) + 32 len ceil32(_23364)]
                                    if ceil32(_23364) > _23364:
                                        mem[_25092 + _23364 + 128] = 0
                                    mem[_25092 + 32] = arg2
                                    mem[_25092 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25092 + ceil32(_23364) + -mem[64] + 128], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_a54f12e4[address(arg1)] - (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] -= 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _552 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _709 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _552 + _709 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_709)] = mem[ceil32(return_data.size) + _552 + 576 len ceil32(_709)]
                            if ceil32(_709) <= _709:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23233 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23297 = mem[_23233]
                                require mem[_23233] <= test266151307()
                                require _23233 + mem[_23233] + 31 < _23233 + return_data.size
                                _23361 = mem[_23233 + mem[_23233]]
                                require mem[_23233 + mem[_23233]] <= test266151307()
                                require _23233 + ceil32(return_data.size) + ceil32(mem[_23233 + mem[_23233]]) + 32 <= test266151307() and ceil32(mem[_23233 + mem[_23233]]) + 32 >= 0
                                mem[64] = _23233 + ceil32(return_data.size) + ceil32(mem[_23233 + mem[_23233]]) + 32
                                mem[_23233 + ceil32(return_data.size)] = _23361
                                require _23297 + _23361 + 32 <= return_data.size
                                mem[_23233 + ceil32(return_data.size) + 32 len ceil32(_23361)] = mem[_23233 + _23297 + 32 len ceil32(_23361)]
                                if ceil32(_23361) <= _23361:
                                    _25025 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23361
                                    mem[mem[64] + 128 len ceil32(_23361)] = mem[_23233 + ceil32(return_data.size) + 32 len ceil32(_23361)]
                                    if ceil32(_23361) > _23361:
                                        mem[_25025 + _23361 + 128] = 0
                                    mem[_25025 + 32] = arg2
                                    mem[_25025 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25025 + ceil32(_23361) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23233 + ceil32(return_data.size) + _23361 + 32] = 0
                                    _25089 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23361
                                    mem[mem[64] + 128 len ceil32(_23361)] = mem[_23233 + ceil32(return_data.size) + 32 len ceil32(_23361)]
                                    if ceil32(_23361) > _23361:
                                        mem[mem[64] + _23361 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25089 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25089 + ceil32(_23361) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _709 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23234 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23298 = mem[_23234]
                                require mem[_23234] <= test266151307()
                                require _23234 + mem[_23234] + 31 < _23234 + return_data.size
                                _23362 = mem[_23234 + mem[_23234]]
                                require mem[_23234 + mem[_23234]] <= test266151307()
                                require _23234 + ceil32(return_data.size) + ceil32(mem[_23234 + mem[_23234]]) + 32 <= test266151307() and ceil32(mem[_23234 + mem[_23234]]) + 32 >= 0
                                mem[64] = _23234 + ceil32(return_data.size) + ceil32(mem[_23234 + mem[_23234]]) + 32
                                mem[_23234 + ceil32(return_data.size)] = _23362
                                require _23298 + _23362 + 32 <= return_data.size
                                mem[_23234 + ceil32(return_data.size) + 32 len ceil32(_23362)] = mem[_23234 + _23298 + 32 len ceil32(_23362)]
                                if ceil32(_23362) <= _23362:
                                    _25026 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23362
                                    mem[mem[64] + 128 len ceil32(_23362)] = mem[_23234 + ceil32(return_data.size) + 32 len ceil32(_23362)]
                                    if ceil32(_23362) > _23362:
                                        mem[mem[64] + _23362 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25026 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25026 + ceil32(_23362) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23234 + ceil32(return_data.size) + _23362 + 32] = 0
                                    _25090 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23362
                                    mem[mem[64] + 128 len ceil32(_23362)] = mem[_23234 + ceil32(return_data.size) + 32 len ceil32(_23362)]
                                    if ceil32(_23362) > _23362:
                                        mem[mem[64] + _23362 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25090 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25090 + ceil32(_23362) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    if sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor10[address(msg.sender)]][address(arg1)] >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                        mem[ceil32(return_data.size) + 96] = stor4
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
                        _295 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                        _362 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                        mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require _295 + _362 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_362)] = mem[ceil32(return_data.size) + _295 + 576 len ceil32(_362)]
                        if ceil32(_362) <= _362:
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2
                            mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2
                            stor14[stor4].field_1792 = 16 * arg2 / 100
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23231 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23295 = mem[_23231]
                            require mem[_23231] <= test266151307()
                            require _23231 + mem[_23231] + 31 < _23231 + return_data.size
                            _23359 = mem[_23231 + mem[_23231]]
                            require mem[_23231 + mem[_23231]] <= test266151307()
                            require _23231 + ceil32(return_data.size) + ceil32(mem[_23231 + mem[_23231]]) + 32 <= test266151307() and ceil32(mem[_23231 + mem[_23231]]) + 32 >= 0
                            mem[64] = _23231 + ceil32(return_data.size) + ceil32(mem[_23231 + mem[_23231]]) + 32
                            mem[_23231 + ceil32(return_data.size)] = _23359
                            require _23295 + _23359 + 32 <= return_data.size
                            mem[_23231 + ceil32(return_data.size) + 32 len ceil32(_23359)] = mem[_23231 + _23295 + 32 len ceil32(_23359)]
                            if ceil32(_23359) <= _23359:
                                _25023 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23359
                                mem[mem[64] + 128 len ceil32(_23359)] = mem[_23231 + ceil32(return_data.size) + 32 len ceil32(_23359)]
                                if ceil32(_23359) > _23359:
                                    mem[mem[64] + _23359 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25023 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25023 + ceil32(_23359) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23231 + ceil32(return_data.size) + _23359 + 32] = 0
                                _25087 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23359
                                mem[mem[64] + 128 len ceil32(_23359)] = mem[_23231 + ceil32(return_data.size) + 32 len ceil32(_23359)]
                                if ceil32(_23359) > _23359:
                                    mem[mem[64] + _23359 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25087 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25087 + ceil32(_23359) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[(2 * ceil32(return_data.size)) + _362 + 576] = 0
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2
                            mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2
                            stor14[stor4].field_1792 = 16 * arg2 / 100
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23232 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23296 = mem[_23232]
                            require mem[_23232] <= test266151307()
                            require _23232 + mem[_23232] + 31 < _23232 + return_data.size
                            _23360 = mem[_23232 + mem[_23232]]
                            require mem[_23232 + mem[_23232]] <= test266151307()
                            require _23232 + ceil32(return_data.size) + ceil32(mem[_23232 + mem[_23232]]) + 32 <= test266151307() and ceil32(mem[_23232 + mem[_23232]]) + 32 >= 0
                            mem[64] = _23232 + ceil32(return_data.size) + ceil32(mem[_23232 + mem[_23232]]) + 32
                            mem[_23232 + ceil32(return_data.size)] = _23360
                            require _23296 + _23360 + 32 <= return_data.size
                            mem[_23232 + ceil32(return_data.size) + 32 len ceil32(_23360)] = mem[_23232 + _23296 + 32 len ceil32(_23360)]
                            if ceil32(_23360) <= _23360:
                                _25024 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23360
                                mem[mem[64] + 128 len ceil32(_23360)] = mem[_23232 + ceil32(return_data.size) + 32 len ceil32(_23360)]
                                if ceil32(_23360) > _23360:
                                    mem[_25024 + _23360 + 128] = 0
                                mem[_25024 + 32] = arg2
                                mem[_25024 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25024 + ceil32(_23360) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23232 + ceil32(return_data.size) + _23360 + 32] = 0
                                _25088 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23360
                                mem[mem[64] + 128 len ceil32(_23360)] = mem[_23232 + ceil32(return_data.size) + 32 len ceil32(_23360)]
                                if ceil32(_23360) > _23360:
                                    mem[mem[64] + _23360 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25088 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25088 + ceil32(_23360) + -mem[64] + 128], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _551 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _700 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _551 + _700 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_700)] = mem[ceil32(return_data.size) + _551 + 576 len ceil32(_700)]
                            if ceil32(_700) <= _700:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23229 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23293 = mem[_23229]
                                require mem[_23229] <= test266151307()
                                require _23229 + mem[_23229] + 31 < _23229 + return_data.size
                                _23357 = mem[_23229 + mem[_23229]]
                                require mem[_23229 + mem[_23229]] <= test266151307()
                                require _23229 + ceil32(return_data.size) + ceil32(mem[_23229 + mem[_23229]]) + 32 <= test266151307() and ceil32(mem[_23229 + mem[_23229]]) + 32 >= 0
                                mem[64] = _23229 + ceil32(return_data.size) + ceil32(mem[_23229 + mem[_23229]]) + 32
                                mem[_23229 + ceil32(return_data.size)] = _23357
                                require _23293 + _23357 + 32 <= return_data.size
                                mem[_23229 + ceil32(return_data.size) + 32 len ceil32(_23357)] = mem[_23229 + _23293 + 32 len ceil32(_23357)]
                                if ceil32(_23357) <= _23357:
                                    _25021 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23357
                                    mem[mem[64] + 128 len ceil32(_23357)] = mem[_23229 + ceil32(return_data.size) + 32 len ceil32(_23357)]
                                    if ceil32(_23357) > _23357:
                                        mem[mem[64] + _23357 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25021 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25021 + ceil32(_23357) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23229 + ceil32(return_data.size) + _23357 + 32] = 0
                                    _25085 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23357
                                    mem[mem[64] + 128 len ceil32(_23357)] = mem[_23229 + ceil32(return_data.size) + 32 len ceil32(_23357)]
                                    if ceil32(_23357) > _23357:
                                        mem[_25085 + _23357 + 128] = 0
                                    mem[_25085 + 32] = arg2
                                    mem[_25085 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25085 + ceil32(_23357) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _700 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23230 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23294 = mem[_23230]
                                require mem[_23230] <= test266151307()
                                require _23230 + mem[_23230] + 31 < _23230 + return_data.size
                                _23358 = mem[_23230 + mem[_23230]]
                                require mem[_23230 + mem[_23230]] <= test266151307()
                                require _23230 + ceil32(return_data.size) + ceil32(mem[_23230 + mem[_23230]]) + 32 <= test266151307() and ceil32(mem[_23230 + mem[_23230]]) + 32 >= 0
                                mem[64] = _23230 + ceil32(return_data.size) + ceil32(mem[_23230 + mem[_23230]]) + 32
                                mem[_23230 + ceil32(return_data.size)] = _23358
                                require _23294 + _23358 + 32 <= return_data.size
                                mem[_23230 + ceil32(return_data.size) + 32 len ceil32(_23358)] = mem[_23230 + _23294 + 32 len ceil32(_23358)]
                                if ceil32(_23358) <= _23358:
                                    _25022 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23358
                                    mem[mem[64] + 128 len ceil32(_23358)] = mem[_23230 + ceil32(return_data.size) + 32 len ceil32(_23358)]
                                    if ceil32(_23358) > _23358:
                                        mem[mem[64] + _23358 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25022 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25022 + ceil32(_23358) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23230 + ceil32(return_data.size) + _23358 + 32] = 0
                                    _25086 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23358
                                    mem[mem[64] + 128 len ceil32(_23358)] = mem[_23230 + ceil32(return_data.size) + 32 len ceil32(_23358)]
                                    if ceil32(_23358) > _23358:
                                        mem[mem[64] + _23358 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25086 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25086 + ceil32(_23358) + -mem[64] + 128], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_a54f12e4[address(arg1)] - (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] -= 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _633 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _825 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _633 + _825 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_825)] = mem[ceil32(return_data.size) + _633 + 576 len ceil32(_825)]
                            if ceil32(_825) <= _825:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23227 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23291 = mem[_23227]
                                require mem[_23227] <= test266151307()
                                require _23227 + mem[_23227] + 31 < _23227 + return_data.size
                                _23355 = mem[_23227 + mem[_23227]]
                                require mem[_23227 + mem[_23227]] <= test266151307()
                                require _23227 + ceil32(return_data.size) + ceil32(mem[_23227 + mem[_23227]]) + 32 <= test266151307() and ceil32(mem[_23227 + mem[_23227]]) + 32 >= 0
                                mem[64] = _23227 + ceil32(return_data.size) + ceil32(mem[_23227 + mem[_23227]]) + 32
                                mem[_23227 + ceil32(return_data.size)] = _23355
                                require _23291 + _23355 + 32 <= return_data.size
                                mem[_23227 + ceil32(return_data.size) + 32 len ceil32(_23355)] = mem[_23227 + _23291 + 32 len ceil32(_23355)]
                                if ceil32(_23355) <= _23355:
                                    _25019 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23355
                                    mem[mem[64] + 128 len ceil32(_23355)] = mem[_23227 + ceil32(return_data.size) + 32 len ceil32(_23355)]
                                    if ceil32(_23355) > _23355:
                                        mem[mem[64] + _23355 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25019 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25019 + ceil32(_23355) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23227 + ceil32(return_data.size) + _23355 + 32] = 0
                                    _25083 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23355
                                    mem[mem[64] + 128 len ceil32(_23355)] = mem[_23227 + ceil32(return_data.size) + 32 len ceil32(_23355)]
                                    if ceil32(_23355) > _23355:
                                        mem[_25083 + _23355 + 128] = 0
                                    mem[_25083 + 32] = arg2
                                    mem[_25083 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25083 + ceil32(_23355) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _825 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23228 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23292 = mem[_23228]
                                require mem[_23228] <= test266151307()
                                require _23228 + mem[_23228] + 31 < _23228 + return_data.size
                                _23356 = mem[_23228 + mem[_23228]]
                                require mem[_23228 + mem[_23228]] <= test266151307()
                                require _23228 + ceil32(return_data.size) + ceil32(mem[_23228 + mem[_23228]]) + 32 <= test266151307() and ceil32(mem[_23228 + mem[_23228]]) + 32 >= 0
                                mem[64] = _23228 + ceil32(return_data.size) + ceil32(mem[_23228 + mem[_23228]]) + 32
                                mem[_23228 + ceil32(return_data.size)] = _23356
                                require _23292 + _23356 + 32 <= return_data.size
                                mem[_23228 + ceil32(return_data.size) + 32 len ceil32(_23356)] = mem[_23228 + _23292 + 32 len ceil32(_23356)]
                                if ceil32(_23356) <= _23356:
                                    _25020 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23356
                                    mem[mem[64] + 128 len ceil32(_23356)] = mem[_23228 + ceil32(return_data.size) + 32 len ceil32(_23356)]
                                    if ceil32(_23356) > _23356:
                                        mem[_25020 + _23356 + 128] = 0
                                    mem[_25020 + 32] = arg2
                                    mem[_25020 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25020 + ceil32(_23356) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23228 + ceil32(return_data.size) + _23356 + 32] = 0
                                    _25084 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23356
                                    mem[mem[64] + 128 len ceil32(_23356)] = mem[_23228 + ceil32(return_data.size) + 32 len ceil32(_23356)]
                                    if ceil32(_23356) > _23356:
                                        mem[mem[64] + _23356 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25084 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25084 + ceil32(_23356) + -mem[64] + 128], msg.sender, arg1
        else:
            require arg2
            require 28 * arg2 / arg2 == 28
            if not cashbackcode[address(msg.sender)]:
                if not arg2:
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] + (28 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                    mem[ceil32(return_data.size) + 96] = stor4
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
                    _250 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _319 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _250 + _319 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_319)] = mem[ceil32(return_data.size) + _250 + 576 len ceil32(_319)]
                    if ceil32(_319) <= _319:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 0
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23225 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23289 = mem[_23225]
                        require mem[_23225] <= test266151307()
                        require _23225 + mem[_23225] + 31 < _23225 + return_data.size
                        _23353 = mem[_23225 + mem[_23225]]
                        require mem[_23225 + mem[_23225]] <= test266151307()
                        require _23225 + ceil32(return_data.size) + ceil32(mem[_23225 + mem[_23225]]) + 32 <= test266151307() and ceil32(mem[_23225 + mem[_23225]]) + 32 >= 0
                        mem[64] = _23225 + ceil32(return_data.size) + ceil32(mem[_23225 + mem[_23225]]) + 32
                        mem[_23225 + ceil32(return_data.size)] = _23353
                        require _23289 + _23353 + 32 <= return_data.size
                        mem[_23225 + ceil32(return_data.size) + 32 len ceil32(_23353)] = mem[_23225 + _23289 + 32 len ceil32(_23353)]
                        if ceil32(_23353) <= _23353:
                            _25017 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23353
                            mem[mem[64] + 128 len ceil32(_23353)] = mem[_23225 + ceil32(return_data.size) + 32 len ceil32(_23353)]
                            if ceil32(_23353) > _23353:
                                mem[_25017 + _23353 + 128] = 0
                            mem[_25017 + 32] = arg2
                            mem[_25017 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25017 + ceil32(_23353) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23225 + ceil32(return_data.size) + _23353 + 32] = 0
                            _25081 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23353
                            mem[mem[64] + 128 len ceil32(_23353)] = mem[_23225 + ceil32(return_data.size) + 32 len ceil32(_23353)]
                            if ceil32(_23353) > _23353:
                                mem[_25081 + _23353 + 128] = 0
                            mem[_25081 + 32] = arg2
                            mem[_25081 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25081 + ceil32(_23353) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _319 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 0
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23226 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23290 = mem[_23226]
                        require mem[_23226] <= test266151307()
                        require _23226 + mem[_23226] + 31 < _23226 + return_data.size
                        _23354 = mem[_23226 + mem[_23226]]
                        require mem[_23226 + mem[_23226]] <= test266151307()
                        require _23226 + ceil32(return_data.size) + ceil32(mem[_23226 + mem[_23226]]) + 32 <= test266151307() and ceil32(mem[_23226 + mem[_23226]]) + 32 >= 0
                        mem[64] = _23226 + ceil32(return_data.size) + ceil32(mem[_23226 + mem[_23226]]) + 32
                        mem[_23226 + ceil32(return_data.size)] = _23354
                        require _23290 + _23354 + 32 <= return_data.size
                        mem[_23226 + ceil32(return_data.size) + 32 len ceil32(_23354)] = mem[_23226 + _23290 + 32 len ceil32(_23354)]
                        if ceil32(_23354) <= _23354:
                            _25018 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23354
                            mem[mem[64] + 128 len ceil32(_23354)] = mem[_23226 + ceil32(return_data.size) + 32 len ceil32(_23354)]
                            if ceil32(_23354) > _23354:
                                mem[mem[64] + _23354 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25018 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25018 + ceil32(_23354) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23226 + ceil32(return_data.size) + _23354 + 32] = 0
                            _25082 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23354
                            mem[mem[64] + 128 len ceil32(_23354)] = mem[_23226 + ceil32(return_data.size) + 32 len ceil32(_23354)]
                            if ceil32(_23354) > _23354:
                                mem[mem[64] + _23354 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25082 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25082 + ceil32(_23354) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] + (28 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                    mem[ceil32(return_data.size) + 96] = stor4
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
                    _294 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _361 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _294 + _361 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_361)] = mem[ceil32(return_data.size) + _294 + 576 len ceil32(_361)]
                    if ceil32(_361) <= _361:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 72 * arg2 / 100
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23223 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23287 = mem[_23223]
                        require mem[_23223] <= test266151307()
                        require _23223 + mem[_23223] + 31 < _23223 + return_data.size
                        _23351 = mem[_23223 + mem[_23223]]
                        require mem[_23223 + mem[_23223]] <= test266151307()
                        require _23223 + ceil32(return_data.size) + ceil32(mem[_23223 + mem[_23223]]) + 32 <= test266151307() and ceil32(mem[_23223 + mem[_23223]]) + 32 >= 0
                        mem[64] = _23223 + ceil32(return_data.size) + ceil32(mem[_23223 + mem[_23223]]) + 32
                        mem[_23223 + ceil32(return_data.size)] = _23351
                        require _23287 + _23351 + 32 <= return_data.size
                        mem[_23223 + ceil32(return_data.size) + 32 len ceil32(_23351)] = mem[_23223 + _23287 + 32 len ceil32(_23351)]
                        if ceil32(_23351) <= _23351:
                            _25015 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23351
                            mem[mem[64] + 128 len ceil32(_23351)] = mem[_23223 + ceil32(return_data.size) + 32 len ceil32(_23351)]
                            if ceil32(_23351) > _23351:
                                mem[mem[64] + _23351 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25015 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25015 + ceil32(_23351) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23223 + ceil32(return_data.size) + _23351 + 32] = 0
                            _25079 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23351
                            mem[mem[64] + 128 len ceil32(_23351)] = mem[_23223 + ceil32(return_data.size) + 32 len ceil32(_23351)]
                            if ceil32(_23351) > _23351:
                                mem[mem[64] + _23351 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25079 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25079 + ceil32(_23351) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _361 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 72 * arg2 / 100
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23224 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23288 = mem[_23224]
                        require mem[_23224] <= test266151307()
                        require _23224 + mem[_23224] + 31 < _23224 + return_data.size
                        _23352 = mem[_23224 + mem[_23224]]
                        require mem[_23224 + mem[_23224]] <= test266151307()
                        require _23224 + ceil32(return_data.size) + ceil32(mem[_23224 + mem[_23224]]) + 32 <= test266151307() and ceil32(mem[_23224 + mem[_23224]]) + 32 >= 0
                        mem[64] = _23224 + ceil32(return_data.size) + ceil32(mem[_23224 + mem[_23224]]) + 32
                        mem[_23224 + ceil32(return_data.size)] = _23352
                        require _23288 + _23352 + 32 <= return_data.size
                        mem[_23224 + ceil32(return_data.size) + 32 len ceil32(_23352)] = mem[_23224 + _23288 + 32 len ceil32(_23352)]
                        if ceil32(_23352) <= _23352:
                            _25016 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23352
                            mem[mem[64] + 128 len ceil32(_23352)] = mem[_23224 + ceil32(return_data.size) + 32 len ceil32(_23352)]
                            if ceil32(_23352) > _23352:
                                mem[mem[64] + _23352 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25016 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25016 + ceil32(_23352) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23224 + ceil32(return_data.size) + _23352 + 32] = 0
                            _25080 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23352
                            mem[mem[64] + 128 len ceil32(_23352)] = mem[_23224 + ceil32(return_data.size) + 32 len ceil32(_23352)]
                            if ceil32(_23352) > _23352:
                                mem[mem[64] + _23352 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25080 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25080 + ceil32(_23352) + -mem[64] + 128], msg.sender, arg1
            else:
                require 0 <= arg2
                if not arg2:
                    if sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor10[address(msg.sender)]][address(arg1)] >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                        mem[ceil32(return_data.size) + 96] = stor4
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
                        _293 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                        _360 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                        mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require _293 + _360 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_360)] = mem[ceil32(return_data.size) + _293 + 576 len ceil32(_360)]
                        if ceil32(_360) <= _360:
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2
                            mem[ceil32(return_data.size) + 320] = 0
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2
                            stor14[stor4].field_1792 = 0
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23221 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23285 = mem[_23221]
                            require mem[_23221] <= test266151307()
                            require _23221 + mem[_23221] + 31 < _23221 + return_data.size
                            _23349 = mem[_23221 + mem[_23221]]
                            require mem[_23221 + mem[_23221]] <= test266151307()
                            require _23221 + ceil32(return_data.size) + ceil32(mem[_23221 + mem[_23221]]) + 32 <= test266151307() and ceil32(mem[_23221 + mem[_23221]]) + 32 >= 0
                            mem[64] = _23221 + ceil32(return_data.size) + ceil32(mem[_23221 + mem[_23221]]) + 32
                            mem[_23221 + ceil32(return_data.size)] = _23349
                            require _23285 + _23349 + 32 <= return_data.size
                            mem[_23221 + ceil32(return_data.size) + 32 len ceil32(_23349)] = mem[_23221 + _23285 + 32 len ceil32(_23349)]
                            if ceil32(_23349) <= _23349:
                                _25013 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23349
                                mem[mem[64] + 128 len ceil32(_23349)] = mem[_23221 + ceil32(return_data.size) + 32 len ceil32(_23349)]
                                if ceil32(_23349) > _23349:
                                    mem[mem[64] + _23349 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25013 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25013 + ceil32(_23349) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23221 + ceil32(return_data.size) + _23349 + 32] = 0
                                _25077 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23349
                                mem[mem[64] + 128 len ceil32(_23349)] = mem[_23221 + ceil32(return_data.size) + 32 len ceil32(_23349)]
                                if ceil32(_23349) > _23349:
                                    mem[mem[64] + _23349 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25077 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25077 + ceil32(_23349) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[(2 * ceil32(return_data.size)) + _360 + 576] = 0
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2
                            mem[ceil32(return_data.size) + 320] = 0
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2
                            stor14[stor4].field_1792 = 0
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23222 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23286 = mem[_23222]
                            require mem[_23222] <= test266151307()
                            require _23222 + mem[_23222] + 31 < _23222 + return_data.size
                            _23350 = mem[_23222 + mem[_23222]]
                            require mem[_23222 + mem[_23222]] <= test266151307()
                            require _23222 + ceil32(return_data.size) + ceil32(mem[_23222 + mem[_23222]]) + 32 <= test266151307() and ceil32(mem[_23222 + mem[_23222]]) + 32 >= 0
                            mem[64] = _23222 + ceil32(return_data.size) + ceil32(mem[_23222 + mem[_23222]]) + 32
                            mem[_23222 + ceil32(return_data.size)] = _23350
                            require _23286 + _23350 + 32 <= return_data.size
                            mem[_23222 + ceil32(return_data.size) + 32 len ceil32(_23350)] = mem[_23222 + _23286 + 32 len ceil32(_23350)]
                            if ceil32(_23350) <= _23350:
                                _25014 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23350
                                mem[mem[64] + 128 len ceil32(_23350)] = mem[_23222 + ceil32(return_data.size) + 32 len ceil32(_23350)]
                                if ceil32(_23350) > _23350:
                                    mem[mem[64] + _23350 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25014 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25014 + ceil32(_23350) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23222 + ceil32(return_data.size) + _23350 + 32] = 0
                                _25078 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23350
                                mem[mem[64] + 128 len ceil32(_23350)] = mem[_23222 + ceil32(return_data.size) + 32 len ceil32(_23350)]
                                if ceil32(_23350) > _23350:
                                    mem[mem[64] + _23350 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25078 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25078 + ceil32(_23350) + -mem[64] + 128], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _549 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _681 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _549 + _681 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_681)] = mem[ceil32(return_data.size) + _549 + 576 len ceil32(_681)]
                            if ceil32(_681) <= _681:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23219 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23283 = mem[_23219]
                                require mem[_23219] <= test266151307()
                                require _23219 + mem[_23219] + 31 < _23219 + return_data.size
                                _23347 = mem[_23219 + mem[_23219]]
                                require mem[_23219 + mem[_23219]] <= test266151307()
                                require _23219 + ceil32(return_data.size) + ceil32(mem[_23219 + mem[_23219]]) + 32 <= test266151307() and ceil32(mem[_23219 + mem[_23219]]) + 32 >= 0
                                mem[64] = _23219 + ceil32(return_data.size) + ceil32(mem[_23219 + mem[_23219]]) + 32
                                mem[_23219 + ceil32(return_data.size)] = _23347
                                require _23283 + _23347 + 32 <= return_data.size
                                mem[_23219 + ceil32(return_data.size) + 32 len ceil32(_23347)] = mem[_23219 + _23283 + 32 len ceil32(_23347)]
                                if ceil32(_23347) <= _23347:
                                    _25011 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23347
                                    mem[mem[64] + 128 len ceil32(_23347)] = mem[_23219 + ceil32(return_data.size) + 32 len ceil32(_23347)]
                                    if ceil32(_23347) > _23347:
                                        mem[_25011 + _23347 + 128] = 0
                                    mem[_25011 + 32] = arg2
                                    mem[_25011 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25011 + ceil32(_23347) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23219 + ceil32(return_data.size) + _23347 + 32] = 0
                                    _25075 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23347
                                    mem[mem[64] + 128 len ceil32(_23347)] = mem[_23219 + ceil32(return_data.size) + 32 len ceil32(_23347)]
                                    if ceil32(_23347) > _23347:
                                        mem[_25075 + _23347 + 128] = 0
                                    mem[_25075 + 32] = arg2
                                    mem[_25075 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25075 + ceil32(_23347) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _681 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23220 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23284 = mem[_23220]
                                require mem[_23220] <= test266151307()
                                require _23220 + mem[_23220] + 31 < _23220 + return_data.size
                                _23348 = mem[_23220 + mem[_23220]]
                                require mem[_23220 + mem[_23220]] <= test266151307()
                                require _23220 + ceil32(return_data.size) + ceil32(mem[_23220 + mem[_23220]]) + 32 <= test266151307() and ceil32(mem[_23220 + mem[_23220]]) + 32 >= 0
                                mem[64] = _23220 + ceil32(return_data.size) + ceil32(mem[_23220 + mem[_23220]]) + 32
                                mem[_23220 + ceil32(return_data.size)] = _23348
                                require _23284 + _23348 + 32 <= return_data.size
                                mem[_23220 + ceil32(return_data.size) + 32 len ceil32(_23348)] = mem[_23220 + _23284 + 32 len ceil32(_23348)]
                                if ceil32(_23348) <= _23348:
                                    _25012 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23348
                                    mem[mem[64] + 128 len ceil32(_23348)] = mem[_23220 + ceil32(return_data.size) + 32 len ceil32(_23348)]
                                    if ceil32(_23348) > _23348:
                                        mem[mem[64] + _23348 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25012 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25012 + ceil32(_23348) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23220 + ceil32(return_data.size) + _23348 + 32] = 0
                                    _25076 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23348
                                    mem[mem[64] + 128 len ceil32(_23348)] = mem[_23220 + ceil32(return_data.size) + 32 len ceil32(_23348)]
                                    if ceil32(_23348) > _23348:
                                        mem[_25076 + _23348 + 128] = 0
                                    mem[_25076 + 32] = arg2
                                    mem[_25076 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25076 + ceil32(_23348) + -mem[64] + 128], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_a54f12e4[address(arg1)] - (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] -= 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _623 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _820 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _623 + _820 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_820)] = mem[ceil32(return_data.size) + _623 + 576 len ceil32(_820)]
                            if ceil32(_820) <= _820:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23217 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23281 = mem[_23217]
                                require mem[_23217] <= test266151307()
                                require _23217 + mem[_23217] + 31 < _23217 + return_data.size
                                _23345 = mem[_23217 + mem[_23217]]
                                require mem[_23217 + mem[_23217]] <= test266151307()
                                require _23217 + ceil32(return_data.size) + ceil32(mem[_23217 + mem[_23217]]) + 32 <= test266151307() and ceil32(mem[_23217 + mem[_23217]]) + 32 >= 0
                                mem[64] = _23217 + ceil32(return_data.size) + ceil32(mem[_23217 + mem[_23217]]) + 32
                                mem[_23217 + ceil32(return_data.size)] = _23345
                                require _23281 + _23345 + 32 <= return_data.size
                                mem[_23217 + ceil32(return_data.size) + 32 len ceil32(_23345)] = mem[_23217 + _23281 + 32 len ceil32(_23345)]
                                if ceil32(_23345) <= _23345:
                                    _25009 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23345
                                    mem[mem[64] + 128 len ceil32(_23345)] = mem[_23217 + ceil32(return_data.size) + 32 len ceil32(_23345)]
                                    if ceil32(_23345) > _23345:
                                        mem[mem[64] + _23345 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25009 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25009 + ceil32(_23345) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23217 + ceil32(return_data.size) + _23345 + 32] = 0
                                    _25073 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23345
                                    mem[mem[64] + 128 len ceil32(_23345)] = mem[_23217 + ceil32(return_data.size) + 32 len ceil32(_23345)]
                                    if ceil32(_23345) > _23345:
                                        mem[mem[64] + _23345 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25073 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25073 + ceil32(_23345) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _820 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23218 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23282 = mem[_23218]
                                require mem[_23218] <= test266151307()
                                require _23218 + mem[_23218] + 31 < _23218 + return_data.size
                                _23346 = mem[_23218 + mem[_23218]]
                                require mem[_23218 + mem[_23218]] <= test266151307()
                                require _23218 + ceil32(return_data.size) + ceil32(mem[_23218 + mem[_23218]]) + 32 <= test266151307() and ceil32(mem[_23218 + mem[_23218]]) + 32 >= 0
                                mem[64] = _23218 + ceil32(return_data.size) + ceil32(mem[_23218 + mem[_23218]]) + 32
                                mem[_23218 + ceil32(return_data.size)] = _23346
                                require _23282 + _23346 + 32 <= return_data.size
                                mem[_23218 + ceil32(return_data.size) + 32 len ceil32(_23346)] = mem[_23218 + _23282 + 32 len ceil32(_23346)]
                                if ceil32(_23346) <= _23346:
                                    _25010 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23346
                                    mem[mem[64] + 128 len ceil32(_23346)] = mem[_23218 + ceil32(return_data.size) + 32 len ceil32(_23346)]
                                    if ceil32(_23346) > _23346:
                                        mem[mem[64] + _23346 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25010 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25010 + ceil32(_23346) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23218 + ceil32(return_data.size) + _23346 + 32] = 0
                                    _25074 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23346
                                    mem[mem[64] + 128 len ceil32(_23346)] = mem[_23218 + ceil32(return_data.size) + 32 len ceil32(_23346)]
                                    if ceil32(_23346) > _23346:
                                        mem[mem[64] + _23346 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25074 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25074 + ceil32(_23346) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    if sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor10[address(msg.sender)]][address(arg1)] >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                        mem[ceil32(return_data.size) + 96] = stor4
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
                        _334 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                        _387 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                        mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require _334 + _387 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_387)] = mem[ceil32(return_data.size) + _334 + 576 len ceil32(_387)]
                        if ceil32(_387) <= _387:
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2
                            mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2
                            stor14[stor4].field_1792 = 16 * arg2 / 100
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23215 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23279 = mem[_23215]
                            require mem[_23215] <= test266151307()
                            require _23215 + mem[_23215] + 31 < _23215 + return_data.size
                            _23343 = mem[_23215 + mem[_23215]]
                            require mem[_23215 + mem[_23215]] <= test266151307()
                            require _23215 + ceil32(return_data.size) + ceil32(mem[_23215 + mem[_23215]]) + 32 <= test266151307() and ceil32(mem[_23215 + mem[_23215]]) + 32 >= 0
                            mem[64] = _23215 + ceil32(return_data.size) + ceil32(mem[_23215 + mem[_23215]]) + 32
                            mem[_23215 + ceil32(return_data.size)] = _23343
                            require _23279 + _23343 + 32 <= return_data.size
                            mem[_23215 + ceil32(return_data.size) + 32 len ceil32(_23343)] = mem[_23215 + _23279 + 32 len ceil32(_23343)]
                            if ceil32(_23343) <= _23343:
                                _25007 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23343
                                mem[mem[64] + 128 len ceil32(_23343)] = mem[_23215 + ceil32(return_data.size) + 32 len ceil32(_23343)]
                                if ceil32(_23343) > _23343:
                                    mem[mem[64] + _23343 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25007 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25007 + ceil32(_23343) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23215 + ceil32(return_data.size) + _23343 + 32] = 0
                                _25071 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23343
                                mem[mem[64] + 128 len ceil32(_23343)] = mem[_23215 + ceil32(return_data.size) + 32 len ceil32(_23343)]
                                if ceil32(_23343) > _23343:
                                    mem[mem[64] + _23343 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25071 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25071 + ceil32(_23343) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[(2 * ceil32(return_data.size)) + _387 + 576] = 0
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2
                            mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2
                            stor14[stor4].field_1792 = 16 * arg2 / 100
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23216 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23280 = mem[_23216]
                            require mem[_23216] <= test266151307()
                            require _23216 + mem[_23216] + 31 < _23216 + return_data.size
                            _23344 = mem[_23216 + mem[_23216]]
                            require mem[_23216 + mem[_23216]] <= test266151307()
                            require _23216 + ceil32(return_data.size) + ceil32(mem[_23216 + mem[_23216]]) + 32 <= test266151307() and ceil32(mem[_23216 + mem[_23216]]) + 32 >= 0
                            mem[64] = _23216 + ceil32(return_data.size) + ceil32(mem[_23216 + mem[_23216]]) + 32
                            mem[_23216 + ceil32(return_data.size)] = _23344
                            require _23280 + _23344 + 32 <= return_data.size
                            mem[_23216 + ceil32(return_data.size) + 32 len ceil32(_23344)] = mem[_23216 + _23280 + 32 len ceil32(_23344)]
                            if ceil32(_23344) <= _23344:
                                _25008 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23344
                                mem[mem[64] + 128 len ceil32(_23344)] = mem[_23216 + ceil32(return_data.size) + 32 len ceil32(_23344)]
                                if ceil32(_23344) > _23344:
                                    mem[_25008 + _23344 + 128] = 0
                                mem[_25008 + 32] = arg2
                                mem[_25008 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25008 + ceil32(_23344) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23216 + ceil32(return_data.size) + _23344 + 32] = 0
                                _25072 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23344
                                mem[mem[64] + 128 len ceil32(_23344)] = mem[_23216 + ceil32(return_data.size) + 32 len ceil32(_23344)]
                                if ceil32(_23344) > _23344:
                                    mem[mem[64] + _23344 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25072 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25072 + ceil32(_23344) + -mem[64] + 128], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _622 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _811 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _622 + _811 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_811)] = mem[ceil32(return_data.size) + _622 + 576 len ceil32(_811)]
                            if ceil32(_811) <= _811:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23213 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23277 = mem[_23213]
                                require mem[_23213] <= test266151307()
                                require _23213 + mem[_23213] + 31 < _23213 + return_data.size
                                _23341 = mem[_23213 + mem[_23213]]
                                require mem[_23213 + mem[_23213]] <= test266151307()
                                require _23213 + ceil32(return_data.size) + ceil32(mem[_23213 + mem[_23213]]) + 32 <= test266151307() and ceil32(mem[_23213 + mem[_23213]]) + 32 >= 0
                                mem[64] = _23213 + ceil32(return_data.size) + ceil32(mem[_23213 + mem[_23213]]) + 32
                                mem[_23213 + ceil32(return_data.size)] = _23341
                                require _23277 + _23341 + 32 <= return_data.size
                                mem[_23213 + ceil32(return_data.size) + 32 len ceil32(_23341)] = mem[_23213 + _23277 + 32 len ceil32(_23341)]
                                if ceil32(_23341) <= _23341:
                                    _25005 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23341
                                    mem[mem[64] + 128 len ceil32(_23341)] = mem[_23213 + ceil32(return_data.size) + 32 len ceil32(_23341)]
                                    if ceil32(_23341) > _23341:
                                        mem[mem[64] + _23341 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25005 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25005 + ceil32(_23341) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23213 + ceil32(return_data.size) + _23341 + 32] = 0
                                    _25069 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23341
                                    mem[mem[64] + 128 len ceil32(_23341)] = mem[_23213 + ceil32(return_data.size) + 32 len ceil32(_23341)]
                                    if ceil32(_23341) > _23341:
                                        mem[mem[64] + _23341 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25069 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25069 + ceil32(_23341) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _811 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23214 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23278 = mem[_23214]
                                require mem[_23214] <= test266151307()
                                require _23214 + mem[_23214] + 31 < _23214 + return_data.size
                                _23342 = mem[_23214 + mem[_23214]]
                                require mem[_23214 + mem[_23214]] <= test266151307()
                                require _23214 + ceil32(return_data.size) + ceil32(mem[_23214 + mem[_23214]]) + 32 <= test266151307() and ceil32(mem[_23214 + mem[_23214]]) + 32 >= 0
                                mem[64] = _23214 + ceil32(return_data.size) + ceil32(mem[_23214 + mem[_23214]]) + 32
                                mem[_23214 + ceil32(return_data.size)] = _23342
                                require _23278 + _23342 + 32 <= return_data.size
                                mem[_23214 + ceil32(return_data.size) + 32 len ceil32(_23342)] = mem[_23214 + _23278 + 32 len ceil32(_23342)]
                                if ceil32(_23342) <= _23342:
                                    _25006 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23342
                                    mem[mem[64] + 128 len ceil32(_23342)] = mem[_23214 + ceil32(return_data.size) + 32 len ceil32(_23342)]
                                    if ceil32(_23342) > _23342:
                                        mem[_25006 + _23342 + 128] = 0
                                    mem[_25006 + 32] = arg2
                                    mem[_25006 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25006 + ceil32(_23342) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23214 + ceil32(return_data.size) + _23342 + 32] = 0
                                    _25070 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23342
                                    mem[mem[64] + 128 len ceil32(_23342)] = mem[_23214 + ceil32(return_data.size) + 32 len ceil32(_23342)]
                                    if ceil32(_23342) > _23342:
                                        mem[_25070 + _23342 + 128] = 0
                                    mem[_25070 + 32] = arg2
                                    mem[_25070 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25070 + ceil32(_23342) + -mem[64] + 128], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_a54f12e4[address(arg1)] - (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] -= 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _746 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _896 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _746 + _896 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_896)] = mem[ceil32(return_data.size) + _746 + 576 len ceil32(_896)]
                            if ceil32(_896) <= _896:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23211 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23275 = mem[_23211]
                                require mem[_23211] <= test266151307()
                                require _23211 + mem[_23211] + 31 < _23211 + return_data.size
                                _23339 = mem[_23211 + mem[_23211]]
                                require mem[_23211 + mem[_23211]] <= test266151307()
                                require _23211 + ceil32(return_data.size) + ceil32(mem[_23211 + mem[_23211]]) + 32 <= test266151307() and ceil32(mem[_23211 + mem[_23211]]) + 32 >= 0
                                mem[64] = _23211 + ceil32(return_data.size) + ceil32(mem[_23211 + mem[_23211]]) + 32
                                mem[_23211 + ceil32(return_data.size)] = _23339
                                require _23275 + _23339 + 32 <= return_data.size
                                mem[_23211 + ceil32(return_data.size) + 32 len ceil32(_23339)] = mem[_23211 + _23275 + 32 len ceil32(_23339)]
                                if ceil32(_23339) <= _23339:
                                    _25003 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23339
                                    mem[mem[64] + 128 len ceil32(_23339)] = mem[_23211 + ceil32(return_data.size) + 32 len ceil32(_23339)]
                                    if ceil32(_23339) > _23339:
                                        mem[_25003 + _23339 + 128] = 0
                                    mem[_25003 + 32] = arg2
                                    mem[_25003 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25003 + ceil32(_23339) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23211 + ceil32(return_data.size) + _23339 + 32] = 0
                                    _25067 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23339
                                    mem[mem[64] + 128 len ceil32(_23339)] = mem[_23211 + ceil32(return_data.size) + 32 len ceil32(_23339)]
                                    if ceil32(_23339) > _23339:
                                        mem[_25067 + _23339 + 128] = 0
                                    mem[_25067 + 32] = arg2
                                    mem[_25067 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25067 + ceil32(_23339) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _896 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23212 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23276 = mem[_23212]
                                require mem[_23212] <= test266151307()
                                require _23212 + mem[_23212] + 31 < _23212 + return_data.size
                                _23340 = mem[_23212 + mem[_23212]]
                                require mem[_23212 + mem[_23212]] <= test266151307()
                                require _23212 + ceil32(return_data.size) + ceil32(mem[_23212 + mem[_23212]]) + 32 <= test266151307() and ceil32(mem[_23212 + mem[_23212]]) + 32 >= 0
                                mem[64] = _23212 + ceil32(return_data.size) + ceil32(mem[_23212 + mem[_23212]]) + 32
                                mem[_23212 + ceil32(return_data.size)] = _23340
                                require _23276 + _23340 + 32 <= return_data.size
                                mem[_23212 + ceil32(return_data.size) + 32 len ceil32(_23340)] = mem[_23212 + _23276 + 32 len ceil32(_23340)]
                                if ceil32(_23340) <= _23340:
                                    _25004 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23340
                                    mem[mem[64] + 128 len ceil32(_23340)] = mem[_23212 + ceil32(return_data.size) + 32 len ceil32(_23340)]
                                    if ceil32(_23340) > _23340:
                                        mem[mem[64] + _23340 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25004 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25004 + ceil32(_23340) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23212 + ceil32(return_data.size) + _23340 + 32] = 0
                                    _25068 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23340
                                    mem[mem[64] + 128 len ceil32(_23340)] = mem[_23212 + ceil32(return_data.size) + 32 len ceil32(_23340)]
                                    if ceil32(_23340) > _23340:
                                        mem[mem[64] + _23340 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25068 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25068 + ceil32(_23340) + -mem[64] + 128], msg.sender, arg1
    else:
        require arg2
        require 12 * arg2 / arg2 == 12
        if not arg2:
            if not cashbackcode[address(msg.sender)]:
                if not arg2:
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                    mem[ceil32(return_data.size) + 96] = stor4
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
                    _238 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _310 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _238 + _310 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_310)] = mem[ceil32(return_data.size) + _238 + 576 len ceil32(_310)]
                    if ceil32(_310) <= _310:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 0
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23209 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23273 = mem[_23209]
                        require mem[_23209] <= test266151307()
                        require _23209 + mem[_23209] + 31 < _23209 + return_data.size
                        _23337 = mem[_23209 + mem[_23209]]
                        require mem[_23209 + mem[_23209]] <= test266151307()
                        require _23209 + ceil32(return_data.size) + ceil32(mem[_23209 + mem[_23209]]) + 32 <= test266151307() and ceil32(mem[_23209 + mem[_23209]]) + 32 >= 0
                        mem[64] = _23209 + ceil32(return_data.size) + ceil32(mem[_23209 + mem[_23209]]) + 32
                        mem[_23209 + ceil32(return_data.size)] = _23337
                        require _23273 + _23337 + 32 <= return_data.size
                        mem[_23209 + ceil32(return_data.size) + 32 len ceil32(_23337)] = mem[_23209 + _23273 + 32 len ceil32(_23337)]
                        if ceil32(_23337) <= _23337:
                            _25001 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23337
                            mem[mem[64] + 128 len ceil32(_23337)] = mem[_23209 + ceil32(return_data.size) + 32 len ceil32(_23337)]
                            if ceil32(_23337) > _23337:
                                mem[_25001 + _23337 + 128] = 0
                            mem[_25001 + 32] = arg2
                            mem[_25001 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25001 + ceil32(_23337) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23209 + ceil32(return_data.size) + _23337 + 32] = 0
                            _25065 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23337
                            mem[mem[64] + 128 len ceil32(_23337)] = mem[_23209 + ceil32(return_data.size) + 32 len ceil32(_23337)]
                            if ceil32(_23337) > _23337:
                                mem[_25065 + _23337 + 128] = 0
                            mem[_25065 + 32] = arg2
                            mem[_25065 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25065 + ceil32(_23337) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _310 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 0
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23210 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23274 = mem[_23210]
                        require mem[_23210] <= test266151307()
                        require _23210 + mem[_23210] + 31 < _23210 + return_data.size
                        _23338 = mem[_23210 + mem[_23210]]
                        require mem[_23210 + mem[_23210]] <= test266151307()
                        require _23210 + ceil32(return_data.size) + ceil32(mem[_23210 + mem[_23210]]) + 32 <= test266151307() and ceil32(mem[_23210 + mem[_23210]]) + 32 >= 0
                        mem[64] = _23210 + ceil32(return_data.size) + ceil32(mem[_23210 + mem[_23210]]) + 32
                        mem[_23210 + ceil32(return_data.size)] = _23338
                        require _23274 + _23338 + 32 <= return_data.size
                        mem[_23210 + ceil32(return_data.size) + 32 len ceil32(_23338)] = mem[_23210 + _23274 + 32 len ceil32(_23338)]
                        if ceil32(_23338) <= _23338:
                            _25002 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23338
                            mem[mem[64] + 128 len ceil32(_23338)] = mem[_23210 + ceil32(return_data.size) + 32 len ceil32(_23338)]
                            if ceil32(_23338) > _23338:
                                mem[mem[64] + _23338 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25002 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25002 + ceil32(_23338) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23210 + ceil32(return_data.size) + _23338 + 32] = 0
                            _25066 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23338
                            mem[mem[64] + 128 len ceil32(_23338)] = mem[_23210 + ceil32(return_data.size) + 32 len ceil32(_23338)]
                            if ceil32(_23338) > _23338:
                                mem[_25066 + _23338 + 128] = 0
                            mem[_25066 + 32] = arg2
                            mem[_25066 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25066 + ceil32(_23338) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                    mem[ceil32(return_data.size) + 96] = stor4
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
                    _289 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _355 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _289 + _355 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_355)] = mem[ceil32(return_data.size) + _289 + 576 len ceil32(_355)]
                    if ceil32(_355) <= _355:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 72 * arg2 / 100
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23207 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23271 = mem[_23207]
                        require mem[_23207] <= test266151307()
                        require _23207 + mem[_23207] + 31 < _23207 + return_data.size
                        _23335 = mem[_23207 + mem[_23207]]
                        require mem[_23207 + mem[_23207]] <= test266151307()
                        require _23207 + ceil32(return_data.size) + ceil32(mem[_23207 + mem[_23207]]) + 32 <= test266151307() and ceil32(mem[_23207 + mem[_23207]]) + 32 >= 0
                        mem[64] = _23207 + ceil32(return_data.size) + ceil32(mem[_23207 + mem[_23207]]) + 32
                        mem[_23207 + ceil32(return_data.size)] = _23335
                        require _23271 + _23335 + 32 <= return_data.size
                        mem[_23207 + ceil32(return_data.size) + 32 len ceil32(_23335)] = mem[_23207 + _23271 + 32 len ceil32(_23335)]
                        if ceil32(_23335) <= _23335:
                            _24999 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23335
                            mem[mem[64] + 128 len ceil32(_23335)] = mem[_23207 + ceil32(return_data.size) + 32 len ceil32(_23335)]
                            if ceil32(_23335) > _23335:
                                mem[mem[64] + _23335 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_24999 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _24999 + ceil32(_23335) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23207 + ceil32(return_data.size) + _23335 + 32] = 0
                            _25063 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23335
                            mem[mem[64] + 128 len ceil32(_23335)] = mem[_23207 + ceil32(return_data.size) + 32 len ceil32(_23335)]
                            if ceil32(_23335) > _23335:
                                mem[mem[64] + _23335 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25063 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25063 + ceil32(_23335) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _355 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 72 * arg2 / 100
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23208 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23272 = mem[_23208]
                        require mem[_23208] <= test266151307()
                        require _23208 + mem[_23208] + 31 < _23208 + return_data.size
                        _23336 = mem[_23208 + mem[_23208]]
                        require mem[_23208 + mem[_23208]] <= test266151307()
                        require _23208 + ceil32(return_data.size) + ceil32(mem[_23208 + mem[_23208]]) + 32 <= test266151307() and ceil32(mem[_23208 + mem[_23208]]) + 32 >= 0
                        mem[64] = _23208 + ceil32(return_data.size) + ceil32(mem[_23208 + mem[_23208]]) + 32
                        mem[_23208 + ceil32(return_data.size)] = _23336
                        require _23272 + _23336 + 32 <= return_data.size
                        mem[_23208 + ceil32(return_data.size) + 32 len ceil32(_23336)] = mem[_23208 + _23272 + 32 len ceil32(_23336)]
                        if ceil32(_23336) <= _23336:
                            _25000 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23336
                            mem[mem[64] + 128 len ceil32(_23336)] = mem[_23208 + ceil32(return_data.size) + 32 len ceil32(_23336)]
                            if ceil32(_23336) > _23336:
                                mem[mem[64] + _23336 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25000 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25000 + ceil32(_23336) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23208 + ceil32(return_data.size) + _23336 + 32] = 0
                            _25064 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23336
                            mem[mem[64] + 128 len ceil32(_23336)] = mem[_23208 + ceil32(return_data.size) + 32 len ceil32(_23336)]
                            if ceil32(_23336) > _23336:
                                mem[mem[64] + _23336 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25064 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25064 + ceil32(_23336) + -mem[64] + 128], msg.sender, arg1
            else:
                require 12 * arg2 / 100 <= arg2
                if not arg2:
                    if sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor10[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor10[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                        mem[ceil32(return_data.size) + 96] = stor4
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
                        _288 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                        _354 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                        mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require _288 + _354 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_354)] = mem[ceil32(return_data.size) + _288 + 576 len ceil32(_354)]
                        if ceil32(_354) <= _354:
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                            mem[ceil32(return_data.size) + 320] = 0
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            stor14[stor4].field_1792 = 0
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23205 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23269 = mem[_23205]
                            require mem[_23205] <= test266151307()
                            require _23205 + mem[_23205] + 31 < _23205 + return_data.size
                            _23333 = mem[_23205 + mem[_23205]]
                            require mem[_23205 + mem[_23205]] <= test266151307()
                            require _23205 + ceil32(return_data.size) + ceil32(mem[_23205 + mem[_23205]]) + 32 <= test266151307() and ceil32(mem[_23205 + mem[_23205]]) + 32 >= 0
                            mem[64] = _23205 + ceil32(return_data.size) + ceil32(mem[_23205 + mem[_23205]]) + 32
                            mem[_23205 + ceil32(return_data.size)] = _23333
                            require _23269 + _23333 + 32 <= return_data.size
                            mem[_23205 + ceil32(return_data.size) + 32 len ceil32(_23333)] = mem[_23205 + _23269 + 32 len ceil32(_23333)]
                            if ceil32(_23333) <= _23333:
                                _24997 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23333
                                mem[mem[64] + 128 len ceil32(_23333)] = mem[_23205 + ceil32(return_data.size) + 32 len ceil32(_23333)]
                                if ceil32(_23333) > _23333:
                                    mem[_24997 + _23333 + 128] = 0
                                mem[_24997 + 32] = arg2
                                mem[_24997 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _24997 + ceil32(_23333) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23205 + ceil32(return_data.size) + _23333 + 32] = 0
                                _25061 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23333
                                mem[mem[64] + 128 len ceil32(_23333)] = mem[_23205 + ceil32(return_data.size) + 32 len ceil32(_23333)]
                                if ceil32(_23333) > _23333:
                                    mem[_25061 + _23333 + 128] = 0
                                mem[_25061 + 32] = arg2
                                mem[_25061 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25061 + ceil32(_23333) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[(2 * ceil32(return_data.size)) + _354 + 576] = 0
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                            mem[ceil32(return_data.size) + 320] = 0
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            stor14[stor4].field_1792 = 0
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23206 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23270 = mem[_23206]
                            require mem[_23206] <= test266151307()
                            require _23206 + mem[_23206] + 31 < _23206 + return_data.size
                            _23334 = mem[_23206 + mem[_23206]]
                            require mem[_23206 + mem[_23206]] <= test266151307()
                            require _23206 + ceil32(return_data.size) + ceil32(mem[_23206 + mem[_23206]]) + 32 <= test266151307() and ceil32(mem[_23206 + mem[_23206]]) + 32 >= 0
                            mem[64] = _23206 + ceil32(return_data.size) + ceil32(mem[_23206 + mem[_23206]]) + 32
                            mem[_23206 + ceil32(return_data.size)] = _23334
                            require _23270 + _23334 + 32 <= return_data.size
                            mem[_23206 + ceil32(return_data.size) + 32 len ceil32(_23334)] = mem[_23206 + _23270 + 32 len ceil32(_23334)]
                            if ceil32(_23334) <= _23334:
                                _24998 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23334
                                mem[mem[64] + 128 len ceil32(_23334)] = mem[_23206 + ceil32(return_data.size) + 32 len ceil32(_23334)]
                                if ceil32(_23334) > _23334:
                                    mem[_24998 + _23334 + 128] = 0
                                mem[_24998 + 32] = arg2
                                mem[_24998 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _24998 + ceil32(_23334) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23206 + ceil32(return_data.size) + _23334 + 32] = 0
                                _25062 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23334
                                mem[mem[64] + 128 len ceil32(_23334)] = mem[_23206 + ceil32(return_data.size) + 32 len ceil32(_23334)]
                                if ceil32(_23334) > _23334:
                                    mem[mem[64] + _23334 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25062 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25062 + ceil32(_23334) + -mem[64] + 128], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _541 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _662 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _541 + _662 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_662)] = mem[ceil32(return_data.size) + _541 + 576 len ceil32(_662)]
                            if ceil32(_662) <= _662:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23203 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23267 = mem[_23203]
                                require mem[_23203] <= test266151307()
                                require _23203 + mem[_23203] + 31 < _23203 + return_data.size
                                _23331 = mem[_23203 + mem[_23203]]
                                require mem[_23203 + mem[_23203]] <= test266151307()
                                require _23203 + ceil32(return_data.size) + ceil32(mem[_23203 + mem[_23203]]) + 32 <= test266151307() and ceil32(mem[_23203 + mem[_23203]]) + 32 >= 0
                                mem[64] = _23203 + ceil32(return_data.size) + ceil32(mem[_23203 + mem[_23203]]) + 32
                                mem[_23203 + ceil32(return_data.size)] = _23331
                                require _23267 + _23331 + 32 <= return_data.size
                                mem[_23203 + ceil32(return_data.size) + 32 len ceil32(_23331)] = mem[_23203 + _23267 + 32 len ceil32(_23331)]
                                if ceil32(_23331) <= _23331:
                                    _24995 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23331
                                    mem[mem[64] + 128 len ceil32(_23331)] = mem[_23203 + ceil32(return_data.size) + 32 len ceil32(_23331)]
                                    if ceil32(_23331) > _23331:
                                        mem[mem[64] + _23331 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_24995 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24995 + ceil32(_23331) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23203 + ceil32(return_data.size) + _23331 + 32] = 0
                                    _25059 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23331
                                    mem[mem[64] + 128 len ceil32(_23331)] = mem[_23203 + ceil32(return_data.size) + 32 len ceil32(_23331)]
                                    if ceil32(_23331) > _23331:
                                        mem[mem[64] + _23331 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25059 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25059 + ceil32(_23331) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _662 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23204 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23268 = mem[_23204]
                                require mem[_23204] <= test266151307()
                                require _23204 + mem[_23204] + 31 < _23204 + return_data.size
                                _23332 = mem[_23204 + mem[_23204]]
                                require mem[_23204 + mem[_23204]] <= test266151307()
                                require _23204 + ceil32(return_data.size) + ceil32(mem[_23204 + mem[_23204]]) + 32 <= test266151307() and ceil32(mem[_23204 + mem[_23204]]) + 32 >= 0
                                mem[64] = _23204 + ceil32(return_data.size) + ceil32(mem[_23204 + mem[_23204]]) + 32
                                mem[_23204 + ceil32(return_data.size)] = _23332
                                require _23268 + _23332 + 32 <= return_data.size
                                mem[_23204 + ceil32(return_data.size) + 32 len ceil32(_23332)] = mem[_23204 + _23268 + 32 len ceil32(_23332)]
                                if ceil32(_23332) <= _23332:
                                    _24996 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23332
                                    mem[mem[64] + 128 len ceil32(_23332)] = mem[_23204 + ceil32(return_data.size) + 32 len ceil32(_23332)]
                                    if ceil32(_23332) > _23332:
                                        mem[_24996 + _23332 + 128] = 0
                                    mem[_24996 + 32] = arg2
                                    mem[_24996 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24996 + ceil32(_23332) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23204 + ceil32(return_data.size) + _23332 + 32] = 0
                                    _25060 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23332
                                    mem[mem[64] + 128 len ceil32(_23332)] = mem[_23204 + ceil32(return_data.size) + 32 len ceil32(_23332)]
                                    if ceil32(_23332) > _23332:
                                        mem[_25060 + _23332 + 128] = 0
                                    mem[_25060 + 32] = arg2
                                    mem[_25060 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25060 + ceil32(_23332) + -mem[64] + 128], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] = sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100)
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _611 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _806 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _611 + _806 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_806)] = mem[ceil32(return_data.size) + _611 + 576 len ceil32(_806)]
                            if ceil32(_806) <= _806:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23201 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23265 = mem[_23201]
                                require mem[_23201] <= test266151307()
                                require _23201 + mem[_23201] + 31 < _23201 + return_data.size
                                _23329 = mem[_23201 + mem[_23201]]
                                require mem[_23201 + mem[_23201]] <= test266151307()
                                require _23201 + ceil32(return_data.size) + ceil32(mem[_23201 + mem[_23201]]) + 32 <= test266151307() and ceil32(mem[_23201 + mem[_23201]]) + 32 >= 0
                                mem[64] = _23201 + ceil32(return_data.size) + ceil32(mem[_23201 + mem[_23201]]) + 32
                                mem[_23201 + ceil32(return_data.size)] = _23329
                                require _23265 + _23329 + 32 <= return_data.size
                                mem[_23201 + ceil32(return_data.size) + 32 len ceil32(_23329)] = mem[_23201 + _23265 + 32 len ceil32(_23329)]
                                if ceil32(_23329) <= _23329:
                                    _24993 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23329
                                    mem[mem[64] + 128 len ceil32(_23329)] = mem[_23201 + ceil32(return_data.size) + 32 len ceil32(_23329)]
                                    if ceil32(_23329) > _23329:
                                        mem[mem[64] + _23329 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_24993 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24993 + ceil32(_23329) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23201 + ceil32(return_data.size) + _23329 + 32] = 0
                                    _25057 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23329
                                    mem[mem[64] + 128 len ceil32(_23329)] = mem[_23201 + ceil32(return_data.size) + 32 len ceil32(_23329)]
                                    if ceil32(_23329) > _23329:
                                        mem[mem[64] + _23329 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25057 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25057 + ceil32(_23329) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _806 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23202 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23266 = mem[_23202]
                                require mem[_23202] <= test266151307()
                                require _23202 + mem[_23202] + 31 < _23202 + return_data.size
                                _23330 = mem[_23202 + mem[_23202]]
                                require mem[_23202 + mem[_23202]] <= test266151307()
                                require _23202 + ceil32(return_data.size) + ceil32(mem[_23202 + mem[_23202]]) + 32 <= test266151307() and ceil32(mem[_23202 + mem[_23202]]) + 32 >= 0
                                mem[64] = _23202 + ceil32(return_data.size) + ceil32(mem[_23202 + mem[_23202]]) + 32
                                mem[_23202 + ceil32(return_data.size)] = _23330
                                require _23266 + _23330 + 32 <= return_data.size
                                mem[_23202 + ceil32(return_data.size) + 32 len ceil32(_23330)] = mem[_23202 + _23266 + 32 len ceil32(_23330)]
                                if ceil32(_23330) <= _23330:
                                    _24994 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23330
                                    mem[mem[64] + 128 len ceil32(_23330)] = mem[_23202 + ceil32(return_data.size) + 32 len ceil32(_23330)]
                                    if ceil32(_23330) > _23330:
                                        mem[mem[64] + _23330 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_24994 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24994 + ceil32(_23330) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23202 + ceil32(return_data.size) + _23330 + 32] = 0
                                    _25058 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23330
                                    mem[mem[64] + 128 len ceil32(_23330)] = mem[_23202 + ceil32(return_data.size) + 32 len ceil32(_23330)]
                                    if ceil32(_23330) > _23330:
                                        mem[mem[64] + _23330 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25058 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25058 + ceil32(_23330) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    if sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor10[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor10[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                        mem[ceil32(return_data.size) + 96] = stor4
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
                        _331 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                        _384 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                        mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require _331 + _384 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_384)] = mem[ceil32(return_data.size) + _331 + 576 len ceil32(_384)]
                        if ceil32(_384) <= _384:
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                            mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            stor14[stor4].field_1792 = 16 * arg2 / 100
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23199 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23263 = mem[_23199]
                            require mem[_23199] <= test266151307()
                            require _23199 + mem[_23199] + 31 < _23199 + return_data.size
                            _23327 = mem[_23199 + mem[_23199]]
                            require mem[_23199 + mem[_23199]] <= test266151307()
                            require _23199 + ceil32(return_data.size) + ceil32(mem[_23199 + mem[_23199]]) + 32 <= test266151307() and ceil32(mem[_23199 + mem[_23199]]) + 32 >= 0
                            mem[64] = _23199 + ceil32(return_data.size) + ceil32(mem[_23199 + mem[_23199]]) + 32
                            mem[_23199 + ceil32(return_data.size)] = _23327
                            require _23263 + _23327 + 32 <= return_data.size
                            mem[_23199 + ceil32(return_data.size) + 32 len ceil32(_23327)] = mem[_23199 + _23263 + 32 len ceil32(_23327)]
                            if ceil32(_23327) <= _23327:
                                _24991 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23327
                                mem[mem[64] + 128 len ceil32(_23327)] = mem[_23199 + ceil32(return_data.size) + 32 len ceil32(_23327)]
                                if ceil32(_23327) > _23327:
                                    mem[mem[64] + _23327 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_24991 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _24991 + ceil32(_23327) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23199 + ceil32(return_data.size) + _23327 + 32] = 0
                                _25055 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23327
                                mem[mem[64] + 128 len ceil32(_23327)] = mem[_23199 + ceil32(return_data.size) + 32 len ceil32(_23327)]
                                if ceil32(_23327) > _23327:
                                    mem[mem[64] + _23327 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25055 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25055 + ceil32(_23327) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[(2 * ceil32(return_data.size)) + _384 + 576] = 0
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                            mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            stor14[stor4].field_1792 = 16 * arg2 / 100
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23200 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23264 = mem[_23200]
                            require mem[_23200] <= test266151307()
                            require _23200 + mem[_23200] + 31 < _23200 + return_data.size
                            _23328 = mem[_23200 + mem[_23200]]
                            require mem[_23200 + mem[_23200]] <= test266151307()
                            require _23200 + ceil32(return_data.size) + ceil32(mem[_23200 + mem[_23200]]) + 32 <= test266151307() and ceil32(mem[_23200 + mem[_23200]]) + 32 >= 0
                            mem[64] = _23200 + ceil32(return_data.size) + ceil32(mem[_23200 + mem[_23200]]) + 32
                            mem[_23200 + ceil32(return_data.size)] = _23328
                            require _23264 + _23328 + 32 <= return_data.size
                            mem[_23200 + ceil32(return_data.size) + 32 len ceil32(_23328)] = mem[_23200 + _23264 + 32 len ceil32(_23328)]
                            if ceil32(_23328) <= _23328:
                                _24992 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23328
                                mem[mem[64] + 128 len ceil32(_23328)] = mem[_23200 + ceil32(return_data.size) + 32 len ceil32(_23328)]
                                if ceil32(_23328) > _23328:
                                    mem[mem[64] + _23328 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_24992 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _24992 + ceil32(_23328) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23200 + ceil32(return_data.size) + _23328 + 32] = 0
                                _25056 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23328
                                mem[mem[64] + 128 len ceil32(_23328)] = mem[_23200 + ceil32(return_data.size) + 32 len ceil32(_23328)]
                                if ceil32(_23328) > _23328:
                                    mem[_25056 + _23328 + 128] = 0
                                mem[_25056 + 32] = arg2
                                mem[_25056 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25056 + ceil32(_23328) + -mem[64] + 128], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _610 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _797 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _610 + _797 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_797)] = mem[ceil32(return_data.size) + _610 + 576 len ceil32(_797)]
                            if ceil32(_797) <= _797:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23197 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23261 = mem[_23197]
                                require mem[_23197] <= test266151307()
                                require _23197 + mem[_23197] + 31 < _23197 + return_data.size
                                _23325 = mem[_23197 + mem[_23197]]
                                require mem[_23197 + mem[_23197]] <= test266151307()
                                require _23197 + ceil32(return_data.size) + ceil32(mem[_23197 + mem[_23197]]) + 32 <= test266151307() and ceil32(mem[_23197 + mem[_23197]]) + 32 >= 0
                                mem[64] = _23197 + ceil32(return_data.size) + ceil32(mem[_23197 + mem[_23197]]) + 32
                                mem[_23197 + ceil32(return_data.size)] = _23325
                                require _23261 + _23325 + 32 <= return_data.size
                                mem[_23197 + ceil32(return_data.size) + 32 len ceil32(_23325)] = mem[_23197 + _23261 + 32 len ceil32(_23325)]
                                if ceil32(_23325) <= _23325:
                                    _24989 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23325
                                    mem[mem[64] + 128 len ceil32(_23325)] = mem[_23197 + ceil32(return_data.size) + 32 len ceil32(_23325)]
                                    if ceil32(_23325) > _23325:
                                        mem[mem[64] + _23325 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_24989 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24989 + ceil32(_23325) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23197 + ceil32(return_data.size) + _23325 + 32] = 0
                                    _25053 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23325
                                    mem[mem[64] + 128 len ceil32(_23325)] = mem[_23197 + ceil32(return_data.size) + 32 len ceil32(_23325)]
                                    if ceil32(_23325) > _23325:
                                        mem[mem[64] + _23325 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25053 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25053 + ceil32(_23325) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _797 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23198 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23262 = mem[_23198]
                                require mem[_23198] <= test266151307()
                                require _23198 + mem[_23198] + 31 < _23198 + return_data.size
                                _23326 = mem[_23198 + mem[_23198]]
                                require mem[_23198 + mem[_23198]] <= test266151307()
                                require _23198 + ceil32(return_data.size) + ceil32(mem[_23198 + mem[_23198]]) + 32 <= test266151307() and ceil32(mem[_23198 + mem[_23198]]) + 32 >= 0
                                mem[64] = _23198 + ceil32(return_data.size) + ceil32(mem[_23198 + mem[_23198]]) + 32
                                mem[_23198 + ceil32(return_data.size)] = _23326
                                require _23262 + _23326 + 32 <= return_data.size
                                mem[_23198 + ceil32(return_data.size) + 32 len ceil32(_23326)] = mem[_23198 + _23262 + 32 len ceil32(_23326)]
                                if ceil32(_23326) <= _23326:
                                    _24990 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23326
                                    mem[mem[64] + 128 len ceil32(_23326)] = mem[_23198 + ceil32(return_data.size) + 32 len ceil32(_23326)]
                                    if ceil32(_23326) > _23326:
                                        mem[mem[64] + _23326 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_24990 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24990 + ceil32(_23326) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23198 + ceil32(return_data.size) + _23326 + 32] = 0
                                    _25054 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23326
                                    mem[mem[64] + 128 len ceil32(_23326)] = mem[_23198 + ceil32(return_data.size) + 32 len ceil32(_23326)]
                                    if ceil32(_23326) > _23326:
                                        mem[_25054 + _23326 + 128] = 0
                                    mem[_25054 + 32] = arg2
                                    mem[_25054 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25054 + ceil32(_23326) + -mem[64] + 128], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] = sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100)
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _726 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _891 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _726 + _891 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_891)] = mem[ceil32(return_data.size) + _726 + 576 len ceil32(_891)]
                            if ceil32(_891) <= _891:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23195 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23259 = mem[_23195]
                                require mem[_23195] <= test266151307()
                                require _23195 + mem[_23195] + 31 < _23195 + return_data.size
                                _23323 = mem[_23195 + mem[_23195]]
                                require mem[_23195 + mem[_23195]] <= test266151307()
                                require _23195 + ceil32(return_data.size) + ceil32(mem[_23195 + mem[_23195]]) + 32 <= test266151307() and ceil32(mem[_23195 + mem[_23195]]) + 32 >= 0
                                mem[64] = _23195 + ceil32(return_data.size) + ceil32(mem[_23195 + mem[_23195]]) + 32
                                mem[_23195 + ceil32(return_data.size)] = _23323
                                require _23259 + _23323 + 32 <= return_data.size
                                mem[_23195 + ceil32(return_data.size) + 32 len ceil32(_23323)] = mem[_23195 + _23259 + 32 len ceil32(_23323)]
                                if ceil32(_23323) <= _23323:
                                    _24987 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23323
                                    mem[mem[64] + 128 len ceil32(_23323)] = mem[_23195 + ceil32(return_data.size) + 32 len ceil32(_23323)]
                                    if ceil32(_23323) > _23323:
                                        mem[_24987 + _23323 + 128] = 0
                                    mem[_24987 + 32] = arg2
                                    mem[_24987 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24987 + ceil32(_23323) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23195 + ceil32(return_data.size) + _23323 + 32] = 0
                                    _25051 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23323
                                    mem[mem[64] + 128 len ceil32(_23323)] = mem[_23195 + ceil32(return_data.size) + 32 len ceil32(_23323)]
                                    if ceil32(_23323) > _23323:
                                        mem[mem[64] + _23323 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25051 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25051 + ceil32(_23323) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _891 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23196 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23260 = mem[_23196]
                                require mem[_23196] <= test266151307()
                                require _23196 + mem[_23196] + 31 < _23196 + return_data.size
                                _23324 = mem[_23196 + mem[_23196]]
                                require mem[_23196 + mem[_23196]] <= test266151307()
                                require _23196 + ceil32(return_data.size) + ceil32(mem[_23196 + mem[_23196]]) + 32 <= test266151307() and ceil32(mem[_23196 + mem[_23196]]) + 32 >= 0
                                mem[64] = _23196 + ceil32(return_data.size) + ceil32(mem[_23196 + mem[_23196]]) + 32
                                mem[_23196 + ceil32(return_data.size)] = _23324
                                require _23260 + _23324 + 32 <= return_data.size
                                mem[_23196 + ceil32(return_data.size) + 32 len ceil32(_23324)] = mem[_23196 + _23260 + 32 len ceil32(_23324)]
                                if ceil32(_23324) <= _23324:
                                    _24988 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23324
                                    mem[mem[64] + 128 len ceil32(_23324)] = mem[_23196 + ceil32(return_data.size) + 32 len ceil32(_23324)]
                                    if ceil32(_23324) > _23324:
                                        mem[mem[64] + _23324 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_24988 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24988 + ceil32(_23324) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23196 + ceil32(return_data.size) + _23324 + 32] = 0
                                    _25052 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23324
                                    mem[mem[64] + 128 len ceil32(_23324)] = mem[_23196 + ceil32(return_data.size) + 32 len ceil32(_23324)]
                                    if ceil32(_23324) > _23324:
                                        mem[_25052 + _23324 + 128] = 0
                                    mem[_25052 + 32] = arg2
                                    mem[_25052 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25052 + ceil32(_23324) + -mem[64] + 128], msg.sender, arg1
        else:
            require arg2
            require 28 * arg2 / arg2 == 28
            if not cashbackcode[address(msg.sender)]:
                if not arg2:
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] + (28 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                    mem[ceil32(return_data.size) + 96] = stor4
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
                    _284 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _349 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _284 + _349 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_349)] = mem[ceil32(return_data.size) + _284 + 576 len ceil32(_349)]
                    if ceil32(_349) <= _349:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 0
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23193 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23257 = mem[_23193]
                        require mem[_23193] <= test266151307()
                        require _23193 + mem[_23193] + 31 < _23193 + return_data.size
                        _23321 = mem[_23193 + mem[_23193]]
                        require mem[_23193 + mem[_23193]] <= test266151307()
                        require _23193 + ceil32(return_data.size) + ceil32(mem[_23193 + mem[_23193]]) + 32 <= test266151307() and ceil32(mem[_23193 + mem[_23193]]) + 32 >= 0
                        mem[64] = _23193 + ceil32(return_data.size) + ceil32(mem[_23193 + mem[_23193]]) + 32
                        mem[_23193 + ceil32(return_data.size)] = _23321
                        require _23257 + _23321 + 32 <= return_data.size
                        mem[_23193 + ceil32(return_data.size) + 32 len ceil32(_23321)] = mem[_23193 + _23257 + 32 len ceil32(_23321)]
                        if ceil32(_23321) <= _23321:
                            _24985 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23321
                            mem[mem[64] + 128 len ceil32(_23321)] = mem[_23193 + ceil32(return_data.size) + 32 len ceil32(_23321)]
                            if ceil32(_23321) > _23321:
                                mem[mem[64] + _23321 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_24985 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _24985 + ceil32(_23321) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23193 + ceil32(return_data.size) + _23321 + 32] = 0
                            _25049 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23321
                            mem[mem[64] + 128 len ceil32(_23321)] = mem[_23193 + ceil32(return_data.size) + 32 len ceil32(_23321)]
                            if ceil32(_23321) > _23321:
                                mem[mem[64] + _23321 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25049 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25049 + ceil32(_23321) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _349 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 0
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 0
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23194 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23258 = mem[_23194]
                        require mem[_23194] <= test266151307()
                        require _23194 + mem[_23194] + 31 < _23194 + return_data.size
                        _23322 = mem[_23194 + mem[_23194]]
                        require mem[_23194 + mem[_23194]] <= test266151307()
                        require _23194 + ceil32(return_data.size) + ceil32(mem[_23194 + mem[_23194]]) + 32 <= test266151307() and ceil32(mem[_23194 + mem[_23194]]) + 32 >= 0
                        mem[64] = _23194 + ceil32(return_data.size) + ceil32(mem[_23194 + mem[_23194]]) + 32
                        mem[_23194 + ceil32(return_data.size)] = _23322
                        require _23258 + _23322 + 32 <= return_data.size
                        mem[_23194 + ceil32(return_data.size) + 32 len ceil32(_23322)] = mem[_23194 + _23258 + 32 len ceil32(_23322)]
                        if ceil32(_23322) <= _23322:
                            _24986 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23322
                            mem[mem[64] + 128 len ceil32(_23322)] = mem[_23194 + ceil32(return_data.size) + 32 len ceil32(_23322)]
                            if ceil32(_23322) > _23322:
                                mem[mem[64] + _23322 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_24986 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _24986 + ceil32(_23322) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23194 + ceil32(return_data.size) + _23322 + 32] = 0
                            _25050 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23322
                            mem[mem[64] + 128 len ceil32(_23322)] = mem[_23194 + ceil32(return_data.size) + 32 len ceil32(_23322)]
                            if ceil32(_23322) > _23322:
                                mem[mem[64] + _23322 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25050 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25050 + ceil32(_23322) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = viewSuperOwner
                    emit 0x3bf019f5: viewSuperOwner, msg.sender
                    require sub_a54f12e4[address(arg1)] + (28 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                    mem[ceil32(return_data.size) + 96] = stor4
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
                    _330 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                    _383 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                    mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                    require _330 + _383 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_383)] = mem[ceil32(return_data.size) + _330 + 576 len ceil32(_383)]
                    if ceil32(_383) <= _383:
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 72 * arg2 / 100
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23191 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23255 = mem[_23191]
                        require mem[_23191] <= test266151307()
                        require _23191 + mem[_23191] + 31 < _23191 + return_data.size
                        _23319 = mem[_23191 + mem[_23191]]
                        require mem[_23191 + mem[_23191]] <= test266151307()
                        require _23191 + ceil32(return_data.size) + ceil32(mem[_23191 + mem[_23191]]) + 32 <= test266151307() and ceil32(mem[_23191 + mem[_23191]]) + 32 >= 0
                        mem[64] = _23191 + ceil32(return_data.size) + ceil32(mem[_23191 + mem[_23191]]) + 32
                        mem[_23191 + ceil32(return_data.size)] = _23319
                        require _23255 + _23319 + 32 <= return_data.size
                        mem[_23191 + ceil32(return_data.size) + 32 len ceil32(_23319)] = mem[_23191 + _23255 + 32 len ceil32(_23319)]
                        if ceil32(_23319) <= _23319:
                            _24983 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23319
                            mem[mem[64] + 128 len ceil32(_23319)] = mem[_23191 + ceil32(return_data.size) + 32 len ceil32(_23319)]
                            if ceil32(_23319) > _23319:
                                mem[mem[64] + _23319 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_24983 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _24983 + ceil32(_23319) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23191 + ceil32(return_data.size) + _23319 + 32] = 0
                            _25047 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23319
                            mem[mem[64] + 128 len ceil32(_23319)] = mem[_23191 + ceil32(return_data.size) + 32 len ceil32(_23319)]
                            if ceil32(_23319) > _23319:
                                mem[mem[64] + _23319 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25047 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25047 + ceil32(_23319) + -mem[64] + 128], msg.sender, arg1
                    else:
                        mem[(2 * ceil32(return_data.size)) + _383 + 576] = 0
                        mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                        mem[ceil32(return_data.size) + 288] = 72 * arg2 / 100
                        mem[ceil32(return_data.size) + 320] = 0
                        mem[ceil32(return_data.size) + 352] = block.timestamp
                        mem[ceil32(return_data.size) + 384] = percent
                        mem[ceil32(return_data.size) + 416] = 0
                        mem[ceil32(return_data.size) + 448] = 0
                        mem[ceil32(return_data.size) + 480] = 0
                        mem[ceil32(return_data.size) + 512] = viewSuperOwner
                        stor14[stor4].field_0 = stor4
                        stor14[stor4].field_256 = arg2
                        stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        address(stor14[stor4].field_768) = msg.sender
                        address(stor14[stor4].field_1024) = uint64(arg1) << 96
                        stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                        stor14[stor4].field_1536 = 72 * arg2 / 100
                        stor14[stor4].field_1792 = 0
                        stor14[stor4].field_2048 = block.timestamp
                        stor14[stor4].field_2304 = percent
                        stor14[stor4].field_2560 = 0
                        stor14[stor4].field_2816 = 0
                        stor14[stor4].field_3072 = 0
                        address(stor14[stor4].field_3328) = viewSuperOwner
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 11
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23192 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _23256 = mem[_23192]
                        require mem[_23192] <= test266151307()
                        require _23192 + mem[_23192] + 31 < _23192 + return_data.size
                        _23320 = mem[_23192 + mem[_23192]]
                        require mem[_23192 + mem[_23192]] <= test266151307()
                        require _23192 + ceil32(return_data.size) + ceil32(mem[_23192 + mem[_23192]]) + 32 <= test266151307() and ceil32(mem[_23192 + mem[_23192]]) + 32 >= 0
                        mem[64] = _23192 + ceil32(return_data.size) + ceil32(mem[_23192 + mem[_23192]]) + 32
                        mem[_23192 + ceil32(return_data.size)] = _23320
                        require _23256 + _23320 + 32 <= return_data.size
                        mem[_23192 + ceil32(return_data.size) + 32 len ceil32(_23320)] = mem[_23192 + _23256 + 32 len ceil32(_23320)]
                        if ceil32(_23320) <= _23320:
                            _24984 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23320
                            mem[mem[64] + 128 len ceil32(_23320)] = mem[_23192 + ceil32(return_data.size) + 32 len ceil32(_23320)]
                            if ceil32(_23320) > _23320:
                                mem[mem[64] + _23320 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_24984 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _24984 + ceil32(_23320) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[_23192 + ceil32(return_data.size) + _23320 + 32] = 0
                            _25048 = mem[64]
                            mem[mem[64]] = 96
                            mem[mem[64] + 96] = _23320
                            mem[mem[64] + 128 len ceil32(_23320)] = mem[_23192 + ceil32(return_data.size) + 32 len ceil32(_23320)]
                            if ceil32(_23320) > _23320:
                                mem[mem[64] + _23320 + 128] = 0
                            mem[mem[64] + 32] = arg2
                            mem[_25048 + 64] = block.timestamp + sub_e2afe3bb
                            emit 0xed175a8d: mem[mem[64] len _25048 + ceil32(_23320) + -mem[64] + 128], msg.sender, arg1
            else:
                require 12 * arg2 / 100 <= arg2
                if not arg2:
                    if sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor10[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor10[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                        mem[ceil32(return_data.size) + 96] = stor4
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
                        _329 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                        _382 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                        mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require _329 + _382 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_382)] = mem[ceil32(return_data.size) + _329 + 576 len ceil32(_382)]
                        if ceil32(_382) <= _382:
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                            mem[ceil32(return_data.size) + 320] = 0
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            stor14[stor4].field_1792 = 0
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23189 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23253 = mem[_23189]
                            require mem[_23189] <= test266151307()
                            require _23189 + mem[_23189] + 31 < _23189 + return_data.size
                            _23317 = mem[_23189 + mem[_23189]]
                            require mem[_23189 + mem[_23189]] <= test266151307()
                            require _23189 + ceil32(return_data.size) + ceil32(mem[_23189 + mem[_23189]]) + 32 <= test266151307() and ceil32(mem[_23189 + mem[_23189]]) + 32 >= 0
                            mem[64] = _23189 + ceil32(return_data.size) + ceil32(mem[_23189 + mem[_23189]]) + 32
                            mem[_23189 + ceil32(return_data.size)] = _23317
                            require _23253 + _23317 + 32 <= return_data.size
                            mem[_23189 + ceil32(return_data.size) + 32 len ceil32(_23317)] = mem[_23189 + _23253 + 32 len ceil32(_23317)]
                            if ceil32(_23317) <= _23317:
                                _24981 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23317
                                mem[mem[64] + 128 len ceil32(_23317)] = mem[_23189 + ceil32(return_data.size) + 32 len ceil32(_23317)]
                                if ceil32(_23317) > _23317:
                                    mem[mem[64] + _23317 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_24981 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _24981 + ceil32(_23317) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23189 + ceil32(return_data.size) + _23317 + 32] = 0
                                _25045 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23317
                                mem[mem[64] + 128 len ceil32(_23317)] = mem[_23189 + ceil32(return_data.size) + 32 len ceil32(_23317)]
                                if ceil32(_23317) > _23317:
                                    mem[_25045 + _23317 + 128] = 0
                                mem[_25045 + 32] = arg2
                                mem[_25045 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25045 + ceil32(_23317) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[(2 * ceil32(return_data.size)) + _382 + 576] = 0
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                            mem[ceil32(return_data.size) + 320] = 0
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            stor14[stor4].field_1792 = 0
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23190 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23254 = mem[_23190]
                            require mem[_23190] <= test266151307()
                            require _23190 + mem[_23190] + 31 < _23190 + return_data.size
                            _23318 = mem[_23190 + mem[_23190]]
                            require mem[_23190 + mem[_23190]] <= test266151307()
                            require _23190 + ceil32(return_data.size) + ceil32(mem[_23190 + mem[_23190]]) + 32 <= test266151307() and ceil32(mem[_23190 + mem[_23190]]) + 32 >= 0
                            mem[64] = _23190 + ceil32(return_data.size) + ceil32(mem[_23190 + mem[_23190]]) + 32
                            mem[_23190 + ceil32(return_data.size)] = _23318
                            require _23254 + _23318 + 32 <= return_data.size
                            mem[_23190 + ceil32(return_data.size) + 32 len ceil32(_23318)] = mem[_23190 + _23254 + 32 len ceil32(_23318)]
                            if ceil32(_23318) <= _23318:
                                _24982 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23318
                                mem[mem[64] + 128 len ceil32(_23318)] = mem[_23190 + ceil32(return_data.size) + 32 len ceil32(_23318)]
                                if ceil32(_23318) > _23318:
                                    mem[mem[64] + _23318 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_24982 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _24982 + ceil32(_23318) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23190 + ceil32(return_data.size) + _23318 + 32] = 0
                                _25046 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23318
                                mem[mem[64] + 128 len ceil32(_23318)] = mem[_23190 + ceil32(return_data.size) + 32 len ceil32(_23318)]
                                if ceil32(_23318) > _23318:
                                    mem[mem[64] + _23318 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25046 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25046 + ceil32(_23318) + -mem[64] + 128], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _608 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _778 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _608 + _778 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_778)] = mem[ceil32(return_data.size) + _608 + 576 len ceil32(_778)]
                            if ceil32(_778) <= _778:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23187 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23251 = mem[_23187]
                                require mem[_23187] <= test266151307()
                                require _23187 + mem[_23187] + 31 < _23187 + return_data.size
                                _23315 = mem[_23187 + mem[_23187]]
                                require mem[_23187 + mem[_23187]] <= test266151307()
                                require _23187 + ceil32(return_data.size) + ceil32(mem[_23187 + mem[_23187]]) + 32 <= test266151307() and ceil32(mem[_23187 + mem[_23187]]) + 32 >= 0
                                mem[64] = _23187 + ceil32(return_data.size) + ceil32(mem[_23187 + mem[_23187]]) + 32
                                mem[_23187 + ceil32(return_data.size)] = _23315
                                require _23251 + _23315 + 32 <= return_data.size
                                mem[_23187 + ceil32(return_data.size) + 32 len ceil32(_23315)] = mem[_23187 + _23251 + 32 len ceil32(_23315)]
                                if ceil32(_23315) <= _23315:
                                    _24979 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23315
                                    mem[mem[64] + 128 len ceil32(_23315)] = mem[_23187 + ceil32(return_data.size) + 32 len ceil32(_23315)]
                                    if ceil32(_23315) > _23315:
                                        mem[_24979 + _23315 + 128] = 0
                                    mem[_24979 + 32] = arg2
                                    mem[_24979 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24979 + ceil32(_23315) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23187 + ceil32(return_data.size) + _23315 + 32] = 0
                                    _25043 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23315
                                    mem[mem[64] + 128 len ceil32(_23315)] = mem[_23187 + ceil32(return_data.size) + 32 len ceil32(_23315)]
                                    if ceil32(_23315) > _23315:
                                        mem[mem[64] + _23315 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25043 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25043 + ceil32(_23315) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _778 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23188 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23252 = mem[_23188]
                                require mem[_23188] <= test266151307()
                                require _23188 + mem[_23188] + 31 < _23188 + return_data.size
                                _23316 = mem[_23188 + mem[_23188]]
                                require mem[_23188 + mem[_23188]] <= test266151307()
                                require _23188 + ceil32(return_data.size) + ceil32(mem[_23188 + mem[_23188]]) + 32 <= test266151307() and ceil32(mem[_23188 + mem[_23188]]) + 32 >= 0
                                mem[64] = _23188 + ceil32(return_data.size) + ceil32(mem[_23188 + mem[_23188]]) + 32
                                mem[_23188 + ceil32(return_data.size)] = _23316
                                require _23252 + _23316 + 32 <= return_data.size
                                mem[_23188 + ceil32(return_data.size) + 32 len ceil32(_23316)] = mem[_23188 + _23252 + 32 len ceil32(_23316)]
                                if ceil32(_23316) <= _23316:
                                    _24980 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23316
                                    mem[mem[64] + 128 len ceil32(_23316)] = mem[_23188 + ceil32(return_data.size) + 32 len ceil32(_23316)]
                                    if ceil32(_23316) > _23316:
                                        mem[mem[64] + _23316 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_24980 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24980 + ceil32(_23316) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23188 + ceil32(return_data.size) + _23316 + 32] = 0
                                    _25044 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23316
                                    mem[mem[64] + 128 len ceil32(_23316)] = mem[_23188 + ceil32(return_data.size) + 32 len ceil32(_23316)]
                                    if ceil32(_23316) > _23316:
                                        mem[mem[64] + _23316 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25044 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25044 + ceil32(_23316) + -mem[64] + 128], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] = sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100)
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _716 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _886 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _716 + _886 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_886)] = mem[ceil32(return_data.size) + _716 + 576 len ceil32(_886)]
                            if ceil32(_886) <= _886:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23185 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23249 = mem[_23185]
                                require mem[_23185] <= test266151307()
                                require _23185 + mem[_23185] + 31 < _23185 + return_data.size
                                _23313 = mem[_23185 + mem[_23185]]
                                require mem[_23185 + mem[_23185]] <= test266151307()
                                require _23185 + ceil32(return_data.size) + ceil32(mem[_23185 + mem[_23185]]) + 32 <= test266151307() and ceil32(mem[_23185 + mem[_23185]]) + 32 >= 0
                                mem[64] = _23185 + ceil32(return_data.size) + ceil32(mem[_23185 + mem[_23185]]) + 32
                                mem[_23185 + ceil32(return_data.size)] = _23313
                                require _23249 + _23313 + 32 <= return_data.size
                                mem[_23185 + ceil32(return_data.size) + 32 len ceil32(_23313)] = mem[_23185 + _23249 + 32 len ceil32(_23313)]
                                if ceil32(_23313) <= _23313:
                                    _24977 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23313
                                    mem[mem[64] + 128 len ceil32(_23313)] = mem[_23185 + ceil32(return_data.size) + 32 len ceil32(_23313)]
                                    if ceil32(_23313) > _23313:
                                        mem[mem[64] + _23313 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_24977 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24977 + ceil32(_23313) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23185 + ceil32(return_data.size) + _23313 + 32] = 0
                                    _25041 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23313
                                    mem[mem[64] + 128 len ceil32(_23313)] = mem[_23185 + ceil32(return_data.size) + 32 len ceil32(_23313)]
                                    if ceil32(_23313) > _23313:
                                        mem[mem[64] + _23313 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25041 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25041 + ceil32(_23313) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _886 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 0
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 0
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23186 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23250 = mem[_23186]
                                require mem[_23186] <= test266151307()
                                require _23186 + mem[_23186] + 31 < _23186 + return_data.size
                                _23314 = mem[_23186 + mem[_23186]]
                                require mem[_23186 + mem[_23186]] <= test266151307()
                                require _23186 + ceil32(return_data.size) + ceil32(mem[_23186 + mem[_23186]]) + 32 <= test266151307() and ceil32(mem[_23186 + mem[_23186]]) + 32 >= 0
                                mem[64] = _23186 + ceil32(return_data.size) + ceil32(mem[_23186 + mem[_23186]]) + 32
                                mem[_23186 + ceil32(return_data.size)] = _23314
                                require _23250 + _23314 + 32 <= return_data.size
                                mem[_23186 + ceil32(return_data.size) + 32 len ceil32(_23314)] = mem[_23186 + _23250 + 32 len ceil32(_23314)]
                                if ceil32(_23314) <= _23314:
                                    _24978 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23314
                                    mem[mem[64] + 128 len ceil32(_23314)] = mem[_23186 + ceil32(return_data.size) + 32 len ceil32(_23314)]
                                    if ceil32(_23314) > _23314:
                                        mem[mem[64] + _23314 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_24978 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24978 + ceil32(_23314) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23186 + ceil32(return_data.size) + _23314 + 32] = 0
                                    _25042 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23314
                                    mem[mem[64] + 128 len ceil32(_23314)] = mem[_23186 + ceil32(return_data.size) + 32 len ceil32(_23314)]
                                    if ceil32(_23314) > _23314:
                                        mem[_25042 + _23314 + 128] = 0
                                    mem[_25042 + 32] = arg2
                                    mem[_25042 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25042 + ceil32(_23314) + -mem[64] + 128], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    if sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor10[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor10[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                        mem[ceil32(return_data.size) + 96] = stor4
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
                        _365 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                        _403 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                        mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                        require _365 + _403 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_403)] = mem[ceil32(return_data.size) + _365 + 576 len ceil32(_403)]
                        if ceil32(_403) <= _403:
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                            mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            stor14[stor4].field_1792 = 16 * arg2 / 100
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23183 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23247 = mem[_23183]
                            require mem[_23183] <= test266151307()
                            require _23183 + mem[_23183] + 31 < _23183 + return_data.size
                            _23311 = mem[_23183 + mem[_23183]]
                            require mem[_23183 + mem[_23183]] <= test266151307()
                            require _23183 + ceil32(return_data.size) + ceil32(mem[_23183 + mem[_23183]]) + 32 <= test266151307() and ceil32(mem[_23183 + mem[_23183]]) + 32 >= 0
                            mem[64] = _23183 + ceil32(return_data.size) + ceil32(mem[_23183 + mem[_23183]]) + 32
                            mem[_23183 + ceil32(return_data.size)] = _23311
                            require _23247 + _23311 + 32 <= return_data.size
                            mem[_23183 + ceil32(return_data.size) + 32 len ceil32(_23311)] = mem[_23183 + _23247 + 32 len ceil32(_23311)]
                            if ceil32(_23311) <= _23311:
                                _24975 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23311
                                mem[mem[64] + 128 len ceil32(_23311)] = mem[_23183 + ceil32(return_data.size) + 32 len ceil32(_23311)]
                                if ceil32(_23311) > _23311:
                                    mem[mem[64] + _23311 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_24975 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _24975 + ceil32(_23311) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23183 + ceil32(return_data.size) + _23311 + 32] = 0
                                _25039 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23311
                                mem[mem[64] + 128 len ceil32(_23311)] = mem[_23183 + ceil32(return_data.size) + 32 len ceil32(_23311)]
                                if ceil32(_23311) > _23311:
                                    mem[mem[64] + _23311 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25039 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25039 + ceil32(_23311) + -mem[64] + 128], msg.sender, arg1
                        else:
                            mem[(2 * ceil32(return_data.size)) + _403 + 576] = 0
                            mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                            mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                            mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                            mem[ceil32(return_data.size) + 352] = block.timestamp
                            mem[ceil32(return_data.size) + 384] = percent
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                            stor14[stor4].field_0 = stor4
                            stor14[stor4].field_256 = arg2
                            stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            address(stor14[stor4].field_768) = msg.sender
                            address(stor14[stor4].field_1024) = uint64(arg1) << 96
                            stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                            stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            stor14[stor4].field_1792 = 16 * arg2 / 100
                            stor14[stor4].field_2048 = block.timestamp
                            stor14[stor4].field_2304 = percent
                            stor14[stor4].field_2560 = 0
                            stor14[stor4].field_2816 = 0
                            stor14[stor4].field_3072 = 0
                            address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 11
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23184 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _23248 = mem[_23184]
                            require mem[_23184] <= test266151307()
                            require _23184 + mem[_23184] + 31 < _23184 + return_data.size
                            _23312 = mem[_23184 + mem[_23184]]
                            require mem[_23184 + mem[_23184]] <= test266151307()
                            require _23184 + ceil32(return_data.size) + ceil32(mem[_23184 + mem[_23184]]) + 32 <= test266151307() and ceil32(mem[_23184 + mem[_23184]]) + 32 >= 0
                            mem[64] = _23184 + ceil32(return_data.size) + ceil32(mem[_23184 + mem[_23184]]) + 32
                            mem[_23184 + ceil32(return_data.size)] = _23312
                            require _23248 + _23312 + 32 <= return_data.size
                            mem[_23184 + ceil32(return_data.size) + 32 len ceil32(_23312)] = mem[_23184 + _23248 + 32 len ceil32(_23312)]
                            if ceil32(_23312) <= _23312:
                                _24976 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23312
                                mem[mem[64] + 128 len ceil32(_23312)] = mem[_23184 + ceil32(return_data.size) + 32 len ceil32(_23312)]
                                if ceil32(_23312) > _23312:
                                    mem[mem[64] + _23312 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_24976 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _24976 + ceil32(_23312) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[_23184 + ceil32(return_data.size) + _23312 + 32] = 0
                                _25040 = mem[64]
                                mem[mem[64]] = 96
                                mem[mem[64] + 96] = _23312
                                mem[mem[64] + 128 len ceil32(_23312)] = mem[_23184 + ceil32(return_data.size) + 32 len ceil32(_23312)]
                                if ceil32(_23312) > _23312:
                                    mem[mem[64] + _23312 + 128] = 0
                                mem[mem[64] + 32] = arg2
                                mem[_25040 + 64] = block.timestamp + sub_e2afe3bb
                                emit 0xed175a8d: mem[mem[64] len _25040 + ceil32(_23312) + -mem[64] + 128], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _715 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _877 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _715 + _877 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_877)] = mem[ceil32(return_data.size) + _715 + 576 len ceil32(_877)]
                            if ceil32(_877) <= _877:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23181 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23245 = mem[_23181]
                                require mem[_23181] <= test266151307()
                                require _23181 + mem[_23181] + 31 < _23181 + return_data.size
                                _23309 = mem[_23181 + mem[_23181]]
                                require mem[_23181 + mem[_23181]] <= test266151307()
                                require _23181 + ceil32(return_data.size) + ceil32(mem[_23181 + mem[_23181]]) + 32 <= test266151307() and ceil32(mem[_23181 + mem[_23181]]) + 32 >= 0
                                mem[64] = _23181 + ceil32(return_data.size) + ceil32(mem[_23181 + mem[_23181]]) + 32
                                mem[_23181 + ceil32(return_data.size)] = _23309
                                require _23245 + _23309 + 32 <= return_data.size
                                mem[_23181 + ceil32(return_data.size) + 32 len ceil32(_23309)] = mem[_23181 + _23245 + 32 len ceil32(_23309)]
                                if ceil32(_23309) <= _23309:
                                    _24973 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23309
                                    mem[mem[64] + 128 len ceil32(_23309)] = mem[_23181 + ceil32(return_data.size) + 32 len ceil32(_23309)]
                                    if ceil32(_23309) > _23309:
                                        mem[mem[64] + _23309 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_24973 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24973 + ceil32(_23309) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23181 + ceil32(return_data.size) + _23309 + 32] = 0
                                    _25037 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23309
                                    mem[mem[64] + 128 len ceil32(_23309)] = mem[_23181 + ceil32(return_data.size) + 32 len ceil32(_23309)]
                                    if ceil32(_23309) > _23309:
                                        mem[_25037 + _23309 + 128] = 0
                                    mem[_25037 + 32] = arg2
                                    mem[_25037 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25037 + ceil32(_23309) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _877 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23182 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23246 = mem[_23182]
                                require mem[_23182] <= test266151307()
                                require _23182 + mem[_23182] + 31 < _23182 + return_data.size
                                _23310 = mem[_23182 + mem[_23182]]
                                require mem[_23182 + mem[_23182]] <= test266151307()
                                require _23182 + ceil32(return_data.size) + ceil32(mem[_23182 + mem[_23182]]) + 32 <= test266151307() and ceil32(mem[_23182 + mem[_23182]]) + 32 >= 0
                                mem[64] = _23182 + ceil32(return_data.size) + ceil32(mem[_23182 + mem[_23182]]) + 32
                                mem[_23182 + ceil32(return_data.size)] = _23310
                                require _23246 + _23310 + 32 <= return_data.size
                                mem[_23182 + ceil32(return_data.size) + 32 len ceil32(_23310)] = mem[_23182 + _23246 + 32 len ceil32(_23310)]
                                if ceil32(_23310) <= _23310:
                                    _24974 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23310
                                    mem[mem[64] + 128 len ceil32(_23310)] = mem[_23182 + ceil32(return_data.size) + 32 len ceil32(_23310)]
                                    if ceil32(_23310) > _23310:
                                        mem[mem[64] + _23310 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_24974 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24974 + ceil32(_23310) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23182 + ceil32(return_data.size) + _23310 + 32] = 0
                                    _25038 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23310
                                    mem[mem[64] + 128 len ceil32(_23310)] = mem[_23182 + ceil32(return_data.size) + 32 len ceil32(_23310)]
                                    if ceil32(_23310) > _23310:
                                        mem[mem[64] + _23310 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25038 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25038 + ceil32(_23310) + -mem[64] + 128], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor10[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor10[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor10[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor10[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] = sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor10[address(msg.sender)]][address(arg1)] / 100)
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
                            mem[ceil32(return_data.size) + 96] = stor4
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
                            _830 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
                            _944 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
                            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
                            require _830 + _944 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576 len ceil32(_944)] = mem[ceil32(return_data.size) + _830 + 576 len ceil32(_944)]
                            if ceil32(_944) <= _944:
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23179 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23243 = mem[_23179]
                                require mem[_23179] <= test266151307()
                                require _23179 + mem[_23179] + 31 < _23179 + return_data.size
                                _23307 = mem[_23179 + mem[_23179]]
                                require mem[_23179 + mem[_23179]] <= test266151307()
                                require _23179 + ceil32(return_data.size) + ceil32(mem[_23179 + mem[_23179]]) + 32 <= test266151307() and ceil32(mem[_23179 + mem[_23179]]) + 32 >= 0
                                mem[64] = _23179 + ceil32(return_data.size) + ceil32(mem[_23179 + mem[_23179]]) + 32
                                mem[_23179 + ceil32(return_data.size)] = _23307
                                require _23243 + _23307 + 32 <= return_data.size
                                mem[_23179 + ceil32(return_data.size) + 32 len ceil32(_23307)] = mem[_23179 + _23243 + 32 len ceil32(_23307)]
                                if ceil32(_23307) <= _23307:
                                    _24971 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23307
                                    mem[mem[64] + 128 len ceil32(_23307)] = mem[_23179 + ceil32(return_data.size) + 32 len ceil32(_23307)]
                                    if ceil32(_23307) > _23307:
                                        mem[mem[64] + _23307 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_24971 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24971 + ceil32(_23307) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23179 + ceil32(return_data.size) + _23307 + 32] = 0
                                    _25035 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23307
                                    mem[mem[64] + 128 len ceil32(_23307)] = mem[_23179 + ceil32(return_data.size) + 32 len ceil32(_23307)]
                                    if ceil32(_23307) > _23307:
                                        mem[mem[64] + _23307 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_25035 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25035 + ceil32(_23307) + -mem[64] + 128], msg.sender, arg1
                            else:
                                mem[(2 * ceil32(return_data.size)) + _944 + 576] = 0
                                mem[ceil32(return_data.size) + 256] = (2 * ceil32(return_data.size)) + 544
                                mem[ceil32(return_data.size) + 288] = arg2 - (12 * arg2 / 100)
                                mem[ceil32(return_data.size) + 320] = 16 * arg2 / 100
                                mem[ceil32(return_data.size) + 352] = block.timestamp
                                mem[ceil32(return_data.size) + 384] = percent
                                mem[ceil32(return_data.size) + 416] = 0
                                mem[ceil32(return_data.size) + 448] = 0
                                mem[ceil32(return_data.size) + 480] = 0
                                mem[ceil32(return_data.size) + 512] = cashbackcode[address(msg.sender)]
                                stor14[stor4].field_0 = stor4
                                stor14[stor4].field_256 = arg2
                                stor14[stor4].field_512 = block.timestamp + sub_e2afe3bb
                                address(stor14[stor4].field_768) = msg.sender
                                address(stor14[stor4].field_1024) = uint64(arg1) << 96
                                stor14[stor4][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                                stor14[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                                stor14[stor4].field_1792 = 16 * arg2 / 100
                                stor14[stor4].field_2048 = block.timestamp
                                stor14[stor4].field_2304 = percent
                                stor14[stor4].field_2560 = 0
                                stor14[stor4].field_2816 = 0
                                stor14[stor4].field_3072 = 0
                                address(stor14[stor4].field_3328) = cashbackcode[address(msg.sender)]
                                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                                sub_6a37f573[address(arg1)] += arg2
                                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                                mem[0] = arg1
                                mem[32] = 11
                                sub_666a7370[address(arg1)] += arg2
                                stor4++
                                sub_93002f02++
                                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(arg1)
                                call arg1.0x95d89b41 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _23180 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _23244 = mem[_23180]
                                require mem[_23180] <= test266151307()
                                require _23180 + mem[_23180] + 31 < _23180 + return_data.size
                                _23308 = mem[_23180 + mem[_23180]]
                                require mem[_23180 + mem[_23180]] <= test266151307()
                                require _23180 + ceil32(return_data.size) + ceil32(mem[_23180 + mem[_23180]]) + 32 <= test266151307() and ceil32(mem[_23180 + mem[_23180]]) + 32 >= 0
                                mem[64] = _23180 + ceil32(return_data.size) + ceil32(mem[_23180 + mem[_23180]]) + 32
                                mem[_23180 + ceil32(return_data.size)] = _23308
                                require _23244 + _23308 + 32 <= return_data.size
                                mem[_23180 + ceil32(return_data.size) + 32 len ceil32(_23308)] = mem[_23180 + _23244 + 32 len ceil32(_23308)]
                                if ceil32(_23308) <= _23308:
                                    _24972 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23308
                                    mem[mem[64] + 128 len ceil32(_23308)] = mem[_23180 + ceil32(return_data.size) + 32 len ceil32(_23308)]
                                    if ceil32(_23308) > _23308:
                                        mem[mem[64] + _23308 + 128] = 0
                                    mem[mem[64] + 32] = arg2
                                    mem[_24972 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _24972 + ceil32(_23308) + -mem[64] + 128], msg.sender, arg1
                                else:
                                    mem[_23180 + ceil32(return_data.size) + _23308 + 32] = 0
                                    _25036 = mem[64]
                                    mem[mem[64]] = 96
                                    mem[mem[64] + 96] = _23308
                                    mem[mem[64] + 128 len ceil32(_23308)] = mem[_23180 + ceil32(return_data.size) + 32 len ceil32(_23308)]
                                    if ceil32(_23308) > _23308:
                                        mem[_25036 + _23308 + 128] = 0
                                    mem[_25036 + 32] = arg2
                                    mem[_25036 + 64] = block.timestamp + sub_e2afe3bb
                                    emit 0xed175a8d: mem[mem[64] len _25036 + ceil32(_23308) + -mem[64] + 128], msg.sender, arg1
}



}
