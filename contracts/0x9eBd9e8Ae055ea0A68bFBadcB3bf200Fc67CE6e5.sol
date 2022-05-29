contract main {




// =====================  Runtime code  =====================


#
#  - sub_350bf7c0(?)
#  - withdraw()
#
const sub_08ecd9a6(?) = 0x4c6f636b657250726f76696465720000000000000000000000000000000000

const sub_201d83d8(?) = 0x546f6b656e42726f6b656e0000000000000000000000000000000000000000

const sub_768c7206(?) = 10^17

const sub_862b2839(?) = 0x4765744574680000000000000000000000000000000000000000000000000000

const WITHDRAW = 0x576974686472617750726f7669646572000000000000000000000000000000

const WHITELIST = 0xef57686974656c69737450726f76696465720000000000000000000000000000

const STEP = 0x5374657050726f766964657200000000000000000000000000000000000000

const INITIAL_VALUE = 10^18

const PRICE = 'PriceProvider'

const DENOMINATOR = 10000

const RISK = 'RiskProvider'

const EXCHANGE = 0x45786368616e676550726f7669646572000000000000000000000000000000

const REIMBURSABLE = 0x5265696d6275727361626c6500000000000000000000000000000000000000

const FEE = 0x46656550726f76696465720000000000000000000000000000000000000000

const REBALANCE = 'RebalanceProvider'

const MARKET = 'MarketProvider'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
mapping of address sub_2156e6c6;
array of uint256 description;
array of uint256 category;
array of uint256 version;
uint8 fundType;
uint8 status; offset 8
array of struct tokens;
uint256 decimals;
array of uint256 name;
array of uint256 symbol;
uint8 paused;
address sub_5075edbfAddress; offset 8
uint256 pausedTime;
uint256 sub_44644ef0;
mapping of uint8 stor16;
array of struct stor18;
mapping of uint256 investors;
mapping of uint256 amounts;
mapping of uint8 stor21;
array of struct sub_07b08870;
mapping of uint8 stor23;
uint256 accumulatedFee;
mapping of uint256 sub_1c2a0e5c;
array of struct sub_81d62bf5;
uint8 sub_55c32a39;
uint8 sub_36724ef4; offset 8
array of address stor2481041784956016742021570618494952475758789857281704946240779902470294861374;
uint8 storDE8F;
uint8 stor37F8;
uint8 stor68E4;
uint8 stor72BF;

function name() {
    return name[0 len name.length]
}

function sub_07b08870(?) {
    require arg1 < sub_07b08870.length
    return address(sub_07b08870[arg1].field_0)
}

function totalSupply() {
    return totalSupply
}

function sub_1c2a0e5c(?) {
    return sub_1c2a0e5c[arg1]
}

function fundType() {
    require fundType <= 2
    return fundType
}

function status() {
    require status <= 3
    return status
}

function sub_2156e6c6(?) {
    return sub_2156e6c6[arg1]
}

function decimals() {
    return decimals
}

function sub_36724ef4(?) {
    return bool(sub_36724ef4)
}

function sub_44644ef0(?) {
    return sub_44644ef0
}

function tokens(uint256 arg1) {
    require arg1 < tokens.length
    return address(tokens[arg1].field_0)
}

function sub_5075edbf(?) {
    return sub_5075edbfAddress
}

function version() {
    return version[0 len version.length]
}

function amounts(address arg1) {
    return amounts[arg1]
}

function sub_55c32a39(?) {
    return bool(sub_55c32a39)
}

function sub_5acf6903(?) {
    return bool(stor21[arg1])
}

function paused() {
    return bool(paused)
}

function investors(address arg1) {
    return investors[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function description() {
    return description[0 len description.length]
}

function sub_81d62bf5(?) {
    require arg1 < sub_81d62bf5.length
    return address(sub_81d62bf5[arg1].field_0)
}

function sub_8a97d732(?) {
    return bool(stor23[arg1])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function pausedTime() {
    return pausedTime
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function category() {
    return category[0 len category.length]
}

function accumulatedFee() {
    return accumulatedFee
}

function _fallback() payable {
  stop
}

function unpause() {
    require msg.sender == owner
    require paused
    paused = 0
    emit Unpause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function pause() {
    require msg.sender == owner
    require not paused
    paused = 1
    pausedTime = block.timestamp
}

function addOwnerBalance() payable {
    require msg.value + accumulatedFee >= accumulatedFee
    accumulatedFee += msg.value
}

function getETHBalance() {
    require accumulatedFee <= eth.balance(this.address)
    return (eth.balance(this.address) - accumulatedFee)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not paused
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function close() {
    if owner != msg.sender:
        require 1 == bool(paused)
        require pausedTime + sub_44644ef0 <= block.timestamp
    require status <= 3
    require status
    status = 3
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not paused
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not paused
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not paused
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_b8893727(?) {
    require msg.sender == owner
    require ext_code.size(sub_2156e6c6[0x5374657050726f766964657200000000000000000000000000000000000000])
    call sub_2156e6c6[0x5374657050726f766964657200000000000000000000000000000000000000].0xd63a81f0 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setManagementFee(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
    call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].setFeePercentage(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_87b8aa6a(?) {
    require msg.sender == owner
    require arg1 <= 2
    require ext_code.size(sub_2156e6c6[0xef57686974656c69737450726f76696465720000000000000000000000000000])
    call sub_2156e6c6[0xef57686974656c69737450726f76696465720000000000000000000000000000].setStatus(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg1 << 248, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function hasRisk(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) {
    require ext_code.size(sub_2156e6c6['RiskProvider'])
    call sub_2156e6c6['RiskProvider'].hasRisk(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_38a1ff63(?) {
    require msg.sender == owner
    require ext_code.size(sub_2156e6c6[0x4c6f636b657250726f76696465720000000000000000000000000000000000])
    call sub_2156e6c6[0x4c6f636b657250726f76696465720000000000000000000000000000000000].0x38a1ff63 with:
         gas gas_remaining wei
        args 0, 64, (32 * arg1.length) + 96, arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setAllowed(address[] arg1, uint8 arg2, bool arg3) {
    require msg.sender == owner
    require arg2 <= 2
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(sub_2156e6c6[0xef57686974656c69737450726f76696465720000000000000000000000000000])
    call sub_2156e6c6[0xef57686974656c69737450726f76696465720000000000000000000000000000].0xb65c7c81 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), arg2 << 248, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_85450abf(?) {
    if not sub_81d62bf5.length:
        mem[(32 * sub_81d62bf5.length) + 128] = 32
        mem[(32 * sub_81d62bf5.length) + 160] = sub_81d62bf5.length
        mem[(32 * sub_81d62bf5.length) + 192 len floor32(sub_81d62bf5.length)] = mem[128 len floor32(sub_81d62bf5.length)]
        return memory
          from (32 * sub_81d62bf5.length) + 128
           len (96 * sub_81d62bf5.length) + 64
    mem[128] = address(sub_81d62bf5.field_0)
    idx = 128
    s = 0
    while (32 * sub_81d62bf5.length) + 96 > idx:
        mem[idx + 32] = address(sub_81d62bf5[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_81d62bf5.length) + 192 len floor32(sub_81d62bf5.length)] = mem[128 len floor32(sub_81d62bf5.length)]
    return Array(len=sub_81d62bf5.length, data=mem[128 len floor32(sub_81d62bf5.length)], mem[(32 * sub_81d62bf5.length) + floor32(sub_81d62bf5.length) + 192 len (32 * sub_81d62bf5.length) - floor32(sub_81d62bf5.length)]), 
}

function getTokens() {
    idx = 0
    while idx < tokens.length:
        mem[0] = address(tokens[idx].field_0)
        mem[32] = 20
        require idx < tokens.length
        mem[(32 * idx) + 128] = amounts[address(stor9[idx].field_0)]
        idx = idx + 1
        continue 
    if tokens.length:
        mem[(32 * tokens.length) + 160] = address(tokens.field_0)
        idx = (32 * tokens.length) + 160
        s = 0
        while (64 * tokens.length) + 128 > idx:
            mem[idx + 32] = address(tokens[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(64 * tokens.length) + 160] = 64
    mem[(64 * tokens.length) + 224] = tokens.length
    mem[(64 * tokens.length) + 256 len floor32(tokens.length)] = mem[(32 * tokens.length) + 160 len floor32(tokens.length)]
    mem[(64 * tokens.length) + 192] = (32 * tokens.length) + 96
    mem[(98 * tokens.length) + 256] = tokens.length
    return Array(len=tokens.length, data=mem[(32 * tokens.length) + 160 len floor32(tokens.length)], mem[(64 * tokens.length) + floor32(tokens.length) + 256 len (64 * tokens.length) + -floor32(tokens.length) + 32]), 
           (32 * tokens.length) + 96
}

function tokensWithAmount() {
    idx = 0
    s = 0
    while idx < tokens.length:
        mem[0] = address(tokens[idx].field_0)
        mem[32] = 23
        if stor23[address(stor9[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        require idx < tokens.length
        mem[0] = address(tokens[idx].field_0)
        mem[32] = 20
        if amounts[address(stor9[idx].field_0)] <= 0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[25019 len 32 * s]
    idx = 0
    t = 0
    while idx < tokens.length:
        mem[0] = address(tokens[idx].field_0)
        mem[32] = 23
        if stor23[address(stor9[idx].field_0)]:
            idx = idx + 1
            t = t
            continue 
        require idx < tokens.length
        mem[0] = address(tokens[idx].field_0)
        mem[32] = 20
        if amounts[address(stor9[idx].field_0)] <= 0:
            idx = idx + 1
            t = t
            continue 
        require idx < tokens.length
        mem[0] = 9
        require t < s
        mem[(32 * t) + 128] = address(tokens[idx].field_0)
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}

function sub_2feb34d4(?) {
    require msg.sender == owner
    require ext_code.size(sub_5075edbfAddress)
    call sub_5075edbfAddress.0xf57ce488 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_2156e6c6[arg1] != address(ext_call.return_data[0]):
        require ext_code.size(sub_5075edbfAddress)
        call sub_5075edbfAddress.0xf57ce488 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[12 len 20]
        sub_2156e6c6[arg1] = address(ext_call.return_data[0])
        if not stor16[arg1]:
            require ext_code.size(sub_2156e6c6[arg1])
            call sub_2156e6c6[arg1].MOT() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_2156e6c6[arg1], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_2156e6c6[arg1], -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return sub_2156e6c6[arg1]
}

function getAssetsValue() {
    idx = 0
    while idx < tokens.length:
        mem[0] = address(tokens[idx].field_0)
        mem[32] = 23
        if stor23[address(stor9[idx].field_0)]:
            idx = idx + 1
            continue 
        require idx < tokens.length
        mem[0] = 9
        require ext_code.size(address(tokens[idx].field_0))
        call address(tokens[idx].field_0).0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = this.address
        require ext_code.size(address(tokens[idx].field_0))
        call address(tokens[idx].field_0).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            continue 
        mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[164] = 10^ext_call.return_data[0]
        mem[196] = 0
        require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
        call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].getPrice(address arg1, address arg2, uint256 arg3, bytes32 arg4) with:
             gas gas_remaining wei
            args address(tokens[idx].field_0), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 10^ext_call.return_data[0], 0
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            idx = idx + 1
            continue 
        if not ext_call.return_data[0]:
            if 10^ext_call.return_data[0]:
                if 0 / 10^ext_call.return_data[0] >= 0:
                    idx = idx + 1
                    continue 
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]:
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] >= 0:
                        idx = idx + 1
                        continue 
        revert
    return 0
}

function getPrice() {
    if 0 == totalSupply:
        return 10^18
    require accumulatedFee <= eth.balance(this.address)
    idx = 0
    while idx < tokens.length:
        mem[0] = address(tokens[idx].field_0)
        mem[32] = 23
        if stor23[address(stor9[idx].field_0)]:
            idx = idx + 1
            continue 
        require idx < tokens.length
        mem[0] = 9
        require ext_code.size(address(tokens[idx].field_0))
        call address(tokens[idx].field_0).0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = this.address
        require ext_code.size(address(tokens[idx].field_0))
        call address(tokens[idx].field_0).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            continue 
        mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[164] = 10^ext_call.return_data[0]
        mem[196] = 0
        require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
        call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].getPrice(address arg1, address arg2, uint256 arg3, bytes32 arg4) with:
             gas gas_remaining wei
            args address(tokens[idx].field_0), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 10^ext_call.return_data[0], 0
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            idx = idx + 1
            continue 
        if not ext_call.return_data[0]:
            if 10^ext_call.return_data[0]:
                if 0 / 10^ext_call.return_data[0] >= 0:
                    idx = idx + 1
                    continue 
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]:
                if 10^ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] >= 0:
                        idx = idx + 1
                        continue 
        revert
    if eth.balance(this.address) - accumulatedFee >= 0:
        if not eth.balance(this.address) - accumulatedFee:
            if totalSupply:
                return (0 / totalSupply)
        else:
            if (eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / eth.balance(this.address) - accumulatedFee == 10^decimals:
                if totalSupply:
                    return ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply)
    revert
}

function initialize(address arg1, uint256 arg2, uint256 arg3) payable {
    require msg.sender == owner
    require arg1
    require status <= 3
    require not status
    require msg.value >= 10^17
    sub_44644ef0 = 8760 * 24 * 3600
    require arg1
    sub_5075edbfAddress = arg1
    stor37F8 = 1
    stor72BF = 1
    storDE8F = 1
    stor68E4 = 1
    mem[416] = 'MarketProvider'
    mem[448] = 0x45786368616e676550726f7669646572000000000000000000000000000000
    mem[480] = 'RiskProvider'
    mem[512] = 0xef57686974656c69737450726f76696465720000000000000000000000000000
    mem[544] = 0x46656550726f76696465720000000000000000000000000000000000000000
    mem[576] = 0x5265696d6275727361626c6500000000000000000000000000000000000000
    mem[608] = 0x576974686472617750726f7669646572000000000000000000000000000000
    mem[640] = 0x4c6f636b657250726f76696465720000000000000000000000000000000000
    mem[672] = 0x5374657050726f766964657200000000000000000000000000000000000000
    mem[704] = 0x546f6b656e42726f6b656e0000000000000000000000000000000000000000
    idx = 0
    while idx < 10:
        _46 = mem[(32 * idx) + 416]
        require msg.sender == owner
        mem[740] = mem[(32 * idx) + 416]
        require ext_code.size(sub_5075edbfAddress)
        call sub_5075edbfAddress.0xf57ce488 with:
             gas gas_remaining wei
            args _46
        mem[736] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_2156e6c6[_46] != address(ext_call.return_data[0]):
            mem[740] = _46
            require ext_code.size(sub_5075edbfAddress)
            call sub_5075edbfAddress.0xf57ce488 with:
                 gas gas_remaining wei
                args _46
            mem[736] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require address(ext_call.return_data[0])
            sub_2156e6c6[_46] = address(ext_call.return_data[0])
            if not stor16[_46]:
                require ext_code.size(sub_2156e6c6[_46])
                call sub_2156e6c6[_46].MOT() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_2156e6c6[_46], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[736] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[740] = sub_2156e6c6[_46]
                mem[772] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_2156e6c6[_46], -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        mem[0] = _46
        mem[32] = 4
        idx = idx + 1
        continue 
    require ext_code.size(sub_2156e6c6['MarketProvider'])
    call sub_2156e6c6['MarketProvider'].registerProduct() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
    call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].setFeePercentage(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2156e6c6[0x4c6f636b657250726f76696465720000000000000000000000000000000000])
    call sub_2156e6c6[0x4c6f636b657250726f76696465720000000000000000000000000000000000].0x62f0ce85 with:
         gas gas_remaining wei
        args 0x576974686472617750726f7669646572000000000000000000000000000000, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < 0, 0x576974686472617750726f76696465720000000000000000000000
    mem[768] = 10
    require 1 < 0, 0x576974686472617750726f76696465720000000000000000000000
    mem[1124 len floor32(0, 0x576974686472617750726f76696465720000000000000000000000)] = mem[768 len floor32(0, 0x576974686472617750726f76696465720000000000000000000000)]
    require ext_code.size(sub_2156e6c6[0x5374657050726f766964657200000000000000000000000000000000000000])
    call sub_2156e6c6[0x5374657050726f766964657200000000000000000000000000000000000000].0xfdb880b9 with:
         gas gas_remaining wei
        args 64, 160, 2, mem[1028 len (32 * 0, 0x576974686472617750726f76696465720000000000000000000000) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    status = 1
    require msg.value + accumulatedFee >= accumulatedFee
    accumulatedFee += msg.value
}

function withdrawFee(uint256 arg1) {
    require msg.sender == owner
    require not paused
    require arg1 > 0
    require status <= 3
    if status == 3:
        idx = 0
        while idx < tokens.length:
            mem[0] = address(tokens[idx].field_0)
            mem[32] = 23
            if stor23[address(stor9[idx].field_0)]:
                idx = idx + 1
                continue 
            require idx < tokens.length
            mem[0] = 9
            require ext_code.size(address(tokens[idx].field_0))
            call address(tokens[idx].field_0).0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = this.address
            require ext_code.size(address(tokens[idx].field_0))
            call address(tokens[idx].field_0).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                idx = idx + 1
                continue 
            mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[164] = 10^ext_call.return_data[0]
            mem[196] = 0
            require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
            call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].getPrice(address arg1, address arg2, uint256 arg3, bytes32 arg4) with:
                 gas gas_remaining wei
                args address(tokens[idx].field_0), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 10^ext_call.return_data[0], 0
            mem[96 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[0]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] >= 0:
                        idx = idx + 1
                        continue 
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]:
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] >= 0:
                            idx = idx + 1
                            continue 
            revert
        require arg1 <= accumulatedFee
        accumulatedFee -= arg1
        require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
        call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].MOT() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
        call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].getPrice(address arg1, address arg2, uint256 arg3, bytes32 arg4) with:
             gas gas_remaining wei
            args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(ext_call.return_data[0]), arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
        call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].0xeb5d3ab5 with:
           value arg1 wei
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg1, ext_call.return_data[32], owner, 0
    else:
        require arg1 + 10^17 >= arg1
        require arg1 + 10^17 <= accumulatedFee
        require arg1 <= accumulatedFee
        accumulatedFee -= arg1
        require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
        call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].MOT() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
        call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].getPrice(address arg1, address arg2, uint256 arg3, bytes32 arg4) with:
             gas gas_remaining wei
            args 0, 4008636142, address(ext_call.return_data[0]), arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
        call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].0xeb5d3ab5 with:
           value arg1 wei
             gas gas_remaining wei
            args 0, ext_call.return_data[32], uint32(arg1), ext_call.return_data[32], owner, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function sub_3c98d189(?) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if msg.sender == owner:
        require not sub_55c32a39
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 23
            if stor23[mem[(32 * idx) + 140 len 20]]:
                require idx < arg3.length
                mem[(32 * arg2.length) + (32 * idx) + 160] = 0
                idx = idx + 1
                continue 
            require idx < arg3.length
            _329 = mem[(32 * idx) + (32 * arg2.length) + 160]
            require idx < mem[(32 * arg3.length) + (32 * arg2.length) + 160]
            _335 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + 192]
            mem[0] = 'RiskProvider'
            mem[32] = 4
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = this.address
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 228] = sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000]
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 260] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 292] = _329
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 324] = _335
            require ext_code.size(sub_2156e6c6['RiskProvider'])
            call sub_2156e6c6['RiskProvider'].hasRisk(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args address(this.address), sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _329, _335
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
            require idx < arg3.length
            require mem[(32 * arg2.length) + (32 * idx) + 160] >= 0
            idx = idx + 1
            continue 
        require accumulatedFee <= eth.balance(this.address)
        require eth.balance(this.address) - accumulatedFee >= 0
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = 0x15cdc52900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 292] = this.address
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 324] = arg1
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = 160
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 356] = arg2.length
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 388 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 228] = (32 * arg2.length) + 192
        mem[(64 * arg2.length) + (32 * arg4.length) + (32 * arg3.length) + 388] = arg3.length
        mem[(64 * arg2.length) + (32 * arg4.length) + (32 * arg3.length) + 420 len floor32(arg3.length)] = mem[(32 * arg2.length) + 160 len floor32(arg3.length)]
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 260] = (32 * arg3.length) + (32 * arg2.length) + 224
        mem[(64 * arg3.length) + (64 * arg2.length) + (32 * arg4.length) + 420] = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
        mem[(64 * arg3.length) + (64 * arg2.length) + (32 * arg4.length) + 452 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])] = mem[(32 * arg3.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])]
        require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
        call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].0x15cdc529 with:
             gas gas_remaining wei
            args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 388 len (32 * arg3.length) + (32 * arg2.length) + (32 * mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + -floor32(arg2.length) + 64]), (32 * arg2.length) + 192, (32 * arg3.length) + (32 * arg2.length) + 224, address(this.address), arg1
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                if mem[(32 * idx) + 140 len 20]:
                    require idx < arg2.length
                    _1347 = mem[(32 * idx) + 128]
                    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    require ext_code.size(address(_1347))
                    call address(_1347).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = address(_1347)
                    mem[32] = 20
                    amounts[address(_1347)] = ext_call.return_data[0]
                    if 0 < ext_call.return_data[0]:
                        mem[0] = address(_1347)
                        mem[32] = 21
                        if not stor21[address(_1347)]:
                            tokens.length++
                            address(tokens[tokens.length].field_0) = address(_1347)
                            mem[0] = address(_1347)
                            mem[32] = 21
                            stor21[address(_1347)] = 1
                idx = idx + 1
                continue 
            return 1
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = arg2.length
        if not arg2.length:
            mem[0] = 0x45786368616e676550726f7669646572000000000000000000000000000000
            mem[32] = 4
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224] = 0x674f23ba00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228] = 32
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 260] = arg2.length
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
            call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].0x674f23ba with:
                 gas gas_remaining wei
                args mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228 len (32 * arg2.length) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            _1350 = mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 <= 4294967296
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 32 <= return_data.size
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224] <= 4294967296 and mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + (32 * mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224]) + 32 <= return_data.size
            idx = 0
            while idx < arg2.length:
                require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1350 + 224]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1350 + 256] > 0:
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    if not stor23[mem[(32 * idx) + 140 len 20]]:
                        require idx < mem[96]
                        stor23[mem[(32 * idx) + 140 len 20]] = 1
                        require idx < mem[96]
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 20
                        if amounts[mem[(32 * idx) + 140 len 20]] > 0:
                            require idx < mem[96]
                            sub_07b08870.length++
                            mem[0] = 22
                            address(sub_07b08870[sub_07b08870.length].field_0) = mem[(32 * idx) + 140 len 20]
                            require idx < mem[96]
                            _1625 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0xce7b557400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_1625)
                            require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].0xce7b5574 with:
                                 gas gas_remaining wei
                                args address(_1625)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1647 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1647] <= 4294967296
                            require mem[_1647] + 32 <= return_data.size
                            require mem[_1647 + mem[_1647]] <= 4294967296 and mem[_1647] + (32 * mem[_1647 + mem[_1647]]) + 32 <= return_data.size
                idx = idx + 1
                continue 
            _1663 = mem[96]
            idx = 0
            while idx < _1663:
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20]:
                    require idx < mem[96]
                    _1679 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1679))
                    call address(_1679).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = address(_1679)
                    mem[32] = 20
                    amounts[address(_1679)] = ext_call.return_data[0]
                    if 0 < ext_call.return_data[0]:
                        mem[0] = address(_1679)
                        mem[32] = 21
                        if not stor21[address(_1679)]:
                            tokens.length++
                            address(tokens[tokens.length].field_0) = address(_1679)
                            mem[0] = address(_1679)
                            mem[32] = 21
                            stor21[address(_1679)] = 1
                idx = idx + 1
                continue 
        else:
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224 len 32 * arg2.length] = code.data[25019 len 32 * arg2.length]
            mem[0] = 0x45786368616e676550726f7669646572000000000000000000000000000000
            mem[32] = 4
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224] = 0x674f23ba00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228] = 32
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 260] = arg2.length
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
            call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].0x674f23ba with:
                 gas gas_remaining wei
                args mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228 len (32 * arg2.length) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            _1351 = mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 <= 4294967296
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 32 <= return_data.size
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224] <= 4294967296 and mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + (32 * mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224]) + 32 <= return_data.size
            idx = 0
            while idx < arg2.length:
                require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1351 + 224]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1351 + 256] > 0:
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    if not stor23[mem[(32 * idx) + 140 len 20]]:
                        require idx < mem[96]
                        stor23[mem[(32 * idx) + 140 len 20]] = 1
                        require idx < mem[96]
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 20
                        if amounts[mem[(32 * idx) + 140 len 20]] > 0:
                            require idx < mem[96]
                            sub_07b08870.length++
                            mem[0] = 22
                            address(sub_07b08870[sub_07b08870.length].field_0) = mem[(32 * idx) + 140 len 20]
                            require idx < mem[96]
                            _1630 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0xce7b557400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_1630)
                            require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].0xce7b5574 with:
                                 gas gas_remaining wei
                                args address(_1630)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1648 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1648] <= 4294967296
                            require mem[_1648] + 32 <= return_data.size
                            require mem[_1648 + mem[_1648]] <= 4294967296 and mem[_1648] + (32 * mem[_1648 + mem[_1648]]) + 32 <= return_data.size
                idx = idx + 1
                continue 
            _1664 = mem[96]
            idx = 0
            while idx < _1664:
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20]:
                    require idx < mem[96]
                    _1682 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1682))
                    call address(_1682).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = address(_1682)
                    mem[32] = 20
                    amounts[address(_1682)] = ext_call.return_data[0]
                    if 0 < ext_call.return_data[0]:
                        mem[0] = address(_1682)
                        mem[32] = 21
                        if not stor21[address(_1682)]:
                            tokens.length++
                            address(tokens[tokens.length].field_0) = address(_1682)
                            mem[0] = address(_1682)
                            mem[32] = 21
                            stor21[address(_1682)] = 1
                idx = idx + 1
                continue 
    else:
        require ext_code.size(sub_2156e6c6[0xef57686974656c69737450726f76696465720000000000000000000000000000])
        call sub_2156e6c6[0xef57686974656c69737450726f76696465720000000000000000000000000000].0x919253e8 with:
             gas gas_remaining wei
            args address(this.address), 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = 2
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 228] = msg.sender
        require ext_code.size(sub_2156e6c6[0xef57686974656c69737450726f76696465720000000000000000000000000000])
        call sub_2156e6c6[0xef57686974656c69737450726f76696465720000000000000000000000000000].0x5faa299a with:
             gas gas_remaining wei
            args 2, msg.sender
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require not sub_55c32a39
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 23
            if stor23[mem[(32 * idx) + 140 len 20]]:
                require idx < arg3.length
                mem[(32 * arg2.length) + (32 * idx) + 160] = 0
                idx = idx + 1
                continue 
            require idx < arg3.length
            _331 = mem[(32 * idx) + (32 * arg2.length) + 160]
            require idx < mem[(32 * arg3.length) + (32 * arg2.length) + 160]
            _338 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + 192]
            mem[0] = 'RiskProvider'
            mem[32] = 4
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = this.address
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 228] = sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000]
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 260] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 292] = _331
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 324] = _338
            require ext_code.size(sub_2156e6c6['RiskProvider'])
            call sub_2156e6c6['RiskProvider'].hasRisk(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args address(this.address), sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, _331, _338
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
            require idx < arg3.length
            require mem[(32 * arg2.length) + (32 * idx) + 160] >= 0
            idx = idx + 1
            continue 
        require accumulatedFee <= eth.balance(this.address)
        require eth.balance(this.address) - accumulatedFee >= 0
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = 0x15cdc52900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 292] = this.address
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 324] = arg1
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = 160
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 356] = arg2.length
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 388 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 228] = (32 * arg2.length) + 192
        mem[(64 * arg2.length) + (32 * arg4.length) + (32 * arg3.length) + 388] = arg3.length
        mem[(64 * arg2.length) + (32 * arg4.length) + (32 * arg3.length) + 420 len floor32(arg3.length)] = mem[(32 * arg2.length) + 160 len floor32(arg3.length)]
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 260] = (32 * arg3.length) + (32 * arg2.length) + 224
        mem[(64 * arg3.length) + (64 * arg2.length) + (32 * arg4.length) + 420] = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
        mem[(64 * arg3.length) + (64 * arg2.length) + (32 * arg4.length) + 452 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])] = mem[(32 * arg3.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])]
        require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
        call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].0x15cdc529 with:
             gas gas_remaining wei
            args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 388 len (32 * arg3.length) + (32 * arg2.length) + (32 * mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + -floor32(arg2.length) + 64]), (32 * arg2.length) + 192, (32 * arg3.length) + (32 * arg2.length) + 224, address(this.address), arg1
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                if mem[(32 * idx) + 140 len 20]:
                    require idx < arg2.length
                    _1352 = mem[(32 * idx) + 128]
                    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    require ext_code.size(address(_1352))
                    call address(_1352).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = address(_1352)
                    mem[32] = 20
                    amounts[address(_1352)] = ext_call.return_data[0]
                    if 0 < ext_call.return_data[0]:
                        mem[0] = address(_1352)
                        mem[32] = 21
                        if not stor21[address(_1352)]:
                            tokens.length++
                            address(tokens[tokens.length].field_0) = address(_1352)
                            mem[0] = address(_1352)
                            mem[32] = 21
                            stor21[address(_1352)] = 1
                idx = idx + 1
                continue 
            return 1
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = arg2.length
        if not arg2.length:
            mem[0] = 0x45786368616e676550726f7669646572000000000000000000000000000000
            mem[32] = 4
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224] = 0x674f23ba00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228] = 32
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 260] = arg2.length
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
            call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].0x674f23ba with:
                 gas gas_remaining wei
                args mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228 len (32 * arg2.length) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            _1355 = mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 <= 4294967296
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 32 <= return_data.size
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224] <= 4294967296 and mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + (32 * mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224]) + 32 <= return_data.size
            idx = 0
            while idx < arg2.length:
                require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1355 + 224]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1355 + 256] > 0:
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    if not stor23[mem[(32 * idx) + 140 len 20]]:
                        require idx < mem[96]
                        stor23[mem[(32 * idx) + 140 len 20]] = 1
                        require idx < mem[96]
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 20
                        if amounts[mem[(32 * idx) + 140 len 20]] > 0:
                            require idx < mem[96]
                            sub_07b08870.length++
                            mem[0] = 22
                            address(sub_07b08870[sub_07b08870.length].field_0) = mem[(32 * idx) + 140 len 20]
                            require idx < mem[96]
                            _1635 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0xce7b557400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_1635)
                            require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].0xce7b5574 with:
                                 gas gas_remaining wei
                                args address(_1635)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1649 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1649] <= 4294967296
                            require mem[_1649] + 32 <= return_data.size
                            require mem[_1649 + mem[_1649]] <= 4294967296 and mem[_1649] + (32 * mem[_1649 + mem[_1649]]) + 32 <= return_data.size
                idx = idx + 1
                continue 
            _1665 = mem[96]
            idx = 0
            while idx < _1665:
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20]:
                    require idx < mem[96]
                    _1685 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1685))
                    call address(_1685).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = address(_1685)
                    mem[32] = 20
                    amounts[address(_1685)] = ext_call.return_data[0]
                    if 0 < ext_call.return_data[0]:
                        mem[0] = address(_1685)
                        mem[32] = 21
                        if not stor21[address(_1685)]:
                            tokens.length++
                            address(tokens[tokens.length].field_0) = address(_1685)
                            mem[0] = address(_1685)
                            mem[32] = 21
                            stor21[address(_1685)] = 1
                idx = idx + 1
                continue 
        else:
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224 len 32 * arg2.length] = code.data[25019 len 32 * arg2.length]
            mem[0] = 0x45786368616e676550726f7669646572000000000000000000000000000000
            mem[32] = 4
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224] = 0x674f23ba00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228] = 32
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 260] = arg2.length
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
            call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].0x674f23ba with:
                 gas gas_remaining wei
                args mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228 len (32 * arg2.length) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            _1356 = mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 <= 4294967296
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 32 <= return_data.size
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224] <= 4294967296 and mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + (32 * mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224]) + 32 <= return_data.size
            idx = 0
            while idx < arg2.length:
                require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1356 + 224]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1356 + 256] > 0:
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    if not stor23[mem[(32 * idx) + 140 len 20]]:
                        require idx < mem[96]
                        stor23[mem[(32 * idx) + 140 len 20]] = 1
                        require idx < mem[96]
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 20
                        if amounts[mem[(32 * idx) + 140 len 20]] > 0:
                            require idx < mem[96]
                            sub_07b08870.length++
                            mem[0] = 22
                            address(sub_07b08870[sub_07b08870.length].field_0) = mem[(32 * idx) + 140 len 20]
                            require idx < mem[96]
                            _1640 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0xce7b557400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_1640)
                            require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].0xce7b5574 with:
                                 gas gas_remaining wei
                                args address(_1640)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1650 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1650] <= 4294967296
                            require mem[_1650] + 32 <= return_data.size
                            require mem[_1650 + mem[_1650]] <= 4294967296 and mem[_1650] + (32 * mem[_1650 + mem[_1650]]) + 32 <= return_data.size
                idx = idx + 1
                continue 
            _1666 = mem[96]
            idx = 0
            while idx < _1666:
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20]:
                    require idx < mem[96]
                    _1688 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1688))
                    call address(_1688).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = address(_1688)
                    mem[32] = 20
                    amounts[address(_1688)] = ext_call.return_data[0]
                    if 0 < ext_call.return_data[0]:
                        mem[0] = address(_1688)
                        mem[32] = 21
                        if not stor21[address(_1688)]:
                            tokens.length++
                            address(tokens[tokens.length].field_0) = address(_1688)
                            mem[0] = address(_1688)
                            mem[32] = 21
                            stor21[address(_1688)] = 1
                idx = idx + 1
                continue 
    return 0
}

function sub_679818a1(?) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if msg.sender == owner:
        require not sub_55c32a39
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 23
            if stor23[mem[(32 * idx) + 140 len 20]]:
                require idx < arg3.length
                mem[(32 * arg2.length) + (32 * idx) + 160] = 0
            else:
                require idx < arg2.length
                _351 = mem[(32 * idx) + 128]
                require idx < arg3.length
                _358 = mem[(32 * idx) + (32 * arg2.length) + 160]
                require idx < mem[(32 * arg3.length) + (32 * arg2.length) + 160]
                _365 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + 192]
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 228] = sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000]
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 260] = address(_351)
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 292] = _358
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 324] = _365
                require ext_code.size(sub_2156e6c6['RiskProvider'])
                call sub_2156e6c6['RiskProvider'].hasRisk(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args address(this.address), sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000], address(_351), _358, _365
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require not ext_call.return_data[0]
                require idx < arg2.length
                _404 = mem[(32 * idx) + 128]
                require idx < arg3.length
                _414 = mem[(32 * idx) + (32 * arg2.length) + 160]
                mem[0] = 0x45786368616e676550726f7669646572000000000000000000000000000000
                mem[32] = 4
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000]
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 228] = _414
                require ext_code.size(address(_404))
                call address(_404).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000], _414
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = 0x78265e2f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 292] = this.address
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 324] = arg1
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = 160
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 356] = arg2.length
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 388 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 228] = (32 * arg2.length) + 192
        mem[(64 * arg2.length) + (32 * arg4.length) + (32 * arg3.length) + 388] = arg3.length
        mem[(64 * arg2.length) + (32 * arg4.length) + (32 * arg3.length) + 420 len floor32(arg3.length)] = mem[(32 * arg2.length) + 160 len floor32(arg3.length)]
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 260] = (32 * arg3.length) + (32 * arg2.length) + 224
        mem[(64 * arg3.length) + (64 * arg2.length) + (32 * arg4.length) + 420] = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
        mem[(64 * arg3.length) + (64 * arg2.length) + (32 * arg4.length) + 452 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])] = mem[(32 * arg3.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])]
        require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
        call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].0x78265e2f with:
             gas gas_remaining wei
            args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 388 len (32 * arg3.length) + (32 * arg2.length) + (32 * mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + -floor32(arg2.length) + 64]), (32 * arg2.length) + 192, (32 * arg3.length) + (32 * arg2.length) + 224, address(this.address), arg1
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                if mem[(32 * idx) + 140 len 20]:
                    require idx < arg2.length
                    _1373 = mem[(32 * idx) + 128]
                    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    require ext_code.size(address(_1373))
                    call address(_1373).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = address(_1373)
                    mem[32] = 20
                    amounts[address(_1373)] = ext_call.return_data[0]
                    if 0 < ext_call.return_data[0]:
                        mem[0] = address(_1373)
                        mem[32] = 21
                        if not stor21[address(_1373)]:
                            tokens.length++
                            address(tokens[tokens.length].field_0) = address(_1373)
                            mem[0] = address(_1373)
                            mem[32] = 21
                            stor21[address(_1373)] = 1
                idx = idx + 1
                continue 
            return 1
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = arg2.length
        if not arg2.length:
            mem[0] = 0x45786368616e676550726f7669646572000000000000000000000000000000
            mem[32] = 4
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224] = 0x674f23ba00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228] = 32
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 260] = arg2.length
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
            call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].0x674f23ba with:
                 gas gas_remaining wei
                args mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228 len (32 * arg2.length) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            _1376 = mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 <= 4294967296
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 32 <= return_data.size
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224] <= 4294967296 and mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + (32 * mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224]) + 32 <= return_data.size
            idx = 0
            while idx < arg2.length:
                require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1376 + 224]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1376 + 256] > 0:
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    if not stor23[mem[(32 * idx) + 140 len 20]]:
                        require idx < mem[96]
                        stor23[mem[(32 * idx) + 140 len 20]] = 1
                        require idx < mem[96]
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 20
                        if amounts[mem[(32 * idx) + 140 len 20]] > 0:
                            require idx < mem[96]
                            sub_07b08870.length++
                            mem[0] = 22
                            address(sub_07b08870[sub_07b08870.length].field_0) = mem[(32 * idx) + 140 len 20]
                            require idx < mem[96]
                            _1651 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0xce7b557400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_1651)
                            require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].0xce7b5574 with:
                                 gas gas_remaining wei
                                args address(_1651)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1673 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1673] <= 4294967296
                            require mem[_1673] + 32 <= return_data.size
                            require mem[_1673 + mem[_1673]] <= 4294967296 and mem[_1673] + (32 * mem[_1673 + mem[_1673]]) + 32 <= return_data.size
                idx = idx + 1
                continue 
            _1689 = mem[96]
            idx = 0
            while idx < _1689:
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20]:
                    require idx < mem[96]
                    _1705 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1705))
                    call address(_1705).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = address(_1705)
                    mem[32] = 20
                    amounts[address(_1705)] = ext_call.return_data[0]
                    if 0 < ext_call.return_data[0]:
                        mem[0] = address(_1705)
                        mem[32] = 21
                        if not stor21[address(_1705)]:
                            tokens.length++
                            address(tokens[tokens.length].field_0) = address(_1705)
                            mem[0] = address(_1705)
                            mem[32] = 21
                            stor21[address(_1705)] = 1
                idx = idx + 1
                continue 
        else:
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224 len 32 * arg2.length] = code.data[25019 len 32 * arg2.length]
            mem[0] = 0x45786368616e676550726f7669646572000000000000000000000000000000
            mem[32] = 4
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224] = 0x674f23ba00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228] = 32
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 260] = arg2.length
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
            call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].0x674f23ba with:
                 gas gas_remaining wei
                args mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228 len (32 * arg2.length) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            _1377 = mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 <= 4294967296
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 32 <= return_data.size
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224] <= 4294967296 and mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + (32 * mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224]) + 32 <= return_data.size
            idx = 0
            while idx < arg2.length:
                require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1377 + 224]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1377 + 256] > 0:
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    if not stor23[mem[(32 * idx) + 140 len 20]]:
                        require idx < mem[96]
                        stor23[mem[(32 * idx) + 140 len 20]] = 1
                        require idx < mem[96]
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 20
                        if amounts[mem[(32 * idx) + 140 len 20]] > 0:
                            require idx < mem[96]
                            sub_07b08870.length++
                            mem[0] = 22
                            address(sub_07b08870[sub_07b08870.length].field_0) = mem[(32 * idx) + 140 len 20]
                            require idx < mem[96]
                            _1656 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0xce7b557400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_1656)
                            require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].0xce7b5574 with:
                                 gas gas_remaining wei
                                args address(_1656)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1674 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1674] <= 4294967296
                            require mem[_1674] + 32 <= return_data.size
                            require mem[_1674 + mem[_1674]] <= 4294967296 and mem[_1674] + (32 * mem[_1674 + mem[_1674]]) + 32 <= return_data.size
                idx = idx + 1
                continue 
            _1690 = mem[96]
            idx = 0
            while idx < _1690:
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20]:
                    require idx < mem[96]
                    _1708 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1708))
                    call address(_1708).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = address(_1708)
                    mem[32] = 20
                    amounts[address(_1708)] = ext_call.return_data[0]
                    if 0 < ext_call.return_data[0]:
                        mem[0] = address(_1708)
                        mem[32] = 21
                        if not stor21[address(_1708)]:
                            tokens.length++
                            address(tokens[tokens.length].field_0) = address(_1708)
                            mem[0] = address(_1708)
                            mem[32] = 21
                            stor21[address(_1708)] = 1
                idx = idx + 1
                continue 
    else:
        require ext_code.size(sub_2156e6c6[0xef57686974656c69737450726f76696465720000000000000000000000000000])
        call sub_2156e6c6[0xef57686974656c69737450726f76696465720000000000000000000000000000].0x919253e8 with:
             gas gas_remaining wei
            args address(this.address), 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = 2
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 228] = msg.sender
        require ext_code.size(sub_2156e6c6[0xef57686974656c69737450726f76696465720000000000000000000000000000])
        call sub_2156e6c6[0xef57686974656c69737450726f76696465720000000000000000000000000000].0x5faa299a with:
             gas gas_remaining wei
            args 2, msg.sender
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require not sub_55c32a39
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 23
            if stor23[mem[(32 * idx) + 140 len 20]]:
                require idx < arg3.length
                mem[(32 * arg2.length) + (32 * idx) + 160] = 0
            else:
                require idx < arg2.length
                _353 = mem[(32 * idx) + 128]
                require idx < arg3.length
                _363 = mem[(32 * idx) + (32 * arg2.length) + 160]
                require idx < mem[(32 * arg3.length) + (32 * arg2.length) + 160]
                _366 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + 192]
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 228] = sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000]
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 260] = address(_353)
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 292] = _363
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 324] = _366
                require ext_code.size(sub_2156e6c6['RiskProvider'])
                call sub_2156e6c6['RiskProvider'].hasRisk(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args address(this.address), sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000], address(_353), _363, _366
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require not ext_call.return_data[0]
                require idx < arg2.length
                _407 = mem[(32 * idx) + 128]
                require idx < arg3.length
                _420 = mem[(32 * idx) + (32 * arg2.length) + 160]
                mem[0] = 0x45786368616e676550726f7669646572000000000000000000000000000000
                mem[32] = 4
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000]
                mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 228] = _420
                require ext_code.size(address(_407))
                call address(_407).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000], _420
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = 0x78265e2f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 292] = this.address
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 324] = arg1
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = 160
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 356] = arg2.length
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 388 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 228] = (32 * arg2.length) + 192
        mem[(64 * arg2.length) + (32 * arg4.length) + (32 * arg3.length) + 388] = arg3.length
        mem[(64 * arg2.length) + (32 * arg4.length) + (32 * arg3.length) + 420 len floor32(arg3.length)] = mem[(32 * arg2.length) + 160 len floor32(arg3.length)]
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 260] = (32 * arg3.length) + (32 * arg2.length) + 224
        mem[(64 * arg3.length) + (64 * arg2.length) + (32 * arg4.length) + 420] = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
        mem[(64 * arg3.length) + (64 * arg2.length) + (32 * arg4.length) + 452 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])] = mem[(32 * arg3.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160])]
        require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
        call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].0x78265e2f with:
             gas gas_remaining wei
            args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 388 len (32 * arg3.length) + (32 * arg2.length) + (32 * mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + -floor32(arg2.length) + 64]), (32 * arg2.length) + 192, (32 * arg3.length) + (32 * arg2.length) + 224, address(this.address), arg1
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                if mem[(32 * idx) + 140 len 20]:
                    require idx < arg2.length
                    _1378 = mem[(32 * idx) + 128]
                    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 196] = this.address
                    require ext_code.size(address(_1378))
                    call address(_1378).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = address(_1378)
                    mem[32] = 20
                    amounts[address(_1378)] = ext_call.return_data[0]
                    if 0 < ext_call.return_data[0]:
                        mem[0] = address(_1378)
                        mem[32] = 21
                        if not stor21[address(_1378)]:
                            tokens.length++
                            address(tokens[tokens.length].field_0) = address(_1378)
                            mem[0] = address(_1378)
                            mem[32] = 21
                            stor21[address(_1378)] = 1
                idx = idx + 1
                continue 
            return 1
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 192] = arg2.length
        if not arg2.length:
            mem[0] = 0x45786368616e676550726f7669646572000000000000000000000000000000
            mem[32] = 4
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224] = 0x674f23ba00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228] = 32
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 260] = arg2.length
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
            call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].0x674f23ba with:
                 gas gas_remaining wei
                args mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228 len (32 * arg2.length) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            _1381 = mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 <= 4294967296
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 32 <= return_data.size
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224] <= 4294967296 and mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + (32 * mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224]) + 32 <= return_data.size
            idx = 0
            while idx < arg2.length:
                require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1381 + 224]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1381 + 256] > 0:
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    if not stor23[mem[(32 * idx) + 140 len 20]]:
                        require idx < mem[96]
                        stor23[mem[(32 * idx) + 140 len 20]] = 1
                        require idx < mem[96]
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 20
                        if amounts[mem[(32 * idx) + 140 len 20]] > 0:
                            require idx < mem[96]
                            sub_07b08870.length++
                            mem[0] = 22
                            address(sub_07b08870[sub_07b08870.length].field_0) = mem[(32 * idx) + 140 len 20]
                            require idx < mem[96]
                            _1661 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0xce7b557400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_1661)
                            require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].0xce7b5574 with:
                                 gas gas_remaining wei
                                args address(_1661)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1675 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1675] <= 4294967296
                            require mem[_1675] + 32 <= return_data.size
                            require mem[_1675 + mem[_1675]] <= 4294967296 and mem[_1675] + (32 * mem[_1675 + mem[_1675]]) + 32 <= return_data.size
                idx = idx + 1
                continue 
            _1691 = mem[96]
            idx = 0
            while idx < _1691:
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20]:
                    require idx < mem[96]
                    _1711 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1711))
                    call address(_1711).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = address(_1711)
                    mem[32] = 20
                    amounts[address(_1711)] = ext_call.return_data[0]
                    if 0 < ext_call.return_data[0]:
                        mem[0] = address(_1711)
                        mem[32] = 21
                        if not stor21[address(_1711)]:
                            tokens.length++
                            address(tokens[tokens.length].field_0) = address(_1711)
                            mem[0] = address(_1711)
                            mem[32] = 21
                            stor21[address(_1711)] = 1
                idx = idx + 1
                continue 
        else:
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224 len 32 * arg2.length] = code.data[25019 len 32 * arg2.length]
            mem[0] = 0x45786368616e676550726f7669646572000000000000000000000000000000
            mem[32] = 4
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224] = 0x674f23ba00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228] = 32
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 260] = arg2.length
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
            call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].0x674f23ba with:
                 gas gas_remaining wei
                args mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 228 len (32 * arg2.length) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            _1382 = mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 <= 4294967296
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 32 <= return_data.size
            require mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224] <= 4294967296 and mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + (32 * mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + 224 len 4], 0 + 224]) + 32 <= return_data.size
            idx = 0
            while idx < arg2.length:
                require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1382 + 224]
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (64 * arg2.length) + _1382 + 256] > 0:
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    if not stor23[mem[(32 * idx) + 140 len 20]]:
                        require idx < mem[96]
                        stor23[mem[(32 * idx) + 140 len 20]] = 1
                        require idx < mem[96]
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 20
                        if amounts[mem[(32 * idx) + 140 len 20]] > 0:
                            require idx < mem[96]
                            sub_07b08870.length++
                            mem[0] = 22
                            address(sub_07b08870[sub_07b08870.length].field_0) = mem[(32 * idx) + 140 len 20]
                            require idx < mem[96]
                            _1666 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0xce7b557400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_1666)
                            require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].0xce7b5574 with:
                                 gas gas_remaining wei
                                args address(_1666)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1676 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1676] <= 4294967296
                            require mem[_1676] + 32 <= return_data.size
                            require mem[_1676 + mem[_1676]] <= 4294967296 and mem[_1676] + (32 * mem[_1676 + mem[_1676]]) + 32 <= return_data.size
                idx = idx + 1
                continue 
            _1692 = mem[96]
            idx = 0
            while idx < _1692:
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20]:
                    require idx < mem[96]
                    _1714 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1714))
                    call address(_1714).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = address(_1714)
                    mem[32] = 20
                    amounts[address(_1714)] = ext_call.return_data[0]
                    if 0 < ext_call.return_data[0]:
                        mem[0] = address(_1714)
                        mem[32] = 21
                        if not stor21[address(_1714)]:
                            tokens.length++
                            address(tokens[tokens.length].field_0) = address(_1714)
                            mem[0] = address(_1714)
                            mem[32] = 21
                            stor21[address(_1714)] = 1
                idx = idx + 1
                continue 
    return 0
}

function invest() payable {
    require ext_code.size(sub_2156e6c6[0xef57686974656c69737450726f76696465720000000000000000000000000000])
    call sub_2156e6c6[0xef57686974656c69737450726f76696465720000000000000000000000000000].0x5faa299a with:
         gas gas_remaining wei
        args 0, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(sub_2156e6c6['RiskProvider'])
        call sub_2156e6c6['RiskProvider'].hasRisk(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(this.address), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require not ext_call.return_data[0]
            require not paused
            require status <= 3
            require status == 1
            require msg.value >= 10^15
            if sub_1c2a0e5c[address(msg.sender)]:
                if totalSupply <= 0:
                    require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
                    call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].calculateFee(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= msg.value
                        if msg.value - ext_call.return_data[0]:
                            require (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / msg.value - ext_call.return_data[0] == 10^decimals
                            require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                            accumulatedFee += ext_call.return_data[0]
                            require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[msg.sender] += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / 10^18
                            require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / 10^18) + totalSupply >= totalSupply
                            totalSupply += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / 10^18
                            emit Transfer(((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / 10^18), 0, msg.sender);
                            return 1
                        else:
                            require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                            accumulatedFee += ext_call.return_data[0]
                            require balanceOf[msg.sender] >= balanceOf[msg.sender]
                            require totalSupply >= totalSupply
                            emit Transfer(0, 0, msg.sender);
                            return 1
                else:
                    if msg.value:
                        require 10^decimals * msg.value / msg.value == 10^decimals
                        require totalSupply
                        if totalSupply != 0:
                            require accumulatedFee <= eth.balance(this.address)
                            idx = 0
                            while idx < tokens.length:
                                mem[0] = address(tokens[idx].field_0)
                                mem[32] = 23
                                if not stor23[address(stor9[idx].field_0)]:
                                    require idx < tokens.length
                                    mem[0] = 9
                                    require ext_code.size(address(tokens[idx].field_0))
                                    call address(tokens[idx].field_0).0x313ce567 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        mem[100] = this.address
                                        require ext_code.size(address(tokens[idx].field_0))
                                        call address(tokens[idx].field_0).0x70a08231 with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                                mem[164] = 10^ext_call.return_data[0]
                                                mem[196] = 0
                                                require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
                                                call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].getPrice(address arg1, address arg2, uint256 arg3, bytes32 arg4) with:
                                                     gas gas_remaining wei
                                                    args address(tokens[idx].field_0), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 10^ext_call.return_data[0], 0
                                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0]:
                                                        if ext_call.return_data[0]:
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                            require 10^ext_call.return_data[0]
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] >= 0
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            require 10^ext_call.return_data[0]
                                                            require 0 / 10^ext_call.return_data[0] >= 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            require eth.balance(this.address) - accumulatedFee >= 0
                            if eth.balance(this.address) - accumulatedFee:
                                require (eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / eth.balance(this.address) - accumulatedFee == 10^decimals
                                require totalSupply
                                require 10^decimals * msg.value / totalSupply <= (eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply
                                require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
                                call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].calculateFee(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0]:
                                        require (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / msg.value - ext_call.return_data[0] == 10^decimals
                                        require ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                        accumulatedFee += ext_call.return_data[0]
                                        require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[msg.sender] += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)) + totalSupply >= totalSupply
                                        totalSupply += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        emit Transfer(((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)), 0, msg.sender);
                                        return 1
                                    else:
                                        require ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                        accumulatedFee += ext_call.return_data[0]
                                        require (0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[msg.sender] += 0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require (0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)) + totalSupply >= totalSupply
                                        totalSupply += 0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        emit Transfer((0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)), 0, msg.sender);
                                        return 1
                            else:
                                require totalSupply
                                require 10^decimals * msg.value / totalSupply <= 0 / totalSupply
                                require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
                                call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].calculateFee(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0]:
                                        require (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / msg.value - ext_call.return_data[0] == 10^decimals
                                        require (0 / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                        accumulatedFee += ext_call.return_data[0]
                                        require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[msg.sender] += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)) + totalSupply >= totalSupply
                                        totalSupply += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        emit Transfer(((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)), 0, msg.sender);
                                        return 1
                                    else:
                                        require (0 / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                        accumulatedFee += ext_call.return_data[0]
                                        require (0 / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[msg.sender] += 0 / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require (0 / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)) + totalSupply >= totalSupply
                                        totalSupply += 0 / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        emit Transfer((0 / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)), 0, msg.sender);
                                        return 1
                        else:
                            require 10^decimals * msg.value / totalSupply <= 10^18
                            require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].calculateFee(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= msg.value
                                if msg.value - ext_call.return_data[0]:
                                    require (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / msg.value - ext_call.return_data[0] == 10^decimals
                                    require -(10^decimals * msg.value / totalSupply) + 10^18
                                    require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                    accumulatedFee += ext_call.return_data[0]
                                    require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(10^decimals * msg.value / totalSupply) + 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[msg.sender] += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(10^decimals * msg.value / totalSupply) + 10^18
                                    require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(10^decimals * msg.value / totalSupply) + 10^18) + totalSupply >= totalSupply
                                    totalSupply += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(10^decimals * msg.value / totalSupply) + 10^18
                                    emit Transfer(((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(10^decimals * msg.value / totalSupply) + 10^18), 0, msg.sender);
                                    return 1
                                else:
                                    require -(10^decimals * msg.value / totalSupply) + 10^18
                                    require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                    accumulatedFee += ext_call.return_data[0]
                                    require (0 / -(10^decimals * msg.value / totalSupply) + 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[msg.sender] += 0 / -(10^decimals * msg.value / totalSupply) + 10^18
                                    require (0 / -(10^decimals * msg.value / totalSupply) + 10^18) + totalSupply >= totalSupply
                                    totalSupply += 0 / -(10^decimals * msg.value / totalSupply) + 10^18
                                    emit Transfer((0 / -(10^decimals * msg.value / totalSupply) + 10^18), 0, msg.sender);
                                    return 1
                    else:
                        require totalSupply
                        if totalSupply != 0:
                            require accumulatedFee <= eth.balance(this.address)
                            idx = 0
                            while idx < tokens.length:
                                mem[0] = address(tokens[idx].field_0)
                                mem[32] = 23
                                if not stor23[address(stor9[idx].field_0)]:
                                    require idx < tokens.length
                                    mem[0] = 9
                                    require ext_code.size(address(tokens[idx].field_0))
                                    call address(tokens[idx].field_0).0x313ce567 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        mem[100] = this.address
                                        require ext_code.size(address(tokens[idx].field_0))
                                        call address(tokens[idx].field_0).0x70a08231 with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                                mem[164] = 10^ext_call.return_data[0]
                                                mem[196] = 0
                                                require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
                                                call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].getPrice(address arg1, address arg2, uint256 arg3, bytes32 arg4) with:
                                                     gas gas_remaining wei
                                                    args address(tokens[idx].field_0), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 10^ext_call.return_data[0], 0
                                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0]:
                                                        if ext_call.return_data[0]:
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                            require 10^ext_call.return_data[0]
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] >= 0
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            require 10^ext_call.return_data[0]
                                                            require 0 / 10^ext_call.return_data[0] >= 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            require eth.balance(this.address) - accumulatedFee >= 0
                            if eth.balance(this.address) - accumulatedFee:
                                require (eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / eth.balance(this.address) - accumulatedFee == 10^decimals
                                require totalSupply
                                require 0 / totalSupply <= (eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply
                                require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
                                call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].calculateFee(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0]:
                                        require (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / msg.value - ext_call.return_data[0] == 10^decimals
                                        require ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)
                                        require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                        accumulatedFee += ext_call.return_data[0]
                                        require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[msg.sender] += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)
                                        require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)) + totalSupply >= totalSupply
                                        totalSupply += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)
                                        emit Transfer(((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)), 0, msg.sender);
                                        return 1
                                    else:
                                        require ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)
                                        require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                        accumulatedFee += ext_call.return_data[0]
                                        require (0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[msg.sender] += 0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)
                                        require (0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)) + totalSupply >= totalSupply
                                        totalSupply += 0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)
                                        emit Transfer((0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)), 0, msg.sender);
                                        return 1
                            else:
                                require totalSupply
                                require 0 / totalSupply <= 0 / totalSupply
                                require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
                                call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].calculateFee(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= msg.value
                                    require msg.value - ext_call.return_data[0]
                                    require (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / msg.value - ext_call.return_data[0] == 10^decimals
                                    revert
                        else:
                            require 0 / totalSupply <= 10^18
                            require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].calculateFee(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= msg.value
                                if msg.value - ext_call.return_data[0]:
                                    require (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / msg.value - ext_call.return_data[0] == 10^decimals
                                    require -(0 / totalSupply) + 10^18
                                    require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                    accumulatedFee += ext_call.return_data[0]
                                    require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(0 / totalSupply) + 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[msg.sender] += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(0 / totalSupply) + 10^18
                                    require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(0 / totalSupply) + 10^18) + totalSupply >= totalSupply
                                    totalSupply += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(0 / totalSupply) + 10^18
                                    emit Transfer(((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(0 / totalSupply) + 10^18), 0, msg.sender);
                                    return 1
                                else:
                                    require -(0 / totalSupply) + 10^18
                                    require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                    accumulatedFee += ext_call.return_data[0]
                                    require (0 / -(0 / totalSupply) + 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[msg.sender] += 0 / -(0 / totalSupply) + 10^18
                                    require (0 / -(0 / totalSupply) + 10^18) + totalSupply >= totalSupply
                                    totalSupply += 0 / -(0 / totalSupply) + 10^18
                                    emit Transfer((0 / -(0 / totalSupply) + 10^18), 0, msg.sender);
                                    return 1
            else:
                sub_81d62bf5.length++
                stor57C3[stor26.length] = msg.sender
                sub_1c2a0e5c[address(msg.sender)] = sub_81d62bf5.length + 1
                if totalSupply <= 0:
                    require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
                    call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].calculateFee(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= msg.value
                        if msg.value - ext_call.return_data[0]:
                            require (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / msg.value - ext_call.return_data[0] == 10^decimals
                            require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                            accumulatedFee += ext_call.return_data[0]
                            require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[msg.sender] += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / 10^18
                            require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / 10^18) + totalSupply >= totalSupply
                            totalSupply += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / 10^18
                            emit Transfer(((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / 10^18), 0, msg.sender);
                            return 1
                        else:
                            require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                            accumulatedFee += ext_call.return_data[0]
                            require balanceOf[msg.sender] >= balanceOf[msg.sender]
                            require totalSupply >= totalSupply
                            emit Transfer(0, 0, msg.sender);
                            return 1
                else:
                    if msg.value:
                        require 10^decimals * msg.value / msg.value == 10^decimals
                        require totalSupply
                        if totalSupply != 0:
                            require accumulatedFee <= eth.balance(this.address)
                            idx = 0
                            while idx < tokens.length:
                                mem[0] = address(tokens[idx].field_0)
                                mem[32] = 23
                                if not stor23[address(stor9[idx].field_0)]:
                                    require idx < tokens.length
                                    mem[0] = 9
                                    require ext_code.size(address(tokens[idx].field_0))
                                    call address(tokens[idx].field_0).0x313ce567 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        mem[100] = this.address
                                        require ext_code.size(address(tokens[idx].field_0))
                                        call address(tokens[idx].field_0).0x70a08231 with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                                mem[164] = 10^ext_call.return_data[0]
                                                mem[196] = 0
                                                require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
                                                call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].getPrice(address arg1, address arg2, uint256 arg3, bytes32 arg4) with:
                                                     gas gas_remaining wei
                                                    args address(tokens[idx].field_0), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 10^ext_call.return_data[0], 0
                                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0]:
                                                        if ext_call.return_data[0]:
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                            require 10^ext_call.return_data[0]
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] >= 0
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            require 10^ext_call.return_data[0]
                                                            require 0 / 10^ext_call.return_data[0] >= 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            require eth.balance(this.address) - accumulatedFee >= 0
                            if eth.balance(this.address) - accumulatedFee:
                                require (eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / eth.balance(this.address) - accumulatedFee == 10^decimals
                                require totalSupply
                                require 10^decimals * msg.value / totalSupply <= (eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply
                                require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
                                call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].calculateFee(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0]:
                                        require (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / msg.value - ext_call.return_data[0] == 10^decimals
                                        require ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                        accumulatedFee += ext_call.return_data[0]
                                        require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[msg.sender] += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)) + totalSupply >= totalSupply
                                        totalSupply += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        emit Transfer(((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)), 0, msg.sender);
                                        return 1
                                    else:
                                        require ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                        accumulatedFee += ext_call.return_data[0]
                                        require (0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[msg.sender] += 0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require (0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)) + totalSupply >= totalSupply
                                        totalSupply += 0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        emit Transfer((0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (10^decimals * msg.value / totalSupply)), 0, msg.sender);
                                        return 1
                            else:
                                require totalSupply
                                require 10^decimals * msg.value / totalSupply <= 0 / totalSupply
                                require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
                                call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].calculateFee(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0]:
                                        require (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / msg.value - ext_call.return_data[0] == 10^decimals
                                        require (0 / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                        accumulatedFee += ext_call.return_data[0]
                                        require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[msg.sender] += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)) + totalSupply >= totalSupply
                                        totalSupply += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        emit Transfer(((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)), 0, msg.sender);
                                        return 1
                                    else:
                                        require (0 / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                        accumulatedFee += ext_call.return_data[0]
                                        require (0 / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[msg.sender] += 0 / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        require (0 / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)) + totalSupply >= totalSupply
                                        totalSupply += 0 / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)
                                        emit Transfer((0 / (0 / totalSupply) - (10^decimals * msg.value / totalSupply)), 0, msg.sender);
                                        return 1
                        else:
                            require 10^decimals * msg.value / totalSupply <= 10^18
                            require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].calculateFee(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= msg.value
                                if msg.value - ext_call.return_data[0]:
                                    require (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / msg.value - ext_call.return_data[0] == 10^decimals
                                    require -(10^decimals * msg.value / totalSupply) + 10^18
                                    require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                    accumulatedFee += ext_call.return_data[0]
                                    require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(10^decimals * msg.value / totalSupply) + 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[msg.sender] += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(10^decimals * msg.value / totalSupply) + 10^18
                                    require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(10^decimals * msg.value / totalSupply) + 10^18) + totalSupply >= totalSupply
                                    totalSupply += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(10^decimals * msg.value / totalSupply) + 10^18
                                    emit Transfer(((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(10^decimals * msg.value / totalSupply) + 10^18), 0, msg.sender);
                                    return 1
                                else:
                                    require -(10^decimals * msg.value / totalSupply) + 10^18
                                    require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                    accumulatedFee += ext_call.return_data[0]
                                    require (0 / -(10^decimals * msg.value / totalSupply) + 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[msg.sender] += 0 / -(10^decimals * msg.value / totalSupply) + 10^18
                                    require (0 / -(10^decimals * msg.value / totalSupply) + 10^18) + totalSupply >= totalSupply
                                    totalSupply += 0 / -(10^decimals * msg.value / totalSupply) + 10^18
                                    emit Transfer((0 / -(10^decimals * msg.value / totalSupply) + 10^18), 0, msg.sender);
                                    return 1
                    else:
                        require totalSupply
                        if totalSupply != 0:
                            require accumulatedFee <= eth.balance(this.address)
                            idx = 0
                            while idx < tokens.length:
                                mem[0] = address(tokens[idx].field_0)
                                mem[32] = 23
                                if not stor23[address(stor9[idx].field_0)]:
                                    require idx < tokens.length
                                    mem[0] = 9
                                    require ext_code.size(address(tokens[idx].field_0))
                                    call address(tokens[idx].field_0).0x313ce567 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        mem[100] = this.address
                                        require ext_code.size(address(tokens[idx].field_0))
                                        call address(tokens[idx].field_0).0x70a08231 with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                                mem[164] = 10^ext_call.return_data[0]
                                                mem[196] = 0
                                                require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
                                                call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].getPrice(address arg1, address arg2, uint256 arg3, bytes32 arg4) with:
                                                     gas gas_remaining wei
                                                    args address(tokens[idx].field_0), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 10^ext_call.return_data[0], 0
                                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0]:
                                                        if ext_call.return_data[0]:
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                                            require 10^ext_call.return_data[0]
                                                            require ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] >= 0
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            require 10^ext_call.return_data[0]
                                                            require 0 / 10^ext_call.return_data[0] >= 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                idx = idx + 1
                                                continue 
                                else:
                                    idx = idx + 1
                                    continue 
                            require eth.balance(this.address) - accumulatedFee >= 0
                            if eth.balance(this.address) - accumulatedFee:
                                require (eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / eth.balance(this.address) - accumulatedFee == 10^decimals
                                require totalSupply
                                require 0 / totalSupply <= (eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply
                                require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
                                call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].calculateFee(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= msg.value
                                    if msg.value - ext_call.return_data[0]:
                                        require (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / msg.value - ext_call.return_data[0] == 10^decimals
                                        require ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)
                                        require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                        accumulatedFee += ext_call.return_data[0]
                                        require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[msg.sender] += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)
                                        require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)) + totalSupply >= totalSupply
                                        totalSupply += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)
                                        emit Transfer(((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)), 0, msg.sender);
                                        return 1
                                    else:
                                        require ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)
                                        require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                        accumulatedFee += ext_call.return_data[0]
                                        require (0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                        balanceOf[msg.sender] += 0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)
                                        require (0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)) + totalSupply >= totalSupply
                                        totalSupply += 0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)
                                        emit Transfer((0 / ((eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply) - (0 / totalSupply)), 0, msg.sender);
                                        return 1
                            else:
                                require totalSupply
                                require 0 / totalSupply <= 0 / totalSupply
                                require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
                                call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].calculateFee(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] <= msg.value
                                    require msg.value - ext_call.return_data[0]
                                    require (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / msg.value - ext_call.return_data[0] == 10^decimals
                                    revert
                        else:
                            require 0 / totalSupply <= 10^18
                            require ext_code.size(sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x46656550726f76696465720000000000000000000000000000000000000000].calculateFee(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= msg.value
                                if msg.value - ext_call.return_data[0]:
                                    require (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / msg.value - ext_call.return_data[0] == 10^decimals
                                    require -(0 / totalSupply) + 10^18
                                    require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                    accumulatedFee += ext_call.return_data[0]
                                    require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(0 / totalSupply) + 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[msg.sender] += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(0 / totalSupply) + 10^18
                                    require ((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(0 / totalSupply) + 10^18) + totalSupply >= totalSupply
                                    totalSupply += (msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(0 / totalSupply) + 10^18
                                    emit Transfer(((msg.value * 10^decimals) - (ext_call.return_data[0] * 10^decimals) / -(0 / totalSupply) + 10^18), 0, msg.sender);
                                    return 1
                                else:
                                    require -(0 / totalSupply) + 10^18
                                    require ext_call.return_data[0] + accumulatedFee >= accumulatedFee
                                    accumulatedFee += ext_call.return_data[0]
                                    require (0 / -(0 / totalSupply) + 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[msg.sender] += 0 / -(0 / totalSupply) + 10^18
                                    require (0 / -(0 / totalSupply) + 10^18) + totalSupply >= totalSupply
                                    totalSupply += 0 / -(0 / totalSupply) + 10^18
                                    emit Transfer((0 / -(0 / totalSupply) + 10^18), 0, msg.sender);
                                    return 1
}

function requestWithdraw(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require not paused
    if 0 == totalSupply:
        mem[196] = arg1
        mem[228] = 10^18
        require ext_code.size(sub_2156e6c6['RiskProvider'])
        call sub_2156e6c6['RiskProvider'].hasRisk(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(this.address), address(this.address), arg1, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        require ext_code.size(sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000])
        call sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000].request(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require status <= 3
        if status != 3:
            sub_36724ef4 = 1
        else:
            idx = 0
            while idx < tokens.length:
                mem[0] = address(tokens[idx].field_0)
                mem[32] = 23
                if stor23[address(stor9[idx].field_0)]:
                    idx = idx + 1
                    continue 
                require idx < tokens.length
                mem[0] = 9
                require ext_code.size(address(tokens[idx].field_0))
                call address(tokens[idx].field_0).0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[100] = this.address
                require ext_code.size(address(tokens[idx].field_0))
                call address(tokens[idx].field_0).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    idx = idx + 1
                    continue 
                mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                mem[164] = 10^ext_call.return_data[0]
                mem[196] = 0
                require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
                call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].getPrice(address arg1, address arg2, uint256 arg3, bytes32 arg4) with:
                     gas gas_remaining wei
                    args address(tokens[idx].field_0), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 10^ext_call.return_data[0], 0
                mem[96 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[0]:
                    idx = idx + 1
                    continue 
                if not ext_call.return_data[0]:
                    if 10^ext_call.return_data[0]:
                        if 0 / 10^ext_call.return_data[0] >= 0:
                            idx = idx + 1
                            continue 
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]:
                        if 10^ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] >= 0:
                                idx = idx + 1
                                continue 
                revert
            require ext_code.size(sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000])
            call sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000].freeze() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_07b08870.length != 0:
                mem[0] = 0x546f6b656e42726f6b656e0000000000000000000000000000000000000000
                mem[32] = 4
                mem[96] = 0x8f99506a00000000000000000000000000000000000000000000000000000000
                mem[132] = msg.sender
                mem[100] = 64
                mem[164] = sub_07b08870.length
                if not sub_07b08870.length:
                    require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                    call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].0x8f99506a with:
                         gas gas_remaining wei
                        args 64, msg.sender, sub_07b08870.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _546 = mem[96 len 4], 0
                    require mem[96 len 4], 0 <= 4294967296
                    require mem[96 len 4], 0 + 32 <= return_data.size
                    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                    idx = 0
                    while idx < sub_07b08870.length:
                        stor18.length++
                        mem[0] = 18
                        address(stor18[stor18.length].field_0) = address(sub_07b08870[idx].field_0)
                        require idx < mem[_546 + 96]
                        if 0 == mem[(32 * idx) + _546 + 128]:
                            idx = idx + 1
                            continue 
                        require idx < sub_07b08870.length
                        mem[ceil32(return_data.size) + 100] = address(sub_07b08870[idx].field_0)
                        mem[ceil32(return_data.size) + 132] = msg.sender
                        require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                        call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].withdraw(address arg1, address arg2) with:
                             gas gas_remaining wei
                            args address(sub_07b08870[idx].field_0), msg.sender
                        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < sub_07b08870.length
                        mem[0] = 22
                        require idx < mem[_546 + 96]
                        _1050 = mem[(32 * idx) + _546 + 128]
                        mem[ceil32(return_data.size) + 96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = msg.sender
                        mem[ceil32(return_data.size) + 132] = _1050
                        require ext_code.size(address(sub_07b08870[idx].field_0))
                        call address(sub_07b08870[idx].field_0).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1050
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0]:
                            idx = idx + 1
                            continue 
                        require sub_07b08870.length - 1 < sub_07b08870.length
                        require idx < sub_07b08870.length
                        address(sub_07b08870[idx].field_0) = address(sub_07b08870[sub_07b08870.length].field_0)
                        require sub_07b08870.length - 1 < mem[_546 + 96]
                        require idx < mem[_546 + 96]
                        mem[_546 + (32 * idx) + 128] = mem[(32 * sub_07b08870.length - 1) + _546 + 128]
                        require sub_07b08870.length - 1 < sub_07b08870.length
                        mem[0] = 22
                        address(sub_07b08870[sub_07b08870.length].field_0) = 0
                        sub_07b08870.length--
                        if sub_07b08870.length > sub_07b08870.length - 1:
                            mem[0] = 22
                            s = sub_07b08870.length + sha3(22) - 1
                            while sha3(22) + sub_07b08870.length > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        idx = idx
                        continue 
                    if not stor18.length:
                        idx = 0
                        while idx < stor18.length:
                            require idx < stor18.length
                            if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                                require idx < stor18.length
                                _1416 = mem[ceil32(return_data.size) + (32 * idx) + 128]
                                mem[ceil32(return_data.size) + (32 * stor18.length) + 132] = this.address
                                require ext_code.size(address(_1416))
                                call address(_1416).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[ceil32(return_data.size) + (32 * stor18.length) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = address(_1416)
                                mem[32] = 20
                                amounts[address(_1416)] = ext_call.return_data[0]
                                if 0 < ext_call.return_data[0]:
                                    mem[0] = address(_1416)
                                    mem[32] = 21
                                    if not stor21[address(_1416)]:
                                        tokens.length++
                                        address(tokens[tokens.length].field_0) = address(_1416)
                                        mem[0] = address(_1416)
                                        mem[32] = 21
                                        stor21[address(_1416)] = 1
                            idx = idx + 1
                            continue 
                    else:
                        mem[ceil32(return_data.size) + 128] = address(stor18.field_0)
                        idx = ceil32(return_data.size) + 128
                        s = 0
                        while ceil32(return_data.size) + (32 * stor18.length) + 96 > idx:
                            mem[idx + 32] = address(stor18[s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        idx = 0
                        while idx < stor18.length:
                            require idx < stor18.length
                            if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                                require idx < stor18.length
                                _2205 = mem[ceil32(return_data.size) + (32 * idx) + 128]
                                mem[ceil32(return_data.size) + (32 * stor18.length) + 132] = this.address
                                require ext_code.size(address(_2205))
                                call address(_2205).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[ceil32(return_data.size) + (32 * stor18.length) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = address(_2205)
                                mem[32] = 20
                                amounts[address(_2205)] = ext_call.return_data[0]
                                if 0 < ext_call.return_data[0]:
                                    mem[0] = address(_2205)
                                    mem[32] = 21
                                    if not stor21[address(_2205)]:
                                        tokens.length++
                                        address(tokens[tokens.length].field_0) = address(_2205)
                                        mem[0] = address(_2205)
                                        mem[32] = 21
                                        stor21[address(_2205)] = 1
                            idx = idx + 1
                            continue 
                else:
                    mem[0] = 22
                    mem[196] = address(sub_07b08870.field_0)
                    idx = mem[64] + 100
                    s = 0
                    while mem[64] + (32 * sub_07b08870.length) + 100 > idx + 32:
                        mem[idx + 32] = address(sub_07b08870[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                    call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * sub_07b08870.length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1392 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1404 = mem[_1392]
                    require mem[_1392] <= 4294967296
                    require mem[_1392] + 32 <= return_data.size
                    require mem[_1392 + mem[_1392]] <= 4294967296 and mem[_1392] + (32 * mem[_1392 + mem[_1392]]) + 32 <= return_data.size
                    idx = 0
                    while idx < sub_07b08870.length:
                        stor18.length++
                        mem[0] = 18
                        address(stor18[stor18.length].field_0) = address(sub_07b08870[idx].field_0)
                        require idx < mem[_1392 + _1404]
                        if 0 == mem[(32 * idx) + _1392 + _1404 + 32]:
                            idx = idx + 1
                            continue 
                        require idx < sub_07b08870.length
                        mem[mem[64] + 4] = address(sub_07b08870[idx].field_0)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                        call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].withdraw(address arg1, address arg2) with:
                             gas gas_remaining wei
                            args address(sub_07b08870[idx].field_0), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < sub_07b08870.length
                        mem[0] = 22
                        require idx < mem[_1392 + _1404]
                        _1801 = mem[(32 * idx) + _1392 + _1404 + 32]
                        mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1801
                        require ext_code.size(address(sub_07b08870[idx].field_0))
                        call address(sub_07b08870[idx].field_0).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1801
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0]:
                            idx = idx + 1
                            continue 
                        require sub_07b08870.length - 1 < sub_07b08870.length
                        require idx < sub_07b08870.length
                        mem[0] = 22
                        address(sub_07b08870[idx].field_0) = address(sub_07b08870[sub_07b08870.length].field_0)
                        require sub_07b08870.length - 1 < mem[_1392 + _1404]
                        require idx < mem[_1392 + _1404]
                        mem[_1392 + _1404 + (32 * idx) + 32] = mem[(32 * sub_07b08870.length - 1) + _1392 + _1404 + 32]
                        require sub_07b08870.length - 1 < sub_07b08870.length
                        mem[0] = 22
                        address(sub_07b08870[sub_07b08870.length].field_0) = 0
                        sub_07b08870.length--
                        if sub_07b08870.length > sub_07b08870.length - 1:
                            mem[0] = 22
                            s = sub_07b08870.length + sha3(22) - 1
                            while sha3(22) + sub_07b08870.length > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        idx = idx
                        continue 
                    _1713 = mem[64]
                    mem[64] = mem[64] + (32 * stor18.length) + 32
                    mem[_1713] = stor18.length
                    if not stor18.length:
                        idx = 0
                        while idx < stor18.length:
                            require idx < mem[_1713]
                            if mem[(32 * idx) + _1713 + 44 len 20]:
                                require idx < mem[_1713]
                                _2209 = mem[_1713 + (32 * idx) + 32]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_2209))
                                call address(_2209).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = address(_2209)
                                mem[32] = 20
                                amounts[address(_2209)] = ext_call.return_data[0]
                                if 0 < ext_call.return_data[0]:
                                    mem[0] = address(_2209)
                                    mem[32] = 21
                                    if not stor21[address(_2209)]:
                                        tokens.length++
                                        address(tokens[tokens.length].field_0) = address(_2209)
                                        mem[0] = address(_2209)
                                        mem[32] = 21
                                        stor21[address(_2209)] = 1
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = 18
                        mem[_1713 + 32] = address(stor18.field_0)
                        idx = _1713 + 32
                        s = 0
                        while _1713 + (32 * stor18.length) > idx:
                            mem[idx + 32] = address(stor18[s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        idx = 0
                        while idx < stor18.length:
                            require idx < mem[_1713]
                            if mem[(32 * idx) + _1713 + 44 len 20]:
                                require idx < mem[_1713]
                                _3082 = mem[_1713 + (32 * idx) + 32]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_3082))
                                call address(_3082).0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = address(_3082)
                                mem[32] = 20
                                amounts[address(_3082)] = ext_call.return_data[0]
                                if 0 < ext_call.return_data[0]:
                                    mem[0] = address(_3082)
                                    mem[32] = 21
                                    if not stor21[address(_3082)]:
                                        tokens.length++
                                        address(tokens[tokens.length].field_0) = address(_3082)
                                        mem[0] = address(_3082)
                                        mem[32] = 21
                                        stor21[address(_3082)] = 1
                            idx = idx + 1
                            continue 
                stor18.length = 0
                idx = 0
                while stor18.length > idx:
                    stor18[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            require ext_code.size(sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000])
            call sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000].withdraw(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[32]:
                require ext_call.return_data[32] <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= ext_call.return_data[32]
                require ext_call.return_data[32] <= totalSupply
                totalSupply -= ext_call.return_data[32]
                emit Transfer(ext_call.return_data[32], msg.sender, 0);
                if ext_call.return_data[0] > 0:
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if 0 >= balanceOf[address(msg.sender)]:
                    mem[0] = msg.sender
                    mem[32] = 25
                    idx = stor[sha3(mem[0 len 64])] - 1
                    while idx + 1 < sub_81d62bf5.length:
                        require idx < sub_81d62bf5.length
                        address(sub_81d62bf5[idx].field_0) = address(sub_81d62bf5[idx].field_256)
                        require idx + 1 < sub_81d62bf5.length
                        mem[0] = address(sub_81d62bf5[idx].field_256)
                        mem[32] = 25
                        sub_1c2a0e5c[address(stor26[idx].field_256)]--
                        idx = idx + 1
                        continue 
                    sub_1c2a0e5c[address(msg.sender)] = 0
                    sub_81d62bf5.length--
                    if sub_81d62bf5.length > sub_81d62bf5.length - 1:
                        idx = sub_81d62bf5.length - 1
                        while sub_81d62bf5.length > idx:
                            sub_81d62bf5[idx].field_0 = 0
                            idx = idx + 1
                            continue 
            require ext_code.size(sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000])
            call sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000].finalize() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require accumulatedFee <= eth.balance(this.address)
        idx = 0
        while idx < tokens.length:
            mem[0] = address(tokens[idx].field_0)
            mem[32] = 23
            if stor23[address(stor9[idx].field_0)]:
                idx = idx + 1
                continue 
            require idx < tokens.length
            mem[0] = 9
            require ext_code.size(address(tokens[idx].field_0))
            call address(tokens[idx].field_0).0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = this.address
            require ext_code.size(address(tokens[idx].field_0))
            call address(tokens[idx].field_0).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                idx = idx + 1
                continue 
            mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[164] = 10^ext_call.return_data[0]
            mem[196] = 0
            require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
            call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].getPrice(address arg1, address arg2, uint256 arg3, bytes32 arg4) with:
                 gas gas_remaining wei
                args address(tokens[idx].field_0), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 10^ext_call.return_data[0], 0
            mem[96 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[0]:
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                if 10^ext_call.return_data[0]:
                    if 0 / 10^ext_call.return_data[0] >= 0:
                        idx = idx + 1
                        continue 
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]:
                    if 10^ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] >= 0:
                            idx = idx + 1
                            continue 
            revert
        require eth.balance(this.address) - accumulatedFee >= 0
        if not eth.balance(this.address) - accumulatedFee:
            require totalSupply
            mem[196] = arg1
            mem[228] = 0 / totalSupply
            require ext_code.size(sub_2156e6c6['RiskProvider'])
            call sub_2156e6c6['RiskProvider'].hasRisk(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), address(this.address), arg1, 0 / totalSupply
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
            require ext_code.size(sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000])
            call sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000].request(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require status <= 3
            if status != 3:
                sub_36724ef4 = 1
            else:
                idx = 0
                while idx < tokens.length:
                    mem[0] = address(tokens[idx].field_0)
                    mem[32] = 23
                    if stor23[address(stor9[idx].field_0)]:
                        idx = idx + 1
                        continue 
                    require idx < tokens.length
                    mem[0] = 9
                    require ext_code.size(address(tokens[idx].field_0))
                    call address(tokens[idx].field_0).0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[100] = this.address
                    require ext_code.size(address(tokens[idx].field_0))
                    call address(tokens[idx].field_0).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        continue 
                    mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                    mem[164] = 10^ext_call.return_data[0]
                    mem[196] = 0
                    require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
                    call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].getPrice(address arg1, address arg2, uint256 arg3, bytes32 arg4) with:
                         gas gas_remaining wei
                        args address(tokens[idx].field_0), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 10^ext_call.return_data[0], 0
                    mem[96 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] >= 0:
                                idx = idx + 1
                                continue 
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]:
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] >= 0:
                                    idx = idx + 1
                                    continue 
                    revert
                require ext_code.size(sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000])
                call sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000].freeze() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_07b08870.length != 0:
                    mem[0] = 0x546f6b656e42726f6b656e0000000000000000000000000000000000000000
                    mem[32] = 4
                    mem[96] = 0x8f99506a00000000000000000000000000000000000000000000000000000000
                    mem[132] = msg.sender
                    mem[100] = 64
                    mem[164] = sub_07b08870.length
                    if not sub_07b08870.length:
                        require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                        call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].0x8f99506a with:
                             gas gas_remaining wei
                            args 64, msg.sender, sub_07b08870.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _1090 = mem[96 len 4], 0
                        require mem[96 len 4], 0 <= 4294967296
                        require mem[96 len 4], 0 + 32 <= return_data.size
                        require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                        idx = 0
                        while idx < sub_07b08870.length:
                            stor18.length++
                            mem[0] = 18
                            address(stor18[stor18.length].field_0) = address(sub_07b08870[idx].field_0)
                            require idx < mem[_1090 + 96]
                            if 0 == mem[(32 * idx) + _1090 + 128]:
                                idx = idx + 1
                                continue 
                            require idx < sub_07b08870.length
                            mem[ceil32(return_data.size) + 100] = address(sub_07b08870[idx].field_0)
                            mem[ceil32(return_data.size) + 132] = msg.sender
                            require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].withdraw(address arg1, address arg2) with:
                                 gas gas_remaining wei
                                args address(sub_07b08870[idx].field_0), msg.sender
                            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < sub_07b08870.length
                            mem[0] = 22
                            require idx < mem[_1090 + 96]
                            _1472 = mem[(32 * idx) + _1090 + 128]
                            mem[ceil32(return_data.size) + 96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 100] = msg.sender
                            mem[ceil32(return_data.size) + 132] = _1472
                            require ext_code.size(address(sub_07b08870[idx].field_0))
                            call address(sub_07b08870[idx].field_0).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1472
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0]:
                                idx = idx + 1
                                continue 
                            require sub_07b08870.length - 1 < sub_07b08870.length
                            require idx < sub_07b08870.length
                            address(sub_07b08870[idx].field_0) = address(sub_07b08870[sub_07b08870.length].field_0)
                            require sub_07b08870.length - 1 < mem[_1090 + 96]
                            require idx < mem[_1090 + 96]
                            mem[_1090 + (32 * idx) + 128] = mem[(32 * sub_07b08870.length - 1) + _1090 + 128]
                            require sub_07b08870.length - 1 < sub_07b08870.length
                            mem[0] = 22
                            address(sub_07b08870[sub_07b08870.length].field_0) = 0
                            sub_07b08870.length--
                            if sub_07b08870.length > sub_07b08870.length - 1:
                                mem[0] = 22
                                s = sub_07b08870.length + sha3(22) - 1
                                while sha3(22) + sub_07b08870.length > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            idx = idx
                            continue 
                        if not stor18.length:
                            idx = 0
                            while idx < stor18.length:
                                require idx < stor18.length
                                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                                    require idx < stor18.length
                                    _1734 = mem[ceil32(return_data.size) + (32 * idx) + 128]
                                    mem[ceil32(return_data.size) + (32 * stor18.length) + 132] = this.address
                                    require ext_code.size(address(_1734))
                                    call address(_1734).0x70a08231 with:
                                         gas gas_remaining wei
                                        args this.address
                                    mem[ceil32(return_data.size) + (32 * stor18.length) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(_1734)
                                    mem[32] = 20
                                    amounts[address(_1734)] = ext_call.return_data[0]
                                    if 0 < ext_call.return_data[0]:
                                        mem[0] = address(_1734)
                                        mem[32] = 21
                                        if not stor21[address(_1734)]:
                                            tokens.length++
                                            address(tokens[tokens.length].field_0) = address(_1734)
                                            mem[0] = address(_1734)
                                            mem[32] = 21
                                            stor21[address(_1734)] = 1
                                idx = idx + 1
                                continue 
                        else:
                            mem[ceil32(return_data.size) + 128] = address(stor18.field_0)
                            idx = ceil32(return_data.size) + 128
                            s = 0
                            while ceil32(return_data.size) + (32 * stor18.length) + 96 > idx:
                                mem[idx + 32] = address(stor18[s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            idx = 0
                            while idx < stor18.length:
                                require idx < stor18.length
                                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                                    require idx < stor18.length
                                    _2695 = mem[ceil32(return_data.size) + (32 * idx) + 128]
                                    mem[ceil32(return_data.size) + (32 * stor18.length) + 132] = this.address
                                    require ext_code.size(address(_2695))
                                    call address(_2695).0x70a08231 with:
                                         gas gas_remaining wei
                                        args this.address
                                    mem[ceil32(return_data.size) + (32 * stor18.length) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(_2695)
                                    mem[32] = 20
                                    amounts[address(_2695)] = ext_call.return_data[0]
                                    if 0 < ext_call.return_data[0]:
                                        mem[0] = address(_2695)
                                        mem[32] = 21
                                        if not stor21[address(_2695)]:
                                            tokens.length++
                                            address(tokens[tokens.length].field_0) = address(_2695)
                                            mem[0] = address(_2695)
                                            mem[32] = 21
                                            stor21[address(_2695)] = 1
                                idx = idx + 1
                                continue 
                    else:
                        mem[0] = 22
                        mem[196] = address(sub_07b08870.field_0)
                        idx = mem[64] + 100
                        s = 0
                        while mem[64] + (32 * sub_07b08870.length) + 100 > idx + 32:
                            mem[idx + 32] = address(sub_07b08870[s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                        call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * sub_07b08870.length) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1717 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1726 = mem[_1717]
                        require mem[_1717] <= 4294967296
                        require mem[_1717] + 32 <= return_data.size
                        require mem[_1717 + mem[_1717]] <= 4294967296 and mem[_1717] + (32 * mem[_1717 + mem[_1717]]) + 32 <= return_data.size
                        idx = 0
                        while idx < sub_07b08870.length:
                            stor18.length++
                            mem[0] = 18
                            address(stor18[stor18.length].field_0) = address(sub_07b08870[idx].field_0)
                            require idx < mem[_1717 + _1726]
                            if 0 == mem[(32 * idx) + _1717 + _1726 + 32]:
                                idx = idx + 1
                                continue 
                            require idx < sub_07b08870.length
                            mem[mem[64] + 4] = address(sub_07b08870[idx].field_0)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].withdraw(address arg1, address arg2) with:
                                 gas gas_remaining wei
                                args address(sub_07b08870[idx].field_0), msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < sub_07b08870.length
                            mem[0] = 22
                            require idx < mem[_1717 + _1726]
                            _2285 = mem[(32 * idx) + _1717 + _1726 + 32]
                            mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2285
                            require ext_code.size(address(sub_07b08870[idx].field_0))
                            call address(sub_07b08870[idx].field_0).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2285
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0]:
                                idx = idx + 1
                                continue 
                            require sub_07b08870.length - 1 < sub_07b08870.length
                            require idx < sub_07b08870.length
                            mem[0] = 22
                            address(sub_07b08870[idx].field_0) = address(sub_07b08870[sub_07b08870.length].field_0)
                            require sub_07b08870.length - 1 < mem[_1717 + _1726]
                            require idx < mem[_1717 + _1726]
                            mem[_1717 + _1726 + (32 * idx) + 32] = mem[(32 * sub_07b08870.length - 1) + _1717 + _1726 + 32]
                            require sub_07b08870.length - 1 < sub_07b08870.length
                            mem[0] = 22
                            address(sub_07b08870[sub_07b08870.length].field_0) = 0
                            sub_07b08870.length--
                            if sub_07b08870.length > sub_07b08870.length - 1:
                                mem[0] = 22
                                s = sub_07b08870.length + sha3(22) - 1
                                while sha3(22) + sub_07b08870.length > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            idx = idx
                            continue 
                        _2167 = mem[64]
                        mem[64] = mem[64] + (32 * stor18.length) + 32
                        mem[_2167] = stor18.length
                        if not stor18.length:
                            idx = 0
                            while idx < stor18.length:
                                require idx < mem[_2167]
                                if mem[(32 * idx) + _2167 + 44 len 20]:
                                    require idx < mem[_2167]
                                    _2699 = mem[_2167 + (32 * idx) + 32]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(_2699))
                                    call address(_2699).0x70a08231 with:
                                         gas gas_remaining wei
                                        args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(_2699)
                                    mem[32] = 20
                                    amounts[address(_2699)] = ext_call.return_data[0]
                                    if 0 < ext_call.return_data[0]:
                                        mem[0] = address(_2699)
                                        mem[32] = 21
                                        if not stor21[address(_2699)]:
                                            tokens.length++
                                            address(tokens[tokens.length].field_0) = address(_2699)
                                            mem[0] = address(_2699)
                                            mem[32] = 21
                                            stor21[address(_2699)] = 1
                                idx = idx + 1
                                continue 
                        else:
                            mem[0] = 18
                            mem[_2167 + 32] = address(stor18.field_0)
                            idx = _2167 + 32
                            s = 0
                            while _2167 + (32 * stor18.length) > idx:
                                mem[idx + 32] = address(stor18[s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            idx = 0
                            while idx < stor18.length:
                                require idx < mem[_2167]
                                if mem[(32 * idx) + _2167 + 44 len 20]:
                                    require idx < mem[_2167]
                                    _3489 = mem[_2167 + (32 * idx) + 32]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(_3489))
                                    call address(_3489).0x70a08231 with:
                                         gas gas_remaining wei
                                        args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(_3489)
                                    mem[32] = 20
                                    amounts[address(_3489)] = ext_call.return_data[0]
                                    if 0 < ext_call.return_data[0]:
                                        mem[0] = address(_3489)
                                        mem[32] = 21
                                        if not stor21[address(_3489)]:
                                            tokens.length++
                                            address(tokens[tokens.length].field_0) = address(_3489)
                                            mem[0] = address(_3489)
                                            mem[32] = 21
                                            stor21[address(_3489)] = 1
                                idx = idx + 1
                                continue 
                    stor18.length = 0
                    idx = 0
                    while stor18.length > idx:
                        stor18[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require ext_code.size(sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000])
                call sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000].withdraw(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[32]:
                    require ext_call.return_data[32] <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= ext_call.return_data[32]
                    require ext_call.return_data[32] <= totalSupply
                    totalSupply -= ext_call.return_data[32]
                    emit Transfer(ext_call.return_data[32], msg.sender, 0);
                    if ext_call.return_data[0] > 0:
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= balanceOf[address(msg.sender)]:
                        mem[0] = msg.sender
                        mem[32] = 25
                        idx = stor[sha3(mem[0 len 64])] - 1
                        while idx + 1 < sub_81d62bf5.length:
                            require idx < sub_81d62bf5.length
                            address(sub_81d62bf5[idx].field_0) = address(sub_81d62bf5[idx].field_256)
                            require idx + 1 < sub_81d62bf5.length
                            mem[0] = address(sub_81d62bf5[idx].field_256)
                            mem[32] = 25
                            sub_1c2a0e5c[address(stor26[idx].field_256)]--
                            idx = idx + 1
                            continue 
                        sub_1c2a0e5c[address(msg.sender)] = 0
                        sub_81d62bf5.length--
                        if sub_81d62bf5.length > sub_81d62bf5.length - 1:
                            idx = sub_81d62bf5.length - 1
                            while sub_81d62bf5.length > idx:
                                sub_81d62bf5[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                require ext_code.size(sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000])
                call sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000].finalize() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require (eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / eth.balance(this.address) - accumulatedFee == 10^decimals
            require totalSupply
            mem[196] = arg1
            mem[228] = (eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply
            require ext_code.size(sub_2156e6c6['RiskProvider'])
            call sub_2156e6c6['RiskProvider'].hasRisk(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), address(this.address), arg1, (eth.balance(this.address) * 10^decimals) - (accumulatedFee * 10^decimals) / totalSupply
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
            require ext_code.size(sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000])
            call sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000].request(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require status <= 3
            if status != 3:
                sub_36724ef4 = 1
            else:
                idx = 0
                while idx < tokens.length:
                    mem[0] = address(tokens[idx].field_0)
                    mem[32] = 23
                    if stor23[address(stor9[idx].field_0)]:
                        idx = idx + 1
                        continue 
                    require idx < tokens.length
                    mem[0] = 9
                    require ext_code.size(address(tokens[idx].field_0))
                    call address(tokens[idx].field_0).0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[100] = this.address
                    require ext_code.size(address(tokens[idx].field_0))
                    call address(tokens[idx].field_0).0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        continue 
                    mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                    mem[164] = 10^ext_call.return_data[0]
                    mem[196] = 0
                    require ext_code.size(sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000])
                    call sub_2156e6c6[0x45786368616e676550726f7669646572000000000000000000000000000000].getPrice(address arg1, address arg2, uint256 arg3, bytes32 arg4) with:
                         gas gas_remaining wei
                        args address(tokens[idx].field_0), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 10^ext_call.return_data[0], 0
                    mem[96 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        continue 
                    if not ext_call.return_data[0]:
                        if 10^ext_call.return_data[0]:
                            if 0 / 10^ext_call.return_data[0] >= 0:
                                idx = idx + 1
                                continue 
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]:
                            if 10^ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] >= 0:
                                    idx = idx + 1
                                    continue 
                    revert
                require ext_code.size(sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000])
                call sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000].freeze() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_07b08870.length != 0:
                    mem[0] = 0x546f6b656e42726f6b656e0000000000000000000000000000000000000000
                    mem[32] = 4
                    mem[96] = 0x8f99506a00000000000000000000000000000000000000000000000000000000
                    mem[132] = msg.sender
                    mem[100] = 64
                    mem[164] = sub_07b08870.length
                    if not sub_07b08870.length:
                        require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                        call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].0x8f99506a with:
                             gas gas_remaining wei
                            args 64, msg.sender, sub_07b08870.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _1089 = mem[96 len 4], 0
                        require mem[96 len 4], 0 <= 4294967296
                        require mem[96 len 4], 0 + 32 <= return_data.size
                        require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                        idx = 0
                        while idx < sub_07b08870.length:
                            stor18.length++
                            mem[0] = 18
                            address(stor18[stor18.length].field_0) = address(sub_07b08870[idx].field_0)
                            require idx < mem[_1089 + 96]
                            if 0 == mem[(32 * idx) + _1089 + 128]:
                                idx = idx + 1
                                continue 
                            require idx < sub_07b08870.length
                            mem[ceil32(return_data.size) + 100] = address(sub_07b08870[idx].field_0)
                            mem[ceil32(return_data.size) + 132] = msg.sender
                            require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].withdraw(address arg1, address arg2) with:
                                 gas gas_remaining wei
                                args address(sub_07b08870[idx].field_0), msg.sender
                            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < sub_07b08870.length
                            mem[0] = 22
                            require idx < mem[_1089 + 96]
                            _1470 = mem[(32 * idx) + _1089 + 128]
                            mem[ceil32(return_data.size) + 96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 100] = msg.sender
                            mem[ceil32(return_data.size) + 132] = _1470
                            require ext_code.size(address(sub_07b08870[idx].field_0))
                            call address(sub_07b08870[idx].field_0).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1470
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0]:
                                idx = idx + 1
                                continue 
                            require sub_07b08870.length - 1 < sub_07b08870.length
                            require idx < sub_07b08870.length
                            address(sub_07b08870[idx].field_0) = address(sub_07b08870[sub_07b08870.length].field_0)
                            require sub_07b08870.length - 1 < mem[_1089 + 96]
                            require idx < mem[_1089 + 96]
                            mem[_1089 + (32 * idx) + 128] = mem[(32 * sub_07b08870.length - 1) + _1089 + 128]
                            require sub_07b08870.length - 1 < sub_07b08870.length
                            mem[0] = 22
                            address(sub_07b08870[sub_07b08870.length].field_0) = 0
                            sub_07b08870.length--
                            if sub_07b08870.length > sub_07b08870.length - 1:
                                mem[0] = 22
                                s = sub_07b08870.length + sha3(22) - 1
                                while sha3(22) + sub_07b08870.length > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            idx = idx
                            continue 
                        if not stor18.length:
                            idx = 0
                            while idx < stor18.length:
                                require idx < stor18.length
                                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                                    require idx < stor18.length
                                    _1730 = mem[ceil32(return_data.size) + (32 * idx) + 128]
                                    mem[ceil32(return_data.size) + (32 * stor18.length) + 132] = this.address
                                    require ext_code.size(address(_1730))
                                    call address(_1730).0x70a08231 with:
                                         gas gas_remaining wei
                                        args this.address
                                    mem[ceil32(return_data.size) + (32 * stor18.length) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(_1730)
                                    mem[32] = 20
                                    amounts[address(_1730)] = ext_call.return_data[0]
                                    if 0 < ext_call.return_data[0]:
                                        mem[0] = address(_1730)
                                        mem[32] = 21
                                        if not stor21[address(_1730)]:
                                            tokens.length++
                                            address(tokens[tokens.length].field_0) = address(_1730)
                                            mem[0] = address(_1730)
                                            mem[32] = 21
                                            stor21[address(_1730)] = 1
                                idx = idx + 1
                                continue 
                        else:
                            mem[ceil32(return_data.size) + 128] = address(stor18.field_0)
                            idx = ceil32(return_data.size) + 128
                            s = 0
                            while ceil32(return_data.size) + (32 * stor18.length) + 96 > idx:
                                mem[idx + 32] = address(stor18[s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            idx = 0
                            while idx < stor18.length:
                                require idx < stor18.length
                                if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
                                    require idx < stor18.length
                                    _2683 = mem[ceil32(return_data.size) + (32 * idx) + 128]
                                    mem[ceil32(return_data.size) + (32 * stor18.length) + 132] = this.address
                                    require ext_code.size(address(_2683))
                                    call address(_2683).0x70a08231 with:
                                         gas gas_remaining wei
                                        args this.address
                                    mem[ceil32(return_data.size) + (32 * stor18.length) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(_2683)
                                    mem[32] = 20
                                    amounts[address(_2683)] = ext_call.return_data[0]
                                    if 0 < ext_call.return_data[0]:
                                        mem[0] = address(_2683)
                                        mem[32] = 21
                                        if not stor21[address(_2683)]:
                                            tokens.length++
                                            address(tokens[tokens.length].field_0) = address(_2683)
                                            mem[0] = address(_2683)
                                            mem[32] = 21
                                            stor21[address(_2683)] = 1
                                idx = idx + 1
                                continue 
                    else:
                        mem[0] = 22
                        mem[196] = address(sub_07b08870.field_0)
                        idx = mem[64] + 100
                        s = 0
                        while mem[64] + (32 * sub_07b08870.length) + 100 > idx + 32:
                            mem[idx + 32] = address(sub_07b08870[s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                        call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * sub_07b08870.length) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1715 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1724 = mem[_1715]
                        require mem[_1715] <= 4294967296
                        require mem[_1715] + 32 <= return_data.size
                        require mem[_1715 + mem[_1715]] <= 4294967296 and mem[_1715] + (32 * mem[_1715 + mem[_1715]]) + 32 <= return_data.size
                        idx = 0
                        while idx < sub_07b08870.length:
                            stor18.length++
                            mem[0] = 18
                            address(stor18[stor18.length].field_0) = address(sub_07b08870[idx].field_0)
                            require idx < mem[_1715 + _1724]
                            if 0 == mem[(32 * idx) + _1715 + _1724 + 32]:
                                idx = idx + 1
                                continue 
                            require idx < sub_07b08870.length
                            mem[mem[64] + 4] = address(sub_07b08870[idx].field_0)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000])
                            call sub_2156e6c6[0x546f6b656e42726f6b656e0000000000000000000000000000000000000000].withdraw(address arg1, address arg2) with:
                                 gas gas_remaining wei
                                args address(sub_07b08870[idx].field_0), msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < sub_07b08870.length
                            mem[0] = 22
                            require idx < mem[_1715 + _1724]
                            _2281 = mem[(32 * idx) + _1715 + _1724 + 32]
                            mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2281
                            require ext_code.size(address(sub_07b08870[idx].field_0))
                            call address(sub_07b08870[idx].field_0).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2281
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0]:
                                idx = idx + 1
                                continue 
                            require sub_07b08870.length - 1 < sub_07b08870.length
                            require idx < sub_07b08870.length
                            mem[0] = 22
                            address(sub_07b08870[idx].field_0) = address(sub_07b08870[sub_07b08870.length].field_0)
                            require sub_07b08870.length - 1 < mem[_1715 + _1724]
                            require idx < mem[_1715 + _1724]
                            mem[_1715 + _1724 + (32 * idx) + 32] = mem[(32 * sub_07b08870.length - 1) + _1715 + _1724 + 32]
                            require sub_07b08870.length - 1 < sub_07b08870.length
                            mem[0] = 22
                            address(sub_07b08870[sub_07b08870.length].field_0) = 0
                            sub_07b08870.length--
                            if sub_07b08870.length > sub_07b08870.length - 1:
                                mem[0] = 22
                                s = sub_07b08870.length + sha3(22) - 1
                                while sha3(22) + sub_07b08870.length > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            idx = idx
                            continue 
                        _2166 = mem[64]
                        mem[64] = mem[64] + (32 * stor18.length) + 32
                        mem[_2166] = stor18.length
                        if not stor18.length:
                            idx = 0
                            while idx < stor18.length:
                                require idx < mem[_2166]
                                if mem[(32 * idx) + _2166 + 44 len 20]:
                                    require idx < mem[_2166]
                                    _2687 = mem[_2166 + (32 * idx) + 32]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(_2687))
                                    call address(_2687).0x70a08231 with:
                                         gas gas_remaining wei
                                        args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(_2687)
                                    mem[32] = 20
                                    amounts[address(_2687)] = ext_call.return_data[0]
                                    if 0 < ext_call.return_data[0]:
                                        mem[0] = address(_2687)
                                        mem[32] = 21
                                        if not stor21[address(_2687)]:
                                            tokens.length++
                                            address(tokens[tokens.length].field_0) = address(_2687)
                                            mem[0] = address(_2687)
                                            mem[32] = 21
                                            stor21[address(_2687)] = 1
                                idx = idx + 1
                                continue 
                        else:
                            mem[0] = 18
                            mem[_2166 + 32] = address(stor18.field_0)
                            idx = _2166 + 32
                            s = 0
                            while _2166 + (32 * stor18.length) > idx:
                                mem[idx + 32] = address(stor18[s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            idx = 0
                            while idx < stor18.length:
                                require idx < mem[_2166]
                                if mem[(32 * idx) + _2166 + 44 len 20]:
                                    require idx < mem[_2166]
                                    _3477 = mem[_2166 + (32 * idx) + 32]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(_3477))
                                    call address(_3477).0x70a08231 with:
                                         gas gas_remaining wei
                                        args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(_3477)
                                    mem[32] = 20
                                    amounts[address(_3477)] = ext_call.return_data[0]
                                    if 0 < ext_call.return_data[0]:
                                        mem[0] = address(_3477)
                                        mem[32] = 21
                                        if not stor21[address(_3477)]:
                                            tokens.length++
                                            address(tokens[tokens.length].field_0) = address(_3477)
                                            mem[0] = address(_3477)
                                            mem[32] = 21
                                            stor21[address(_3477)] = 1
                                idx = idx + 1
                                continue 
                    stor18.length = 0
                    idx = 0
                    while stor18.length > idx:
                        stor18[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require ext_code.size(sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000])
                call sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000].withdraw(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[32]:
                    require ext_call.return_data[32] <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= ext_call.return_data[32]
                    require ext_call.return_data[32] <= totalSupply
                    totalSupply -= ext_call.return_data[32]
                    emit Transfer(ext_call.return_data[32], msg.sender, 0);
                    if ext_call.return_data[0] > 0:
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= balanceOf[address(msg.sender)]:
                        mem[0] = msg.sender
                        mem[32] = 25
                        idx = stor[sha3(mem[0 len 64])] - 1
                        while idx + 1 < sub_81d62bf5.length:
                            require idx < sub_81d62bf5.length
                            address(sub_81d62bf5[idx].field_0) = address(sub_81d62bf5[idx].field_256)
                            require idx + 1 < sub_81d62bf5.length
                            mem[0] = address(sub_81d62bf5[idx].field_256)
                            mem[32] = 25
                            sub_1c2a0e5c[address(stor26[idx].field_256)]--
                            idx = idx + 1
                            continue 
                        sub_1c2a0e5c[address(msg.sender)] = 0
                        sub_81d62bf5.length--
                        if sub_81d62bf5.length > sub_81d62bf5.length - 1:
                            idx = sub_81d62bf5.length - 1
                            while sub_81d62bf5.length > idx:
                                sub_81d62bf5[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                require ext_code.size(sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000])
                call sub_2156e6c6[0x576974686472617750726f7669646572000000000000000000000000000000].finalize() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
