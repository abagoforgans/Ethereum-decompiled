contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;
mapping of address managers;
address stor2;
uint256 stor3;
uint256 totalInvestAmount;
uint256 sub_8450e921;
uint256 minInvestAmount;
uint256 sub_584c8fc1;
uint256 sub_8312f149;
uint256 sub_f1da265a;
uint128 stor10; offset 160
mapping of uint256 stor11;
mapping of uint256 investorIndex;
mapping of struct sub_19cc0335;
uint8 stor14;
uint8 stor14; offset 8
uint8 stor14; offset 16
uint256 stor14; offset 16
uint256 stor14; offset 8
uint256 lastRewardTime;
uint256 sub_e6052940;
uint256 sub_76211972;

function sub_010732a0(?) {
    return bool(uint8(stor14.field_8))
}

function sub_19cc0335(?) {
    return sub_19cc0335[stor12[address(msg.sender)]].field_1536
}

function sub_2b0d4e1c(?) {
    return sub_19cc0335[stor11[Mask(48, 208, arg1)]].field_0, 
           sub_19cc0335[stor11[Mask(48, 208, arg1)]].field_256,
           sub_19cc0335[stor11[Mask(48, 208, arg1)]].field_512,
           sub_19cc0335[stor11[Mask(48, 208, arg1)]].field_672 << 208,
           sub_19cc0335[stor11[Mask(48, 208, arg1)]].field_720 << 208,
           sub_19cc0335[stor11[Mask(48, 208, arg1)]].field_768,
           sub_19cc0335[stor11[Mask(48, 208, arg1)]].field_1024,
           sub_19cc0335[stor11[Mask(48, 208, arg1)]].field_1280,
           sub_19cc0335[stor11[Mask(48, 208, arg1)]].field_1536,
           sub_19cc0335[stor11[Mask(48, 208, arg1)]].field_2048,
           sub_19cc0335[stor11[Mask(48, 208, arg1)]].field_2304,
           sub_19cc0335[stor11[Mask(48, 208, arg1)]].field_2816
}

function getInvestorByAddress(address arg1) {
    return sub_19cc0335[stor12[address(arg1)]].field_0, 
           sub_19cc0335[stor12[address(arg1)]].field_256,
           sub_19cc0335[stor12[address(arg1)]].field_512,
           sub_19cc0335[stor12[address(arg1)]].field_672 << 208,
           sub_19cc0335[stor12[address(arg1)]].field_720 << 208,
           sub_19cc0335[stor12[address(arg1)]].field_768,
           sub_19cc0335[stor12[address(arg1)]].field_1024,
           sub_19cc0335[stor12[address(arg1)]].field_1280,
           sub_19cc0335[stor12[address(arg1)]].field_1536,
           sub_19cc0335[stor12[address(arg1)]].field_2048,
           sub_19cc0335[stor12[address(arg1)]].field_2304,
           sub_19cc0335[stor12[address(arg1)]].field_2816
}

function sub_523f4a12(?) {
    return sub_19cc0335[stor12[address(msg.sender)]].field_2048
}

function sub_584c8fc1(?) {
    return sub_584c8fc1
}

function totalInvestAmount() {
    return totalInvestAmount
}

function sub_6cd49cf0(?) {
    return sub_19cc0335[stor12[address(msg.sender)]].field_1792
}

function sub_76211972(?) {
    return sub_76211972
}

function sub_7dd9be76(?) {
    return sub_19cc0335[stor12[address(msg.sender)]].field_2560
}

function sub_8312f149(?) {
    return sub_8312f149
}

function sub_8450e921(?) {
    return sub_8450e921
}

function lastRewardTime() {
    return lastRewardTime
}

function sub_99f7d3f3(?) {
    return bool(uint8(stor14.field_0))
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
           sub_19cc0335[arg1].field_2048,
           sub_19cc0335[arg1].field_2304,
           sub_19cc0335[arg1].field_2816
}

function isOpenWithdraw() {
    return bool(uint8(stor14.field_16))
}

function sub_c3e0fbf7(?) {
    return sub_19cc0335[stor12[address(arg1)]].field_1792
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
    return sub_19cc0335[stor12[address(msg.sender)]].field_1280
}

function sub_fdee25ae(?) {
    return sub_19cc0335[stor12[address(arg1)]].field_2560
}

function managers(address arg1) {
    return managers[arg1]
}

function _fallback() payable {
  stop
}

function getData() {
    return stor3, totalInvestAmount, sub_8450e921
}

function sub_639f1316(?) {
    return minInvestAmount, sub_584c8fc1, sub_8312f149, sub_f1da265a
}

function sub_d4afd1c7(?) payable {
    require uint8(stor14.field_8)
    revert with 0, 'invalid owner code'
}

function sub_a53da6b6(?) {
    if Mask(48, 208, arg1) != stor10 << 208:
        return (stor11[Mask(48, 208, arg1)] > 0)
    return 1
}

function sub_9c71bf34(?) {
    return bool(uint8(stor14.field_0)), bool(uint8(stor14.field_8)), bool(uint8(stor14.field_16)), lastRewardTime
}

function getOwner() {
    if not msg.sender:
        revert with 0, 'you are not the owner or manager'
    if stor0 != msg.sender:
        if managers[address(msg.sender)] != msg.sender:
            revert with 0, 'you are not the owner or manager'
    return stor0
}

function getColdWalletAddress() {
    if not msg.sender:
        revert with 0, 'you are not the owner or manager'
    if stor0 != msg.sender:
        if managers[address(msg.sender)] != msg.sender:
            revert with 0, 'you are not the owner or manager'
    return stor2
}

function sub_1dab279a(?) {
    if not msg.sender:
        revert with 0, 'you are not the owner or manager'
    if stor0 != msg.sender:
        if managers[address(msg.sender)] != msg.sender:
            revert with 0, 'you are not the owner or manager'
    require arg1 > 0
    sub_e6052940 = arg1
}

function sub_c1c4ed2c(?) {
    if not msg.sender:
        revert with 0, 'you are not the owner or manager'
    if stor0 != msg.sender:
        if managers[address(msg.sender)] != msg.sender:
            revert with 0, 'you are not the owner or manager'
    require arg1 > 0
    sub_8312f149 = arg1
}

function removeManager(address arg1) {
    if not msg.sender:
        revert with 0, 'you are not the owner'
    if stor0 != msg.sender:
        revert with 0, 'you are not the owner'
    require managers[address(arg1)] == arg1
    emit 0xa23b47f7: block.timestamp, arg1
    managers[address(arg1)] = 0
}

function sub_0a841a06(?) {
    if not msg.sender:
        revert with 0, 'you are not the owner or manager'
    if stor0 != msg.sender:
        if managers[address(msg.sender)] != msg.sender:
            revert with 0, 'you are not the owner or manager'
    require sub_f1da265a > 0
    sub_f1da265a = arg1
}

function addManager(address arg1) {
    if not msg.sender:
        revert with 0, 'you are not the owner'
    if stor0 != msg.sender:
        revert with 0, 'you are not the owner'
    require arg1
    require not managers[address(arg1)]
    emit 0xc375b911: block.timestamp, arg1
    managers[address(arg1)] = arg1
}

function transfer(uint256 arg1) {
    if not msg.sender:
        revert with 0, 'you are not the owner or manager'
    if stor0 != msg.sender:
        if managers[address(msg.sender)] != msg.sender:
            revert with 0, 'you are not the owner or manager'
    require arg1 > 0
    require eth.balance(this.address) >= arg1
    call stor2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5d8a13e3(?) {
    if not msg.sender:
        revert with 0, 'you are not the owner or manager'
    if stor0 != msg.sender:
        if managers[address(msg.sender)] != msg.sender:
            revert with 0, 'you are not the owner or manager'
    require arg4 >= 0
    uint8(stor14.field_0) = uint8(arg1)
    Mask(248, 0, stor14.field_8) = Mask(248, 0, arg2)
    Mask(240, 0, stor14.field_16) = Mask(240, 0, arg3)
    if arg4 > 0:
        lastRewardTime = arg4
    emit 0xe8327455: arg1, arg2, arg3, arg4, block.timestamp
}

function sub_b67390e4(?) {
    require uint8(stor14.field_16)
    require investorIndex[address(msg.sender)] > 0
    require sub_19cc0335[stor12[address(msg.sender)]].field_3072
    require sub_19cc0335[stor12[address(msg.sender)]].field_1280 > 0
    require sub_19cc0335[stor12[address(msg.sender)]].field_1280 >= sub_8312f149
    sub_19cc0335[stor12[address(msg.sender)]].field_1280 = 0
    emit 0x8a95b2ed: sub_19cc0335[stor12[address(msg.sender)]].field_1280, block.timestamp, sub_19cc0335[stor12[address(msg.sender)]].field_256
    require sub_19cc0335[stor12[address(msg.sender)]].field_1280 > 0
    require eth.balance(this.address) >= sub_19cc0335[stor12[address(msg.sender)]].field_1280
    require msg.sender
    call msg.sender with:
       value sub_19cc0335[stor12[address(msg.sender)]].field_1280 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c70e6386(?) {
    require uint8(stor14.field_16)
    require investorIndex[address(msg.sender)] > 0
    require sub_19cc0335[stor12[address(msg.sender)]].field_3072
    require sub_19cc0335[stor12[address(msg.sender)]].field_1536 > 0
    require sub_19cc0335[stor12[address(msg.sender)]].field_1536 >= sub_8312f149
    sub_19cc0335[stor12[address(msg.sender)]].field_1536 = 0
    emit 0x4cea7286: sub_19cc0335[stor12[address(msg.sender)]].field_1536, block.timestamp, sub_19cc0335[stor12[address(msg.sender)]].field_256
    require sub_19cc0335[stor12[address(msg.sender)]].field_1536 > 0
    require eth.balance(this.address) >= sub_19cc0335[stor12[address(msg.sender)]].field_1536
    require msg.sender
    call msg.sender with:
       value sub_19cc0335[stor12[address(msg.sender)]].field_1536 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAmount() {
    require uint8(stor14.field_16)
    if investorIndex[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the investor index must larger than 0'
    if not sub_19cc0335[stor12[address(msg.sender)]].field_3072:
        revert with 0, 'the investor does not exists'
    if block.timestamp - sub_19cc0335[stor12[address(msg.sender)]].field_2816 < sub_f1da265a:
        revert with 0, 32, 12, 0xe697b6e997b4e6b2a1e588b00000000000000000000000000000000000000000
    require sub_19cc0335[stor12[address(msg.sender)]].field_768 > 0
    require sub_8450e921 >= sub_19cc0335[stor12[address(msg.sender)]].field_768
    sub_19cc0335[stor12[address(msg.sender)]].field_768 = 0
    require sub_8450e921 - sub_19cc0335[stor12[address(msg.sender)]].field_768 <= sub_8450e921
    sub_8450e921 -= sub_19cc0335[stor12[address(msg.sender)]].field_768
    emit 0xa0bab9be: sub_19cc0335[stor12[address(msg.sender)]].field_768, block.timestamp, sub_19cc0335[stor12[address(msg.sender)]].field_256
    require sub_19cc0335[stor12[address(msg.sender)]].field_768 > 0
    require eth.balance(this.address) >= sub_19cc0335[stor12[address(msg.sender)]].field_768
    require msg.sender
    call msg.sender with:
       value sub_19cc0335[stor12[address(msg.sender)]].field_768 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function invested() payable {
    require uint8(stor14.field_8)
    if msg.value < minInvestAmount:
        revert with 0, 'invalid invest amount'
    if msg.value > sub_584c8fc1:
        revert with 0, 'invalid invest amount'
    if msg.value % 10^18:
        revert with 0, 'invalid invest amount'
    if investorIndex[address(msg.sender)] <= 0:
        revert with 0, 'invalid investor'
    if not sub_19cc0335[stor12[address(msg.sender)]].field_768:
        sub_19cc0335[stor12[address(msg.sender)]].field_2816 = block.timestamp
    require sub_19cc0335[stor12[address(msg.sender)]].field_768 + msg.value >= sub_19cc0335[stor12[address(msg.sender)]].field_768
    if sub_19cc0335[stor12[address(msg.sender)]].field_768 + msg.value < minInvestAmount:
        revert with 0, 'invalid total invest amount'
    if sub_19cc0335[stor12[address(msg.sender)]].field_768 + msg.value > sub_584c8fc1:
        revert with 0, 'invalid total invest amount'
    sub_19cc0335[stor12[address(msg.sender)]].field_768 += msg.value
    if sub_19cc0335[stor12[address(msg.sender)]].field_768 + msg.value < 10^18:
        if sub_19cc0335[stor12[address(msg.sender)]].field_768 + msg.value <= 10 * 10^18:
            sub_19cc0335[stor12[address(msg.sender)]].field_2048 = 0
        else:
            if sub_19cc0335[stor12[address(msg.sender)]].field_768 + msg.value > 20 * 10^18:
                sub_19cc0335[stor12[address(msg.sender)]].field_2048 = 3
            else:
                sub_19cc0335[stor12[address(msg.sender)]].field_2048 = 2
    else:
        if sub_19cc0335[stor12[address(msg.sender)]].field_768 + msg.value <= 10 * 10^18:
            sub_19cc0335[stor12[address(msg.sender)]].field_2048 = 1
        else:
            if sub_19cc0335[stor12[address(msg.sender)]].field_768 + msg.value > 20 * 10^18:
                sub_19cc0335[stor12[address(msg.sender)]].field_2048 = 3
            else:
                sub_19cc0335[stor12[address(msg.sender)]].field_2048 = 2
    require totalInvestAmount + msg.value >= totalInvestAmount
    totalInvestAmount += msg.value
    require sub_8450e921 + msg.value >= sub_8450e921
    sub_8450e921 += msg.value
    emit 0x48a359a4: investorIndex[address(msg.sender)], msg.value, sub_19cc0335[stor12[address(msg.sender)]].field_672 << 208, sub_19cc0335[stor11[sub_19cc0335[stor12[address(msg.sender)]].field_720 << 208]].field_672 << 208, block.timestamp, 0, msg.sender, sub_19cc0335[stor11[sub_19cc0335[stor12[address(msg.sender)]].field_720 << 208]].field_256
}

function sub_358f603b(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 640
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
    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = 0
    if not msg.sender:
        revert with 0, 'you are not the owner or manager'
    if msg.sender == stor0:
        if not uint8(stor14.field_0):
            revert with 0, 'the open reward flag must be true'
        if arg3 < 0:
            revert with 0, '_pos must be larger than 0'
        if arg4 <= 0:
            revert with 0, '_offset must be larger than 0'
        if arg1.length != arg2.length:
            revert with 0, 'the _staticAmounts array length must equals _dynamicAmounts array length and _offset'
        if arg2.length != arg4:
            revert with 0, 'the _staticAmounts array length must equals _dynamicAmounts array length and _offset'
        s = 0
        s = 0
        idx = 0
        while idx < arg4:
            require idx < mem[96]
            _129 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _133 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if mem[(32 * idx) + 128]:
                require idx + arg3 >= idx
                if not sub_19cc0335[idx + arg3].field_3072:
                    revert with 0, 'the investor does not exists'
                if not sub_19cc0335[idx + arg3].field_2560:
                    require mem[(32 * idx) + 128] <= sub_19cc0335[idx + arg3].field_768 / 100
                    require sub_19cc0335[idx + arg3].field_1280 + mem[(32 * idx) + 128] >= sub_19cc0335[idx + arg3].field_1280
                    require sub_19cc0335[idx + arg3].field_1536 + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1536
                    sub_19cc0335[idx + arg3].field_1280 += mem[(32 * idx) + 128]
                    sub_19cc0335[idx + arg3].field_1536 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= mem[(32 * idx) + 128]
                    require sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1792
                    sub_19cc0335[idx + arg3].field_1792 = sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160]
                    sub_19cc0335[idx + arg3].field_2560 = block.timestamp
                    mem[0] = stor11[stor13[idx + arg3].field_720 << 208]
                    mem[32] = 13
                    _157 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_157] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_0
                    mem[_157 + 32] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_256
                    mem[_157 + 64] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_512
                    mem[_157 + 96] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_672 << 208
                    mem[_157 + 128] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_720 << 208
                    mem[_157 + 160] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_768
                    mem[_157 + 192] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1024
                    mem[_157 + 224] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1280
                    mem[_157 + 256] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1536
                    mem[_157 + 288] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1792
                    mem[_157 + 320] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2048
                    mem[_157 + 352] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2304
                    mem[_157 + 384] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2560
                    mem[_157 + 416] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2816
                    mem[_157 + 448] = bool(sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_3072)
                else:
                    if block.timestamp - sub_19cc0335[idx + arg3].field_2560 < sub_76211972:
                        revert with 0, 'the lastRewardTime invalid'
                    require mem[(32 * idx) + 128] <= sub_19cc0335[idx + arg3].field_768 / 100
                    require sub_19cc0335[idx + arg3].field_1280 + mem[(32 * idx) + 128] >= sub_19cc0335[idx + arg3].field_1280
                    require sub_19cc0335[idx + arg3].field_1536 + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1536
                    sub_19cc0335[idx + arg3].field_1280 += mem[(32 * idx) + 128]
                    sub_19cc0335[idx + arg3].field_1536 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= mem[(32 * idx) + 128]
                    require sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1792
                    sub_19cc0335[idx + arg3].field_1792 = sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160]
                    sub_19cc0335[idx + arg3].field_2560 = block.timestamp
                    mem[0] = stor11[stor13[idx + arg3].field_720 << 208]
                    mem[32] = 13
                    _173 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_173] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_0
                    mem[_173 + 32] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_256
                    mem[_173 + 64] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_512
                    mem[_173 + 96] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_672 << 208
                    mem[_173 + 128] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_720 << 208
                    mem[_173 + 160] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_768
                    mem[_173 + 192] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1024
                    mem[_173 + 224] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1280
                    mem[_173 + 256] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1536
                    mem[_173 + 288] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1792
                    mem[_173 + 320] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2048
                    mem[_173 + 352] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2304
                    mem[_173 + 384] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2560
                    mem[_173 + 416] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2816
                    mem[_173 + 448] = bool(sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_3072)
            else:
                if not mem[(32 * idx) + (32 * arg1.length) + 160]:
                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                    s = mem[(32 * idx) + 128]
                    idx = idx + 1
                    continue 
                require idx + arg3 >= idx
                if not sub_19cc0335[idx + arg3].field_3072:
                    revert with 0, 'the investor does not exists'
                if not sub_19cc0335[idx + arg3].field_2560:
                    require mem[(32 * idx) + 128] <= sub_19cc0335[idx + arg3].field_768 / 100
                    require sub_19cc0335[idx + arg3].field_1280 + mem[(32 * idx) + 128] >= sub_19cc0335[idx + arg3].field_1280
                    require sub_19cc0335[idx + arg3].field_1536 + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1536
                    sub_19cc0335[idx + arg3].field_1280 += mem[(32 * idx) + 128]
                    sub_19cc0335[idx + arg3].field_1536 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= mem[(32 * idx) + 128]
                    require sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1792
                    sub_19cc0335[idx + arg3].field_1792 = sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160]
                    sub_19cc0335[idx + arg3].field_2560 = block.timestamp
                    mem[0] = stor11[stor13[idx + arg3].field_720 << 208]
                    mem[32] = 13
                    _181 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_181] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_0
                    mem[_181 + 32] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_256
                    mem[_181 + 64] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_512
                    mem[_181 + 96] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_672 << 208
                    mem[_181 + 128] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_720 << 208
                    mem[_181 + 160] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_768
                    mem[_181 + 192] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1024
                    mem[_181 + 224] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1280
                    mem[_181 + 256] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1536
                    mem[_181 + 288] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1792
                    mem[_181 + 320] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2048
                    mem[_181 + 352] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2304
                    mem[_181 + 384] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2560
                    mem[_181 + 416] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2816
                    mem[_181 + 448] = bool(sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_3072)
                else:
                    if block.timestamp - sub_19cc0335[idx + arg3].field_2560 < sub_76211972:
                        revert with 0, 'the lastRewardTime invalid'
                    require mem[(32 * idx) + 128] <= sub_19cc0335[idx + arg3].field_768 / 100
                    require sub_19cc0335[idx + arg3].field_1280 + mem[(32 * idx) + 128] >= sub_19cc0335[idx + arg3].field_1280
                    require sub_19cc0335[idx + arg3].field_1536 + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1536
                    sub_19cc0335[idx + arg3].field_1280 += mem[(32 * idx) + 128]
                    sub_19cc0335[idx + arg3].field_1536 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= mem[(32 * idx) + 128]
                    require sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1792
                    sub_19cc0335[idx + arg3].field_1792 = sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160]
                    sub_19cc0335[idx + arg3].field_2560 = block.timestamp
                    mem[0] = stor11[stor13[idx + arg3].field_720 << 208]
                    mem[32] = 13
                    _205 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_205] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_0
                    mem[_205 + 32] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_256
                    mem[_205 + 64] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_512
                    mem[_205 + 96] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_672 << 208
                    mem[_205 + 128] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_720 << 208
                    mem[_205 + 160] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_768
                    mem[_205 + 192] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1024
                    mem[_205 + 224] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1280
                    mem[_205 + 256] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1536
                    mem[_205 + 288] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1792
                    mem[_205 + 320] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2048
                    mem[_205 + 352] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2304
                    mem[_205 + 384] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2560
                    mem[_205 + 416] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2816
                    mem[_205 + 448] = bool(sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_3072)
            emit 0x32a6badd: _129, block.timestamp, sub_19cc0335[idx + arg3].field_256
            mem[mem[64]] = _133
            mem[mem[64] + 32] = sub_19cc0335[idx + arg3].field_2048
            mem[mem[64] + 64] = block.timestamp
            emit 0x284b1ae3: _133, sub_19cc0335[idx + arg3].field_2048, block.timestamp, sub_19cc0335[idx + arg3].field_256, sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_256
            s = _133
            s = _129
            idx = idx + 1
            continue 
    else:
        if managers[address(msg.sender)] != msg.sender:
            revert with 0, 'you are not the owner or manager'
        if not uint8(stor14.field_0):
            revert with 0, 'the open reward flag must be true'
        if arg3 < 0:
            revert with 0, '_pos must be larger than 0'
        if arg4 <= 0:
            revert with 0, '_offset must be larger than 0'
        if arg1.length != arg2.length:
            revert with 0, 'the _staticAmounts array length must equals _dynamicAmounts array length and _offset'
        if arg2.length != arg4:
            revert with 0, 'the _staticAmounts array length must equals _dynamicAmounts array length and _offset'
        s = 0
        s = 0
        idx = 0
        while idx < arg4:
            require idx < mem[96]
            _131 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _134 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if mem[(32 * idx) + 128]:
                require idx + arg3 >= idx
                if not sub_19cc0335[idx + arg3].field_3072:
                    revert with 0, 'the investor does not exists'
                if not sub_19cc0335[idx + arg3].field_2560:
                    require mem[(32 * idx) + 128] <= sub_19cc0335[idx + arg3].field_768 / 100
                    require sub_19cc0335[idx + arg3].field_1280 + mem[(32 * idx) + 128] >= sub_19cc0335[idx + arg3].field_1280
                    require sub_19cc0335[idx + arg3].field_1536 + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1536
                    sub_19cc0335[idx + arg3].field_1280 += mem[(32 * idx) + 128]
                    sub_19cc0335[idx + arg3].field_1536 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= mem[(32 * idx) + 128]
                    require sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1792
                    sub_19cc0335[idx + arg3].field_1792 = sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160]
                    sub_19cc0335[idx + arg3].field_2560 = block.timestamp
                    mem[0] = stor11[stor13[idx + arg3].field_720 << 208]
                    mem[32] = 13
                    _165 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_165] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_0
                    mem[_165 + 32] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_256
                    mem[_165 + 64] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_512
                    mem[_165 + 96] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_672 << 208
                    mem[_165 + 128] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_720 << 208
                    mem[_165 + 160] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_768
                    mem[_165 + 192] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1024
                    mem[_165 + 224] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1280
                    mem[_165 + 256] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1536
                    mem[_165 + 288] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1792
                    mem[_165 + 320] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2048
                    mem[_165 + 352] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2304
                    mem[_165 + 384] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2560
                    mem[_165 + 416] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2816
                    mem[_165 + 448] = bool(sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_3072)
                else:
                    if block.timestamp - sub_19cc0335[idx + arg3].field_2560 < sub_76211972:
                        revert with 0, 'the lastRewardTime invalid'
                    require mem[(32 * idx) + 128] <= sub_19cc0335[idx + arg3].field_768 / 100
                    require sub_19cc0335[idx + arg3].field_1280 + mem[(32 * idx) + 128] >= sub_19cc0335[idx + arg3].field_1280
                    require sub_19cc0335[idx + arg3].field_1536 + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1536
                    sub_19cc0335[idx + arg3].field_1280 += mem[(32 * idx) + 128]
                    sub_19cc0335[idx + arg3].field_1536 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= mem[(32 * idx) + 128]
                    require sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1792
                    sub_19cc0335[idx + arg3].field_1792 = sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160]
                    sub_19cc0335[idx + arg3].field_2560 = block.timestamp
                    mem[0] = stor11[stor13[idx + arg3].field_720 << 208]
                    mem[32] = 13
                    _189 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_189] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_0
                    mem[_189 + 32] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_256
                    mem[_189 + 64] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_512
                    mem[_189 + 96] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_672 << 208
                    mem[_189 + 128] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_720 << 208
                    mem[_189 + 160] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_768
                    mem[_189 + 192] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1024
                    mem[_189 + 224] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1280
                    mem[_189 + 256] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1536
                    mem[_189 + 288] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1792
                    mem[_189 + 320] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2048
                    mem[_189 + 352] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2304
                    mem[_189 + 384] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2560
                    mem[_189 + 416] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2816
                    mem[_189 + 448] = bool(sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_3072)
            else:
                if not mem[(32 * idx) + (32 * arg1.length) + 160]:
                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                    s = mem[(32 * idx) + 128]
                    idx = idx + 1
                    continue 
                require idx + arg3 >= idx
                if not sub_19cc0335[idx + arg3].field_3072:
                    revert with 0, 'the investor does not exists'
                if not sub_19cc0335[idx + arg3].field_2560:
                    require mem[(32 * idx) + 128] <= sub_19cc0335[idx + arg3].field_768 / 100
                    require sub_19cc0335[idx + arg3].field_1280 + mem[(32 * idx) + 128] >= sub_19cc0335[idx + arg3].field_1280
                    require sub_19cc0335[idx + arg3].field_1536 + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1536
                    sub_19cc0335[idx + arg3].field_1280 += mem[(32 * idx) + 128]
                    sub_19cc0335[idx + arg3].field_1536 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= mem[(32 * idx) + 128]
                    require sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1792
                    sub_19cc0335[idx + arg3].field_1792 = sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160]
                    sub_19cc0335[idx + arg3].field_2560 = block.timestamp
                    mem[0] = stor11[stor13[idx + arg3].field_720 << 208]
                    mem[32] = 13
                    _197 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_197] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_0
                    mem[_197 + 32] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_256
                    mem[_197 + 64] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_512
                    mem[_197 + 96] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_672 << 208
                    mem[_197 + 128] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_720 << 208
                    mem[_197 + 160] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_768
                    mem[_197 + 192] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1024
                    mem[_197 + 224] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1280
                    mem[_197 + 256] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1536
                    mem[_197 + 288] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1792
                    mem[_197 + 320] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2048
                    mem[_197 + 352] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2304
                    mem[_197 + 384] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2560
                    mem[_197 + 416] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2816
                    mem[_197 + 448] = bool(sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_3072)
                else:
                    if block.timestamp - sub_19cc0335[idx + arg3].field_2560 < sub_76211972:
                        revert with 0, 'the lastRewardTime invalid'
                    require mem[(32 * idx) + 128] <= sub_19cc0335[idx + arg3].field_768 / 100
                    require sub_19cc0335[idx + arg3].field_1280 + mem[(32 * idx) + 128] >= sub_19cc0335[idx + arg3].field_1280
                    require sub_19cc0335[idx + arg3].field_1536 + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1536
                    sub_19cc0335[idx + arg3].field_1280 += mem[(32 * idx) + 128]
                    sub_19cc0335[idx + arg3].field_1536 += mem[(32 * idx) + (32 * arg1.length) + 160]
                    require mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= mem[(32 * idx) + 128]
                    require sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160] >= sub_19cc0335[idx + arg3].field_1792
                    sub_19cc0335[idx + arg3].field_1792 = sub_19cc0335[idx + arg3].field_1792 + mem[(32 * idx) + 128] + mem[(32 * idx) + (32 * arg1.length) + 160]
                    sub_19cc0335[idx + arg3].field_2560 = block.timestamp
                    mem[0] = stor11[stor13[idx + arg3].field_720 << 208]
                    mem[32] = 13
                    _213 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_213] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_0
                    mem[_213 + 32] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_256
                    mem[_213 + 64] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_512
                    mem[_213 + 96] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_672 << 208
                    mem[_213 + 128] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_720 << 208
                    mem[_213 + 160] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_768
                    mem[_213 + 192] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1024
                    mem[_213 + 224] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1280
                    mem[_213 + 256] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1536
                    mem[_213 + 288] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_1792
                    mem[_213 + 320] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2048
                    mem[_213 + 352] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2304
                    mem[_213 + 384] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2560
                    mem[_213 + 416] = sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_2816
                    mem[_213 + 448] = bool(sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_3072)
            emit 0x32a6badd: _131, block.timestamp, sub_19cc0335[idx + arg3].field_256
            mem[mem[64]] = _134
            mem[mem[64] + 32] = sub_19cc0335[idx + arg3].field_2048
            mem[mem[64] + 64] = block.timestamp
            emit 0x284b1ae3: _134, sub_19cc0335[idx + arg3].field_2048, block.timestamp, sub_19cc0335[idx + arg3].field_256, sub_19cc0335[stor11[sub_19cc0335[idx + arg3].field_720 << 208]].field_256
            s = _134
            s = _131
            idx = idx + 1
            continue 
}



}
