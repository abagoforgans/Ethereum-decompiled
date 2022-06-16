contract main {




// =====================  Runtime code  =====================


const name = 'Futereum BTC'

const decimals = 18

const symbol = 'FUTB'

const SWAP_CAP = 21000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
uint256 cycleMintSupply;
address tierContractAddress;
uint256 offset;
uint256 decimalOffset;
uint256 baseRate;
mapping of uint256 exchangeRatios;
mapping of uint256 unPaidFees;
array of address miningTokens;
address adminAddress;
address sub_e7331696Address;
uint8 stor14; offset 160
uint8 stor14; offset 168
uint16 currentTier; offset 160
address sub_382d4fc5Address;
uint256 sub_790b855a;
uint256 miningTokenLeftInCurrent;
uint256 currentRate;
uint8 stor18;
uint8 stor18; offset 8
uint8 stor18; offset 32
uint16 lastTier; offset 16
uint256 stor18; offset 32
uint256 stor18; offset 8
uint256 swapEndTime;
mapping of uint256 swapRates;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function swapRates(address arg1) {
    return swapRates[arg1]
}

function miningActive() {
    return bool(uint8(stor18.field_8))
}

function unPaidFees(address arg1) {
    return unPaidFees[arg1]
}

function totalSupply() {
    return totalSupply
}

function baseRate() {
    return baseRate
}

function cycleMintSupply() {
    return cycleMintSupply
}

function sub_382d4fc5(?) {
    return sub_382d4fc5Address
}

function miningTokenLeftInCurrent() {
    return miningTokenLeftInCurrent
}

function exchangeRatios(address arg1) {
    return exchangeRatios[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function lastTier() {
    return lastTier
}

function sub_790b855a(?) {
    return sub_790b855a
}

function isMiningOpen() {
    return bool(uint8(stor18.field_0))
}

function owner() {
    return owner
}

function tierContract() {
    return tierContractAddress
}

function swapOpen() {
    return bool(uint8(stor18.field_32))
}

function decimalOffset() {
    return decimalOffset
}

function offset() {
    return offset
}

function currentTier() {
    return currentTier
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function miningTokens(uint256 arg1) {
    require arg1 < miningTokens.length
    return miningTokens[arg1]
}

function sub_e7331696(?) {
    return sub_e7331696Address
}

function swapEndTime() {
    return swapEndTime
}

function admin() {
    return adminAddress
}

function currentRate() {
    return currentRate
}

function _fallback() payable {
    revert
}

function changeAdmin(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function changeTierAdmin(address arg1) {
    require msg.sender == sub_e7331696Address
    sub_e7331696Address = arg1
}

function lockContract() {
    require msg.sender == adminAddress
    require uint8(stor18.field_8)
    adminAddress = 0
}

function setIsMiningOpen(bool arg1) {
    require msg.sender == sub_e7331696Address
    uint8(stor18.field_0) = uint8(arg1)
}

function setLastTier(uint16 arg1) {
    require msg.sender == adminAddress
    require uint8(stor18.field_32)
    lastTier = arg1
}

function sub_33a95d18(?) {
    require msg.sender == sub_e7331696Address
    require not uint8(stor18.field_8)
    tierContractAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function sub_bc77edc2(?) {
    require msg.sender == adminAddress
    require arg3 < miningTokens.length
    require miningTokens[arg3] == arg1
    require arg2 < 10000
    exchangeRatios[address(arg1)] = arg2
    emit 0x872923cd: address(arg1), arg2
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function addMiningToken(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    require not exchangeRatios[address(arg1)]
    require arg2 > 0
    require arg2 < 10000
    exchangeRatios[address(arg1)] = arg2
    idx = 0
    while uint16(idx) < miningTokens.length:
        mem[0] = 11
        if miningTokens[uint16(idx)] != arg1:
            idx = idx + 1
            continue 
        emit 0x1e09227a: address(arg1), arg2
    miningTokens.length++
    miningTokens[miningTokens.length] = arg1
    emit 0x1e09227a: address(arg1), arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function restart() {
    require uint8(stor18.field_32)
    if block.timestamp <= swapEndTime:
        require not cycleMintSupply
    cycleMintSupply = 0
    Mask(224, 0, stor18.field_32) = 0
    swapEndTime = 0
    uint8(stor18.field_0) = 1
    s = 0
    s = 0
    idx = 0
    while uint16(idx) < miningTokens.length:
        mem[0] = 11
        require ext_code.size(miningTokens[uint16(idx)])
        call miningTokens[uint16(idx)].0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = sub_382d4fc5Address
        mem[132] = ext_call.return_data[0] / 5
        require ext_code.size(miningTokens[uint16(idx)])
        call miningTokens[uint16(idx)].0xa9059cbb with:
             gas gas_remaining wei
            args sub_382d4fc5Address, ext_call.return_data[0] / 5
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        s = miningTokens[uint16(idx)]
        idx = idx + 1
        continue 
    uint8(stor14.field_160) = 1
    uint8(stor14.field_168) = 0
    sub_790b855a = 18325 * 10^11 * 3600
    miningTokenLeftInCurrent = 1025 * 10^10 * 3600
    require offset
    require miningTokenLeftInCurrent / offset
    currentRate = sub_790b855a / miningTokenLeftInCurrent / offset
    emit MiningRestart(currentTier);
}

function swap(uint256 arg1) {
    require uint8(stor18.field_32)
    require cycleMintSupply > 0
    if arg1 <= cycleMintSupply:
        cycleMintSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        require arg1 <= totalSupply
        totalSupply -= arg1
        emit Burn(arg1, msg.sender);
        emit Transfer(arg1, msg.sender, 0);
        s = 0
        idx = 0
        while uint16(idx) < miningTokens.length:
            mem[0] = miningTokens[uint16(idx)]
            mem[32] = 20
            if not arg1:
                require decimalOffset
                mem[100] = msg.sender
                mem[132] = 0 / decimalOffset
                require ext_code.size(miningTokens[uint16(idx)])
                call miningTokens[uint16(idx)].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0 / decimalOffset
            else:
                require arg1
                require arg1 * swapRates[stor11[uint16(idx)]] / arg1 == swapRates[stor11[uint16(idx)]]
                require decimalOffset
                mem[100] = msg.sender
                mem[132] = arg1 * swapRates[stor11[uint16(idx)]] / decimalOffset
                require ext_code.size(miningTokens[uint16(idx)])
                call miningTokens[uint16(idx)].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * swapRates[stor11[uint16(idx)]] / decimalOffset
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = miningTokens[uint16(idx)]
            idx = idx + 1
            continue 
    else:
        cycleMintSupply = 0
        require cycleMintSupply <= balanceOf[address(msg.sender)]
        require cycleMintSupply <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= cycleMintSupply
        require cycleMintSupply <= totalSupply
        totalSupply -= cycleMintSupply
        emit Burn(cycleMintSupply, msg.sender);
        emit Transfer(cycleMintSupply, msg.sender, 0);
        s = 0
        idx = 0
        while uint16(idx) < miningTokens.length:
            mem[0] = miningTokens[uint16(idx)]
            mem[32] = 20
            if not cycleMintSupply:
                require decimalOffset
                mem[100] = msg.sender
                mem[132] = 0 / decimalOffset
                require ext_code.size(miningTokens[uint16(idx)])
                call miningTokens[uint16(idx)].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0 / decimalOffset
            else:
                require cycleMintSupply
                require cycleMintSupply * swapRates[stor11[uint16(idx)]] / cycleMintSupply == swapRates[stor11[uint16(idx)]]
                require decimalOffset
                mem[100] = msg.sender
                mem[132] = cycleMintSupply * swapRates[stor11[uint16(idx)]] / decimalOffset
                require ext_code.size(miningTokens[uint16(idx)])
                call miningTokens[uint16(idx)].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, cycleMintSupply * swapRates[stor11[uint16(idx)]] / decimalOffset
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = miningTokens[uint16(idx)]
            idx = idx + 1
            continue 
}

function mine(address arg1, uint256 arg2) {
    require uint8(stor18.field_0)
    require arg1
    require arg2 > 0
    require exchangeRatios[address(arg1)] > 0
    require cycleMintSupply < 21000000 * 10^18
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not uint8(stor18.field_8):
        Mask(248, 0, stor18.field_8) = 1
    if not arg2:
        require baseRate
        idx = 0 / baseRate
        s = 0
        while idx > 0:
            if idx < miningTokenLeftInCurrent:
                if not currentRate:
                    require offset
                    sub_790b855a -= 0 / offset
                    miningTokenLeftInCurrent -= idx
                    if miningTokenLeftInCurrent:
                        idx = 0
                        s = s + (0 / offset)
                        continue 
                    if currentTier != lastTier:
                        currentTier = uint16(currentTier + 1)
                        require ext_code.size(tierContractAddress)
                        call tierContractAddress.getTier(uint16 arg1) with:
                             gas gas_remaining wei
                            args currentTier
                        mem[96 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        currentRate = ext_call.return_data[64]
                        miningTokenLeftInCurrent = ext_call.return_data[32]
                        sub_790b855a = ext_call.return_data[0]
                        idx = 0
                        s = s + (0 / offset)
                        continue 
                else:
                    require currentRate
                    require currentRate * idx / currentRate == idx
                    require offset
                    sub_790b855a -= currentRate * idx / offset
                    miningTokenLeftInCurrent -= idx
                    if miningTokenLeftInCurrent:
                        idx = 0
                        s = s + (currentRate * idx / offset)
                        continue 
                    if currentTier != lastTier:
                        currentTier = uint16(currentTier + 1)
                        require ext_code.size(tierContractAddress)
                        call tierContractAddress.getTier(uint16 arg1) with:
                             gas gas_remaining wei
                            args currentTier
                        mem[96 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        currentRate = ext_call.return_data[64]
                        miningTokenLeftInCurrent = ext_call.return_data[32]
                        sub_790b855a = ext_call.return_data[0]
                        idx = 0
                        s = s + (currentRate * idx / offset)
                        continue 
                ('eq', ('stor', ('name', 'currentTier', 14)), ('stor', ('name', 'lastTier', 18)))
                swapEndTime = block.timestamp + (720 * 24 * 3600)
                Mask(224, 0, stor18.field_32) = 1
                uint8(stor18.field_0) = 0
                Mask(248, 0, stor18.field_8) = 0
                s = 0
                s = 0
                idx = 0
                while uint16(idx) < miningTokens.length:
                    mem[100] = this.address
                    require ext_code.size(miningTokens[uint16(idx)])
                    call miningTokens[uint16(idx)].0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require decimalOffset
                    require 21000000 * 10^18 / decimalOffset
                    mem[0] = miningTokens[uint16(idx)]
                    mem[32] = 20
                    swapRates[stor11[uint16(idx)]] = ext_call.return_data[0] / 21000000 * 10^18 / decimalOffset
                    s = ext_call.return_data[0]
                    s = miningTokens[uint16(idx)]
                    idx = idx + 1
                    continue 
                emit SwapStarted(swapEndTime);
                cycleMintSupply = 21000000 * 10^18
                require ext_code.size(this.address)
                call this.address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, -cycleMintSupply + 21000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_382d4fc5Address, arg2 / 2
            else:
                miningTokenLeftInCurrent = 0
                sub_790b855a = 0
                if miningTokenLeftInCurrent:
                    idx = idx - miningTokenLeftInCurrent
                    s = s + sub_790b855a
                    continue 
                if currentTier != lastTier:
                    currentTier = uint16(currentTier + 1)
                    require ext_code.size(tierContractAddress)
                    call tierContractAddress.getTier(uint16 arg1) with:
                         gas gas_remaining wei
                        args currentTier
                    mem[96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    currentRate = ext_call.return_data[64]
                    miningTokenLeftInCurrent = ext_call.return_data[32]
                    sub_790b855a = ext_call.return_data[0]
                    idx = idx - miningTokenLeftInCurrent
                    s = s + sub_790b855a
                    continue 
                if idx - miningTokenLeftInCurrent <= 0:
                    swapEndTime = block.timestamp + (720 * 24 * 3600)
                    Mask(224, 0, stor18.field_32) = 1
                    uint8(stor18.field_0) = 0
                    Mask(248, 0, stor18.field_8) = 0
                    s = 0
                    s = 0
                    idx = 0
                    while uint16(idx) < miningTokens.length:
                        mem[100] = this.address
                        require ext_code.size(miningTokens[uint16(idx)])
                        call miningTokens[uint16(idx)].0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require decimalOffset
                        require 21000000 * 10^18 / decimalOffset
                        mem[0] = miningTokens[uint16(idx)]
                        mem[32] = 20
                        swapRates[stor11[uint16(idx)]] = ext_call.return_data[0] / 21000000 * 10^18 / decimalOffset
                        s = ext_call.return_data[0]
                        s = miningTokens[uint16(idx)]
                        idx = idx + 1
                        continue 
                    emit SwapStarted(swapEndTime);
                    cycleMintSupply = 21000000 * 10^18
                    require ext_code.size(this.address)
                    call this.address.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, -cycleMintSupply + 21000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_382d4fc5Address, arg2 / 2
                else:
                    if not idx - miningTokenLeftInCurrent:
                        require exchangeRatios[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / exchangeRatios[address(arg1)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        swapEndTime = block.timestamp + (720 * 24 * 3600)
                        Mask(224, 0, stor18.field_32) = 1
                        uint8(stor18.field_0) = 0
                        Mask(248, 0, stor18.field_8) = 0
                        s = 0
                        s = 0
                        idx = 0
                        while uint16(idx) < miningTokens.length:
                            mem[100] = this.address
                            require ext_code.size(miningTokens[uint16(idx)])
                            call miningTokens[uint16(idx)].0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require decimalOffset
                            require 21000000 * 10^18 / decimalOffset
                            mem[0] = miningTokens[uint16(idx)]
                            mem[32] = 20
                            swapRates[stor11[uint16(idx)]] = ext_call.return_data[0] / 21000000 * 10^18 / decimalOffset
                            s = ext_call.return_data[0]
                            s = miningTokens[uint16(idx)]
                            idx = idx + 1
                            continue 
                        emit SwapStarted(swapEndTime);
                        cycleMintSupply = 21000000 * 10^18
                        require ext_code.size(this.address)
                        call this.address.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, -cycleMintSupply + 21000000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_382d4fc5Address, (arg2 / 2) - (0 / exchangeRatios[address(arg1)] / 2)
                    else:
                        require idx - miningTokenLeftInCurrent
                        require (idx * baseRate) - (miningTokenLeftInCurrent * baseRate) / idx - miningTokenLeftInCurrent == baseRate
                        require exchangeRatios[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (idx * baseRate) - (miningTokenLeftInCurrent * baseRate) / exchangeRatios[address(arg1)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        swapEndTime = block.timestamp + (720 * 24 * 3600)
                        Mask(224, 0, stor18.field_32) = 1
                        uint8(stor18.field_0) = 0
                        Mask(248, 0, stor18.field_8) = 0
                        t = 0
                        t = 0
                        s = 0
                        while uint16(s) < miningTokens.length:
                            mem[100] = this.address
                            require ext_code.size(miningTokens[uint16(s)])
                            call miningTokens[uint16(s)].0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require decimalOffset
                            require 21000000 * 10^18 / decimalOffset
                            mem[0] = miningTokens[uint16(s)]
                            mem[32] = 20
                            swapRates[stor11[uint16(s)]] = ext_call.return_data[0] / 21000000 * 10^18 / decimalOffset
                            t = ext_call.return_data[0]
                            t = miningTokens[uint16(s)]
                            s = s + 1
                            continue 
                        emit SwapStarted(swapEndTime);
                        cycleMintSupply = 21000000 * 10^18
                        require ext_code.size(this.address)
                        call this.address.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, -cycleMintSupply + 21000000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_382d4fc5Address, (arg2 / 2) - ((idx * baseRate) - (miningTokenLeftInCurrent * baseRate) / exchangeRatios[address(arg1)] / 2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require arg2
        require arg2 * exchangeRatios[address(arg1)] / arg2 == exchangeRatios[address(arg1)]
        require baseRate
        idx = arg2 * exchangeRatios[address(arg1)] / baseRate
        s = 0
        while idx > 0:
            if idx < miningTokenLeftInCurrent:
                if not currentRate:
                    require offset
                    sub_790b855a -= 0 / offset
                    miningTokenLeftInCurrent -= idx
                    if miningTokenLeftInCurrent:
                        idx = 0
                        s = s + (0 / offset)
                        continue 
                    if currentTier != lastTier:
                        currentTier = uint16(currentTier + 1)
                        require ext_code.size(tierContractAddress)
                        call tierContractAddress.getTier(uint16 arg1) with:
                             gas gas_remaining wei
                            args currentTier
                        mem[96 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        currentRate = ext_call.return_data[64]
                        miningTokenLeftInCurrent = ext_call.return_data[32]
                        sub_790b855a = ext_call.return_data[0]
                        idx = 0
                        s = s + (0 / offset)
                        continue 
                else:
                    require currentRate
                    require currentRate * idx / currentRate == idx
                    require offset
                    sub_790b855a -= currentRate * idx / offset
                    miningTokenLeftInCurrent -= idx
                    if miningTokenLeftInCurrent:
                        idx = 0
                        s = s + (currentRate * idx / offset)
                        continue 
                    if currentTier != lastTier:
                        currentTier = uint16(currentTier + 1)
                        require ext_code.size(tierContractAddress)
                        call tierContractAddress.getTier(uint16 arg1) with:
                             gas gas_remaining wei
                            args currentTier
                        mem[96 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        currentRate = ext_call.return_data[64]
                        miningTokenLeftInCurrent = ext_call.return_data[32]
                        sub_790b855a = ext_call.return_data[0]
                        idx = 0
                        s = s + (currentRate * idx / offset)
                        continue 
                ('eq', ('stor', ('name', 'currentTier', 14)), ('stor', ('name', 'lastTier', 18)))
                swapEndTime = block.timestamp + (720 * 24 * 3600)
                Mask(224, 0, stor18.field_32) = 1
                uint8(stor18.field_0) = 0
                Mask(248, 0, stor18.field_8) = 0
                s = 0
                s = 0
                idx = 0
                while uint16(idx) < miningTokens.length:
                    mem[100] = this.address
                    require ext_code.size(miningTokens[uint16(idx)])
                    call miningTokens[uint16(idx)].0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require decimalOffset
                    require 21000000 * 10^18 / decimalOffset
                    mem[0] = miningTokens[uint16(idx)]
                    mem[32] = 20
                    swapRates[stor11[uint16(idx)]] = ext_call.return_data[0] / 21000000 * 10^18 / decimalOffset
                    s = ext_call.return_data[0]
                    s = miningTokens[uint16(idx)]
                    idx = idx + 1
                    continue 
                emit SwapStarted(swapEndTime);
                cycleMintSupply = 21000000 * 10^18
                require ext_code.size(this.address)
                call this.address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, -cycleMintSupply + 21000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_382d4fc5Address, arg2 / 2
            else:
                miningTokenLeftInCurrent = 0
                sub_790b855a = 0
                if miningTokenLeftInCurrent:
                    idx = idx - miningTokenLeftInCurrent
                    s = s + sub_790b855a
                    continue 
                if currentTier != lastTier:
                    currentTier = uint16(currentTier + 1)
                    require ext_code.size(tierContractAddress)
                    call tierContractAddress.getTier(uint16 arg1) with:
                         gas gas_remaining wei
                        args currentTier
                    mem[96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    currentRate = ext_call.return_data[64]
                    miningTokenLeftInCurrent = ext_call.return_data[32]
                    sub_790b855a = ext_call.return_data[0]
                    idx = idx - miningTokenLeftInCurrent
                    s = s + sub_790b855a
                    continue 
                if idx - miningTokenLeftInCurrent <= 0:
                    swapEndTime = block.timestamp + (720 * 24 * 3600)
                    Mask(224, 0, stor18.field_32) = 1
                    uint8(stor18.field_0) = 0
                    Mask(248, 0, stor18.field_8) = 0
                    s = 0
                    s = 0
                    idx = 0
                    while uint16(idx) < miningTokens.length:
                        mem[100] = this.address
                        require ext_code.size(miningTokens[uint16(idx)])
                        call miningTokens[uint16(idx)].0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require decimalOffset
                        require 21000000 * 10^18 / decimalOffset
                        mem[0] = miningTokens[uint16(idx)]
                        mem[32] = 20
                        swapRates[stor11[uint16(idx)]] = ext_call.return_data[0] / 21000000 * 10^18 / decimalOffset
                        s = ext_call.return_data[0]
                        s = miningTokens[uint16(idx)]
                        idx = idx + 1
                        continue 
                    emit SwapStarted(swapEndTime);
                    cycleMintSupply = 21000000 * 10^18
                    require ext_code.size(this.address)
                    call this.address.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, -cycleMintSupply + 21000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_382d4fc5Address, arg2 / 2
                else:
                    if not idx - miningTokenLeftInCurrent:
                        require exchangeRatios[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / exchangeRatios[address(arg1)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        swapEndTime = block.timestamp + (720 * 24 * 3600)
                        Mask(224, 0, stor18.field_32) = 1
                        uint8(stor18.field_0) = 0
                        Mask(248, 0, stor18.field_8) = 0
                        s = 0
                        s = 0
                        idx = 0
                        while uint16(idx) < miningTokens.length:
                            mem[100] = this.address
                            require ext_code.size(miningTokens[uint16(idx)])
                            call miningTokens[uint16(idx)].0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require decimalOffset
                            require 21000000 * 10^18 / decimalOffset
                            mem[0] = miningTokens[uint16(idx)]
                            mem[32] = 20
                            swapRates[stor11[uint16(idx)]] = ext_call.return_data[0] / 21000000 * 10^18 / decimalOffset
                            s = ext_call.return_data[0]
                            s = miningTokens[uint16(idx)]
                            idx = idx + 1
                            continue 
                        emit SwapStarted(swapEndTime);
                        cycleMintSupply = 21000000 * 10^18
                        require ext_code.size(this.address)
                        call this.address.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, -cycleMintSupply + 21000000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_382d4fc5Address, (arg2 / 2) - (0 / exchangeRatios[address(arg1)] / 2)
                    else:
                        require idx - miningTokenLeftInCurrent
                        require (idx * baseRate) - (miningTokenLeftInCurrent * baseRate) / idx - miningTokenLeftInCurrent == baseRate
                        require exchangeRatios[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (idx * baseRate) - (miningTokenLeftInCurrent * baseRate) / exchangeRatios[address(arg1)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        swapEndTime = block.timestamp + (720 * 24 * 3600)
                        Mask(224, 0, stor18.field_32) = 1
                        uint8(stor18.field_0) = 0
                        Mask(248, 0, stor18.field_8) = 0
                        t = 0
                        t = 0
                        s = 0
                        while uint16(s) < miningTokens.length:
                            mem[100] = this.address
                            require ext_code.size(miningTokens[uint16(s)])
                            call miningTokens[uint16(s)].0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require decimalOffset
                            require 21000000 * 10^18 / decimalOffset
                            mem[0] = miningTokens[uint16(s)]
                            mem[32] = 20
                            swapRates[stor11[uint16(s)]] = ext_call.return_data[0] / 21000000 * 10^18 / decimalOffset
                            t = ext_call.return_data[0]
                            t = miningTokens[uint16(s)]
                            s = s + 1
                            continue 
                        emit SwapStarted(swapEndTime);
                        cycleMintSupply = 21000000 * 10^18
                        require ext_code.size(this.address)
                        call this.address.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, -cycleMintSupply + 21000000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_382d4fc5Address, (arg2 / 2) - ((idx * baseRate) - (miningTokenLeftInCurrent * baseRate) / exchangeRatios[address(arg1)] / 2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    cycleMintSupply += s
    require ext_code.size(this.address)
    call this.address.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args sub_382d4fc5Address, arg2 / 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
