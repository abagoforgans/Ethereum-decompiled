contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const version = 1000


address owner;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
uint32 stor4;
address baseCurrencyAddress;
uint256 baseRate;
address sub_85e03790Address;
address sub_2ec428a0Address;
array of struct stor8;
mapping of uint256 allowance;
uint8 stor11;
uint8 stor11; offset 8
uint8 stor11; offset 16
uint8 stor11; offset 24
address sub_17d06700Address; offset 32
uint256 stor11; offset 8
address sub_ff5ae2dfAddress;
uint256 sub_fbb20e9a;
uint256 stor14;
address sub_9f8303a8Address;

function sub_04954839(?) {
    return bool(uint8(stor11.field_0))
}

function name() {
    return name[0 len name.length]
}

function sub_17d06700(?) {
    return sub_17d06700Address
}

function baseRate() {
    return baseRate
}

function isMintingPaused() {
    return bool(uint8(stor11.field_24))
}

function sub_2ec428a0(?) {
    return sub_2ec428a0Address
}

function decimals() {
    return decimals
}

function sub_85e03790(?) {
    return sub_85e03790Address
}

function owner() {
    return owner
}

function baseCurrency() {
    return address(baseCurrencyAddress)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9f8303a8(?) {
    return sub_9f8303a8Address
}

function sub_c6bc3508(?) {
    return bool(uint8(stor11.field_16))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_fbb20e9a(?) {
    return sub_fbb20e9a
}

function sub_ff5ae2df(?) {
    return sub_ff5ae2dfAddress
}

function _fallback() payable {
    revert
}

function sub_b7f06ca9(?) {
    return not bool(uint8(stor11.field_8))
}

function sub_a699b312(?) {
    require msg.sender == owner
    sub_ff5ae2dfAddress = arg1
}

function sub_519a66b1(?) {
    require msg.sender == sub_9f8303a8Address
    sub_9f8303a8Address = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function pauseTransfer(bool arg1) {
    require msg.sender == sub_17d06700Address
    Mask(248, 0, stor11.field_8) = Mask(248, 0, arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function enableTransfers(bool arg1) {
    if sub_9f8303a8Address != msg.sender:
        require msg.sender == owner
    Mask(248, 0, stor11.field_8) = Mask(248, 0, arg1)
}

function sub_4987b3e0(?) {
    if sub_9f8303a8Address != msg.sender:
        require msg.sender == owner
        require not uint8(stor11.field_0)
        require not uint8(stor11.field_16)
    sub_9f8303a8Address = arg1
}

function sub_bb3667eb(?) {
    if sub_9f8303a8Address != msg.sender:
        require msg.sender == owner
        require not uint8(stor11.field_0)
        require not uint8(stor11.field_16)
    require arg1
    sub_85e03790Address = arg1
}

function sub_bb2c4100(?) {
    if sub_9f8303a8Address != msg.sender:
        require msg.sender == owner
        require not uint8(stor11.field_0)
        require not uint8(stor11.field_16)
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
}

function sub_72280526(?) {
    if sub_9f8303a8Address != msg.sender:
        require msg.sender == owner
        require not uint8(stor11.field_0)
        require not uint8(stor11.field_16)
    require arg1
    require arg1 != this.address
    require arg2
    address(baseCurrencyAddress) = arg1
    baseRate = arg2
}

function claimDividendAll() {
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x3c31fe27 with:
         gas gas_remaining wei
        args 14, 8
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_33246479(?) {
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0xf70a147e with:
         gas gas_remaining wei
        args 0, 14, 8, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimDividend(uint256 arg1) {
    require arg1 < stor14
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x8422e773 with:
         gas gas_remaining wei
        args 14, 8, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_742c1709(?) {
    require msg.sender == sub_17d06700Address
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x4567492e with:
         gas gas_remaining wei
        args 11, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2256de06(?) {
    if sub_9f8303a8Address != msg.sender:
        require msg.sender == owner
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0xb35fbc1d with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function totalSupply() {
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x7420bd40 with:
         gas gas_remaining wei
        args 8, block.number
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function totalSupplyAt(uint256 arg1) {
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x7420bd40 with:
         gas gas_remaining wei
        args 8, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x13120504 with:
         gas gas_remaining wei
        args 8, address(arg1), block.number
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function balanceOfAt(address arg1, uint256 arg2) {
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x13120504 with:
         gas gas_remaining wei
        args 8, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x6bb71549 with:
         gas gas_remaining wei
        args 8, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_874c686a(?) {
    require msg.sender == sub_9f8303a8Address
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x81b8b6b5 with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function decreaseApproval(address arg1, uint256 arg2) {
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x9e3cfd77 with:
         gas gas_remaining wei
        args 8, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function increaseApproval(address arg1, uint256 arg2) {
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x5dc6c24a with:
         gas gas_remaining wei
        args 8, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function finishMinting() {
    if sub_9f8303a8Address != msg.sender:
        require msg.sender == owner
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x5be6b00c with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_f6072a10(?) {
    if sub_9f8303a8Address != msg.sender:
        require msg.sender == owner
        require not uint8(stor11.field_0)
        require not uint8(stor11.field_16)
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0xa517f320 with:
         gas gas_remaining wei
        args 11, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    sub_2ec428a0Address = arg2
}

function rescueToken(address arg1, address arg2) {
    require msg.sender == sub_2ec428a0Address
    require uint8(stor11.field_16)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function depositDividend() payable {
    require msg.sender == owner
    require uint8(stor11.field_0)
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x7420bd40 with:
         gas gas_remaining wei
        args 8, block.number
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x8c2454bf with:
         gas gas_remaining wei
        args 14, msg.value, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function recycleDividend(uint256 arg1) {
    require msg.sender == owner
    require arg1 < stor14
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x7420bd40 with:
         gas gas_remaining wei
        args 8, block.number
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x3668f3ab with:
         gas gas_remaining wei
        args 0, 14, arg1, sub_fbb20e9a, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_03dc27ce(?) {
    require msg.sender == owner
    require uint8(stor11.field_0)
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x7420bd40 with:
         gas gas_remaining wei
        args 8, block.number
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0xe7fe4892 with:
         gas gas_remaining wei
        args 0, 14, address(arg1), arg2, delegate.return_data[0], address(baseCurrencyAddress)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function mint(address arg1, uint256 arg2) {
    if sub_9f8303a8Address != msg.sender:
        require msg.sender == sub_85e03790Address
        require uint8(stor11.field_0)
        require not uint8(stor11.field_16)
        require not uint8(stor11.field_24)
    if not arg2:
        require ext_code.size(sub_ff5ae2dfAddress)
        call sub_ff5ae2dfAddress.0xa2d4cff5 with:
             gas gas_remaining wei
            args 0, uint32(stor4), address(arg1), address(arg1), 0
    else:
        require arg2
        require arg2 * baseRate / arg2 == baseRate
        require ext_code.size(sub_ff5ae2dfAddress)
        call sub_ff5ae2dfAddress.0xa2d4cff5 with:
             gas gas_remaining wei
            args 0, uint32(stor4), address(arg1), address(arg1), arg2 * baseRate / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_9f8303a8Address != msg.sender:
        require msg.sender == sub_85e03790Address
        require uint8(stor11.field_0)
        require not uint8(stor11.field_16)
        require not uint8(stor11.field_24)
    require ext_code.size(0x639780d02412340b5819f3e3750e4d2bc20d4bea)
    delegate 0x639780d02412340b5819f3e3750e4d2bc20d4bea.0x1c049b with:
         gas gas_remaining wei
        args 8, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    if not arg2:
        require ext_code.size(sub_ff5ae2dfAddress)
        call sub_ff5ae2dfAddress.0x3d03eb22 with:
             gas gas_remaining wei
            args 0, uint32(stor4), msg.sender, address(arg1), 0
    else:
        require arg2
        require arg2 * baseRate / arg2 == baseRate
        require ext_code.size(sub_ff5ae2dfAddress)
        call sub_ff5ae2dfAddress.0x3d03eb22 with:
             gas gas_remaining wei
            args 0, uint32(stor4), msg.sender, address(arg1), arg2 * baseRate / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require uint8(stor11.field_8)
    require arg1
    require arg1 != this.address
    if not stor8[address(msg.sender)].field_0:
        require 0 >= arg2
        require arg2 <= 0
        if stor8[address(msg.sender)].field_0:
            require stor8[address(msg.sender)].field_0 - 1 < stor8[address(msg.sender)].field_0
            if stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_0 >= block.number:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Update in same block is not allowed. Please retry.'
        stor8[address(msg.sender)].field_0++
        if stor8[address(msg.sender)].field_0 > stor8[address(msg.sender)].field_0 + 1:
            idx = stor8[address(msg.sender)].field_0 + 1
            while stor8[address(msg.sender)].field_0 > idx:
                stor8[address(msg.sender)][idx].field_0 = 0
                stor8[address(msg.sender)][idx].field_0 = stor8[address(msg.sender)][idx].field_0
                idx = idx + 1
                continue 
        require stor8[address(msg.sender)].field_0 < stor8[address(msg.sender)].field_0
        stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_0 = uint128(block.number)
        stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_128 = uint128(-arg2)
    else:
        require 0 < stor8[address(msg.sender)].field_0
        if stor8[address(msg.sender)].field_0 > block.number:
            require 0 >= arg2
            require arg2 <= 0
            if stor8[address(msg.sender)].field_0:
                require stor8[address(msg.sender)].field_0 - 1 < stor8[address(msg.sender)].field_0
                if stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_0 >= block.number:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Update in same block is not allowed. Please retry.'
            stor8[address(msg.sender)].field_0++
            if stor8[address(msg.sender)].field_0 > stor8[address(msg.sender)].field_0 + 1:
                idx = stor8[address(msg.sender)].field_0 + 1
                while stor8[address(msg.sender)].field_0 > idx:
                    stor8[address(msg.sender)][idx].field_0 = 0
                    stor8[address(msg.sender)][idx].field_0 = stor8[address(msg.sender)][idx].field_0
                    idx = idx + 1
                    continue 
            require stor8[address(msg.sender)].field_0 < stor8[address(msg.sender)].field_0
            stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_0 = uint128(block.number)
            stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_128 = uint128(-arg2)
        else:
            require stor8[address(msg.sender)].field_0 - 1 < stor8[address(msg.sender)].field_0
            if block.number >= stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_0:
                require stor8[address(msg.sender)].field_0 - 1 < stor8[address(msg.sender)].field_0
                require stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_0 >= arg2
                require arg2 <= stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_0
                if stor8[address(msg.sender)].field_0:
                    require stor8[address(msg.sender)].field_0 - 1 < stor8[address(msg.sender)].field_0
                    if stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_0 >= block.number:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Update in same block is not allowed. Please retry.'
                stor8[address(msg.sender)].field_0++
                if stor8[address(msg.sender)].field_0 > stor8[address(msg.sender)].field_0 + 1:
                    idx = stor8[address(msg.sender)].field_0 + 1
                    while stor8[address(msg.sender)].field_0 > idx:
                        stor8[address(msg.sender)][idx].field_0 = 0
                        stor8[address(msg.sender)][idx].field_0 = stor8[address(msg.sender)][idx].field_0
                        idx = idx + 1
                        continue 
                require stor8[address(msg.sender)].field_0 < stor8[address(msg.sender)].field_0
                stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_0 = uint128(block.number)
                stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_128 = uint128(stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_0 - arg2)
            else:
                s = 0
                idx = 0
                while stor8[address(msg.sender)].field_0 - 1 > idx:
                    require stor8[address(msg.sender)].field_0 + idx / 2 < stor8[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 8)
                    if stor8[address(msg.sender)][0.5 / stor8[address(msg.sender)].field_0 + idx].field_0 > block.number:
                        s = stor8[address(msg.sender)].field_0 + idx / 2
                        idx = idx
                        continue 
                    s = stor8[address(msg.sender)].field_0 + idx / 2
                    idx = stor8[address(msg.sender)].field_0 + idx / 2
                    continue 
                require idx < stor8[address(msg.sender)].field_0
                require stor8[address(msg.sender)][idx].field_128 >= arg2
                require arg2 <= stor8[address(msg.sender)][idx].field_128
                if stor8[address(msg.sender)].field_0:
                    require stor8[address(msg.sender)].field_0 - 1 < stor8[address(msg.sender)].field_0
                    if stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_0 >= block.number:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Update in same block is not allowed. Please retry.'
                stor8[address(msg.sender)].field_0++
                if stor8[address(msg.sender)].field_0 > stor8[address(msg.sender)].field_0 + 1:
                    s = stor8[address(msg.sender)].field_0 + 1
                    while stor8[address(msg.sender)].field_0 > s:
                        stor8[address(msg.sender)][s].field_0 = 0
                        stor8[address(msg.sender)][s].field_0 = stor8[address(msg.sender)][s].field_0
                        s = s + 1
                        continue 
                require stor8[address(msg.sender)].field_0 < stor8[address(msg.sender)].field_0
                stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_0 = uint128(block.number)
                stor8[address(msg.sender)][stor8[address(msg.sender)].field_0].field_128 = uint128(stor8[address(msg.sender)][idx].field_128 - arg2)
    if not stor8[address(arg1)].field_0:
        require arg2 >= 0
        if stor8[address(arg1)].field_0:
            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Update in same block is not allowed. Please retry.'
        stor8[address(arg1)].field_0++
        if stor8[address(arg1)].field_0 > stor8[address(arg1)].field_0 + 1:
            idx = stor8[address(arg1)].field_0 + 1
            while stor8[address(arg1)].field_0 > idx:
                stor8[address(arg1)][idx].field_0 = 0
                stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
                idx = idx + 1
                continue 
        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
    else:
        require 0 < stor8[address(arg1)].field_0
        if stor8[address(arg1)].field_0 > block.number:
            require arg2 >= 0
            if stor8[address(arg1)].field_0:
                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Update in same block is not allowed. Please retry.'
            stor8[address(arg1)].field_0++
            if stor8[address(arg1)].field_0 > stor8[address(arg1)].field_0 + 1:
                idx = stor8[address(arg1)].field_0 + 1
                while stor8[address(arg1)].field_0 > idx:
                    stor8[address(arg1)][idx].field_0 = 0
                    stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
                    idx = idx + 1
                    continue 
            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
        else:
            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
            if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 + arg2 >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0
                if stor8[address(arg1)].field_0:
                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Update in same block is not allowed. Please retry.'
                stor8[address(arg1)].field_0++
                if stor8[address(arg1)].field_0 > stor8[address(arg1)].field_0 + 1:
                    idx = stor8[address(arg1)].field_0 + 1
                    while stor8[address(arg1)].field_0 > idx:
                        stor8[address(arg1)][idx].field_0 = 0
                        stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
                        idx = idx + 1
                        continue 
                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 + arg2)
            else:
                s = 0
                idx = 0
                while stor8[address(arg1)].field_0 - 1 > idx:
                    require stor8[address(arg1)].field_0 + idx / 2 < stor8[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 8)
                    if stor8[address(arg1)][0.5 / stor8[address(arg1)].field_0 + idx].field_0 > block.number:
                        s = stor8[address(arg1)].field_0 + idx / 2
                        idx = idx
                        continue 
                    s = stor8[address(arg1)].field_0 + idx / 2
                    idx = stor8[address(arg1)].field_0 + idx / 2
                    continue 
                require idx < stor8[address(arg1)].field_0
                require stor8[address(arg1)][idx].field_128 + arg2 >= stor8[address(arg1)][idx].field_128
                if stor8[address(arg1)].field_0:
                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Update in same block is not allowed. Please retry.'
                stor8[address(arg1)].field_0++
                if stor8[address(arg1)].field_0 > stor8[address(arg1)].field_0 + 1:
                    s = stor8[address(arg1)].field_0 + 1
                    while stor8[address(arg1)].field_0 > s:
                        stor8[address(arg1)][s].field_0 = 0
                        stor8[address(arg1)][s].field_0 = stor8[address(arg1)][s].field_0
                        s = s + 1
                        continue 
                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 + arg2)
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
