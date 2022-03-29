contract main {


// =======================  Init code  ======================


address stor0;
uint128 stor4; offset 160
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
uint8 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 13
    stor5.length.field_8 = 'Creditbit 1.0' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 9
    stor6.length.field_8 = 'CreditBIT' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 3
    stor7.length.field_8 = 'CRB' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 8
    stor9 = 0
    stor10 = 0
    stor11 = 0
    require not msg.value
    stor0 = msg.sender
    stor4 = 0
    return code.data[584 len 10553]
}



// =====================  Runtime code  =====================


address devAddress;
address creditDaoAddress;
address creditBondAddress;
address creditGameAddress;
uint8 lockdown; offset 160
uint128 stor4; offset 160
address creditMcAddress;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 totalAvaliableSupply;
uint256 totalLockedSupply;
mapping of struct lockedBalanceOf;
mapping of uint256 allowance;

function getCreditBondAddress() {
    return creditBondAddress
}

function name() {
    return name[0 len name.length]
}

function totalLockedSupply() {
    return totalLockedSupply
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function lockdown() {
    return bool(lockdown)
}

function creditDaoAddress() {
    return creditDaoAddress
}

function lockedBalanceOf(address arg1) {
    return lockedBalanceOf[address(arg1)].field_256
}

function standard() {
    return standard[0 len standard.length]
}

function getAccountData(address arg1) {
    return lockedBalanceOf[address(arg1)].field_0, 
           lockedBalanceOf[address(arg1)].field_256,
           lockedBalanceOf[address(arg1)].field_512,
           lockedBalanceOf[address(arg1)].field_768,
           lockedBalanceOf[address(arg1)].field_1024
}

function balanceOf(address arg1) {
    return lockedBalanceOf[address(arg1)].field_0
}

function dev() {
    return devAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function creditGameAddress() {
    return creditGameAddress
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function totalAvaliableSupply() {
    return totalAvaliableSupply
}

function creditMcAddress() {
    return creditMcAddress
}

function _fallback() {
    revert 
}

function setCreditDaoAddress(address arg1) {
    if devAddress != msg.sender:
        return 1
    creditDaoAddress = arg1
    return 0
}

function lockToken() {
    if creditDaoAddress != msg.sender:
        return 1
    stor4 = Mask(96, 0, not bool(lockdown))
    return 0
}

function setCreditBond(address arg1) {
    if creditDaoAddress != msg.sender:
        return 1
    creditBondAddress = arg1
    return 0
}

function setCreditMcAddress(address arg1) {
    if creditDaoAddress != msg.sender:
        return 1
    creditMcAddress = arg1
    return 0
}

function setCreditGameAddress(address arg1) {
    if creditDaoAddress != msg.sender:
        return 1
    creditGameAddress = arg1
    return 0
}

function approve(address arg1, uint256 arg2) {
    require not lockdown
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mintMigrationTokens(address arg1, uint256 arg2) {
    if creditMcAddress != msg.sender:
        return 1
    totalSupply += arg2
    totalAvaliableSupply += arg2
    lockedBalanceOf[address(arg1)].field_0 += arg2
    emit Transfer(arg2, 0, arg1);
    emit Mint(address(arg1), arg2);
    return 0
}

function mintBonusTokensForGames(uint256 arg1) {
    require not lockdown
    if creditDaoAddress != msg.sender:
        return 1
    totalSupply += arg1
    totalAvaliableSupply += arg1
    lockedBalanceOf[stor3].field_0 += arg1
    emit Transfer(arg1, 0, creditGameAddress);
    emit Mint(creditGameAddress, arg1);
    return 0
}

function transfer(address arg1, uint256 arg2) {
    require not lockdown
    require lockedBalanceOf[address(msg.sender)].field_0 >= arg2
    require lockedBalanceOf[address(arg1)].field_0 + arg2 >= lockedBalanceOf[address(arg1)].field_0
    lockedBalanceOf[address(msg.sender)].field_0 -= arg2
    lockedBalanceOf[address(arg1)].field_0 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not lockdown
    require lockedBalanceOf[address(arg1)].field_0 >= arg3
    require lockedBalanceOf[address(arg2)].field_0 + arg3 >= lockedBalanceOf[address(arg2)].field_0
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    lockedBalanceOf[address(arg1)].field_0 -= arg3
    lockedBalanceOf[address(arg2)].field_0 += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function claimGameReward(address arg1, uint256 arg2, uint256 arg3) {
    require not lockdown
    if creditGameAddress != msg.sender:
        return 1
    require ext_code.size(creditBondAddress)
    call creditBondAddress.0xa47905cd with:
         gas gas_remaining - 50 wei
        args arg2, arg3 + block.number
    require ext_call.success
    require ext_code.size(creditBondAddress)
    call creditBondAddress.0xea770a4c with:
         gas gas_remaining - 50 wei
        args arg2, arg3, ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 1
    totalSupply += ext_call.return_data[0]
    totalAvaliableSupply += ext_call.return_data[0]
    lockedBalanceOf[address(arg1)].field_0 += ext_call.return_data[0]
    emit Transfer(ext_call.return_data[0], 0, arg1);
    emit Mint(address(arg1), ext_call.return_data[0]);
    return 0
}

function claimBondReward() {
    require not lockdown
    if not lockedBalanceOf[address(msg.sender)].field_256:
        return 1
    if block.number - lockedBalanceOf[address(msg.sender)].field_1024 < 10:
        return 1
    require ext_code.size(creditBondAddress)
    call creditBondAddress.0xea770a4c with:
         gas gas_remaining - 50 wei
        args lockedBalanceOf[address(msg.sender)].field_256, block.number - lockedBalanceOf[address(msg.sender)].field_1024, lockedBalanceOf[address(msg.sender)].field_512
    require ext_call.success
    if not ext_call.return_data[0]:
        return 1
    if lockedBalanceOf[address(msg.sender)].field_768 >= block.number:
        lockedBalanceOf[address(msg.sender)].field_1024 = block.number
    else:
        lockedBalanceOf[address(msg.sender)].field_0 += lockedBalanceOf[address(msg.sender)].field_256
        totalAvaliableSupply += lockedBalanceOf[address(msg.sender)].field_256
        totalLockedSupply -= lockedBalanceOf[address(msg.sender)].field_256
        lockedBalanceOf[address(msg.sender)].field_512 = 0
        lockedBalanceOf[address(msg.sender)].field_768 = 0
        emit UnlockCredits(msg.sender, lockedBalanceOf[address(msg.sender)].field_256);
        lockedBalanceOf[address(msg.sender)].field_256 = 0
    totalSupply += ext_call.return_data[0]
    totalAvaliableSupply += ext_call.return_data[0]
    lockedBalanceOf[address(msg.sender)].field_0 += ext_call.return_data[0]
    emit Transfer(ext_call.return_data[0], 0, msg.sender);
    emit Mint(msg.sender, ext_call.return_data[0]);
    return 0
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require not lockdown
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = 0x8f4ffcb100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = this.address
    mem[ceil32(arg3.length) + 228] = 128
    mem[ceil32(arg3.length) + 260] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            if ext_code.size(arg1):
                call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                if ext_call.success:
                    return 1
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
            if ext_code.size(arg1):
                call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
                if ext_call.success:
                    return 1
    else:
        mem[ceil32(arg3.length) + 292] = mem[128]
        mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if ext_code.size(arg1):
            call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining - 50 wei
                args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
            if ext_call.success:
                return 1
    revert
}

function lockBalance(uint256 arg1, uint256 arg2) {
    require not lockdown
    require ext_code.size(creditBondAddress)
    if block.number + arg2 < lockedBalanceOf[address(msg.sender)].field_768:
        if lockedBalanceOf[address(msg.sender)].field_0 >= 100 * 10^6 * arg1:
            call creditBondAddress.0xa47905cd with:
                 gas gas_remaining - 50 wei
                args 100 * 10^6 * arg1, lockedBalanceOf[address(msg.sender)].field_768
            require ext_call.success
            require ext_call.return_data[0]
            require not lockdown
            if lockedBalanceOf[address(msg.sender)].field_256:
                if block.number - lockedBalanceOf[address(msg.sender)].field_1024 >= 10:
                    require ext_code.size(creditBondAddress)
                    call creditBondAddress.0xea770a4c with:
                         gas gas_remaining - 50 wei
                        args lockedBalanceOf[address(msg.sender)].field_256, block.number - lockedBalanceOf[address(msg.sender)].field_1024, lockedBalanceOf[address(msg.sender)].field_512
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if lockedBalanceOf[address(msg.sender)].field_768 >= block.number:
                            lockedBalanceOf[address(msg.sender)].field_1024 = block.number
                        else:
                            lockedBalanceOf[address(msg.sender)].field_0 += lockedBalanceOf[address(msg.sender)].field_256
                            totalAvaliableSupply += lockedBalanceOf[address(msg.sender)].field_256
                            totalLockedSupply -= lockedBalanceOf[address(msg.sender)].field_256
                            lockedBalanceOf[address(msg.sender)].field_512 = 0
                            lockedBalanceOf[address(msg.sender)].field_768 = 0
                            emit UnlockCredits(msg.sender, lockedBalanceOf[address(msg.sender)].field_256);
                            lockedBalanceOf[address(msg.sender)].field_256 = 0
                        totalSupply += ext_call.return_data[0]
                        totalAvaliableSupply += ext_call.return_data[0]
                        lockedBalanceOf[address(msg.sender)].field_0 += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], 0, msg.sender);
                        emit Mint(msg.sender, ext_call.return_data[0]);
            lockedBalanceOf[address(msg.sender)].field_0 += -100 * 10^6 * arg1
            lockedBalanceOf[address(msg.sender)].field_256 += 100 * 10^6 * arg1
            totalAvaliableSupply += -100 * 10^6 * arg1
            totalLockedSupply += 100 * 10^6 * arg1
        else:
            call creditBondAddress.0xa47905cd with:
                 gas gas_remaining - 50 wei
                args 100 * 10^6 * lockedBalanceOf[address(msg.sender)].field_0 / 100 * 10^6, lockedBalanceOf[address(msg.sender)].field_768
            require ext_call.success
            require ext_call.return_data[0]
            require not lockdown
            if lockedBalanceOf[address(msg.sender)].field_256:
                if block.number - lockedBalanceOf[address(msg.sender)].field_1024 >= 10:
                    require ext_code.size(creditBondAddress)
                    call creditBondAddress.0xea770a4c with:
                         gas gas_remaining - 50 wei
                        args lockedBalanceOf[address(msg.sender)].field_256, block.number - lockedBalanceOf[address(msg.sender)].field_1024, lockedBalanceOf[address(msg.sender)].field_512
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if lockedBalanceOf[address(msg.sender)].field_768 >= block.number:
                            lockedBalanceOf[address(msg.sender)].field_1024 = block.number
                        else:
                            lockedBalanceOf[address(msg.sender)].field_0 += lockedBalanceOf[address(msg.sender)].field_256
                            totalAvaliableSupply += lockedBalanceOf[address(msg.sender)].field_256
                            totalLockedSupply -= lockedBalanceOf[address(msg.sender)].field_256
                            lockedBalanceOf[address(msg.sender)].field_512 = 0
                            lockedBalanceOf[address(msg.sender)].field_768 = 0
                            emit UnlockCredits(msg.sender, lockedBalanceOf[address(msg.sender)].field_256);
                            lockedBalanceOf[address(msg.sender)].field_256 = 0
                        totalSupply += ext_call.return_data[0]
                        totalAvaliableSupply += ext_call.return_data[0]
                        lockedBalanceOf[address(msg.sender)].field_0 += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], 0, msg.sender);
                        emit Mint(msg.sender, ext_call.return_data[0]);
            lockedBalanceOf[address(msg.sender)].field_0 += -100 * 10^6 * lockedBalanceOf[address(msg.sender)].field_0 / 100 * 10^6
            lockedBalanceOf[address(msg.sender)].field_256 += 100 * 10^6 * lockedBalanceOf[address(msg.sender)].field_0 / 100 * 10^6
            totalAvaliableSupply += -100 * 10^6 * lockedBalanceOf[address(msg.sender)].field_0 / 100 * 10^6
            totalLockedSupply += 100 * 10^6 * lockedBalanceOf[address(msg.sender)].field_0 / 100 * 10^6
        lockedBalanceOf[address(msg.sender)].field_512 = ext_call.return_data[0]
    else:
        if lockedBalanceOf[address(msg.sender)].field_0 >= 100 * 10^6 * arg1:
            call creditBondAddress.0xa47905cd with:
                 gas gas_remaining - 50 wei
                args 100 * 10^6 * arg1, block.number + arg2
            require ext_call.success
            require ext_call.return_data[0]
            require not lockdown
            if lockedBalanceOf[address(msg.sender)].field_256:
                if block.number - lockedBalanceOf[address(msg.sender)].field_1024 >= 10:
                    require ext_code.size(creditBondAddress)
                    call creditBondAddress.0xea770a4c with:
                         gas gas_remaining - 50 wei
                        args lockedBalanceOf[address(msg.sender)].field_256, block.number - lockedBalanceOf[address(msg.sender)].field_1024, lockedBalanceOf[address(msg.sender)].field_512
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if lockedBalanceOf[address(msg.sender)].field_768 >= block.number:
                            lockedBalanceOf[address(msg.sender)].field_1024 = block.number
                        else:
                            lockedBalanceOf[address(msg.sender)].field_0 += lockedBalanceOf[address(msg.sender)].field_256
                            totalAvaliableSupply += lockedBalanceOf[address(msg.sender)].field_256
                            totalLockedSupply -= lockedBalanceOf[address(msg.sender)].field_256
                            lockedBalanceOf[address(msg.sender)].field_512 = 0
                            lockedBalanceOf[address(msg.sender)].field_768 = 0
                            emit UnlockCredits(msg.sender, lockedBalanceOf[address(msg.sender)].field_256);
                            lockedBalanceOf[address(msg.sender)].field_256 = 0
                        totalSupply += ext_call.return_data[0]
                        totalAvaliableSupply += ext_call.return_data[0]
                        lockedBalanceOf[address(msg.sender)].field_0 += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], 0, msg.sender);
                        emit Mint(msg.sender, ext_call.return_data[0]);
            lockedBalanceOf[address(msg.sender)].field_0 += -100 * 10^6 * arg1
            lockedBalanceOf[address(msg.sender)].field_256 += 100 * 10^6 * arg1
            totalAvaliableSupply += -100 * 10^6 * arg1
            totalLockedSupply += 100 * 10^6 * arg1
        else:
            call creditBondAddress.0xa47905cd with:
                 gas gas_remaining - 50 wei
                args 100 * 10^6 * lockedBalanceOf[address(msg.sender)].field_0 / 100 * 10^6, block.number + arg2
            require ext_call.success
            require ext_call.return_data[0]
            require not lockdown
            if lockedBalanceOf[address(msg.sender)].field_256:
                if block.number - lockedBalanceOf[address(msg.sender)].field_1024 >= 10:
                    require ext_code.size(creditBondAddress)
                    call creditBondAddress.0xea770a4c with:
                         gas gas_remaining - 50 wei
                        args lockedBalanceOf[address(msg.sender)].field_256, block.number - lockedBalanceOf[address(msg.sender)].field_1024, lockedBalanceOf[address(msg.sender)].field_512
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if lockedBalanceOf[address(msg.sender)].field_768 >= block.number:
                            lockedBalanceOf[address(msg.sender)].field_1024 = block.number
                        else:
                            lockedBalanceOf[address(msg.sender)].field_0 += lockedBalanceOf[address(msg.sender)].field_256
                            totalAvaliableSupply += lockedBalanceOf[address(msg.sender)].field_256
                            totalLockedSupply -= lockedBalanceOf[address(msg.sender)].field_256
                            lockedBalanceOf[address(msg.sender)].field_512 = 0
                            lockedBalanceOf[address(msg.sender)].field_768 = 0
                            emit UnlockCredits(msg.sender, lockedBalanceOf[address(msg.sender)].field_256);
                            lockedBalanceOf[address(msg.sender)].field_256 = 0
                        totalSupply += ext_call.return_data[0]
                        totalAvaliableSupply += ext_call.return_data[0]
                        lockedBalanceOf[address(msg.sender)].field_0 += ext_call.return_data[0]
                        emit Transfer(ext_call.return_data[0], 0, msg.sender);
                        emit Mint(msg.sender, ext_call.return_data[0]);
            lockedBalanceOf[address(msg.sender)].field_0 += -100 * 10^6 * lockedBalanceOf[address(msg.sender)].field_0 / 100 * 10^6
            lockedBalanceOf[address(msg.sender)].field_256 += 100 * 10^6 * lockedBalanceOf[address(msg.sender)].field_0 / 100 * 10^6
            totalAvaliableSupply += -100 * 10^6 * lockedBalanceOf[address(msg.sender)].field_0 / 100 * 10^6
            totalLockedSupply += 100 * 10^6 * lockedBalanceOf[address(msg.sender)].field_0 / 100 * 10^6
        lockedBalanceOf[address(msg.sender)].field_512 = ext_call.return_data[0]
        lockedBalanceOf[address(msg.sender)].field_768 = block.number + arg2
    lockedBalanceOf[address(msg.sender)].field_1024 = block.number
    return 0
}



}
