contract main {




// =====================  Runtime code  =====================


address staffContractAddress;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
big4608 stor12;
uint256 stor13;
uint256 stor14;
uint8 stor15;
uint8 stor15; offset 8
uint256 stor15; offset 8
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;

function getInvestorTokensPurchasesLength(address arg1) {
    return investorTokensPurchasesLength[address(arg1)].field_1536
}

function investors(address arg1) {
    require investorTokensPurchasesLength[arg1].field_0 <= 2
    return investorTokensPurchasesLength[arg1].field_0, 
           investorTokensPurchasesLength[arg1].field_256,
           investorTokensPurchasesLength[arg1].field_512,
           investorTokensPurchasesLength[arg1].field_768,
           investorTokensPurchasesLength[arg1].field_1024,
           investorTokensPurchasesLength[arg1].field_1280,
           bool(investorTokensPurchasesLength[arg1].field_1792)
}

function getInvestorTokensPurchase(address arg1, uint256 arg2) {
    require arg2 < investorTokensPurchasesLength[address(arg1)].field_1536
    require arg2 < investorTokensPurchasesLength[address(arg1)].field_1536
    require arg2 < investorTokensPurchasesLength[address(arg1)].field_1536
    require arg2 < investorTokensPurchasesLength[address(arg1)].field_1536
    require arg2 < investorTokensPurchasesLength[address(arg1)].field_1536
    return stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0, 
           stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_256,
           stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_512,
           stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_768,
           stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_1024
}

function staffContract() {
    return staffContractAddress
}

function _fallback() payable {
    revert
}

function getDistributedTokens() {
    require stor22 <= stor19
    require stor21 <= stor18
    require stor20 <= stor17
    require stor18 - stor21 >= 0
    require stor19 - stor22 >= 0
    return (stor17 - stor20 + stor18 - stor21 + stor19 - stor22)
}

function isBlockpassInvestor(address arg1) {
    require investorTokensPurchasesLength[address(arg1)].field_0 <= 2
    if investorTokensPurchasesLength[address(arg1)].field_0 != 1:
        return (investorTokensPurchasesLength[address(arg1)].field_0 == 1)
    return bool(investorTokensPurchasesLength[address(arg1)].field_1792)
}

function getInvestorClaimedTokens(address arg1) {
    if not stor1:
        return 0
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTokensForSaleCap() {
    if not stor1:
        return uint256(stor12)
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setTokenContract(address arg1) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require not stor1
    require arg1
    stor1 = arg1
}

function setEndDate(uint256 arg1) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    stor9 = arg1
    emit EndDateUpdated(arg1, block.timestamp, msg.sender);
}

function setMinPurchaseInWei(uint256 arg1) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    stor13 = arg1
    emit MinPurchaseChanged(arg1, block.timestamp, msg.sender);
}

function unlockBonusTokensClaim() {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    stor24 = block.timestamp
    emit BonusTokensClaimUnlocked(block.timestamp, msg.sender);
}

function resume() {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require uint8(stor15.field_0)
    uint8(stor15.field_0) = 0
    emit Resumed(block.timestamp, msg.sender);
}

function pause() {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require not uint8(stor15.field_0)
    uint8(stor15.field_0) = 1
    emit Paused(block.timestamp, msg.sender);
}

function setCrowdsaleStartDate(uint256 arg1) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    stor8 = arg1
    emit CrowdsaleStartDateUpdated(arg1, block.timestamp, msg.sender);
}

function unlockPurchasedTokensClaim() {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    stor23 = block.timestamp
    emit PurchasedTokensClaimUnlocked(block.timestamp, msg.sender);
}

function changeTokenRate(uint256 arg1) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1 > 0
    stor11 = arg1
    emit TokenRateChanged(arg1, block.timestamp, msg.sender);
}

function finalize() {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require not uint8(stor15.field_8)
    Mask(248, 0, stor15.field_8) = 1
    emit Finalized(block.timestamp, msg.sender);
}

function lockBonusTokensClaim(uint256 arg1) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1 > block.timestamp
    stor24 = arg1
    emit BonusTokensClaimLocked(arg1, block.timestamp, msg.sender);
}

function lockPurchasedTokensClaim(uint256 arg1) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1 > block.timestamp
    stor23 = arg1
    emit PurchasedTokensClaimLocked(arg1, block.timestamp, msg.sender);
}

function setMaxInvestorContributionInWei(uint256 arg1) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require stor13 <= arg1
    stor14 = arg1
    emit MaxInvestorContributionChanged(arg1, block.timestamp, msg.sender);
}

function getState() {
    if not stor1:
        return bool(uint8(stor15.field_0)), bool(uint8(stor15.field_8)) >> 256, 
               Mask(4608, 0, stor12),
               staffContractAddress,
               stor5,
               stor2,
               stor3,
               stor4,
               stor1
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(uint8(stor15.field_0)), bool(uint8(stor15.field_8)) >> 256, 
           ext_call.return_data[0] >> 4352,
           staffContractAddress,
           stor5,
           stor2,
           stor3,
           stor4,
           stor1
}

function blockInvestor(address arg1) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(staffContractAddress)
        call staffContractAddress.0xcb510e97 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require arg1
    require investorTokensPurchasesLength[address(arg1)].field_0 <= 2
    require investorTokensPurchasesLength[address(arg1)].field_0 != 2
    investorTokensPurchasesLength[address(arg1)].field_0 = 2
    emit InvestorBlocked(block.timestamp, msg.sender, arg1);
}

function whitelistInvestor(address arg1, bool arg2) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(staffContractAddress)
        call staffContractAddress.0xcb510e97 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require arg1
    require investorTokensPurchasesLength[address(arg1)].field_0 <= 2
    require investorTokensPurchasesLength[address(arg1)].field_0 != 1
    investorTokensPurchasesLength[address(arg1)].field_0 = 1
    investorTokensPurchasesLength[address(arg1)].field_1792 = uint8(arg2)
    emit InvestorWhitelisted(block.timestamp, msg.sender, arg1);
}

function fitsTokensForSaleCap(uint256 arg1) {
    if not stor1:
        if stor22 <= stor19:
            if stor21 <= stor18:
                if stor20 <= stor17:
                    if stor18 - stor21 >= 0:
                        if stor19 - stor22 >= 0:
                            if arg1 >= 0:
                                return stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + arg1 <= uint256(stor12)
    else:
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor22 <= stor19:
            if stor21 <= stor18:
                if stor20 <= stor17:
                    if stor18 - stor21 >= 0:
                        if stor19 - stor22 >= 0:
                            if arg1 >= 0:
                                return stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + arg1 <= ext_call.return_data[0]
    revert
}

function burnUnsoldTokens() {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require stor1
    require uint8(stor15.field_8)
    require stor22 <= stor19
    require stor21 <= stor18
    require stor20 <= stor17
    require stor18 - stor21 >= 0
    require stor19 - stor22 >= 0
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 <= ext_call.return_data[0]
    require ext_call.return_data[0] - stor17 + stor20 - stor18 + stor21 - stor19 + stor22 > 0
    require ext_code.size(stor1)
    call stor1.0x42966c68 with:
         gas gas_remaining wei
        args (ext_call.return_data[0] - stor17 + stor20 - stor18 + stor21 - stor19 + stor22)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokensBurned(ext_call.return_data[0] - stor17 + stor20 - stor18 + stor21 - stor19 + stor22, block.timestamp, msg.sender);
}

function bulkWhitelistInvestor(address[] arg1) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(staffContractAddress)
        call staffContractAddress.0xcb510e97 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    idx = 0
    while idx < arg1.length:
        if address(cd[((32 * idx) + arg1 + 36)]):
            require idx < arg1.length
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 25
            require investorTokensPurchasesLength[address(cd[((32 * idx) + arg1 + 36)])].field_0 <= 2
            if investorTokensPurchasesLength[address(cd[((32 * idx) + arg1 + 36)])].field_0 != 1:
                require idx < arg1.length
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 25
                investorTokensPurchasesLength[address(cd[((32 * idx) + arg1 + 36)])].field_0 = 1
                require idx < arg1.length
                mem[96] = block.timestamp
                mem[128] = msg.sender
                emit InvestorWhitelisted(block.timestamp, msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function sendTokens(address arg1, uint256 arg2) {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require investorTokensPurchasesLength[address(arg1)].field_0 <= 2
    require investorTokensPurchasesLength[address(arg1)].field_0 == 1
    require arg2 > 0
    if not stor1:
        require stor22 <= stor19
        require stor21 <= stor18
        require stor20 <= stor17
        require stor18 - stor21 >= 0
        require stor19 - stor22 >= 0
        require arg2 >= 0
        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + arg2 <= uint256(stor12)
    else:
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require stor22 <= stor19
        require stor21 <= stor18
        require stor20 <= stor17
        require stor18 - stor21 >= 0
        require stor19 - stor22 >= 0
        require arg2 >= 0
        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + arg2 <= ext_call.return_data[0]
    require stor19 + arg2 >= stor19
    stor19 += arg2
    require investorTokensPurchasesLength[address(arg1)].field_1280 + arg2 >= investorTokensPurchasesLength[address(arg1)].field_1280
    investorTokensPurchasesLength[address(arg1)].field_1280 += arg2
    emit TokensSent(arg2, block.timestamp, msg.sender, arg1);
}

function refundTokensPurchase(address arg1, uint256 arg2) payable {
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require msg.value > 0
    require arg2 < investorTokensPurchasesLength[address(arg1)].field_1536
    require stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0 == msg.value
    require arg2 < investorTokensPurchasesLength[address(arg1)].field_1536
    require arg2 < investorTokensPurchasesLength[address(arg1)].field_1536
    if stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_768:
        require stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 <= investorTokensPurchasesLength[stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_768].field_1024
        investorTokensPurchasesLength[stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_768].field_1024 -= stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_1024
        require stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 <= stor18
        stor18 -= stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_1024
    require stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0 <= investorTokensPurchasesLength[address(arg1)].field_256
    investorTokensPurchasesLength[address(arg1)].field_256 -= stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0
    require arg2 < investorTokensPurchasesLength[address(arg1)].field_1536
    require stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_256 <= investorTokensPurchasesLength[address(arg1)].field_512
    investorTokensPurchasesLength[address(arg1)].field_512 -= stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_256
    require arg2 < investorTokensPurchasesLength[address(arg1)].field_1536
    require stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_512 <= investorTokensPurchasesLength[address(arg1)].field_768
    investorTokensPurchasesLength[address(arg1)].field_768 -= stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_512
    require stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0 <= stor16
    stor16 -= stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0
    require stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_256 <= stor17
    stor17 -= stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_256
    require stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_512 <= stor18
    stor18 -= stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_512
    require arg2 < investorTokensPurchasesLength[address(arg1)].field_1536
    stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = 0
    stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0
    stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 0
    stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
    stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
    emit TokensPurchaseRefunded(stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0, stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_256, stor[(5 * arg2) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_512, block.timestamp, msg.sender, arg1, arg2);
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refundAllInvestorTokensPurchases(address arg1) payable {
    mem[64] = 96
    require ext_code.size(staffContractAddress)
    call staffContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require msg.value > 0
    require investorTokensPurchasesLength[address(arg1)].field_256 == msg.value
    idx = 0
    while idx < investorTokensPurchasesLength[address(arg1)].field_1536:
        require idx < investorTokensPurchasesLength[address(arg1)].field_1536
        if stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0:
            require idx < investorTokensPurchasesLength[address(arg1)].field_1536
            require idx < investorTokensPurchasesLength[address(arg1)].field_1536
            if stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_768:
                require stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 <= investorTokensPurchasesLength[stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_768].field_1024
                investorTokensPurchasesLength[stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_768].field_1024 -= stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_1024
                require stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 <= stor18
                stor18 -= stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_1024
            require stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0 <= investorTokensPurchasesLength[address(arg1)].field_256
            investorTokensPurchasesLength[address(arg1)].field_256 -= stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0
            require idx < investorTokensPurchasesLength[address(arg1)].field_1536
            require stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_256 <= investorTokensPurchasesLength[address(arg1)].field_512
            investorTokensPurchasesLength[address(arg1)].field_512 -= stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_256
            require idx < investorTokensPurchasesLength[address(arg1)].field_1536
            require stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_512 <= investorTokensPurchasesLength[address(arg1)].field_768
            investorTokensPurchasesLength[address(arg1)].field_768 -= stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_512
            require stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0 <= stor16
            stor16 -= stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0
            require stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_256 <= stor17
            stor17 -= stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_256
            require stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_512 <= stor18
            stor18 -= stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_512
            mem[32] = 25
            require idx < investorTokensPurchasesLength[address(arg1)].field_1536
            stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = 0
            stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0
            stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 0
            stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
            stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
            mem[mem[64]] = stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0
            mem[mem[64] + 32] = stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_256
            mem[mem[64] + 64] = stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_512
            mem[mem[64] + 96] = block.timestamp
            mem[mem[64] + 128] = msg.sender
            emit TokensPurchaseRefunded(stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_0, stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_256, stor[(5 * idx) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investorTokensPurchasesLength', 25)))].field_512, block.timestamp, msg.sender, arg1, idx);
        mem[0] = arg1
        mem[32] = 25
        idx = idx + 1
        continue 
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimTokens() {
    require stor1
    require not uint8(stor15.field_0)
    require investorTokensPurchasesLength[address(msg.sender)].field_0 <= 2
    require investorTokensPurchasesLength[address(msg.sender)].field_0 == 1
    if stor23 < block.timestamp:
        if investorTokensPurchasesLength[address(msg.sender)].field_512 > 0:
            investorTokensPurchasesLength[address(msg.sender)].field_256 = 0
            investorTokensPurchasesLength[address(msg.sender)].field_512 = 0
            investorTokensPurchasesLength[address(msg.sender)].field_1280 = 0
            require stor20 + investorTokensPurchasesLength[address(msg.sender)].field_512 >= stor20
            stor20 += investorTokensPurchasesLength[address(msg.sender)].field_512
            require stor22 + investorTokensPurchasesLength[address(msg.sender)].field_1280 >= stor22
            stor22 += investorTokensPurchasesLength[address(msg.sender)].field_1280
            investorTokensPurchasesLength[address(msg.sender)].field_1536 = 0
            idx = 0
            while 5 * investorTokensPurchasesLength[address(msg.sender)].field_1536 > idx:
                investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_0 = 0
                investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_256 = 0
                investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_512 = 0
                investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_768 = 0
                investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_1024 = 0
                idx = idx + 5
                continue 
            require investorTokensPurchasesLength[address(msg.sender)].field_512 + investorTokensPurchasesLength[address(msg.sender)].field_1280 >= investorTokensPurchasesLength[address(msg.sender)].field_512
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_512 + investorTokensPurchasesLength[address(msg.sender)].field_1280
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor24 >= block.timestamp:
                if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                    require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, 0, 0, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
            else:
                if investorTokensPurchasesLength[address(msg.sender)].field_768 > 0:
                    investorTokensPurchasesLength[address(msg.sender)].field_768 = 0
                    investorTokensPurchasesLength[address(msg.sender)].field_1024 = 0
                    require stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 >= stor21
                    require investorTokensPurchasesLength[address(msg.sender)].field_1024 >= 0
                    stor21 = stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                    require investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024 >= investorTokensPurchasesLength[address(msg.sender)].field_768
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                        if investorTokensPurchasesLength[address(msg.sender)].field_768 <= 0:
                            if investorTokensPurchasesLength[address(msg.sender)].field_1024 <= 0:
                                require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                    emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, investorTokensPurchasesLength[address(msg.sender)].field_768, investorTokensPurchasesLength[address(msg.sender)].field_1024, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
                else:
                    if investorTokensPurchasesLength[address(msg.sender)].field_1024 <= 0:
                        if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                            require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                        emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, 0, 0, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
                    else:
                        investorTokensPurchasesLength[address(msg.sender)].field_768 = 0
                        investorTokensPurchasesLength[address(msg.sender)].field_1024 = 0
                        require stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 >= stor21
                        require investorTokensPurchasesLength[address(msg.sender)].field_1024 >= 0
                        stor21 = stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                        require investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024 >= investorTokensPurchasesLength[address(msg.sender)].field_768
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                            if investorTokensPurchasesLength[address(msg.sender)].field_768 <= 0:
                                if investorTokensPurchasesLength[address(msg.sender)].field_1024 <= 0:
                                    require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                        emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, investorTokensPurchasesLength[address(msg.sender)].field_768, investorTokensPurchasesLength[address(msg.sender)].field_1024, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
        else:
            if investorTokensPurchasesLength[address(msg.sender)].field_1280 <= 0:
                require stor24 < block.timestamp
                if investorTokensPurchasesLength[address(msg.sender)].field_768 <= 0:
                    require investorTokensPurchasesLength[address(msg.sender)].field_1024 > 0
                investorTokensPurchasesLength[address(msg.sender)].field_768 = 0
                investorTokensPurchasesLength[address(msg.sender)].field_1024 = 0
                require stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 >= stor21
                require investorTokensPurchasesLength[address(msg.sender)].field_1024 >= 0
                stor21 = stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                require investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024 >= investorTokensPurchasesLength[address(msg.sender)].field_768
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if investorTokensPurchasesLength[address(msg.sender)].field_768 <= 0:
                    require investorTokensPurchasesLength[address(msg.sender)].field_1024 > 0
                emit TokensClaimed(0, investorTokensPurchasesLength[address(msg.sender)].field_768, investorTokensPurchasesLength[address(msg.sender)].field_1024, 0, block.timestamp, address(msg.sender), msg.sender);
            else:
                investorTokensPurchasesLength[address(msg.sender)].field_256 = 0
                investorTokensPurchasesLength[address(msg.sender)].field_512 = 0
                investorTokensPurchasesLength[address(msg.sender)].field_1280 = 0
                require stor20 + investorTokensPurchasesLength[address(msg.sender)].field_512 >= stor20
                stor20 += investorTokensPurchasesLength[address(msg.sender)].field_512
                require stor22 + investorTokensPurchasesLength[address(msg.sender)].field_1280 >= stor22
                stor22 += investorTokensPurchasesLength[address(msg.sender)].field_1280
                investorTokensPurchasesLength[address(msg.sender)].field_1536 = 0
                idx = 0
                while 5 * investorTokensPurchasesLength[address(msg.sender)].field_1536 > idx:
                    investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_0 = 0
                    investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_256 = 0
                    investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_512 = 0
                    investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_768 = 0
                    investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_1024 = 0
                    idx = idx + 5
                    continue 
                require investorTokensPurchasesLength[address(msg.sender)].field_512 + investorTokensPurchasesLength[address(msg.sender)].field_1280 >= investorTokensPurchasesLength[address(msg.sender)].field_512
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_512 + investorTokensPurchasesLength[address(msg.sender)].field_1280
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor24 >= block.timestamp:
                    if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                        require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                    emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, 0, 0, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
                else:
                    if investorTokensPurchasesLength[address(msg.sender)].field_768 > 0:
                        investorTokensPurchasesLength[address(msg.sender)].field_768 = 0
                        investorTokensPurchasesLength[address(msg.sender)].field_1024 = 0
                        require stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 >= stor21
                        require investorTokensPurchasesLength[address(msg.sender)].field_1024 >= 0
                        stor21 = stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                        require investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024 >= investorTokensPurchasesLength[address(msg.sender)].field_768
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                            if investorTokensPurchasesLength[address(msg.sender)].field_768 <= 0:
                                if investorTokensPurchasesLength[address(msg.sender)].field_1024 <= 0:
                                    require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                        emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, investorTokensPurchasesLength[address(msg.sender)].field_768, investorTokensPurchasesLength[address(msg.sender)].field_1024, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
                    else:
                        if investorTokensPurchasesLength[address(msg.sender)].field_1024 <= 0:
                            if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                                require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                            emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, 0, 0, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
                        else:
                            investorTokensPurchasesLength[address(msg.sender)].field_768 = 0
                            investorTokensPurchasesLength[address(msg.sender)].field_1024 = 0
                            require stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 >= stor21
                            require investorTokensPurchasesLength[address(msg.sender)].field_1024 >= 0
                            stor21 = stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                            require investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024 >= investorTokensPurchasesLength[address(msg.sender)].field_768
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                                if investorTokensPurchasesLength[address(msg.sender)].field_768 <= 0:
                                    if investorTokensPurchasesLength[address(msg.sender)].field_1024 <= 0:
                                        require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                            emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, investorTokensPurchasesLength[address(msg.sender)].field_768, investorTokensPurchasesLength[address(msg.sender)].field_1024, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
    else:
        require stor24 < block.timestamp
        if stor23 >= block.timestamp:
            require stor24 < block.timestamp
            if investorTokensPurchasesLength[address(msg.sender)].field_768 <= 0:
                require investorTokensPurchasesLength[address(msg.sender)].field_1024 > 0
            investorTokensPurchasesLength[address(msg.sender)].field_768 = 0
            investorTokensPurchasesLength[address(msg.sender)].field_1024 = 0
            require stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 >= stor21
            require investorTokensPurchasesLength[address(msg.sender)].field_1024 >= 0
            stor21 = stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
            require investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024 >= investorTokensPurchasesLength[address(msg.sender)].field_768
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if investorTokensPurchasesLength[address(msg.sender)].field_768 <= 0:
                require investorTokensPurchasesLength[address(msg.sender)].field_1024 > 0
            emit TokensClaimed(0, investorTokensPurchasesLength[address(msg.sender)].field_768, investorTokensPurchasesLength[address(msg.sender)].field_1024, 0, block.timestamp, address(msg.sender), msg.sender);
        else:
            if investorTokensPurchasesLength[address(msg.sender)].field_512 > 0:
                investorTokensPurchasesLength[address(msg.sender)].field_256 = 0
                investorTokensPurchasesLength[address(msg.sender)].field_512 = 0
                investorTokensPurchasesLength[address(msg.sender)].field_1280 = 0
                require stor20 + investorTokensPurchasesLength[address(msg.sender)].field_512 >= stor20
                stor20 += investorTokensPurchasesLength[address(msg.sender)].field_512
                require stor22 + investorTokensPurchasesLength[address(msg.sender)].field_1280 >= stor22
                stor22 += investorTokensPurchasesLength[address(msg.sender)].field_1280
                investorTokensPurchasesLength[address(msg.sender)].field_1536 = 0
                idx = 0
                while 5 * investorTokensPurchasesLength[address(msg.sender)].field_1536 > idx:
                    investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_0 = 0
                    investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_256 = 0
                    investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_512 = 0
                    investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_768 = 0
                    investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_1024 = 0
                    idx = idx + 5
                    continue 
                require investorTokensPurchasesLength[address(msg.sender)].field_512 + investorTokensPurchasesLength[address(msg.sender)].field_1280 >= investorTokensPurchasesLength[address(msg.sender)].field_512
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_512 + investorTokensPurchasesLength[address(msg.sender)].field_1280
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor24 >= block.timestamp:
                    if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                        require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                    emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, 0, 0, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
                else:
                    if investorTokensPurchasesLength[address(msg.sender)].field_768 > 0:
                        investorTokensPurchasesLength[address(msg.sender)].field_768 = 0
                        investorTokensPurchasesLength[address(msg.sender)].field_1024 = 0
                        require stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 >= stor21
                        require investorTokensPurchasesLength[address(msg.sender)].field_1024 >= 0
                        stor21 = stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                        require investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024 >= investorTokensPurchasesLength[address(msg.sender)].field_768
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                            if investorTokensPurchasesLength[address(msg.sender)].field_768 <= 0:
                                if investorTokensPurchasesLength[address(msg.sender)].field_1024 <= 0:
                                    require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                        emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, investorTokensPurchasesLength[address(msg.sender)].field_768, investorTokensPurchasesLength[address(msg.sender)].field_1024, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
                    else:
                        if investorTokensPurchasesLength[address(msg.sender)].field_1024 <= 0:
                            if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                                require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                            emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, 0, 0, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
                        else:
                            investorTokensPurchasesLength[address(msg.sender)].field_768 = 0
                            investorTokensPurchasesLength[address(msg.sender)].field_1024 = 0
                            require stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 >= stor21
                            require investorTokensPurchasesLength[address(msg.sender)].field_1024 >= 0
                            stor21 = stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                            require investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024 >= investorTokensPurchasesLength[address(msg.sender)].field_768
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                                if investorTokensPurchasesLength[address(msg.sender)].field_768 <= 0:
                                    if investorTokensPurchasesLength[address(msg.sender)].field_1024 <= 0:
                                        require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                            emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, investorTokensPurchasesLength[address(msg.sender)].field_768, investorTokensPurchasesLength[address(msg.sender)].field_1024, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
            else:
                if investorTokensPurchasesLength[address(msg.sender)].field_1280 <= 0:
                    require stor24 < block.timestamp
                    if investorTokensPurchasesLength[address(msg.sender)].field_768 <= 0:
                        require investorTokensPurchasesLength[address(msg.sender)].field_1024 > 0
                    investorTokensPurchasesLength[address(msg.sender)].field_768 = 0
                    investorTokensPurchasesLength[address(msg.sender)].field_1024 = 0
                    require stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 >= stor21
                    require investorTokensPurchasesLength[address(msg.sender)].field_1024 >= 0
                    stor21 = stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                    require investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024 >= investorTokensPurchasesLength[address(msg.sender)].field_768
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if investorTokensPurchasesLength[address(msg.sender)].field_768 <= 0:
                        require investorTokensPurchasesLength[address(msg.sender)].field_1024 > 0
                    emit TokensClaimed(0, investorTokensPurchasesLength[address(msg.sender)].field_768, investorTokensPurchasesLength[address(msg.sender)].field_1024, 0, block.timestamp, address(msg.sender), msg.sender);
                else:
                    investorTokensPurchasesLength[address(msg.sender)].field_256 = 0
                    investorTokensPurchasesLength[address(msg.sender)].field_512 = 0
                    investorTokensPurchasesLength[address(msg.sender)].field_1280 = 0
                    require stor20 + investorTokensPurchasesLength[address(msg.sender)].field_512 >= stor20
                    stor20 += investorTokensPurchasesLength[address(msg.sender)].field_512
                    require stor22 + investorTokensPurchasesLength[address(msg.sender)].field_1280 >= stor22
                    stor22 += investorTokensPurchasesLength[address(msg.sender)].field_1280
                    investorTokensPurchasesLength[address(msg.sender)].field_1536 = 0
                    idx = 0
                    while 5 * investorTokensPurchasesLength[address(msg.sender)].field_1536 > idx:
                        investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_0 = 0
                        investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_256 = 0
                        investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_512 = 0
                        investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_768 = 0
                        investorTokensPurchasesLength[address(msg.sender)][idx + 6].field_1024 = 0
                        idx = idx + 5
                        continue 
                    require investorTokensPurchasesLength[address(msg.sender)].field_512 + investorTokensPurchasesLength[address(msg.sender)].field_1280 >= investorTokensPurchasesLength[address(msg.sender)].field_512
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_512 + investorTokensPurchasesLength[address(msg.sender)].field_1280
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor24 >= block.timestamp:
                        if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                            require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                        emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, 0, 0, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
                    else:
                        if investorTokensPurchasesLength[address(msg.sender)].field_768 > 0:
                            investorTokensPurchasesLength[address(msg.sender)].field_768 = 0
                            investorTokensPurchasesLength[address(msg.sender)].field_1024 = 0
                            require stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 >= stor21
                            require investorTokensPurchasesLength[address(msg.sender)].field_1024 >= 0
                            stor21 = stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                            require investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024 >= investorTokensPurchasesLength[address(msg.sender)].field_768
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                                if investorTokensPurchasesLength[address(msg.sender)].field_768 <= 0:
                                    if investorTokensPurchasesLength[address(msg.sender)].field_1024 <= 0:
                                        require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                            emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, investorTokensPurchasesLength[address(msg.sender)].field_768, investorTokensPurchasesLength[address(msg.sender)].field_1024, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
                        else:
                            if investorTokensPurchasesLength[address(msg.sender)].field_1024 <= 0:
                                if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                                    require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                                emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, 0, 0, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
                            else:
                                investorTokensPurchasesLength[address(msg.sender)].field_768 = 0
                                investorTokensPurchasesLength[address(msg.sender)].field_1024 = 0
                                require stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 >= stor21
                                require investorTokensPurchasesLength[address(msg.sender)].field_1024 >= 0
                                stor21 = stor21 + investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                                require investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024 >= investorTokensPurchasesLength[address(msg.sender)].field_768
                                require ext_code.size(stor1)
                                call stor1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_768 + investorTokensPurchasesLength[address(msg.sender)].field_1024
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if investorTokensPurchasesLength[address(msg.sender)].field_512 <= 0:
                                    if investorTokensPurchasesLength[address(msg.sender)].field_768 <= 0:
                                        if investorTokensPurchasesLength[address(msg.sender)].field_1024 <= 0:
                                            require investorTokensPurchasesLength[address(msg.sender)].field_1280 > 0
                                emit TokensClaimed(investorTokensPurchasesLength[address(msg.sender)].field_512, investorTokensPurchasesLength[address(msg.sender)].field_768, investorTokensPurchasesLength[address(msg.sender)].field_1024, investorTokensPurchasesLength[address(msg.sender)].field_1280, block.timestamp, address(msg.sender), msg.sender);
}

function buyTokens(bytes32 arg1, address arg2) payable {
    require not uint8(stor15.field_8)
    require not uint8(stor15.field_0)
    require stor7 < block.timestamp
    require investorTokensPurchasesLength[address(msg.sender)].field_0 <= 2
    require investorTokensPurchasesLength[address(msg.sender)].field_0 == 1
    require msg.value > 0
    require msg.value >= stor13
    require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
    require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value <= stor14
    if stor10 <= 18:
        if stor10 >= 18:
            if not msg.value:
                require ext_code.size(stor2)
                call stor2.0x7f60bb7c with:
                     gas gas_remaining wei
                    args msg.sender, 0, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3)
                call stor3.0x81807a07 with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                call stor4.0x79544754 with:
                     gas gas_remaining wei
                    args msg.sender, 0, msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_call.return_data[0] >= 0
                if not arg2:
                    require 3 * ext_call.return_data[0] >= 0
                    if not stor1:
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require 3 * ext_call.return_data[0] >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= uint256(stor12)
                    else:
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require 3 * ext_call.return_data[0] >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                    require stor16 + msg.value >= stor16
                    stor16 += msg.value
                    require stor17 >= stor17
                    require stor18 + (3 * ext_call.return_data[0]) >= stor18
                    stor18 += 3 * ext_call.return_data[0]
                    require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                    require investorTokensPurchasesLength[address(msg.sender)].field_512 >= investorTokensPurchasesLength[address(msg.sender)].field_512
                    require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                    investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                    require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                    investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                    investorTokensPurchasesLength[address(msg.sender)].field_1536++
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                    emit TokensPurchased(msg.value, 0, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                else:
                    if msg.sender == arg2:
                        require 3 * ext_call.return_data[0] >= 0
                        if not stor1:
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require 3 * ext_call.return_data[0] >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= uint256(stor12)
                        else:
                            require ext_code.size(stor1)
                            call stor1.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require 3 * ext_call.return_data[0] >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                        require stor16 + msg.value >= stor16
                        stor16 += msg.value
                        require stor17 >= stor17
                        require stor18 + (3 * ext_call.return_data[0]) >= stor18
                        stor18 += 3 * ext_call.return_data[0]
                        require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                        require investorTokensPurchasesLength[address(msg.sender)].field_512 >= investorTokensPurchasesLength[address(msg.sender)].field_512
                        require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                        investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                        require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                        investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                        investorTokensPurchasesLength[address(msg.sender)].field_1536++
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                        emit TokensPurchased(msg.value, 0, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                    else:
                        require investorTokensPurchasesLength[address(arg2)].field_0 <= 2
                        require 3 * ext_call.return_data[0] >= 0
                        if not stor1:
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require 3 * ext_call.return_data[0] >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= uint256(stor12)
                        else:
                            require ext_code.size(stor1)
                            call stor1.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require 3 * ext_call.return_data[0] >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                        require stor16 + msg.value >= stor16
                        stor16 += msg.value
                        require stor17 >= stor17
                        require stor18 + (3 * ext_call.return_data[0]) >= stor18
                        stor18 += 3 * ext_call.return_data[0]
                        if investorTokensPurchasesLength[address(arg2)].field_0 == 1:
                            require investorTokensPurchasesLength[address(arg2)].field_1024 >= investorTokensPurchasesLength[address(arg2)].field_1024
                            require investorTokensPurchasesLength[address(msg.sender)].field_512 >= investorTokensPurchasesLength[address(msg.sender)].field_512
                            require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                            investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                            investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                            investorTokensPurchasesLength[address(msg.sender)].field_1536++
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = arg2
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                            emit TokensPurchased(msg.value, 0, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, arg2);
                        else:
                            require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                            require investorTokensPurchasesLength[address(msg.sender)].field_512 >= investorTokensPurchasesLength[address(msg.sender)].field_512
                            require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                            investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                            investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                            investorTokensPurchasesLength[address(msg.sender)].field_1536++
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                            emit TokensPurchased(msg.value, 0, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
            else:
                require msg.value
                require msg.value * stor11 / msg.value == stor11
                require ext_code.size(stor2)
                call stor2.0x7f60bb7c with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * stor11, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3)
                call stor3.0x81807a07 with:
                     gas gas_remaining wei
                    args (msg.value * stor11)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                call stor4.0x79544754 with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * stor11, msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_call.return_data[0] >= 0
                if not arg2:
                    require (msg.value * stor11) + (3 * ext_call.return_data[0]) >= msg.value * stor11
                    if not stor1:
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require (msg.value * stor11) + (3 * ext_call.return_data[0]) >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11) + (3 * ext_call.return_data[0]) <= uint256(stor12)
                    else:
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require (msg.value * stor11) + (3 * ext_call.return_data[0]) >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11) + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                    require stor16 + msg.value >= stor16
                    stor16 += msg.value
                    require stor17 + (msg.value * stor11) >= stor17
                    stor17 += msg.value * stor11
                    require stor18 + (3 * ext_call.return_data[0]) >= stor18
                    stor18 += 3 * ext_call.return_data[0]
                    require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                    require investorTokensPurchasesLength[address(msg.sender)].field_512 + (msg.value * stor11) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                    investorTokensPurchasesLength[address(msg.sender)].field_512 += msg.value * stor11
                    require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                    investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                    require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                    investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                    investorTokensPurchasesLength[address(msg.sender)].field_1536++
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = msg.value * stor11
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                    emit TokensPurchased(msg.value, msg.value * stor11, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                else:
                    if msg.sender == arg2:
                        require (msg.value * stor11) + (3 * ext_call.return_data[0]) >= msg.value * stor11
                        if not stor1:
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require (msg.value * stor11) + (3 * ext_call.return_data[0]) >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11) + (3 * ext_call.return_data[0]) <= uint256(stor12)
                        else:
                            require ext_code.size(stor1)
                            call stor1.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require (msg.value * stor11) + (3 * ext_call.return_data[0]) >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11) + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                        require stor16 + msg.value >= stor16
                        stor16 += msg.value
                        require stor17 + (msg.value * stor11) >= stor17
                        stor17 += msg.value * stor11
                        require stor18 + (3 * ext_call.return_data[0]) >= stor18
                        stor18 += 3 * ext_call.return_data[0]
                        require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                        require investorTokensPurchasesLength[address(msg.sender)].field_512 + (msg.value * stor11) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                        investorTokensPurchasesLength[address(msg.sender)].field_512 += msg.value * stor11
                        require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                        investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                        require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                        investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                        investorTokensPurchasesLength[address(msg.sender)].field_1536++
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = msg.value * stor11
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                        emit TokensPurchased(msg.value, msg.value * stor11, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                    else:
                        require investorTokensPurchasesLength[address(arg2)].field_0 <= 2
                        require (msg.value * stor11) + (3 * ext_call.return_data[0]) >= msg.value * stor11
                        if investorTokensPurchasesLength[address(arg2)].field_0 != 1:
                            if not stor1:
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (msg.value * stor11) + (3 * ext_call.return_data[0]) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11) + (3 * ext_call.return_data[0]) <= uint256(stor12)
                            else:
                                require ext_code.size(stor1)
                                call stor1.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (msg.value * stor11) + (3 * ext_call.return_data[0]) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11) + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                            require stor16 + msg.value >= stor16
                            stor16 += msg.value
                            require stor17 + (msg.value * stor11) >= stor17
                            stor17 += msg.value * stor11
                            require stor18 + (3 * ext_call.return_data[0]) >= stor18
                            stor18 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                            require investorTokensPurchasesLength[address(msg.sender)].field_512 + (msg.value * stor11) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                            investorTokensPurchasesLength[address(msg.sender)].field_512 += msg.value * stor11
                            require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                            investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                            investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                            investorTokensPurchasesLength[address(msg.sender)].field_1536++
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = msg.value * stor11
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                            emit TokensPurchased(msg.value, msg.value * stor11, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                        else:
                            require msg.value * stor11 * stor6 / 100 >= 0
                            if not stor1:
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (msg.value * stor11) + (3 * ext_call.return_data[0]) + (msg.value * stor11 * stor6 / 100) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11) + (3 * ext_call.return_data[0]) + (msg.value * stor11 * stor6 / 100) <= uint256(stor12)
                            else:
                                require ext_code.size(stor1)
                                call stor1.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (msg.value * stor11) + (3 * ext_call.return_data[0]) + (msg.value * stor11 * stor6 / 100) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11) + (3 * ext_call.return_data[0]) + (msg.value * stor11 * stor6 / 100) <= ext_call.return_data[0]
                            require stor16 + msg.value >= stor16
                            stor16 += msg.value
                            require stor17 + (msg.value * stor11) >= stor17
                            stor17 += msg.value * stor11
                            require stor18 + (3 * ext_call.return_data[0]) >= stor18
                            require msg.value * stor11 * stor6 / 100 >= 0
                            stor18 = stor18 + (3 * ext_call.return_data[0]) + (msg.value * stor11 * stor6 / 100)
                            require investorTokensPurchasesLength[address(arg2)].field_1024 + (msg.value * stor11 * stor6 / 100) >= investorTokensPurchasesLength[address(arg2)].field_1024
                            investorTokensPurchasesLength[address(arg2)].field_1024 += msg.value * stor11 * stor6 / 100
                            require investorTokensPurchasesLength[address(msg.sender)].field_512 + (msg.value * stor11) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                            investorTokensPurchasesLength[address(msg.sender)].field_512 += msg.value * stor11
                            require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                            investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                            investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                            investorTokensPurchasesLength[address(msg.sender)].field_1536++
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = msg.value * stor11
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = arg2
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = msg.value * stor11 * stor6 / 100
                            emit TokensPurchased(msg.value, msg.value * stor11, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], msg.value * stor11 * stor6 / 100, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, arg2);
        else:
            if not msg.value:
                require 10^(-stor10 + 18)
                require ext_code.size(stor2)
                call stor2.0x7f60bb7c with:
                     gas gas_remaining wei
                    args msg.sender, 0 / 10^(-stor10 + 18), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3)
                call stor3.0x81807a07 with:
                     gas gas_remaining wei
                    args (0 / 10^(-stor10 + 18))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                call stor4.0x79544754 with:
                     gas gas_remaining wei
                    args msg.sender, 0 / 10^(-stor10 + 18), msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_call.return_data[0] >= 0
                if not arg2:
                    require (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= 0 / 10^(-stor10 + 18)
                    if not stor1:
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) <= uint256(stor12)
                    else:
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                    require stor16 + msg.value >= stor16
                    stor16 += msg.value
                    require stor17 + (0 / 10^(-stor10 + 18)) >= stor17
                    stor17 += 0 / 10^(-stor10 + 18)
                    require stor18 + (3 * ext_call.return_data[0]) >= stor18
                    stor18 += 3 * ext_call.return_data[0]
                    require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                    require investorTokensPurchasesLength[address(msg.sender)].field_512 + (0 / 10^(-stor10 + 18)) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                    investorTokensPurchasesLength[address(msg.sender)].field_512 += 0 / 10^(-stor10 + 18)
                    require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                    investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                    require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                    investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                    investorTokensPurchasesLength[address(msg.sender)].field_1536++
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0 / 10^(-stor10 + 18)
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                    emit TokensPurchased(msg.value, 0 / 10^(-stor10 + 18), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                else:
                    if msg.sender == arg2:
                        require (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= 0 / 10^(-stor10 + 18)
                        if not stor1:
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) <= uint256(stor12)
                        else:
                            require ext_code.size(stor1)
                            call stor1.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                        require stor16 + msg.value >= stor16
                        stor16 += msg.value
                        require stor17 + (0 / 10^(-stor10 + 18)) >= stor17
                        stor17 += 0 / 10^(-stor10 + 18)
                        require stor18 + (3 * ext_call.return_data[0]) >= stor18
                        stor18 += 3 * ext_call.return_data[0]
                        require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                        require investorTokensPurchasesLength[address(msg.sender)].field_512 + (0 / 10^(-stor10 + 18)) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                        investorTokensPurchasesLength[address(msg.sender)].field_512 += 0 / 10^(-stor10 + 18)
                        require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                        investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                        require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                        investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                        investorTokensPurchasesLength[address(msg.sender)].field_1536++
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0 / 10^(-stor10 + 18)
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                        emit TokensPurchased(msg.value, 0 / 10^(-stor10 + 18), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                    else:
                        require investorTokensPurchasesLength[address(arg2)].field_0 <= 2
                        require (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= 0 / 10^(-stor10 + 18)
                        if investorTokensPurchasesLength[address(arg2)].field_0 != 1:
                            if not stor1:
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) <= uint256(stor12)
                            else:
                                require ext_code.size(stor1)
                                call stor1.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                            require stor16 + msg.value >= stor16
                            stor16 += msg.value
                            require stor17 + (0 / 10^(-stor10 + 18)) >= stor17
                            stor17 += 0 / 10^(-stor10 + 18)
                            require stor18 + (3 * ext_call.return_data[0]) >= stor18
                            stor18 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                            require investorTokensPurchasesLength[address(msg.sender)].field_512 + (0 / 10^(-stor10 + 18)) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                            investorTokensPurchasesLength[address(msg.sender)].field_512 += 0 / 10^(-stor10 + 18)
                            require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                            investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                            investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                            investorTokensPurchasesLength[address(msg.sender)].field_1536++
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0 / 10^(-stor10 + 18)
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                            emit TokensPurchased(msg.value, 0 / 10^(-stor10 + 18), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                        else:
                            require 0 / 10^(-stor10 + 18) * stor6 / 100 >= 0
                            if not stor1:
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) + (0 / 10^(-stor10 + 18) * stor6 / 100) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) + (0 / 10^(-stor10 + 18) * stor6 / 100) <= uint256(stor12)
                            else:
                                require ext_code.size(stor1)
                                call stor1.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) + (0 / 10^(-stor10 + 18) * stor6 / 100) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (0 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) + (0 / 10^(-stor10 + 18) * stor6 / 100) <= ext_call.return_data[0]
                            require stor16 + msg.value >= stor16
                            stor16 += msg.value
                            require stor17 + (0 / 10^(-stor10 + 18)) >= stor17
                            stor17 += 0 / 10^(-stor10 + 18)
                            require stor18 + (3 * ext_call.return_data[0]) >= stor18
                            require 0 / 10^(-stor10 + 18) * stor6 / 100 >= 0
                            stor18 = stor18 + (3 * ext_call.return_data[0]) + (0 / 10^(-stor10 + 18) * stor6 / 100)
                            require investorTokensPurchasesLength[address(arg2)].field_1024 + (0 / 10^(-stor10 + 18) * stor6 / 100) >= investorTokensPurchasesLength[address(arg2)].field_1024
                            investorTokensPurchasesLength[address(arg2)].field_1024 += 0 / 10^(-stor10 + 18) * stor6 / 100
                            require investorTokensPurchasesLength[address(msg.sender)].field_512 + (0 / 10^(-stor10 + 18)) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                            investorTokensPurchasesLength[address(msg.sender)].field_512 += 0 / 10^(-stor10 + 18)
                            require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                            investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                            investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                            investorTokensPurchasesLength[address(msg.sender)].field_1536++
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0 / 10^(-stor10 + 18)
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = arg2
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0 / 10^(-stor10 + 18) * stor6 / 100
                            emit TokensPurchased(msg.value, 0 / 10^(-stor10 + 18), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0 / 10^(-stor10 + 18) * stor6 / 100, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, arg2);
            else:
                require msg.value
                require msg.value * stor11 / msg.value == stor11
                require 10^(-stor10 + 18)
                require ext_code.size(stor2)
                call stor2.0x7f60bb7c with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * stor11 / 10^(-stor10 + 18), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3)
                call stor3.0x81807a07 with:
                     gas gas_remaining wei
                    args (msg.value * stor11 / 10^(-stor10 + 18))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                call stor4.0x79544754 with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * stor11 / 10^(-stor10 + 18), msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_call.return_data[0] >= 0
                if not arg2:
                    require (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= msg.value * stor11 / 10^(-stor10 + 18)
                    if not stor1:
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) <= uint256(stor12)
                    else:
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                    require stor16 + msg.value >= stor16
                    stor16 += msg.value
                    require stor17 + (msg.value * stor11 / 10^(-stor10 + 18)) >= stor17
                    stor17 += msg.value * stor11 / 10^(-stor10 + 18)
                    require stor18 + (3 * ext_call.return_data[0]) >= stor18
                    stor18 += 3 * ext_call.return_data[0]
                    require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                    require investorTokensPurchasesLength[address(msg.sender)].field_512 + (msg.value * stor11 / 10^(-stor10 + 18)) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                    investorTokensPurchasesLength[address(msg.sender)].field_512 += msg.value * stor11 / 10^(-stor10 + 18)
                    require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                    investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                    require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                    investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                    investorTokensPurchasesLength[address(msg.sender)].field_1536++
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = msg.value * stor11 / 10^(-stor10 + 18)
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                    emit TokensPurchased(msg.value, msg.value * stor11 / 10^(-stor10 + 18), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                else:
                    if msg.sender == arg2:
                        require (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= msg.value * stor11 / 10^(-stor10 + 18)
                        if not stor1:
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) <= uint256(stor12)
                        else:
                            require ext_code.size(stor1)
                            call stor1.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                        require stor16 + msg.value >= stor16
                        stor16 += msg.value
                        require stor17 + (msg.value * stor11 / 10^(-stor10 + 18)) >= stor17
                        stor17 += msg.value * stor11 / 10^(-stor10 + 18)
                        require stor18 + (3 * ext_call.return_data[0]) >= stor18
                        stor18 += 3 * ext_call.return_data[0]
                        require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                        require investorTokensPurchasesLength[address(msg.sender)].field_512 + (msg.value * stor11 / 10^(-stor10 + 18)) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                        investorTokensPurchasesLength[address(msg.sender)].field_512 += msg.value * stor11 / 10^(-stor10 + 18)
                        require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                        investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                        require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                        investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                        investorTokensPurchasesLength[address(msg.sender)].field_1536++
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = msg.value * stor11 / 10^(-stor10 + 18)
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                        emit TokensPurchased(msg.value, msg.value * stor11 / 10^(-stor10 + 18), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                    else:
                        require investorTokensPurchasesLength[address(arg2)].field_0 <= 2
                        require (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= msg.value * stor11 / 10^(-stor10 + 18)
                        if investorTokensPurchasesLength[address(arg2)].field_0 != 1:
                            if not stor1:
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) <= uint256(stor12)
                            else:
                                require ext_code.size(stor1)
                                call stor1.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                            require stor16 + msg.value >= stor16
                            stor16 += msg.value
                            require stor17 + (msg.value * stor11 / 10^(-stor10 + 18)) >= stor17
                            stor17 += msg.value * stor11 / 10^(-stor10 + 18)
                            require stor18 + (3 * ext_call.return_data[0]) >= stor18
                            stor18 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                            require investorTokensPurchasesLength[address(msg.sender)].field_512 + (msg.value * stor11 / 10^(-stor10 + 18)) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                            investorTokensPurchasesLength[address(msg.sender)].field_512 += msg.value * stor11 / 10^(-stor10 + 18)
                            require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                            investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                            investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                            investorTokensPurchasesLength[address(msg.sender)].field_1536++
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = msg.value * stor11 / 10^(-stor10 + 18)
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                            emit TokensPurchased(msg.value, msg.value * stor11 / 10^(-stor10 + 18), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                        else:
                            require msg.value * stor11 / 10^(-stor10 + 18) * stor6 / 100 >= 0
                            if not stor1:
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) + (msg.value * stor11 / 10^(-stor10 + 18) * stor6 / 100) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) + (msg.value * stor11 / 10^(-stor10 + 18) * stor6 / 100) <= uint256(stor12)
                            else:
                                require ext_code.size(stor1)
                                call stor1.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) + (msg.value * stor11 / 10^(-stor10 + 18) * stor6 / 100) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 / 10^(-stor10 + 18)) + (3 * ext_call.return_data[0]) + (msg.value * stor11 / 10^(-stor10 + 18) * stor6 / 100) <= ext_call.return_data[0]
                            require stor16 + msg.value >= stor16
                            stor16 += msg.value
                            require stor17 + (msg.value * stor11 / 10^(-stor10 + 18)) >= stor17
                            stor17 += msg.value * stor11 / 10^(-stor10 + 18)
                            require stor18 + (3 * ext_call.return_data[0]) >= stor18
                            require msg.value * stor11 / 10^(-stor10 + 18) * stor6 / 100 >= 0
                            stor18 = stor18 + (3 * ext_call.return_data[0]) + (msg.value * stor11 / 10^(-stor10 + 18) * stor6 / 100)
                            require investorTokensPurchasesLength[address(arg2)].field_1024 + (msg.value * stor11 / 10^(-stor10 + 18) * stor6 / 100) >= investorTokensPurchasesLength[address(arg2)].field_1024
                            investorTokensPurchasesLength[address(arg2)].field_1024 += msg.value * stor11 / 10^(-stor10 + 18) * stor6 / 100
                            require investorTokensPurchasesLength[address(msg.sender)].field_512 + (msg.value * stor11 / 10^(-stor10 + 18)) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                            investorTokensPurchasesLength[address(msg.sender)].field_512 += msg.value * stor11 / 10^(-stor10 + 18)
                            require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                            investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                            investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                            investorTokensPurchasesLength[address(msg.sender)].field_1536++
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = msg.value * stor11 / 10^(-stor10 + 18)
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = arg2
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = msg.value * stor11 / 10^(-stor10 + 18) * stor6 / 100
                            emit TokensPurchased(msg.value, msg.value * stor11 / 10^(-stor10 + 18), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], msg.value * stor11 / 10^(-stor10 + 18) * stor6 / 100, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, arg2);
    else:
        if not msg.value:
            require ext_code.size(stor2)
            call stor2.0x7f60bb7c with:
                 gas gas_remaining wei
                args msg.sender, 0, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor3)
            call stor3.0x81807a07 with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            call stor4.0x79544754 with:
                 gas gas_remaining wei
                args msg.sender, 0, msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_call.return_data[0] >= 0
            if not arg2:
                require 3 * ext_call.return_data[0] >= 0
                if not stor1:
                    require stor22 <= stor19
                    require stor21 <= stor18
                    require stor20 <= stor17
                    require stor18 - stor21 >= 0
                    require stor19 - stor22 >= 0
                    require 3 * ext_call.return_data[0] >= 0
                    require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= uint256(stor12)
                else:
                    require ext_code.size(stor1)
                    call stor1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require stor22 <= stor19
                    require stor21 <= stor18
                    require stor20 <= stor17
                    require stor18 - stor21 >= 0
                    require stor19 - stor22 >= 0
                    require 3 * ext_call.return_data[0] >= 0
                    require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                require stor16 + msg.value >= stor16
                stor16 += msg.value
                require stor17 >= stor17
                require stor18 + (3 * ext_call.return_data[0]) >= stor18
                stor18 += 3 * ext_call.return_data[0]
                require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                require investorTokensPurchasesLength[address(msg.sender)].field_512 >= investorTokensPurchasesLength[address(msg.sender)].field_512
                require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                investorTokensPurchasesLength[address(msg.sender)].field_1536++
                stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0
                stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                emit TokensPurchased(msg.value, 0, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
            else:
                if msg.sender == arg2:
                    require 3 * ext_call.return_data[0] >= 0
                    if not stor1:
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require 3 * ext_call.return_data[0] >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= uint256(stor12)
                    else:
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require 3 * ext_call.return_data[0] >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                    require stor16 + msg.value >= stor16
                    stor16 += msg.value
                    require stor17 >= stor17
                    require stor18 + (3 * ext_call.return_data[0]) >= stor18
                    stor18 += 3 * ext_call.return_data[0]
                    require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                    require investorTokensPurchasesLength[address(msg.sender)].field_512 >= investorTokensPurchasesLength[address(msg.sender)].field_512
                    require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                    investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                    require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                    investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                    investorTokensPurchasesLength[address(msg.sender)].field_1536++
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                    emit TokensPurchased(msg.value, 0, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                else:
                    require investorTokensPurchasesLength[address(arg2)].field_0 <= 2
                    require 3 * ext_call.return_data[0] >= 0
                    if not stor1:
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require 3 * ext_call.return_data[0] >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= uint256(stor12)
                    else:
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require 3 * ext_call.return_data[0] >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                    require stor16 + msg.value >= stor16
                    stor16 += msg.value
                    require stor17 >= stor17
                    require stor18 + (3 * ext_call.return_data[0]) >= stor18
                    stor18 += 3 * ext_call.return_data[0]
                    if investorTokensPurchasesLength[address(arg2)].field_0 == 1:
                        require investorTokensPurchasesLength[address(arg2)].field_1024 >= investorTokensPurchasesLength[address(arg2)].field_1024
                        require investorTokensPurchasesLength[address(msg.sender)].field_512 >= investorTokensPurchasesLength[address(msg.sender)].field_512
                        require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                        investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                        require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                        investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                        investorTokensPurchasesLength[address(msg.sender)].field_1536++
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = arg2
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                        emit TokensPurchased(msg.value, 0, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, arg2);
                    else:
                        require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                        require investorTokensPurchasesLength[address(msg.sender)].field_512 >= investorTokensPurchasesLength[address(msg.sender)].field_512
                        require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                        investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                        require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                        investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                        investorTokensPurchasesLength[address(msg.sender)].field_1536++
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                        emit TokensPurchased(msg.value, 0, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
        else:
            require msg.value
            require msg.value * stor11 / msg.value == stor11
            if not msg.value * stor11:
                require ext_code.size(stor2)
                call stor2.0x7f60bb7c with:
                     gas gas_remaining wei
                    args msg.sender, 0, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3)
                call stor3.0x81807a07 with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                call stor4.0x79544754 with:
                     gas gas_remaining wei
                    args msg.sender, 0, msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_call.return_data[0] >= 0
                if not arg2:
                    require 3 * ext_call.return_data[0] >= 0
                    if not stor1:
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require 3 * ext_call.return_data[0] >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= uint256(stor12)
                    else:
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require 3 * ext_call.return_data[0] >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                    require stor16 + msg.value >= stor16
                    stor16 += msg.value
                    require stor17 >= stor17
                    require stor18 + (3 * ext_call.return_data[0]) >= stor18
                    stor18 += 3 * ext_call.return_data[0]
                    require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                    require investorTokensPurchasesLength[address(msg.sender)].field_512 >= investorTokensPurchasesLength[address(msg.sender)].field_512
                    require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                    investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                    require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                    investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                    investorTokensPurchasesLength[address(msg.sender)].field_1536++
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                    emit TokensPurchased(msg.value, 0, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                else:
                    if msg.sender == arg2:
                        require 3 * ext_call.return_data[0] >= 0
                        if not stor1:
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require 3 * ext_call.return_data[0] >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= uint256(stor12)
                        else:
                            require ext_code.size(stor1)
                            call stor1.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require 3 * ext_call.return_data[0] >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                        require stor16 + msg.value >= stor16
                        stor16 += msg.value
                        require stor17 >= stor17
                        require stor18 + (3 * ext_call.return_data[0]) >= stor18
                        stor18 += 3 * ext_call.return_data[0]
                        require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                        require investorTokensPurchasesLength[address(msg.sender)].field_512 >= investorTokensPurchasesLength[address(msg.sender)].field_512
                        require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                        investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                        require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                        investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                        investorTokensPurchasesLength[address(msg.sender)].field_1536++
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                        emit TokensPurchased(msg.value, 0, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                    else:
                        require investorTokensPurchasesLength[address(arg2)].field_0 <= 2
                        require 3 * ext_call.return_data[0] >= 0
                        if not stor1:
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require 3 * ext_call.return_data[0] >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= uint256(stor12)
                        else:
                            require ext_code.size(stor1)
                            call stor1.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require 3 * ext_call.return_data[0] >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                        require stor16 + msg.value >= stor16
                        stor16 += msg.value
                        require stor17 >= stor17
                        require stor18 + (3 * ext_call.return_data[0]) >= stor18
                        stor18 += 3 * ext_call.return_data[0]
                        if investorTokensPurchasesLength[address(arg2)].field_0 == 1:
                            require investorTokensPurchasesLength[address(arg2)].field_1024 >= investorTokensPurchasesLength[address(arg2)].field_1024
                            require investorTokensPurchasesLength[address(msg.sender)].field_512 >= investorTokensPurchasesLength[address(msg.sender)].field_512
                            require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                            investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                            investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                            investorTokensPurchasesLength[address(msg.sender)].field_1536++
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = arg2
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                            emit TokensPurchased(msg.value, 0, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, arg2);
                        else:
                            require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                            require investorTokensPurchasesLength[address(msg.sender)].field_512 >= investorTokensPurchasesLength[address(msg.sender)].field_512
                            require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                            investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                            investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                            investorTokensPurchasesLength[address(msg.sender)].field_1536++
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                            emit TokensPurchased(msg.value, 0, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
            else:
                require msg.value * stor11
                require msg.value * stor11 * 10^(stor10 - 18) / msg.value * stor11 == 10^(stor10 - 18)
                require ext_code.size(stor2)
                call stor2.0x7f60bb7c with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * stor11 * 10^(stor10 - 18), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor3)
                call stor3.0x81807a07 with:
                     gas gas_remaining wei
                    args (msg.value * stor11 * 10^(stor10 - 18))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                call stor4.0x79544754 with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * stor11 * 10^(stor10 - 18), msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_call.return_data[0] >= 0
                if not arg2:
                    require (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) >= msg.value * stor11 * 10^(stor10 - 18)
                    if not stor1:
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) <= uint256(stor12)
                    else:
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require stor22 <= stor19
                        require stor21 <= stor18
                        require stor20 <= stor17
                        require stor18 - stor21 >= 0
                        require stor19 - stor22 >= 0
                        require (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) >= 0
                        require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                    require stor16 + msg.value >= stor16
                    stor16 += msg.value
                    require stor17 + (msg.value * stor11 * 10^(stor10 - 18)) >= stor17
                    stor17 += msg.value * stor11 * 10^(stor10 - 18)
                    require stor18 + (3 * ext_call.return_data[0]) >= stor18
                    stor18 += 3 * ext_call.return_data[0]
                    require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                    require investorTokensPurchasesLength[address(msg.sender)].field_512 + (msg.value * stor11 * 10^(stor10 - 18)) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                    investorTokensPurchasesLength[address(msg.sender)].field_512 += msg.value * stor11 * 10^(stor10 - 18)
                    require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                    investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                    require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                    investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                    investorTokensPurchasesLength[address(msg.sender)].field_1536++
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = msg.value * stor11 * 10^(stor10 - 18)
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                    stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                    emit TokensPurchased(msg.value, msg.value * stor11 * 10^(stor10 - 18), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                else:
                    if msg.sender == arg2:
                        require (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) >= msg.value * stor11 * 10^(stor10 - 18)
                        if not stor1:
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) <= uint256(stor12)
                        else:
                            require ext_code.size(stor1)
                            call stor1.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require stor22 <= stor19
                            require stor21 <= stor18
                            require stor20 <= stor17
                            require stor18 - stor21 >= 0
                            require stor19 - stor22 >= 0
                            require (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) >= 0
                            require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                        require stor16 + msg.value >= stor16
                        stor16 += msg.value
                        require stor17 + (msg.value * stor11 * 10^(stor10 - 18)) >= stor17
                        stor17 += msg.value * stor11 * 10^(stor10 - 18)
                        require stor18 + (3 * ext_call.return_data[0]) >= stor18
                        stor18 += 3 * ext_call.return_data[0]
                        require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                        require investorTokensPurchasesLength[address(msg.sender)].field_512 + (msg.value * stor11 * 10^(stor10 - 18)) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                        investorTokensPurchasesLength[address(msg.sender)].field_512 += msg.value * stor11 * 10^(stor10 - 18)
                        require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                        investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                        require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                        investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                        investorTokensPurchasesLength[address(msg.sender)].field_1536++
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = msg.value * stor11 * 10^(stor10 - 18)
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                        stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                        emit TokensPurchased(msg.value, msg.value * stor11 * 10^(stor10 - 18), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                    else:
                        require investorTokensPurchasesLength[address(arg2)].field_0 <= 2
                        require (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) >= msg.value * stor11 * 10^(stor10 - 18)
                        if investorTokensPurchasesLength[address(arg2)].field_0 != 1:
                            if not stor1:
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) <= uint256(stor12)
                            else:
                                require ext_code.size(stor1)
                                call stor1.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) <= ext_call.return_data[0]
                            require stor16 + msg.value >= stor16
                            stor16 += msg.value
                            require stor17 + (msg.value * stor11 * 10^(stor10 - 18)) >= stor17
                            stor17 += msg.value * stor11 * 10^(stor10 - 18)
                            require stor18 + (3 * ext_call.return_data[0]) >= stor18
                            stor18 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[0].field_1024 >= investorTokensPurchasesLength[0].field_1024
                            require investorTokensPurchasesLength[address(msg.sender)].field_512 + (msg.value * stor11 * 10^(stor10 - 18)) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                            investorTokensPurchasesLength[address(msg.sender)].field_512 += msg.value * stor11 * 10^(stor10 - 18)
                            require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                            investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                            investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                            investorTokensPurchasesLength[address(msg.sender)].field_1536++
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = msg.value * stor11 * 10^(stor10 - 18)
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = 0
                            emit TokensPurchased(msg.value, msg.value * stor11 * 10^(stor10 - 18), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, 0);
                        else:
                            require msg.value * stor11 * 10^(stor10 - 18) * stor6 / 100 >= 0
                            if not stor1:
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) + (msg.value * stor11 * 10^(stor10 - 18) * stor6 / 100) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) + (msg.value * stor11 * 10^(stor10 - 18) * stor6 / 100) <= uint256(stor12)
                            else:
                                require ext_code.size(stor1)
                                call stor1.0x70a08231 with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require stor22 <= stor19
                                require stor21 <= stor18
                                require stor20 <= stor17
                                require stor18 - stor21 >= 0
                                require stor19 - stor22 >= 0
                                require (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) + (msg.value * stor11 * 10^(stor10 - 18) * stor6 / 100) >= 0
                                require stor17 - stor20 + stor18 - stor21 + stor19 - stor22 + (msg.value * stor11 * 10^(stor10 - 18)) + (3 * ext_call.return_data[0]) + (msg.value * stor11 * 10^(stor10 - 18) * stor6 / 100) <= ext_call.return_data[0]
                            require stor16 + msg.value >= stor16
                            stor16 += msg.value
                            require stor17 + (msg.value * stor11 * 10^(stor10 - 18)) >= stor17
                            stor17 += msg.value * stor11 * 10^(stor10 - 18)
                            require stor18 + (3 * ext_call.return_data[0]) >= stor18
                            require msg.value * stor11 * 10^(stor10 - 18) * stor6 / 100 >= 0
                            stor18 = stor18 + (3 * ext_call.return_data[0]) + (msg.value * stor11 * 10^(stor10 - 18) * stor6 / 100)
                            require investorTokensPurchasesLength[address(arg2)].field_1024 + (msg.value * stor11 * 10^(stor10 - 18) * stor6 / 100) >= investorTokensPurchasesLength[address(arg2)].field_1024
                            investorTokensPurchasesLength[address(arg2)].field_1024 += msg.value * stor11 * 10^(stor10 - 18) * stor6 / 100
                            require investorTokensPurchasesLength[address(msg.sender)].field_512 + (msg.value * stor11 * 10^(stor10 - 18)) >= investorTokensPurchasesLength[address(msg.sender)].field_512
                            investorTokensPurchasesLength[address(msg.sender)].field_512 += msg.value * stor11 * 10^(stor10 - 18)
                            require investorTokensPurchasesLength[address(msg.sender)].field_768 + (3 * ext_call.return_data[0]) >= investorTokensPurchasesLength[address(msg.sender)].field_768
                            investorTokensPurchasesLength[address(msg.sender)].field_768 += 3 * ext_call.return_data[0]
                            require investorTokensPurchasesLength[address(msg.sender)].field_256 + msg.value >= investorTokensPurchasesLength[address(msg.sender)].field_256
                            investorTokensPurchasesLength[address(msg.sender)].field_256 += msg.value
                            investorTokensPurchasesLength[address(msg.sender)].field_1536++
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_0 = msg.value
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_256 = msg.value * stor11 * 10^(stor10 - 18)
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_512 = 3 * ext_call.return_data[0]
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_768 = arg2
                            stor[(5 * investorTokensPurchasesLength[address(msg.sender)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investorTokensPurchasesLength', 25)))].field_1024 = msg.value * stor11 * 10^(stor10 - 18) * stor6 / 100
                            emit TokensPurchased(msg.value, msg.value * stor11 * 10^(stor10 - 18), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], msg.value * stor11 * 10^(stor10 - 18) * stor6 / 100, block.timestamp, msg.sender, investorTokensPurchasesLength[address(msg.sender)].field_1536, arg2);
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
