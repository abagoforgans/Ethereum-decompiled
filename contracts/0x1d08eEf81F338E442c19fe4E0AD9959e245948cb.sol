contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address managerAddress;
uint256 stor2;
uint256 totalInvestAmount;
uint256 sub_8450e921;
uint256 minInvestAmount;
uint256 sub_584c8fc1;
uint256 sub_8312f149;
uint256 sub_f1da265a;
uint128 stor9; offset 160
mapping of uint256 stor10;
mapping of uint256 investorIndex;
mapping of struct sub_19cc0335;
uint8 sub_99f7d3f3;
uint256 sub_81ce4e3b;
uint256 sub_e6052940;

function sub_19cc0335(?) {
    return sub_19cc0335[stor11[address(msg.sender)]].field_1536
}

function sub_2b0d4e1c(?) {
    return sub_19cc0335[stor10[Mask(48, 208, arg1)]].field_0, 
           sub_19cc0335[stor10[Mask(48, 208, arg1)]].field_256,
           sub_19cc0335[stor10[Mask(48, 208, arg1)]].field_512,
           sub_19cc0335[stor10[Mask(48, 208, arg1)]].field_672 << 208,
           sub_19cc0335[stor10[Mask(48, 208, arg1)]].field_720 << 208,
           sub_19cc0335[stor10[Mask(48, 208, arg1)]].field_768,
           sub_19cc0335[stor10[Mask(48, 208, arg1)]].field_1024,
           sub_19cc0335[stor10[Mask(48, 208, arg1)]].field_1280,
           sub_19cc0335[stor10[Mask(48, 208, arg1)]].field_1536,
           sub_19cc0335[stor10[Mask(48, 208, arg1)]].field_1792,
           sub_19cc0335[stor10[Mask(48, 208, arg1)]].field_2048,
           sub_19cc0335[stor10[Mask(48, 208, arg1)]].field_2304
}

function getInvestorByAddress(address arg1) {
    return sub_19cc0335[stor11[address(arg1)]].field_0, 
           sub_19cc0335[stor11[address(arg1)]].field_256,
           sub_19cc0335[stor11[address(arg1)]].field_512,
           sub_19cc0335[stor11[address(arg1)]].field_672 << 208,
           sub_19cc0335[stor11[address(arg1)]].field_720 << 208,
           sub_19cc0335[stor11[address(arg1)]].field_768,
           sub_19cc0335[stor11[address(arg1)]].field_1024,
           sub_19cc0335[stor11[address(arg1)]].field_1280,
           sub_19cc0335[stor11[address(arg1)]].field_1536,
           sub_19cc0335[stor11[address(arg1)]].field_1792,
           sub_19cc0335[stor11[address(arg1)]].field_2048,
           sub_19cc0335[stor11[address(arg1)]].field_2304
}

function manager() {
    return managerAddress
}

function sub_523f4a12(?) {
    return sub_19cc0335[stor11[address(msg.sender)]].field_1792
}

function sub_584c8fc1(?) {
    return sub_584c8fc1
}

function totalInvestAmount() {
    return totalInvestAmount
}

function sub_81ce4e3b(?) {
    return sub_81ce4e3b
}

function sub_8312f149(?) {
    return sub_8312f149
}

function sub_8450e921(?) {
    return sub_8450e921
}

function owner() {
    return owner
}

function sub_99f7d3f3(?) {
    return bool(sub_99f7d3f3)
}

function minInvestAmount() {
    return minInvestAmount
}

function getInvestorByIndex(uint256 arg1) {
    return sub_19cc0335[arg1].field_0, 
           sub_19cc0335[arg1].field_256,
           sub_19cc0335[arg1].field_512,
           sub_19cc0335[arg1].field_672 << 208,
           sub_19cc0335[arg1].field_720 << 208,
           sub_19cc0335[arg1].field_768,
           sub_19cc0335[arg1].field_1024,
           sub_19cc0335[arg1].field_1280,
           sub_19cc0335[arg1].field_1536,
           sub_19cc0335[arg1].field_1792,
           sub_19cc0335[arg1].field_2048,
           sub_19cc0335[arg1].field_2304
}

function getInvestorIndex() {
    return investorIndex[address(msg.sender)]
}

function sub_e6052940(?) {
    return sub_e6052940
}

function sub_f1da265a(?) {
    return sub_f1da265a
}

function sub_f48874d4(?) {
    return sub_19cc0335[stor11[address(msg.sender)]].field_1280
}

function _fallback() payable {
  stop
}

function sub_9c71bf34(?) {
    return stor2, totalInvestAmount, sub_8450e921
}

function sub_639f1316(?) {
    return minInvestAmount, sub_584c8fc1, sub_8312f149, sub_f1da265a
}

function sub_a53da6b6(?) {
    if Mask(48, 208, arg1) != stor9 << 208:
        return (stor10[Mask(48, 208, arg1)] > 0)
    return 1
}

function sub_72c691a2(?) {
    if owner != msg.sender:
        if managerAddress != msg.sender:
            revert with 0, 'you are not the or manager'
    sub_99f7d3f3 = uint8(arg1)
}

function sub_1dab279a(?) {
    if owner != msg.sender:
        if managerAddress != msg.sender:
            revert with 0, 'you are not the or manager'
    require arg1 > 0
    sub_e6052940 = arg1
}

function sub_c1c4ed2c(?) {
    if owner != msg.sender:
        if managerAddress != msg.sender:
            revert with 0, 'you are not the or manager'
    require arg1 > 0
    sub_8312f149 = arg1
}

function sub_0a841a06(?) {
    if owner != msg.sender:
        if managerAddress != msg.sender:
            revert with 0, 'you are not the or manager'
    require sub_f1da265a > 0
    sub_f1da265a = arg1
}

function sub_276433eb(?) {
    if owner != msg.sender:
        if managerAddress != msg.sender:
            revert with 0, 'you are not the or manager'
    require arg2 > 0
    sub_99f7d3f3 = uint8(arg1)
    sub_81ce4e3b = arg2
}

function changeOwner(address arg1) {
    if owner != msg.sender:
        if managerAddress != msg.sender:
            revert with 0, 'you are not the or manager'
    require arg1
    emit 0xd86a4a5e: owner, arg1
    owner = arg1
}

function changeManager(address arg1) {
    if owner != msg.sender:
        if managerAddress != msg.sender:
            revert with 0, 'you are not the or manager'
    require arg1
    emit 0xe1cbf62e: managerAddress, arg1
    managerAddress = arg1
}

function transfer(uint256 arg1) {
    if owner != msg.sender:
        if managerAddress != msg.sender:
            revert with 0, 'you are not the or manager'
    require arg1 > 0
    require eth.balance(this.address) > arg1
    require arg1 > 0
    require eth.balance(this.address) > arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b67390e4(?) {
    require investorIndex[address(msg.sender)] > 0
    require sub_19cc0335[stor11[address(msg.sender)]].field_2560
    require sub_19cc0335[stor11[address(msg.sender)]].field_1280 > 0
    require sub_19cc0335[stor11[address(msg.sender)]].field_1280 >= sub_8312f149
    sub_19cc0335[stor11[address(msg.sender)]].field_1280 = 0
    emit 0x8a95b2ed: sub_19cc0335[stor11[address(msg.sender)]].field_1280, block.timestamp, sub_19cc0335[stor11[address(msg.sender)]].field_256
    require sub_19cc0335[stor11[address(msg.sender)]].field_1280 > 0
    require eth.balance(this.address) > sub_19cc0335[stor11[address(msg.sender)]].field_1280
    call msg.sender with:
       value sub_19cc0335[stor11[address(msg.sender)]].field_1280 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c70e6386(?) {
    require investorIndex[address(msg.sender)] > 0
    require sub_19cc0335[stor11[address(msg.sender)]].field_2560
    require sub_19cc0335[stor11[address(msg.sender)]].field_1536 > 0
    require sub_19cc0335[stor11[address(msg.sender)]].field_1536 >= sub_8312f149
    sub_19cc0335[stor11[address(msg.sender)]].field_1536 = 0
    emit 0x4cea7286: sub_19cc0335[stor11[address(msg.sender)]].field_1536, block.timestamp, sub_19cc0335[stor11[address(msg.sender)]].field_256
    require sub_19cc0335[stor11[address(msg.sender)]].field_1536 > 0
    require eth.balance(this.address) > sub_19cc0335[stor11[address(msg.sender)]].field_1536
    call msg.sender with:
       value sub_19cc0335[stor11[address(msg.sender)]].field_1536 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAmount() {
    if investorIndex[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the investor index must larger than 0'
    if not sub_19cc0335[stor11[address(msg.sender)]].field_2560:
        revert with 0, 'the investor does not exists'
    if block.timestamp - sub_19cc0335[stor11[address(msg.sender)]].field_2304 < sub_f1da265a:
        revert with 0, 32, 12, 0xe697b6e997b4e6b2a1e588b00000000000000000000000000000000000000000
    require sub_19cc0335[stor11[address(msg.sender)]].field_768 > 0
    require sub_8450e921 >= sub_19cc0335[stor11[address(msg.sender)]].field_768
    sub_19cc0335[stor11[address(msg.sender)]].field_768 = 0
    require sub_8450e921 - sub_19cc0335[stor11[address(msg.sender)]].field_768 <= sub_8450e921
    sub_8450e921 -= sub_19cc0335[stor11[address(msg.sender)]].field_768
    emit 0xa0bab9be: sub_19cc0335[stor11[address(msg.sender)]].field_768, block.timestamp, sub_19cc0335[stor11[address(msg.sender)]].field_256
    require sub_19cc0335[stor11[address(msg.sender)]].field_768 > 0
    require eth.balance(this.address) > sub_19cc0335[stor11[address(msg.sender)]].field_768
    call msg.sender with:
       value sub_19cc0335[stor11[address(msg.sender)]].field_768 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function invested() payable {
    if msg.value < minInvestAmount:
        revert with 0, 'invalid invest amount'
    if msg.value > sub_584c8fc1:
        revert with 0, 'invalid invest amount'
    if investorIndex[address(msg.sender)] <= 0:
        revert with 0, 'invalid investor'
    if sub_19cc0335[stor11[address(msg.sender)]].field_768 + msg.value < minInvestAmount:
        revert with 0, 'invalid total invest amount'
    if sub_19cc0335[stor11[address(msg.sender)]].field_768 + msg.value > sub_584c8fc1:
        revert with 0, 'invalid total invest amount'
    sub_19cc0335[stor11[address(msg.sender)]].field_768 += msg.value
    if sub_19cc0335[stor11[address(msg.sender)]].field_768 + msg.value < 10^17:
        if sub_19cc0335[stor11[address(msg.sender)]].field_768 + msg.value <= 10^18:
            sub_19cc0335[stor11[address(msg.sender)]].field_1792 = 0
        else:
            if sub_19cc0335[stor11[address(msg.sender)]].field_768 + msg.value > 2 * 10^18:
                sub_19cc0335[stor11[address(msg.sender)]].field_1792 = 3
            else:
                sub_19cc0335[stor11[address(msg.sender)]].field_1792 = 2
    else:
        if sub_19cc0335[stor11[address(msg.sender)]].field_768 + msg.value <= 10^18:
            sub_19cc0335[stor11[address(msg.sender)]].field_1792 = 1
        else:
            if sub_19cc0335[stor11[address(msg.sender)]].field_768 + msg.value > 2 * 10^18:
                sub_19cc0335[stor11[address(msg.sender)]].field_1792 = 3
            else:
                sub_19cc0335[stor11[address(msg.sender)]].field_1792 = 2
    sub_19cc0335[stor11[address(msg.sender)]].field_2304 = block.timestamp
    require totalInvestAmount + msg.value >= totalInvestAmount
    totalInvestAmount += msg.value
    require sub_8450e921 + msg.value >= sub_8450e921
    sub_8450e921 += msg.value
    emit 0x48a359a4: investorIndex[address(msg.sender)], msg.value, sub_19cc0335[stor11[address(msg.sender)]].field_672 << 208, sub_19cc0335[stor10[sub_19cc0335[stor11[address(msg.sender)]].field_720 << 208]].field_672 << 208, block.timestamp, 0, msg.sender, sub_19cc0335[stor10[sub_19cc0335[stor11[address(msg.sender)]].field_720 << 208]].field_256
}

function sub_d4afd1c7(?) payable {
    if msg.value < minInvestAmount:
        revert with 0, 'invalid invest amount'
    if msg.value > sub_584c8fc1:
        revert with 0, 'invalid invest amount'
    if Mask(48, 208, arg1) == stor9 << 208:
        revert with 0, 'invalid invest owner code'
    if stor10[Mask(48, 208, arg1)]:
        revert with 0, 'invalid invest owner code'
    if investorIndex[address(msg.sender)]:
        revert with 0, 'the investor is exists'
    if Mask(48, 208, arg2) != stor9 << 208:
        if stor10[Mask(48, 208, arg2)] <= 0:
            revert with 0, 'invalid inviter code'
    require stor2 + 1 >= stor2
    stor10[Mask(48, 208, arg1)] = stor2 + 1
    investorIndex[address(msg.sender)] = stor2 + 1
    stor10[Mask(48, 208, arg1)] = stor2 + 1
    investorIndex[address(msg.sender)] = stor2 + 1
    sub_19cc0335[stor2 + 1].field_0 = stor2 + 1
    sub_19cc0335[stor2 + 1].field_256 = msg.sender
    sub_19cc0335[stor2 + 1].field_512 = sub_19cc0335[stor10[Mask(48, 208, arg2)]].field_256
    sub_19cc0335[stor2 + 1].field_672 = Mask(48, 208, arg1) >> 208
    sub_19cc0335[stor2 + 1].field_720 = Mask(48, 208, arg2) >> 208
    sub_19cc0335[stor2 + 1].field_768 = msg.value
    sub_19cc0335[stor2 + 1].field_1024 = 0
    sub_19cc0335[stor2 + 1].field_1280 = 0
    sub_19cc0335[stor2 + 1].field_1536 = 0
    if msg.value < 10^17:
        if msg.value <= 10^18:
            sub_19cc0335[stor2 + 1].field_1792 = 0
        else:
            if msg.value > 2 * 10^18:
                sub_19cc0335[stor2 + 1].field_1792 = 3
            else:
                sub_19cc0335[stor2 + 1].field_1792 = 2
    else:
        if msg.value <= 10^18:
            sub_19cc0335[stor2 + 1].field_1792 = 1
        else:
            if msg.value > 2 * 10^18:
                sub_19cc0335[stor2 + 1].field_1792 = 3
            else:
                sub_19cc0335[stor2 + 1].field_1792 = 2
    sub_19cc0335[stor2 + 1].field_2048 = block.timestamp
    sub_19cc0335[stor2 + 1].field_2304 = block.timestamp
    sub_19cc0335[stor2 + 1].field_2560 = 1
    sub_19cc0335[stor10[Mask(48, 208, arg2)]].field_1024++
    require totalInvestAmount + msg.value >= totalInvestAmount
    totalInvestAmount += msg.value
    require sub_8450e921 + msg.value >= sub_8450e921
    sub_8450e921 += msg.value
    require stor2 + 1 >= stor2
    stor2++
    emit 0x48a359a4: stor2 + 1, msg.value, Mask(48, 208, arg1), Mask(48, 208, arg2), block.timestamp, 1, msg.sender, sub_19cc0335[stor10[Mask(48, 208, arg2)]].field_256
}

function sub_358f603b(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 576
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 256] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 288] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 320] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 352] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
    if msg.sender == owner:
        if not sub_99f7d3f3:
            revert with 0, 'the open reward flag must be true'
        if arg3 < 0:
            revert with 0, '_pos must be larger than 0'
        if arg4 <= 0:
            revert with 0, '_offset must be larger than 0'
        if arg1.length != arg2.length:
            revert with 0, 'the _staticAmounts array length must equals _dynamicAmounts array length and _offset'
        if arg2.length != arg4:
            revert with 0, 'the _staticAmounts array length must equals _dynamicAmounts array length and _offset'
        s = (32 * arg1.length) + (32 * arg2.length) + 160
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < arg4:
            require idx < mem[96]
            _64 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _68 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if not sub_19cc0335[idx + arg3].field_2560:
                revert with 0, 'the investor does not exists'
            require sub_19cc0335[idx + arg3].field_1280 + mem[(32 * idx) + 128] >= sub_19cc0335[idx + arg3].field_1280
            require sub_19cc0335[idx + arg3].field_1536 + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1536
            sub_19cc0335[idx + arg3].field_1280 += mem[(32 * idx) + 128]
            sub_19cc0335[idx + arg3].field_1536 += mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[0] = stor10[stor12[idx + arg3].field_720 << 208]
            mem[32] = 12
            _78 = mem[64]
            mem[64] = mem[64] + 416
            mem[_78] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_0
            mem[_78 + 32] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_256
            mem[_78 + 64] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_512
            mem[_78 + 96] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_672 << 208
            mem[_78 + 128] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_720 << 208
            mem[_78 + 160] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_768
            mem[_78 + 192] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_1024
            mem[_78 + 224] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_1280
            mem[_78 + 256] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_1536
            mem[_78 + 288] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_1792
            mem[_78 + 320] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_2048
            mem[_78 + 352] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_2304
            mem[_78 + 384] = bool(sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_2560)
            emit 0x32a6badd: _64, block.timestamp, sub_19cc0335[idx + arg3].field_256
            mem[mem[64]] = _68
            mem[mem[64] + 32] = sub_19cc0335[idx + arg3].field_1792
            mem[mem[64] + 64] = block.timestamp
            emit 0x284b1ae3: _68, sub_19cc0335[idx + arg3].field_1792, block.timestamp, sub_19cc0335[idx + arg3].field_256, sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_256
            s = _78
            s = stor10[stor12[idx + arg3].field_720 << 208]
            s = sub_19cc0335[idx + arg3].field_1536 + _68
            s = sub_19cc0335[idx + arg3].field_1280 + _64
            s = sha3(idx + arg3, 12)
            s = _68
            s = _64
            idx = idx + 1
            continue 
    else:
        if managerAddress != msg.sender:
            revert with 0, 'you are not the or manager'
        if not sub_99f7d3f3:
            revert with 0, 'the open reward flag must be true'
        if arg3 < 0:
            revert with 0, '_pos must be larger than 0'
        if arg4 <= 0:
            revert with 0, '_offset must be larger than 0'
        if arg1.length != arg2.length:
            revert with 0, 'the _staticAmounts array length must equals _dynamicAmounts array length and _offset'
        if arg2.length != arg4:
            revert with 0, 'the _staticAmounts array length must equals _dynamicAmounts array length and _offset'
        s = (32 * arg1.length) + (32 * arg2.length) + 160
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < arg4:
            require idx < mem[96]
            _66 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _70 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if not sub_19cc0335[idx + arg3].field_2560:
                revert with 0, 'the investor does not exists'
            require sub_19cc0335[idx + arg3].field_1280 + mem[(32 * idx) + 128] >= sub_19cc0335[idx + arg3].field_1280
            require sub_19cc0335[idx + arg3].field_1536 + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1536
            sub_19cc0335[idx + arg3].field_1280 += mem[(32 * idx) + 128]
            sub_19cc0335[idx + arg3].field_1536 += mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[0] = stor10[stor12[idx + arg3].field_720 << 208]
            mem[32] = 12
            _86 = mem[64]
            mem[64] = mem[64] + 416
            mem[_86] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_0
            mem[_86 + 32] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_256
            mem[_86 + 64] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_512
            mem[_86 + 96] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_672 << 208
            mem[_86 + 128] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_720 << 208
            mem[_86 + 160] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_768
            mem[_86 + 192] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_1024
            mem[_86 + 224] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_1280
            mem[_86 + 256] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_1536
            mem[_86 + 288] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_1792
            mem[_86 + 320] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_2048
            mem[_86 + 352] = sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_2304
            mem[_86 + 384] = bool(sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_2560)
            emit 0x32a6badd: _66, block.timestamp, sub_19cc0335[idx + arg3].field_256
            mem[mem[64]] = _70
            mem[mem[64] + 32] = sub_19cc0335[idx + arg3].field_1792
            mem[mem[64] + 64] = block.timestamp
            emit 0x284b1ae3: _70, sub_19cc0335[idx + arg3].field_1792, block.timestamp, sub_19cc0335[idx + arg3].field_256, sub_19cc0335[stor10[sub_19cc0335[idx + arg3].field_720 << 208]].field_256
            s = _86
            s = stor10[stor12[idx + arg3].field_720 << 208]
            s = sub_19cc0335[idx + arg3].field_1536 + _70
            s = sub_19cc0335[idx + arg3].field_1280 + _66
            s = sha3(idx + arg3, 12)
            s = _70
            s = _66
            idx = idx + 1
            continue 
}



}
