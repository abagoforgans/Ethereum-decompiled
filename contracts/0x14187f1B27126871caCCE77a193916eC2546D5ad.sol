contract main {




// =====================  Runtime code  =====================


address stor0;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint16 stor1; offset 176
address stor1;
uint256 stor10;
array of struct stor11;
mapping of struct sub_d2f33994;
mapping of uint256 stor13;
mapping of address stor14;
uint128 stor2;
uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 sub_1792dae4;
address stor7;
uint256 stor8;
uint256 stor9;

function sub_1792dae4(?) {
    return sub_1792dae4
}

function sub_7f797de6(?) {
    require calldata.size - 4 >= 32
    return sub_d2f33994[arg1].field_0, 
           address(sub_d2f33994[arg1].field_256),
           uint128(sub_d2f33994[arg1].field_512),
           uint128(sub_d2f33994[arg1].field_512),
           sub_d2f33994[arg1].field_768,
           sub_d2f33994[arg1].field_1024
}

function sub_d2f33994(?) {
    return sub_d2f33994[stor13[address(msg.sender)]].field_0, 
           address(sub_d2f33994[stor13[address(msg.sender)]].field_256),
           uint128(sub_d2f33994[stor13[address(msg.sender)]].field_512),
           uint128(sub_d2f33994[stor13[address(msg.sender)]].field_512),
           sub_d2f33994[stor13[address(msg.sender)]].field_768,
           sub_d2f33994[stor13[address(msg.sender)]].field_1024
}

function sub_debbabef(?) {
    require calldata.size - 4 >= 32
    return sub_d2f33994[arg1].field_1024
}

function _fallback() payable {
    revert
}

function sub_79d95063(?) {
    require calldata.size - 4 >= 32
    require not stor0
    stor0 = arg1
}

function sub_182eb784(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor7
    sub_1792dae4 = arg1
}

function sub_58d0d609(?) {
    require calldata.size - 4 >= 64
    return (address(sub_d2f33994[arg1].field_256) == arg2)
}

function sub_107b1996(?) {
    require calldata.size - 4 >= 32
    require stor14[address(msg.sender)]
    stor14[address(msg.sender)] = arg1
    return 0
}

function sub_1bbf0d92(?) {
    require calldata.size - 4 >= 64
    require address(sub_d2f33994[arg1].field_256) == msg.sender
    sub_d2f33994[arg1].field_768 = arg2
}

function sub_3458333a(?) {
    return stor13[address(msg.sender)], 
           sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256,
           sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_512
}

function sub_e30a6214(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor7
    require eth.balance(this.address) >= arg1
    call stor7 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9f4743b4(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor7
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 100 * 10^6 * ext_call.return_data[0]
    stor8 = 100 * 10^6 * ext_call.return_data[0]
    stor9 = 100 * 10^6 * arg1 / 100 * 10^6 * ext_call.return_data[0]
    if not uint8(stor1.field_160):
        stor10 = 24 * 3600 * block.timestamp / 24 * 3600
    else:
        stor10 = block.timestamp
}

function sub_4b2d7aaa(?) {
    if not stor11.length:
        mem[(32 * stor11.length) + 128] = 32
        mem[(32 * stor11.length) + 160] = stor11.length
        mem[(32 * stor11.length) + 192 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
        return memory
          from (32 * stor11.length) + 128
           len (96 * stor11.length) + 64
    mem[128] = uint256(stor11.field_0)
    idx = 128
    s = 0
    while (32 * stor11.length) + 96 > idx:
        mem[idx + 32] = stor11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor11.length) + 192 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
    return Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(32 * stor11.length) + floor32(stor11.length) + 192 len (32 * stor11.length) - floor32(stor11.length)]), 
}

function sub_0715989d(?) payable {
    require calldata.size - 4 >= 32
    if 10^18 != msg.value:
        revert with 0, 'Please pay 1.00 ETH'
    if not stor13[address(msg.sender)]:
        revert with 0, 'Sender not join any team.'
    if address(sub_d2f33994[stor13[address(msg.sender)]].field_256) != msg.sender:
        revert with 0, 'Not a team leader.'
    if stor13[address(arg1)] != stor13[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The receiver should join this team.'
    require sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 >= stor3
    sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 -= stor3
    sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_512 = block.timestamp
    sub_d2f33994[stor13[address(msg.sender)]][6][address(arg1)].field_256 += stor3
    sub_d2f33994[stor13[address(msg.sender)]][6][address(arg1)].field_512 = block.timestamp
    address(sub_d2f33994[stor13[address(msg.sender)]].field_256) = arg1
}

function sub_2cc0c124(?) {
    if stor10 - sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_512 < 24 * 3600:
        return 0
    if sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 * stor9 / 100 * 10^6 <= 3 * sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 / 1000:
        if not address(stor1.field_0):
            return (sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 * stor9 / 100 * 10^6)
        require ext_code.size(address(stor1.field_0))
        staticcall address(stor1.field_0).0x6340028f with:
                gas gas_remaining wei
               args msg.sender, sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 * stor9 / 100 * 10^6, 1000
    else:
        if not address(stor1.field_0):
            return (3 * sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 / 1000)
        require ext_code.size(address(stor1.field_0))
        staticcall address(stor1.field_0).0x6340028f with:
                gas gas_remaining wei
               args msg.sender, 3 * sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 / 1000, 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d4fb0c4d(?) {
    require calldata.size - 4 >= 32
    require address(sub_d2f33994[arg1].field_256)
    if sub_d2f33994[arg1].field_1280:
        mem[128] = address(sub_d2f33994[arg1][5].field_0)
        idx = 128
        s = 0
        while (32 * sub_d2f33994[arg1].field_1280) + 96 > idx:
            mem[idx + 32] = address(sub_d2f33994[arg1][s + 5].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_d2f33994[arg1].field_1280) + 128] = uint128(sub_d2f33994[arg1].field_640)
    if uint128(sub_d2f33994[arg1].field_640):
        mem[(32 * sub_d2f33994[arg1].field_1280) + 160 len 32 * uint128(sub_d2f33994[arg1].field_640)] = code.data[18076 len 32 * uint128(sub_d2f33994[arg1].field_640)]
    idx = 0
    while idx < uint128(sub_d2f33994[arg1].field_640):
        require idx < sub_d2f33994[arg1].field_1280
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(arg1, 12) + 6
        require idx < uint128(sub_d2f33994[arg1].field_640)
        mem[(32 * idx) + (32 * sub_d2f33994[arg1].field_1280) + 160] = sub_d2f33994[arg1][6][mem[(32 * idx) + 140 len 20]].field_256
        idx = idx + 1
        continue 
    mem[(32 * sub_d2f33994[arg1].field_1280) + (32 * uint128(sub_d2f33994[arg1].field_640)) + 288 len floor32(sub_d2f33994[arg1].field_1280)] = mem[128 len floor32(sub_d2f33994[arg1].field_1280)]
    mem[(64 * sub_d2f33994[arg1].field_1280) + (32 * uint128(sub_d2f33994[arg1].field_640)) + 288] = uint128(sub_d2f33994[arg1].field_640)
    mem[(64 * sub_d2f33994[arg1].field_1280) + (32 * uint128(sub_d2f33994[arg1].field_640)) + 320 len floor32(uint128(sub_d2f33994[arg1].field_640))] = mem[(32 * sub_d2f33994[arg1].field_1280) + 160 len floor32(uint128(sub_d2f33994[arg1].field_640))]
    return uint128(sub_d2f33994[arg1].field_512), 
           Array(len=sub_d2f33994[arg1].field_1280, data=mem[128 len floor32(sub_d2f33994[arg1].field_1280)], mem[(32 * sub_d2f33994[arg1].field_1280) + (32 * uint128(sub_d2f33994[arg1].field_640)) + floor32(sub_d2f33994[arg1].field_1280) + 288 len (32 * sub_d2f33994[arg1].field_1280) + (32 * uint128(sub_d2f33994[arg1].field_640)) + -floor32(sub_d2f33994[arg1].field_1280) + 32]),
           (32 * sub_d2f33994[arg1].field_1280) + 128
}

function sub_7c39d999(?) payable {
    require msg.value >= sub_1792dae4
    if not stor13[address(msg.sender)]:
        revert with 0, 'Sender not join any team.'
    if msg.sender == address(sub_d2f33994[stor13[address(msg.sender)]].field_256):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Team leader can't leave your team.'
    idx = 0
    while idx < sub_d2f33994[stor13[address(msg.sender)]].field_1280:
        mem[0] = sha3(stor13[address(msg.sender)], 12) + 5
        if address(sub_d2f33994[stor13[address(msg.sender)]][idx + 5].field_0) != msg.sender:
            idx = idx + 1
            continue 
        idx = 0
        while idx < sub_d2f33994[stor13[address(msg.sender)]].field_1280 - 1:
            require idx + 1 < sub_d2f33994[stor13[address(msg.sender)]].field_1280
            require idx < sub_d2f33994[stor13[address(msg.sender)]].field_1280
            mem[0] = sha3(stor13[address(msg.sender)], 12) + 5
            address(sub_d2f33994[stor13[address(msg.sender)]][idx + 5].field_0) = address(sub_d2f33994[stor13[address(msg.sender)]][idx + 5].field_256)
            idx = idx + 1
            continue 
        require sub_d2f33994[stor13[address(msg.sender)]].field_1280 - 1 < sub_d2f33994[stor13[address(msg.sender)]].field_1280
        address(stor[('array', 5, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor13', 13))), ('name', 'sub_d2f33994', 12))) + sub_d2f33994[stor13[address(msg.sender)]].field_1280].field_0) = 0
        sub_d2f33994[stor13[address(msg.sender)]].field_1280--
        if sub_d2f33994[stor13[address(msg.sender)]].field_1280 > sub_d2f33994[stor13[address(msg.sender)]].field_1280 - 1:
            idx = sha3(sha3(stor13[address(msg.sender)], 12) + 5) + sub_d2f33994[stor13[address(msg.sender)]].field_1280 - 1
            while sha3(sha3(stor13[address(msg.sender)], 12) + 5) + sub_d2f33994[stor13[address(msg.sender)]].field_1280 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        uint128(sub_d2f33994[stor13[address(msg.sender)]].field_640) = uint128(uint128(sub_d2f33994[stor13[address(msg.sender)]].field_640) - 1)
        sub_d2f33994[stor13[address(msg.sender)]].field_1024 -= sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor13[address(msg.sender)] = 0
        return 1
    return 0
}

function sub_8464b144(?) {
    require calldata.size - 4 >= 32
    mem[96] = arg1
    if not arg1:
        mem[(32 * arg1) + 128] = arg1
    else:
        mem[128 len 32 * arg1] = code.data[18076 len 32 * arg1]
        mem[(32 * arg1) + 128] = arg1
        mem[(32 * arg1) + 160 len 32 * arg1] = code.data[18076 len 32 * arg1]
    idx = 0
    while idx < stor11.length:
        mem[0] = stor11[idx].field_0
        mem[32] = 12
        require arg1 - 1 < mem[(32 * arg1) + 128]
        if sub_d2f33994[stor11[idx].field_0].field_1024 > mem[(32 * arg1 - 1) + (32 * arg1) + 160]:
            s = arg1 - 2
            while s >= 0:
                require s < mem[(32 * arg1) + 128]
                if sub_d2f33994[stor11[idx].field_0].field_1024 >= mem[(32 * s) + (32 * arg1) + 160]:
                    s = s - 1
                    continue 
                s = arg1 - 1
                while s < arg1 - 1:
                    require s < mem[96]
                    require s + 1 < mem[96]
                    mem[(32 * s + 1) + 128] = mem[(32 * s) + 128]
                    require s < mem[(32 * arg1) + 128]
                    require s + 1 < mem[(32 * arg1) + 128]
                    mem[(32 * s + 1) + (32 * arg1) + 160] = mem[(32 * s) + (32 * arg1) + 160]
                    s = s + 1
                    continue 
                require idx < stor11.length
                mem[0] = 11
                require arg1 - 1 < mem[96]
                mem[(32 * arg1 - 1) + 128] = stor11[idx].field_0
                require arg1 - 1 < mem[(32 * arg1) + 128]
                mem[(32 * arg1 - 1) + (32 * arg1) + 160] = sub_d2f33994[stor11[idx].field_0].field_1024
                idx = idx + 1
                continue 
            s = arg1 - 1
            while s < arg1 - 1:
                require s < mem[96]
                require s + 1 < mem[96]
                mem[(32 * s + 1) + 128] = mem[(32 * s) + 128]
                require s < mem[(32 * arg1) + 128]
                require s + 1 < mem[(32 * arg1) + 128]
                mem[(32 * s + 1) + (32 * arg1) + 160] = mem[(32 * s) + (32 * arg1) + 160]
                s = s + 1
                continue 
            require idx < stor11.length
            mem[0] = 11
            require arg1 - 1 < mem[96]
            mem[(32 * arg1 - 1) + 128] = stor11[idx].field_0
            require arg1 - 1 < mem[(32 * arg1) + 128]
            mem[(32 * arg1 - 1) + (32 * arg1) + 160] = sub_d2f33994[stor11[idx].field_0].field_1024
        idx = idx + 1
        continue 
    mem[(64 * arg1) + 160] = 64
    mem[(64 * arg1) + 224] = mem[96]
    mem[(64 * arg1) + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[(64 * arg1) + 192] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + (64 * arg1) + 256] = mem[(32 * arg1) + 128]
    mem[(32 * mem[96]) + (64 * arg1) + 288 len floor32(mem[(32 * arg1) + 128])] = mem[(32 * arg1) + 160 len floor32(mem[(32 * arg1) + 128])]
    return Array(len=mem[96], data=mem[(64 * arg1) + 256 len (32 * mem[(32 * arg1) + 128]) + (32 * mem[96]) + 32]), 
           (32 * mem[96]) + 96
}

function sub_be309182(?) {
    if stor13[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'When you create a team, you should quit the current team first.'
    if stor11.length >= uint8(stor1.field_168):
        revert with 0, 'Team creation quota is full.'
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor3:
        revert with 0, 'Not sufficient funds.'
    require ext_code.size(stor0)
    call stor0.0x8733cbd3 with:
         gas gas_remaining wei
        args msg.sender, address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192] = code.data[18076 len 32]
    mem[224] = block.timestamp
    sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0].field_0 = block.timestamp
    address(sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0].field_256) = msg.sender
    uint128(sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0].field_512) = stor2
    uint128(sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0].field_640) = 0
    sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0].field_768 % 1 = 0
    sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0].field_768 = 0
    sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0].field_1024 = 0
    sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0].field_1280 = 1
    s = 0
    idx = 192
    while 224 > idx:
        address(sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0][s + 5].field_0) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0].field_1280 > idx:
        address(sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0][idx + 5].field_0) = 0
        idx = idx + 1
        continue 
    stor11.length++
    stor11[stor11.length].field_0 = sha3(Mask(32, 224, 'Teamxxx') >> 224, 0, 0, 0)
    uint8(sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0].field_640) = 1
    Mask(120, 0, sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0].field_648) = 0
    sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0][6][address(msg.sender)].field_0 = block.timestamp
    sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0][6][address(msg.sender)].field_256 = stor3
    sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0][6][address(msg.sender)].field_512 = block.timestamp
    sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0].field_1280++
    address(stor[('array', 5, ('map', ('data', ('mask_shl', 32, 224, -224, "'Teamxxx'"), 0, 0, 0), ('name', 'sub_d2f33994', 12))) + sub_d2f33994[Mask(32, 224, 'Teamxxx') >> 224][0][0][0].field_1280].field_0) = msg.sender
    stor13[address(msg.sender)] = sha3(Mask(32, 224, 'Teamxxx') >> 224, 0, 0, 0)
    return sha3(Mask(32, 224, 'Teamxxx') >> 224, 0, 0, 0)
}

function sub_1751093e(?) payable {
    require calldata.size - 4 >= 64
    require msg.value >= sub_1792dae4
    if not address(sub_d2f33994[arg1].field_256):
        revert with 0, 'Team are not exist.'
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Not sufficient funds.'
    if arg2 < sub_d2f33994[arg1].field_768:
        revert with 0, 'Deposit token less than minimum.'
    if stor13[address(msg.sender)]:
        require stor13[address(msg.sender)] == arg1
        require ext_code.size(stor0)
        call stor0.0x8733cbd3 with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_d2f33994[arg1][6][address(msg.sender)].field_512 = block.timestamp
        sub_d2f33994[arg1][6][address(msg.sender)].field_256 += arg2
        sub_d2f33994[arg1].field_1024 += arg2
    else:
        if uint128(sub_d2f33994[arg1].field_640) < uint128(uint128(sub_d2f33994[arg1].field_512) - 1):
            require ext_code.size(stor0)
            call stor0.0x8733cbd3 with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            uint128(sub_d2f33994[arg1].field_640) = uint128(uint128(sub_d2f33994[arg1].field_640) + 1)
            sub_d2f33994[arg1][6][address(msg.sender)].field_0 = block.timestamp
            sub_d2f33994[arg1][6][address(msg.sender)].field_256 = arg2
            sub_d2f33994[arg1][6][address(msg.sender)].field_512 = block.timestamp
            sub_d2f33994[arg1].field_1280++
            address(stor[('array', 5, ('map', ('param', 'arg1'), ('name', 'sub_d2f33994', 12))) + sub_d2f33994[arg1].field_1280].field_0) = msg.sender
            sub_d2f33994[arg1].field_1024 += arg2
            stor13[address(msg.sender)] = arg1
        else:
            idx = 1
            s = 0
            while idx < sub_d2f33994[arg1].field_1280:
                require s < sub_d2f33994[arg1].field_1280
                mem[0] = address(sub_d2f33994[arg1][s + 5].field_0)
                mem[32] = sha3(arg1, 12) + 6
                if sub_d2f33994[arg1][6][address(sub_d2f33994[arg1][s + 5].field_0)].field_256 >= sub_d2f33994[arg1][6][address(sub_d2f33994[arg1][idx + 5].field_0)].field_256:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = idx
                continue 
            require s < sub_d2f33994[arg1].field_1280
            sub_d2f33994[arg1][6][address(sub_d2f33994[arg1][s + 5].field_0)].field_0 = 0
            sub_d2f33994[arg1][6][address(sub_d2f33994[arg1][s + 5].field_0)].field_256 = 0
            sub_d2f33994[arg1][6][address(sub_d2f33994[arg1][s + 5].field_0)].field_512 = 0
            require ext_code.size(stor0)
            call stor0.0x8733cbd3 with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args address(sub_d2f33994[arg1][s + 5].field_0), sub_d2f33994[arg1][6][address(sub_d2f33994[arg1][s + 5].field_0)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require s < sub_d2f33994[arg1].field_1280
            address(sub_d2f33994[arg1][s + 5].field_0) = msg.sender
            sub_d2f33994[arg1].field_1024 = sub_d2f33994[arg1].field_1024 + arg2 - sub_d2f33994[arg1][6][address(sub_d2f33994[arg1][s + 5].field_0)].field_256
            stor13[address(msg.sender)] = arg1
            stor13[address(stor12[arg1][s + 5].field_0)] = 0
    return 1
}

function sub_73fe9123(?) payable {
    require msg.value >= sub_1792dae4
    if stor10 - sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_512 < 24 * 3600:
        return 0
    if sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 * stor9 / 100 * 10^6 <= 3 * sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 / 1000:
        if not address(stor1.field_0):
            if sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 * stor9 / 100 * 10^6 <= 0:
                return 0
            sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_512 = stor10
            require ext_code.size(stor0)
            call stor0.0x8733cbd3 with:
                 gas gas_remaining wei
                args stor0, msg.sender, sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 * stor9 / 100 * 10^6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            call stor0.0xb24e3f0d with:
                 gas gas_remaining wei
                args msg.sender, sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 * stor9 / 100 * 10^6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < stor4.length:
                mem[32] = 14
                mem[164] = sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 * stor9 / 100 * 10^6 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] / 1000
                require ext_code.size(stor0)
                call stor0.0x8733cbd3 with:
                     gas gas_remaining wei
                    args stor14[address(msg.sender)], msg.sender, sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 * stor9 / 100 * 10^6 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < stor4.length
                mem[0] = 4
                mem[96] = 0xb24e3f0d00000000000000000000000000000000000000000000000000000000
                mem[100] = msg.sender
                mem[132] = sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 * stor9 / 100 * 10^6 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] / 1000
                require ext_code.size(stor0)
                call stor0.0xb24e3f0d with:
                     gas gas_remaining wei
                    args msg.sender, sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 * stor9 / 100 * 10^6 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            return (sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 * stor9 / 100 * 10^6)
        require ext_code.size(address(stor1.field_0))
        staticcall address(stor1.field_0).0x6340028f with:
                gas gas_remaining wei
               args msg.sender, sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 * stor9 / 100 * 10^6, 1000
    else:
        if not address(stor1.field_0):
            if 3 * sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 / 1000 <= 0:
                return 0
            sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_512 = stor10
            require ext_code.size(stor0)
            call stor0.0x8733cbd3 with:
                 gas gas_remaining wei
                args stor0, msg.sender, 3 * sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            call stor0.0xb24e3f0d with:
                 gas gas_remaining wei
                args msg.sender, 3 * sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < stor4.length:
                mem[32] = 14
                mem[164] = 3 * sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 / 1000 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] / 1000
                require ext_code.size(stor0)
                call stor0.0x8733cbd3 with:
                     gas gas_remaining wei
                    args stor14[address(msg.sender)], msg.sender, 3 * sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 / 1000 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < stor4.length
                mem[0] = 4
                mem[96] = 0xb24e3f0d00000000000000000000000000000000000000000000000000000000
                mem[100] = msg.sender
                mem[132] = 3 * sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 / 1000 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] / 1000
                require ext_code.size(stor0)
                call stor0.0xb24e3f0d with:
                     gas gas_remaining wei
                    args msg.sender, 3 * sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 / 1000 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            return (3 * sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 / 1000)
        require ext_code.size(address(stor1.field_0))
        staticcall address(stor1.field_0).0x6340028f with:
                gas gas_remaining wei
               args msg.sender, 3 * sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_256 / 1000, 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    sub_d2f33994[stor13[address(msg.sender)]][6][address(msg.sender)].field_512 = stor10
    require ext_code.size(stor0)
    call stor0.0x8733cbd3 with:
         gas gas_remaining wei
        args stor0, msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.0xb24e3f0d with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < stor4.length:
        mem[32] = 14
        mem[164] = ext_call.return_data[0] * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] / 1000
        require ext_code.size(stor0)
        call stor0.0x8733cbd3 with:
             gas gas_remaining wei
            args stor14[address(msg.sender)], msg.sender, ext_call.return_data[0] * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < stor4.length
        mem[0] = 4
        mem[96] = 0xb24e3f0d00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = ext_call.return_data[0] * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] / 1000
        require ext_code.size(stor0)
        call stor0.0xb24e3f0d with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    return ext_call.return_data[0]
}

function sub_2059c318(?) payable {
    require msg.sender == stor7
    if stor15.length <= 0:
        require block.timestamp >= uint16(stor1.field_176)
    else:
        require stor15.length - 1 < stor15.length
        require block.timestamp - stor15[stor15.length - 1].field_768 >= uint16(stor1.field_176)
    idx = 0
    s = 0
    while idx < stor5.length:
        mem[0] = 5
        idx = idx + 1
        s = s + stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
        continue 
    require s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length <= 100
    mem[96] = stor5.length
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = stor5.length
        mem[(64 * stor5.length) + 160] = stor5.length
    else:
        mem[128 len 32 * stor5.length] = code.data[18076 len 32 * stor5.length]
        mem[(32 * stor5.length) + 128] = stor5.length
        mem[(32 * stor5.length) + 160 len 32 * stor5.length] = code.data[18076 len 32 * stor5.length]
        mem[(64 * stor5.length) + 160] = stor5.length
        mem[(64 * stor5.length) + 192 len 32 * stor5.length] = code.data[18076 len 32 * stor5.length]
    idx = 0
    while idx < stor11.length:
        mem[0] = stor11[idx].field_0
        mem[32] = 12
        require stor5.length - 1 < mem[(64 * stor5.length) + 160]
        if sub_d2f33994[stor11[idx].field_0].field_1024 > mem[(32 * stor5.length - 1) + (64 * stor5.length) + 192]:
            s = stor5.length - 2
            while s >= 0:
                require s < mem[(64 * stor5.length) + 160]
                if sub_d2f33994[stor11[idx].field_0].field_1024 >= mem[(32 * s) + (64 * stor5.length) + 192]:
                    s = s - 1
                    continue 
                s = stor5.length - 1
                while s < stor5.length - 1:
                    require s < mem[(32 * stor5.length) + 128]
                    require s + 1 < mem[(32 * stor5.length) + 128]
                    mem[(32 * s + 1) + (32 * stor5.length) + 160] = mem[(32 * s) + (32 * stor5.length) + 160]
                    require s < mem[(64 * stor5.length) + 160]
                    require s + 1 < mem[(64 * stor5.length) + 160]
                    mem[(32 * s + 1) + (64 * stor5.length) + 192] = mem[(32 * s) + (64 * stor5.length) + 192]
                    s = s + 1
                    continue 
                require idx < stor11.length
                mem[0] = 11
                require stor5.length - 1 < mem[(32 * stor5.length) + 128]
                mem[(32 * stor5.length - 1) + (32 * stor5.length) + 160] = stor11[idx].field_0
                require stor5.length - 1 < mem[(64 * stor5.length) + 160]
                mem[(32 * stor5.length - 1) + (64 * stor5.length) + 192] = sub_d2f33994[stor11[idx].field_0].field_1024
                idx = idx + 1
                continue 
            s = stor5.length - 1
            while s < stor5.length - 1:
                require s < mem[(32 * stor5.length) + 128]
                require s + 1 < mem[(32 * stor5.length) + 128]
                mem[(32 * s + 1) + (32 * stor5.length) + 160] = mem[(32 * s) + (32 * stor5.length) + 160]
                require s < mem[(64 * stor5.length) + 160]
                require s + 1 < mem[(64 * stor5.length) + 160]
                mem[(32 * s + 1) + (64 * stor5.length) + 192] = mem[(32 * s) + (64 * stor5.length) + 192]
                s = s + 1
                continue 
            require idx < stor11.length
            mem[0] = 11
            require stor5.length - 1 < mem[(32 * stor5.length) + 128]
            mem[(32 * stor5.length - 1) + (32 * stor5.length) + 160] = stor11[idx].field_0
            require stor5.length - 1 < mem[(64 * stor5.length) + 160]
            mem[(32 * stor5.length - 1) + (64 * stor5.length) + 192] = sub_d2f33994[stor11[idx].field_0].field_1024
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor5.length:
        require idx < mem[(32 * stor5.length) + 128]
        mem[32] = 12
        require idx < stor5.length
        mem[0] = 5
        require idx < stor5.length
        mem[(32 * idx) + 128] = eth.balance(this.address) * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] / 100
        require idx < stor5.length
        call address(sub_d2f33994[mem[(32 * idx) + (32 * stor5.length) + 160]].field_256) with:
           value eth.balance(this.address) * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    call stor7 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (98 * stor5.length) + 320
    mem[(98 * stor5.length) + 192] = (32 * stor5.length) + 128
    mem[(98 * stor5.length) + 224] = (64 * stor5.length) + 160
    mem[(98 * stor5.length) + 256] = 96
    mem[(98 * stor5.length) + 288] = 24 * 3600 * block.timestamp / 24 * 3600
    stor15.length++
    stor15[stor15.length].field_0 = mem[(32 * stor5.length) + 128]
    mem[0] = (4 * stor15.length) + sha3(15)
    if not mem[(32 * stor5.length) + 128]:
        idx = 0
        while stor15[stor15.length].field_0 > idx:
            stor15[(4 * stor15.length) + idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * stor5.length) + 160
        while (32 * stor5.length) + (32 * mem[(32 * stor5.length) + 128]) + 160 > idx:
            stor15[(4 * stor15.length) + s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[(32 * stor5.length) + 128]) + 31) >> 5
        while stor15[stor15.length].field_0 > idx:
            stor15[(4 * stor15.length) + idx].field_0 = 0
            idx = idx + 1
            continue 
    stor15[stor15.length].field_256 = mem[(64 * stor5.length) + 160]
    mem[0] = (4 * stor15.length) + sha3(15) + 1
    if not mem[(64 * stor5.length) + 160]:
        idx = 0
        while stor15[stor15.length].field_256 > idx:
            stor[idx + sha3((4 * stor15.length) + ('name', 'stor15', 15) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (64 * stor5.length) + 192
        while (64 * stor5.length) + (32 * mem[(64 * stor5.length) + 160]) + 192 > idx:
            stor[s + sha3((4 * stor15.length) + ('name', 'stor15', 15) + 1)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[(64 * stor5.length) + 160]) + 31) >> 5
        while stor15[stor15.length].field_256 > idx:
            stor[idx + sha3((4 * stor15.length) + ('name', 'stor15', 15) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    stor15[stor15.length].field_512 = stor5.length
    if not stor5.length:
        idx = 0
        while stor15[stor15.length].field_512 > idx:
            stor[idx + sha3((4 * stor15.length) + ('name', 'stor15', 15) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * stor5.length) + 128 > idx:
            stor[s + sha3((4 * stor15.length) + ('name', 'stor15', 15) + 2)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * stor5.length) + 31) >> 5
        while stor15[stor15.length].field_512 > idx:
            stor[idx + sha3((4 * stor15.length) + ('name', 'stor15', 15) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    stor15[stor15.length].field_768 = 24 * 3600 * block.timestamp / 24 * 3600
}



}
