contract main {




// =====================  Runtime code  =====================


const GetContractBalance = eth.balance(this.address)


uint8 stor0; offset 160
uint128 stor0; offset 160
address viewSuperOwner;
address stor1;
array of uint256 sub_002b5c0a;
uint256 sub_e2afe3bb;
uint256 sub_da546cb2;
uint256 percent;
array of uint256 sub_11a3311c;
mapping of struct stor7;
uint256 stor8;
uint256 sub_93002f02;
mapping of uint256 sub_666a7370;
uint256 comission;
mapping of uint256 stor12;
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
    require stor12[0] + msg.value >= stor12[0]
    stor12[0] += msg.value
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

function sub_67456cf4(?) {
    require calldata.size - 4 >= 32
    return stor7[arg1].field_0, 
           address(stor7[arg1].field_768),
           address(stor7[arg1].field_1024),
           stor7[arg1].field_256,
           stor7[arg1].field_1536,
           stor7[arg1].field_2048,
           0,
           0,
           0
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
    while idx < stor8:
        mem[0] = idx
        mem[32] = 7
        if address(stor7[idx].field_768) != msg.sender:
            s = sha3(idx, 7)
            idx = idx + 1
            s = s
            continue 
        if address(stor7[idx].field_1024) != arg1:
            s = sha3(idx, 7)
            idx = idx + 1
            s = s
            continue 
        s = sha3(idx, 7)
        idx = idx + 1
        s = s + stor7[idx].field_256
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
    require stor12[address(arg1)] > 0
    stor12[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stor12[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor12[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function GetSafe(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = stor7[arg1][5].field_0
    idx = 128
    s = 0
    while stor7[arg1][5].length + 96 > idx:
        mem[idx + 32] = stor7[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor7[arg1].field_0, 
           address(stor7[arg1].field_768),
           address(stor7[arg1].field_1024),
           stor7[arg1].field_256,
           stor7[arg1].field_512,
           Array(len=stor7[arg1][5].length, data=mem[128 len ceil32(stor7[arg1][5].length)]),
           stor7[arg1].field_1536,
           stor7[arg1].field_2048,
           stor7[arg1].field_2304,
           stor7[arg1].field_2560,
           stor7[arg1].field_2816,
           address(stor7[arg1].field_3328)
}

function sub_650db56d(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require msg.sender == viewSuperOwner
    s = 0
    idx = 1
    s = 0
    while idx < stor8:
        mem[0] = idx
        mem[32] = 7
        if not stor7[idx].field_0:
            s = sha3(idx, 7)
            idx = idx + 1
            s = s
            continue 
        if not arg1:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor7[idx].field_1024))
            call address(stor7[idx].field_1024).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_37] >= stor7[idx].field_1536
        else:
            if address(stor7[idx].field_1024) == stor1:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor7[idx].field_1024))
                call address(stor7[idx].field_1024).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _38 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_38] >= stor7[idx].field_1536
            else:
                if arg1:
                    s = sha3(idx, 7)
                    idx = idx + 1
                    s = s
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor7[idx].field_1024))
                call address(stor7[idx].field_1024).0x70a08231 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _39 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_39] >= stor7[idx].field_1536
        mem[mem[64] + 4] = address(stor7[idx].field_768)
        mem[mem[64] + 36] = stor7[idx].field_1536
        require ext_code.size(address(stor7[idx].field_1024))
        call address(stor7[idx].field_1024).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor7[idx].field_768), stor7[idx].field_1536
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        sub_93002f02--
        s = sha3(idx, 7)
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
    if stor12[0] <= 0:
        idx = 0
        s = 0
        t = 0
        t = stor[sha3(mem[0 len 64])]
        while idx < sub_1c019a52.length:
            mem[0] = address(sub_1c019a52[idx])
            mem[32] = 12
            if stor12[address(stor13[idx])] <= 0:
                idx = idx + 1
                s = s
                t = address(sub_1c019a52[idx])
                t = t
                continue 
            mem[0] = address(sub_1c019a52[idx])
            mem[32] = 12
            stor12[address(stor13[idx])] = 0
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = stor12[address(stor13[idx])]
            require ext_code.size(address(sub_1c019a52[idx]))
            call address(sub_1c019a52[idx]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor12[address(stor13[idx])]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            idx = idx + 1
            s = address(sub_1c019a52[idx])
            t = address(sub_1c019a52[idx])
            t = stor12[address(stor13[idx])]
            continue 
    else:
        if stor12[0] > eth.balance(this.address):
            idx = 0
            s = 0
            t = 0
            t = stor[sha3(mem[0 len 64])]
            while idx < sub_1c019a52.length:
                mem[0] = address(sub_1c019a52[idx])
                mem[32] = 12
                if stor12[address(stor13[idx])] <= 0:
                    idx = idx + 1
                    s = s
                    t = address(sub_1c019a52[idx])
                    t = t
                    continue 
                mem[0] = address(sub_1c019a52[idx])
                mem[32] = 12
                stor12[address(stor13[idx])] = 0
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor12[address(stor13[idx])]
                require ext_code.size(address(sub_1c019a52[idx]))
                call address(sub_1c019a52[idx]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor12[address(stor13[idx])]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = idx + 1
                s = address(sub_1c019a52[idx])
                t = address(sub_1c019a52[idx])
                t = stor12[address(stor13[idx])]
                continue 
        else:
            stor12[0] = 0
            call msg.sender with:
               value stor12[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = 0
            t = 0
            t = stor12[0]
            while idx < sub_1c019a52.length:
                mem[0] = address(sub_1c019a52[idx])
                mem[32] = 12
                if stor12[address(stor13[idx])] <= 0:
                    idx = idx + 1
                    s = s
                    t = address(sub_1c019a52[idx])
                    t = t
                    continue 
                mem[0] = address(sub_1c019a52[idx])
                mem[32] = 12
                stor12[address(stor13[idx])] = 0
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor12[address(stor13[idx])]
                require ext_code.size(address(sub_1c019a52[idx]))
                call address(sub_1c019a52[idx]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor12[address(stor13[idx])]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = idx + 1
                s = address(sub_1c019a52[idx])
                t = address(sub_1c019a52[idx])
                t = stor12[address(stor13[idx])]
                continue 
    sub_1c019a52.length = 0
    if sub_1c019a52.length > 0:
        idx = 0
        while sub_1c019a52.length > idx:
            uint256(sub_1c019a52[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_cfe7de07(?) {
    require calldata.size - 4 >= 64
    require msg.sender == viewSuperOwner
    require arg1
    require arg2
    require stor7[arg2].field_0
    require address(stor7[arg2].field_1024) == arg1
    if arg1 == stor1:
        if stor7[arg2].field_512 >= block.timestamp:
            require arg1 != stor1
    mem[128] = stor7[arg2][5].field_0
    idx = 128
    s = 0
    while stor7[arg2][5].length + 96 > idx:
        mem[idx + 32] = stor7[arg2][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor7[arg2].field_512 < block.timestamp:
        require ext_code.size(address(stor7[arg2].field_1024))
        call address(stor7[arg2].field_1024).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= stor7[arg2].field_1536
        require ext_code.size(address(stor7[arg2].field_1024))
        call address(stor7[arg2].field_1024).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor7[arg2].field_768), stor7[arg2].field_1536
        mem[ceil32(stor7[arg2][5].length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require stor7[arg2].field_1536 <= sub_666a7370[address(stor7[arg2].field_1024)]
        sub_666a7370[address(stor7[arg2].field_1024)] -= stor7[arg2].field_1536
        stor7[arg2].field_1536 = 0
        mem[ceil32(stor7[arg2][5].length) + (2 * ceil32(return_data.size)) + 128] = 96
        emit 0x959346e7: Array(len=stor7[arg2][5].length, data=mem[128 len ceil32(stor7[arg2][5].length)]), stor7[arg2].field_1536, block.timestamp, msg.sender, address(stor7[arg2].field_1024)
    else:
        if block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600 < 3:
            require stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600 <= stor7[arg2].field_1536
            stor7[arg2].field_1536 += -1 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600
            stor7[arg2].field_2048 = block.timestamp
            require stor7[arg2].field_256
            if not stor7[arg2].field_256:
                stor7[arg2].field_2816 = stor7[arg2].field_256 - stor7[arg2].field_1536 + (stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600)
                stor7[arg2].field_2560 = 100 * 10^18 * stor7[arg2].field_256 - stor7[arg2].field_1536 + (stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600) / stor7[arg2].field_256
            else:
                require 12 * stor7[arg2].field_256 / stor7[arg2].field_256 == 12
                require stor7[arg2].field_256
                stor7[arg2].field_2816 = stor7[arg2].field_256 - (12 * stor7[arg2].field_256 / 100) - stor7[arg2].field_1536 + (stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600)
                stor7[arg2].field_2560 = 100 * 10^18 * stor7[arg2].field_256 - (12 * stor7[arg2].field_256 / 100) - stor7[arg2].field_1536 + (stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600) / stor7[arg2].field_256
            require ext_code.size(address(stor7[arg2].field_1024))
            call address(stor7[arg2].field_1024).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600
            require ext_code.size(address(stor7[arg2].field_1024))
            call address(stor7[arg2].field_1024).0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor7[arg2].field_768), stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600
            mem[ceil32(stor7[arg2][5].length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600 <= sub_666a7370[address(stor7[arg2].field_1024)]
            sub_666a7370[address(stor7[arg2].field_1024)] += -1 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600
            mem[ceil32(stor7[arg2][5].length) + (2 * ceil32(return_data.size)) + 128] = 96
            emit 0x959346e7: Array(len=stor7[arg2][5].length, data=mem[128 len ceil32(stor7[arg2][5].length)]), stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600, block.timestamp, msg.sender, address(stor7[arg2].field_1024)
        else:
            require 3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 <= stor7[arg2].field_1536
            stor7[arg2].field_1536 += -3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100
            stor7[arg2].field_2048 = block.timestamp
            require stor7[arg2].field_256
            if not stor7[arg2].field_256:
                stor7[arg2].field_2816 = stor7[arg2].field_256 - stor7[arg2].field_1536 + (3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100)
                stor7[arg2].field_2560 = 100 * 10^18 * stor7[arg2].field_256 - stor7[arg2].field_1536 + (3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100) / stor7[arg2].field_256
            else:
                require 12 * stor7[arg2].field_256 / stor7[arg2].field_256 == 12
                require stor7[arg2].field_256
                stor7[arg2].field_2816 = stor7[arg2].field_256 - (12 * stor7[arg2].field_256 / 100) - stor7[arg2].field_1536 + (3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100)
                stor7[arg2].field_2560 = 100 * 10^18 * stor7[arg2].field_256 - (12 * stor7[arg2].field_256 / 100) - stor7[arg2].field_1536 + (3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100) / stor7[arg2].field_256
            require ext_code.size(address(stor7[arg2].field_1024))
            call address(stor7[arg2].field_1024).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100
            require ext_code.size(address(stor7[arg2].field_1024))
            call address(stor7[arg2].field_1024).0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor7[arg2].field_768), 3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100
            mem[ceil32(stor7[arg2][5].length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 <= sub_666a7370[address(stor7[arg2].field_1024)]
            sub_666a7370[address(stor7[arg2].field_1024)] += -3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100
            mem[ceil32(stor7[arg2][5].length) + (2 * ceil32(return_data.size)) + 128] = 96
            emit 0x959346e7: Array(len=stor7[arg2][5].length, data=mem[128 len ceil32(stor7[arg2][5].length)]), 3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100, block.timestamp, msg.sender, address(stor7[arg2].field_1024)
}

function ClaimTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2
    require address(stor7[arg2].field_768) == msg.sender
    require stor7[arg2].field_0
    require address(stor7[arg2].field_1024) == arg1
    if arg1 == stor1:
        if stor7[arg2].field_512 >= block.timestamp:
            require arg1 != stor1
    mem[128] = stor7[arg2][5].field_0
    idx = 128
    s = 0
    while stor7[arg2][5].length + 96 > idx:
        mem[idx + 32] = stor7[arg2][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor7[arg2].field_512 < block.timestamp:
        require ext_code.size(address(stor7[arg2].field_1024))
        call address(stor7[arg2].field_1024).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= stor7[arg2].field_1536
        require ext_code.size(address(stor7[arg2].field_1024))
        call address(stor7[arg2].field_1024).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor7[arg2].field_768), stor7[arg2].field_1536
        mem[ceil32(stor7[arg2][5].length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require stor7[arg2].field_1536 <= sub_666a7370[address(stor7[arg2].field_1024)]
        sub_666a7370[address(stor7[arg2].field_1024)] -= stor7[arg2].field_1536
        stor7[arg2].field_1536 = 0
        mem[ceil32(stor7[arg2][5].length) + (2 * ceil32(return_data.size)) + 128] = 96
        emit 0x959346e7: Array(len=stor7[arg2][5].length, data=mem[128 len ceil32(stor7[arg2][5].length)]), stor7[arg2].field_1536, block.timestamp, msg.sender, address(stor7[arg2].field_1024)
    else:
        if block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600 < 3:
            require stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600 <= stor7[arg2].field_1536
            stor7[arg2].field_1536 += -1 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600
            stor7[arg2].field_2048 = block.timestamp
            require stor7[arg2].field_256
            if not stor7[arg2].field_256:
                stor7[arg2].field_2816 = stor7[arg2].field_256 - stor7[arg2].field_1536 + (stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600)
                stor7[arg2].field_2560 = 100 * 10^18 * stor7[arg2].field_256 - stor7[arg2].field_1536 + (stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600) / stor7[arg2].field_256
            else:
                require 12 * stor7[arg2].field_256 / stor7[arg2].field_256 == 12
                require stor7[arg2].field_256
                stor7[arg2].field_2816 = stor7[arg2].field_256 - (12 * stor7[arg2].field_256 / 100) - stor7[arg2].field_1536 + (stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600)
                stor7[arg2].field_2560 = 100 * 10^18 * stor7[arg2].field_256 - (12 * stor7[arg2].field_256 / 100) - stor7[arg2].field_1536 + (stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600) / stor7[arg2].field_256
            require ext_code.size(address(stor7[arg2].field_1024))
            call address(stor7[arg2].field_1024).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600
            require ext_code.size(address(stor7[arg2].field_1024))
            call address(stor7[arg2].field_1024).0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor7[arg2].field_768), stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600
            mem[ceil32(stor7[arg2][5].length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600 <= sub_666a7370[address(stor7[arg2].field_1024)]
            sub_666a7370[address(stor7[arg2].field_1024)] += -1 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600
            mem[ceil32(stor7[arg2][5].length) + (2 * ceil32(return_data.size)) + 128] = 96
            emit 0x959346e7: Array(len=stor7[arg2][5].length, data=mem[128 len ceil32(stor7[arg2][5].length)]), stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 * block.timestamp - stor7[arg2].field_2048 / 720 * 24 * 3600, block.timestamp, msg.sender, address(stor7[arg2].field_1024)
        else:
            require 3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 <= stor7[arg2].field_1536
            stor7[arg2].field_1536 += -3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100
            stor7[arg2].field_2048 = block.timestamp
            require stor7[arg2].field_256
            if not stor7[arg2].field_256:
                stor7[arg2].field_2816 = stor7[arg2].field_256 - stor7[arg2].field_1536 + (3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100)
                stor7[arg2].field_2560 = 100 * 10^18 * stor7[arg2].field_256 - stor7[arg2].field_1536 + (3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100) / stor7[arg2].field_256
            else:
                require 12 * stor7[arg2].field_256 / stor7[arg2].field_256 == 12
                require stor7[arg2].field_256
                stor7[arg2].field_2816 = stor7[arg2].field_256 - (12 * stor7[arg2].field_256 / 100) - stor7[arg2].field_1536 + (3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100)
                stor7[arg2].field_2560 = 100 * 10^18 * stor7[arg2].field_256 - (12 * stor7[arg2].field_256 / 100) - stor7[arg2].field_1536 + (3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100) / stor7[arg2].field_256
            require ext_code.size(address(stor7[arg2].field_1024))
            call address(stor7[arg2].field_1024).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100
            require ext_code.size(address(stor7[arg2].field_1024))
            call address(stor7[arg2].field_1024).0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor7[arg2].field_768), 3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100
            mem[ceil32(stor7[arg2][5].length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100 <= sub_666a7370[address(stor7[arg2].field_1024)]
            sub_666a7370[address(stor7[arg2].field_1024)] += -3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100
            mem[ceil32(stor7[arg2][5].length) + (2 * ceil32(return_data.size)) + 128] = 96
            emit 0x959346e7: Array(len=stor7[arg2][5].length, data=mem[128 len ceil32(stor7[arg2][5].length)]), 3 * stor7[arg2].field_256 * stor7[arg2].field_2304 / 100, block.timestamp, msg.sender, address(stor7[arg2].field_1024)
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
            mem[(32 * idx) + (64 * sub_1c019a52.length) + 192] = stor12[mem[(32 * idx) + 140 len 20]]
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
    mem[128 len 32 * sub_1c019a52.length] = code.data[14149 len 32 * sub_1c019a52.length]
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
            mem[(32 * idx) + _102 + 32] = stor12[mem[(32 * idx) + 140 len 20]]
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
    mem[_102 + 32 len 32 * sub_1c019a52.length] = code.data[14149 len 32 * sub_1c019a52.length]
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
        mem[(32 * idx) + _102 + 32] = stor12[mem[(32 * idx) + 140 len 20]]
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
            sub_11a3311c[address(msg.sender)]++
            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor8
            mem[ceil32(return_data.size) + 96] = stor8
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
            _28 = mem[ceil32(return_data.size) + 544]
            require mem[ceil32(return_data.size) + 544] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
            _32 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
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
                stor7[stor8].field_0 = stor8
                stor7[stor8].field_256 = arg2
                stor7[stor8].field_512 = block.timestamp + sub_e2afe3bb
                address(stor7[stor8].field_768) = msg.sender
                address(stor7[stor8].field_1024) = uint64(arg1) << 96
                stor7[stor8][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                stor7[stor8].field_1536 = arg2
                stor7[stor8].field_1792 = 0
                stor7[stor8].field_2048 = block.timestamp
                stor7[stor8].field_2304 = percent
                stor7[stor8].field_2560 = 0
                stor7[stor8].field_2816 = 0
                stor7[stor8].field_3072 = 0
                address(stor7[stor8].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                mem[0] = arg1
                mem[32] = 10
                sub_666a7370[address(arg1)] += arg2
                stor8++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2356 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2367 = mem[_2356]
                require mem[_2356] <= test266151307()
                require _2356 + mem[_2356] + 31 < _2356 + return_data.size
                _2407 = mem[_2356 + mem[_2356]]
                require mem[_2356 + mem[_2356]] <= test266151307()
                require _2356 + ceil32(return_data.size) + ceil32(mem[_2356 + mem[_2356]]) + 32 <= test266151307() and ceil32(mem[_2356 + mem[_2356]]) + 32 >= 0
                mem[64] = _2356 + ceil32(return_data.size) + ceil32(mem[_2356 + mem[_2356]]) + 32
                mem[_2356 + ceil32(return_data.size)] = _2407
                require _2367 + _2407 + 32 <= return_data.size
                mem[_2356 + ceil32(return_data.size) + 32 len ceil32(_2407)] = mem[_2356 + _2367 + 32 len ceil32(_2407)]
                if ceil32(_2407) <= _2407:
                    _2615 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2407
                    mem[mem[64] + 128 len ceil32(_2407)] = mem[_2356 + ceil32(return_data.size) + 32 len ceil32(_2407)]
                    if ceil32(_2407) > _2407:
                        mem[_2615 + _2407 + 128] = 0
                    mem[_2615 + 32] = arg2
                    mem[_2615 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2615 + ceil32(_2407) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2356 + ceil32(return_data.size) + _2407 + 32] = 0
                    _2623 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2407
                    mem[mem[64] + 128 len ceil32(_2407)] = mem[_2356 + ceil32(return_data.size) + 32 len ceil32(_2407)]
                    if ceil32(_2407) > _2407:
                        mem[_2623 + _2407 + 128] = 0
                    mem[_2623 + 32] = arg2
                    mem[_2623 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2623 + ceil32(_2407) + -mem[64] + 128], msg.sender, arg1
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
                stor7[stor8].field_0 = stor8
                stor7[stor8].field_256 = arg2
                stor7[stor8].field_512 = block.timestamp + sub_e2afe3bb
                address(stor7[stor8].field_768) = msg.sender
                address(stor7[stor8].field_1024) = uint64(arg1) << 96
                stor7[stor8][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                stor7[stor8].field_1536 = arg2
                stor7[stor8].field_1792 = 0
                stor7[stor8].field_2048 = block.timestamp
                stor7[stor8].field_2304 = percent
                stor7[stor8].field_2560 = 0
                stor7[stor8].field_2816 = 0
                stor7[stor8].field_3072 = 0
                address(stor7[stor8].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                mem[0] = arg1
                mem[32] = 10
                sub_666a7370[address(arg1)] += arg2
                stor8++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2359 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2368 = mem[_2359]
                require mem[_2359] <= test266151307()
                require _2359 + mem[_2359] + 31 < _2359 + return_data.size
                _2408 = mem[_2359 + mem[_2359]]
                require mem[_2359 + mem[_2359]] <= test266151307()
                require _2359 + ceil32(return_data.size) + ceil32(mem[_2359 + mem[_2359]]) + 32 <= test266151307() and ceil32(mem[_2359 + mem[_2359]]) + 32 >= 0
                mem[64] = _2359 + ceil32(return_data.size) + ceil32(mem[_2359 + mem[_2359]]) + 32
                mem[_2359 + ceil32(return_data.size)] = _2408
                require _2368 + _2408 + 32 <= return_data.size
                mem[_2359 + ceil32(return_data.size) + 32 len ceil32(_2408)] = mem[_2359 + _2368 + 32 len ceil32(_2408)]
                if ceil32(_2408) <= _2408:
                    _2616 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2408
                    mem[mem[64] + 128 len ceil32(_2408)] = mem[_2359 + ceil32(return_data.size) + 32 len ceil32(_2408)]
                    if ceil32(_2408) > _2408:
                        mem[mem[64] + _2408 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2616 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2616 + ceil32(_2408) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2359 + ceil32(return_data.size) + _2408 + 32] = 0
                    _2624 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2408
                    mem[mem[64] + 128 len ceil32(_2408)] = mem[_2359 + ceil32(return_data.size) + 32 len ceil32(_2408)]
                    if ceil32(_2408) > _2408:
                        mem[mem[64] + _2408 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2624 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2624 + ceil32(_2408) + -mem[64] + 128], msg.sender, arg1
        else:
            require arg2
            require 16 * arg2 / arg2 == 16
            sub_11a3311c[address(msg.sender)]++
            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor8
            mem[ceil32(return_data.size) + 96] = stor8
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
            _31 = mem[ceil32(return_data.size) + 544]
            require mem[ceil32(return_data.size) + 544] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
            _35 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
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
                stor7[stor8].field_0 = stor8
                stor7[stor8].field_256 = arg2
                stor7[stor8].field_512 = block.timestamp + sub_e2afe3bb
                address(stor7[stor8].field_768) = msg.sender
                address(stor7[stor8].field_1024) = uint64(arg1) << 96
                stor7[stor8][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                stor7[stor8].field_1536 = arg2
                stor7[stor8].field_1792 = 16 * arg2 / 100
                stor7[stor8].field_2048 = block.timestamp
                stor7[stor8].field_2304 = percent
                stor7[stor8].field_2560 = 0
                stor7[stor8].field_2816 = 0
                stor7[stor8].field_3072 = 0
                address(stor7[stor8].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                mem[0] = arg1
                mem[32] = 10
                sub_666a7370[address(arg1)] += arg2
                stor8++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2350 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2365 = mem[_2350]
                require mem[_2350] <= test266151307()
                require _2350 + mem[_2350] + 31 < _2350 + return_data.size
                _2405 = mem[_2350 + mem[_2350]]
                require mem[_2350 + mem[_2350]] <= test266151307()
                require _2350 + ceil32(return_data.size) + ceil32(mem[_2350 + mem[_2350]]) + 32 <= test266151307() and ceil32(mem[_2350 + mem[_2350]]) + 32 >= 0
                mem[64] = _2350 + ceil32(return_data.size) + ceil32(mem[_2350 + mem[_2350]]) + 32
                mem[_2350 + ceil32(return_data.size)] = _2405
                require _2365 + _2405 + 32 <= return_data.size
                mem[_2350 + ceil32(return_data.size) + 32 len ceil32(_2405)] = mem[_2350 + _2365 + 32 len ceil32(_2405)]
                if ceil32(_2405) <= _2405:
                    _2613 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2405
                    mem[mem[64] + 128 len ceil32(_2405)] = mem[_2350 + ceil32(return_data.size) + 32 len ceil32(_2405)]
                    if ceil32(_2405) > _2405:
                        mem[_2613 + _2405 + 128] = 0
                    mem[_2613 + 32] = arg2
                    mem[_2613 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2613 + ceil32(_2405) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2350 + ceil32(return_data.size) + _2405 + 32] = 0
                    _2621 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2405
                    mem[mem[64] + 128 len ceil32(_2405)] = mem[_2350 + ceil32(return_data.size) + 32 len ceil32(_2405)]
                    if ceil32(_2405) > _2405:
                        mem[mem[64] + _2405 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2621 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2621 + ceil32(_2405) + -mem[64] + 128], msg.sender, arg1
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
                stor7[stor8].field_0 = stor8
                stor7[stor8].field_256 = arg2
                stor7[stor8].field_512 = block.timestamp + sub_e2afe3bb
                address(stor7[stor8].field_768) = msg.sender
                address(stor7[stor8].field_1024) = uint64(arg1) << 96
                stor7[stor8][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                stor7[stor8].field_1536 = arg2
                stor7[stor8].field_1792 = 16 * arg2 / 100
                stor7[stor8].field_2048 = block.timestamp
                stor7[stor8].field_2304 = percent
                stor7[stor8].field_2560 = 0
                stor7[stor8].field_2816 = 0
                stor7[stor8].field_3072 = 0
                address(stor7[stor8].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                mem[0] = arg1
                mem[32] = 10
                sub_666a7370[address(arg1)] += arg2
                stor8++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2353 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2366 = mem[_2353]
                require mem[_2353] <= test266151307()
                require _2353 + mem[_2353] + 31 < _2353 + return_data.size
                _2406 = mem[_2353 + mem[_2353]]
                require mem[_2353 + mem[_2353]] <= test266151307()
                require _2353 + ceil32(return_data.size) + ceil32(mem[_2353 + mem[_2353]]) + 32 <= test266151307() and ceil32(mem[_2353 + mem[_2353]]) + 32 >= 0
                mem[64] = _2353 + ceil32(return_data.size) + ceil32(mem[_2353 + mem[_2353]]) + 32
                mem[_2353 + ceil32(return_data.size)] = _2406
                require _2366 + _2406 + 32 <= return_data.size
                mem[_2353 + ceil32(return_data.size) + 32 len ceil32(_2406)] = mem[_2353 + _2366 + 32 len ceil32(_2406)]
                if ceil32(_2406) <= _2406:
                    _2614 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2406
                    mem[mem[64] + 128 len ceil32(_2406)] = mem[_2353 + ceil32(return_data.size) + 32 len ceil32(_2406)]
                    if ceil32(_2406) > _2406:
                        mem[mem[64] + _2406 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2614 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2614 + ceil32(_2406) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2353 + ceil32(return_data.size) + _2406 + 32] = 0
                    _2622 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2406
                    mem[mem[64] + 128 len ceil32(_2406)] = mem[_2353 + ceil32(return_data.size) + 32 len ceil32(_2406)]
                    if ceil32(_2406) > _2406:
                        mem[_2622 + _2406 + 128] = 0
                    mem[_2622 + 32] = arg2
                    mem[_2622 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2622 + ceil32(_2406) + -mem[64] + 128], msg.sender, arg1
    else:
        require arg2
        require 12 * arg2 / arg2 == 12
        require 12 * arg2 / 100 <= arg2
        if not arg2:
            sub_11a3311c[address(msg.sender)]++
            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor8
            mem[ceil32(return_data.size) + 96] = stor8
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
            _30 = mem[ceil32(return_data.size) + 544]
            require mem[ceil32(return_data.size) + 544] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
            _34 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
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
                stor7[stor8].field_0 = stor8
                stor7[stor8].field_256 = arg2
                stor7[stor8].field_512 = block.timestamp + sub_e2afe3bb
                address(stor7[stor8].field_768) = msg.sender
                address(stor7[stor8].field_1024) = uint64(arg1) << 96
                stor7[stor8][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                stor7[stor8].field_1536 = arg2 - (12 * arg2 / 100)
                stor7[stor8].field_1792 = 0
                stor7[stor8].field_2048 = block.timestamp
                stor7[stor8].field_2304 = percent
                stor7[stor8].field_2560 = 0
                stor7[stor8].field_2816 = 0
                stor7[stor8].field_3072 = 0
                address(stor7[stor8].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                mem[0] = arg1
                mem[32] = 10
                sub_666a7370[address(arg1)] += arg2
                stor8++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2344 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2363 = mem[_2344]
                require mem[_2344] <= test266151307()
                require _2344 + mem[_2344] + 31 < _2344 + return_data.size
                _2403 = mem[_2344 + mem[_2344]]
                require mem[_2344 + mem[_2344]] <= test266151307()
                require _2344 + ceil32(return_data.size) + ceil32(mem[_2344 + mem[_2344]]) + 32 <= test266151307() and ceil32(mem[_2344 + mem[_2344]]) + 32 >= 0
                mem[64] = _2344 + ceil32(return_data.size) + ceil32(mem[_2344 + mem[_2344]]) + 32
                mem[_2344 + ceil32(return_data.size)] = _2403
                require _2363 + _2403 + 32 <= return_data.size
                mem[_2344 + ceil32(return_data.size) + 32 len ceil32(_2403)] = mem[_2344 + _2363 + 32 len ceil32(_2403)]
                if ceil32(_2403) <= _2403:
                    _2611 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2403
                    mem[mem[64] + 128 len ceil32(_2403)] = mem[_2344 + ceil32(return_data.size) + 32 len ceil32(_2403)]
                    if ceil32(_2403) > _2403:
                        mem[mem[64] + _2403 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2611 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2611 + ceil32(_2403) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2344 + ceil32(return_data.size) + _2403 + 32] = 0
                    _2619 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2403
                    mem[mem[64] + 128 len ceil32(_2403)] = mem[_2344 + ceil32(return_data.size) + 32 len ceil32(_2403)]
                    if ceil32(_2403) > _2403:
                        mem[mem[64] + _2403 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2619 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2619 + ceil32(_2403) + -mem[64] + 128], msg.sender, arg1
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
                stor7[stor8].field_0 = stor8
                stor7[stor8].field_256 = arg2
                stor7[stor8].field_512 = block.timestamp + sub_e2afe3bb
                address(stor7[stor8].field_768) = msg.sender
                address(stor7[stor8].field_1024) = uint64(arg1) << 96
                stor7[stor8][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                stor7[stor8].field_1536 = arg2 - (12 * arg2 / 100)
                stor7[stor8].field_1792 = 0
                stor7[stor8].field_2048 = block.timestamp
                stor7[stor8].field_2304 = percent
                stor7[stor8].field_2560 = 0
                stor7[stor8].field_2816 = 0
                stor7[stor8].field_3072 = 0
                address(stor7[stor8].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                mem[0] = arg1
                mem[32] = 10
                sub_666a7370[address(arg1)] += arg2
                stor8++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2347 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2364 = mem[_2347]
                require mem[_2347] <= test266151307()
                require _2347 + mem[_2347] + 31 < _2347 + return_data.size
                _2404 = mem[_2347 + mem[_2347]]
                require mem[_2347 + mem[_2347]] <= test266151307()
                require _2347 + ceil32(return_data.size) + ceil32(mem[_2347 + mem[_2347]]) + 32 <= test266151307() and ceil32(mem[_2347 + mem[_2347]]) + 32 >= 0
                mem[64] = _2347 + ceil32(return_data.size) + ceil32(mem[_2347 + mem[_2347]]) + 32
                mem[_2347 + ceil32(return_data.size)] = _2404
                require _2364 + _2404 + 32 <= return_data.size
                mem[_2347 + ceil32(return_data.size) + 32 len ceil32(_2404)] = mem[_2347 + _2364 + 32 len ceil32(_2404)]
                if ceil32(_2404) <= _2404:
                    _2612 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2404
                    mem[mem[64] + 128 len ceil32(_2404)] = mem[_2347 + ceil32(return_data.size) + 32 len ceil32(_2404)]
                    if ceil32(_2404) > _2404:
                        mem[mem[64] + _2404 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2612 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2612 + ceil32(_2404) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2347 + ceil32(return_data.size) + _2404 + 32] = 0
                    _2620 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2404
                    mem[mem[64] + 128 len ceil32(_2404)] = mem[_2347 + ceil32(return_data.size) + 32 len ceil32(_2404)]
                    if ceil32(_2404) > _2404:
                        mem[_2620 + _2404 + 128] = 0
                    mem[_2620 + 32] = arg2
                    mem[_2620 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2620 + ceil32(_2404) + -mem[64] + 128], msg.sender, arg1
        else:
            require arg2
            require 16 * arg2 / arg2 == 16
            sub_11a3311c[address(msg.sender)]++
            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor8
            mem[ceil32(return_data.size) + 96] = stor8
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
            _33 = mem[ceil32(return_data.size) + 544]
            require mem[ceil32(return_data.size) + 544] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 575 < ceil32(return_data.size) + return_data.size + 544
            _36 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576 <= test266151307() and ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 32 >= 0
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]) + 576
            mem[(2 * ceil32(return_data.size)) + 544] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544]
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
                stor7[stor8].field_0 = stor8
                stor7[stor8].field_256 = arg2
                stor7[stor8].field_512 = block.timestamp + sub_e2afe3bb
                address(stor7[stor8].field_768) = msg.sender
                address(stor7[stor8].field_1024) = uint64(arg1) << 96
                stor7[stor8][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                stor7[stor8].field_1536 = arg2 - (12 * arg2 / 100)
                stor7[stor8].field_1792 = 16 * arg2 / 100
                stor7[stor8].field_2048 = block.timestamp
                stor7[stor8].field_2304 = percent
                stor7[stor8].field_2560 = 0
                stor7[stor8].field_2816 = 0
                stor7[stor8].field_3072 = 0
                address(stor7[stor8].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                mem[0] = arg1
                mem[32] = 10
                sub_666a7370[address(arg1)] += arg2
                stor8++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2338 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2361 = mem[_2338]
                require mem[_2338] <= test266151307()
                require _2338 + mem[_2338] + 31 < _2338 + return_data.size
                _2401 = mem[_2338 + mem[_2338]]
                require mem[_2338 + mem[_2338]] <= test266151307()
                require _2338 + ceil32(return_data.size) + ceil32(mem[_2338 + mem[_2338]]) + 32 <= test266151307() and ceil32(mem[_2338 + mem[_2338]]) + 32 >= 0
                mem[64] = _2338 + ceil32(return_data.size) + ceil32(mem[_2338 + mem[_2338]]) + 32
                mem[_2338 + ceil32(return_data.size)] = _2401
                require _2361 + _2401 + 32 <= return_data.size
                mem[_2338 + ceil32(return_data.size) + 32 len ceil32(_2401)] = mem[_2338 + _2361 + 32 len ceil32(_2401)]
                if ceil32(_2401) <= _2401:
                    _2609 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2401
                    mem[mem[64] + 128 len ceil32(_2401)] = mem[_2338 + ceil32(return_data.size) + 32 len ceil32(_2401)]
                    if ceil32(_2401) > _2401:
                        mem[_2609 + _2401 + 128] = 0
                    mem[_2609 + 32] = arg2
                    mem[_2609 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2609 + ceil32(_2401) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2338 + ceil32(return_data.size) + _2401 + 32] = 0
                    _2617 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2401
                    mem[mem[64] + 128 len ceil32(_2401)] = mem[_2338 + ceil32(return_data.size) + 32 len ceil32(_2401)]
                    if ceil32(_2401) > _2401:
                        mem[mem[64] + _2401 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2617 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2617 + ceil32(_2401) + -mem[64] + 128], msg.sender, arg1
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
                stor7[stor8].field_0 = stor8
                stor7[stor8].field_256 = arg2
                stor7[stor8].field_512 = block.timestamp + sub_e2afe3bb
                address(stor7[stor8].field_768) = msg.sender
                address(stor7[stor8].field_1024) = uint64(arg1) << 96
                stor7[stor8][5][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 544], data=mem[(2 * ceil32(return_data.size)) + 576 len mem[(2 * ceil32(return_data.size)) + 544]])
                stor7[stor8].field_1536 = arg2 - (12 * arg2 / 100)
                stor7[stor8].field_1792 = 16 * arg2 / 100
                stor7[stor8].field_2048 = block.timestamp
                stor7[stor8].field_2304 = percent
                stor7[stor8].field_2560 = 0
                stor7[stor8].field_2816 = 0
                stor7[stor8].field_3072 = 0
                address(stor7[stor8].field_3328) = viewSuperOwner
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                mem[0] = arg1
                mem[32] = 10
                sub_666a7370[address(arg1)] += arg2
                stor8++
                sub_93002f02++
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2341 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2362 = mem[_2341]
                require mem[_2341] <= test266151307()
                require _2341 + mem[_2341] + 31 < _2341 + return_data.size
                _2402 = mem[_2341 + mem[_2341]]
                require mem[_2341 + mem[_2341]] <= test266151307()
                require _2341 + ceil32(return_data.size) + ceil32(mem[_2341 + mem[_2341]]) + 32 <= test266151307() and ceil32(mem[_2341 + mem[_2341]]) + 32 >= 0
                mem[64] = _2341 + ceil32(return_data.size) + ceil32(mem[_2341 + mem[_2341]]) + 32
                mem[_2341 + ceil32(return_data.size)] = _2402
                require _2362 + _2402 + 32 <= return_data.size
                mem[_2341 + ceil32(return_data.size) + 32 len ceil32(_2402)] = mem[_2341 + _2362 + 32 len ceil32(_2402)]
                if ceil32(_2402) <= _2402:
                    _2610 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2402
                    mem[mem[64] + 128 len ceil32(_2402)] = mem[_2341 + ceil32(return_data.size) + 32 len ceil32(_2402)]
                    if ceil32(_2402) > _2402:
                        mem[_2610 + _2402 + 128] = 0
                    mem[_2610 + 32] = arg2
                    mem[_2610 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2610 + ceil32(_2402) + -mem[64] + 128], msg.sender, arg1
                else:
                    mem[_2341 + ceil32(return_data.size) + _2402 + 32] = 0
                    _2618 = mem[64]
                    mem[mem[64]] = 96
                    mem[mem[64] + 96] = _2402
                    mem[mem[64] + 128 len ceil32(_2402)] = mem[_2341 + ceil32(return_data.size) + 32 len ceil32(_2402)]
                    if ceil32(_2402) > _2402:
                        mem[mem[64] + _2402 + 128] = 0
                    mem[mem[64] + 32] = arg2
                    mem[_2618 + 64] = block.timestamp + sub_e2afe3bb
                    emit 0xed175a8d: mem[mem[64] len _2618 + ceil32(_2402) + -mem[64] + 128], msg.sender, arg1
}



}
