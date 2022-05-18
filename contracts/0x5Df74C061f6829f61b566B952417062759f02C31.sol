contract main {




// =====================  Runtime code  =====================


const PHASE1_START_TIME = 1530194278702

const PURCHASE_DIVIDER = 1000

const TOKEN_NAME = 'Bvn Token'

const CONTRIBUTION_MAX = 10000 * 10^18

const TOKENS_ACCELERATOR = 217600000 * 10^18

const TOKEN_SYMBOL = 'BVN'

const TOKENS_SALE = 240000000 * 10^18

const PHASE2_START_TIME = 1531250984984

const END_TIME = 1531729810419

const TOKEN_DECIMALS = 18

const TOKENS_EARLY_BACKERS = 44884831 * 10^18

const DECIMALSFACTOR = 10^18

const TOKENS_ADVISORS = 80000000 * 10^18

const TOKENS_MAX = 800000000 * 10^18

const PHASE1_ACCOUNT_TOKENS_MAX = (10 * 10^18 * 3600)

const CONTRIBUTION_MIN = 10^15

const TOKENS_PER_KETHER = (1000 * 3600)

const TOKENS_FOUNDERS = 80000000 * 10^18

const TOKENS_FUTURE = 137515169 * 10^18


address owner;
address proposedOwner;
address opsAddress;
uint8 stor3; offset 160
uint8 stor3; offset 168
address adminAddress;
uint256 endTime;
uint256 pausedTime;
uint256 tokensPerKEther;
uint256 phase1AccountTokensMax;
address walletAddress;
address tokenContractAddress;
address trusteeContractAddress;
uint256 totalTokensSold;
uint256 totalPresaleBase;
uint256 totalPresaleBonus;
mapping of uint8 whitelist;
uint256 currentTime;

function totalPresaleBonus() {
    return totalPresaleBonus
}

function endTime() {
    return endTime
}

function wallet() {
    return walletAddress
}

function tokenContract() {
    return tokenContractAddress
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function totalTokensSold() {
    return totalTokensSold
}

function owner() {
    return owner
}

function opsAddress() {
    return opsAddress
}

function whitelist(address arg1) {
    return whitelist[arg1]
}

function totalPresaleBase() {
    return totalPresaleBase
}

function tokensPerKEther() {
    return tokensPerKEther
}

function pausedTime() {
    return pausedTime
}

function _now() {
    return currentTime
}

function finalized() {
    return bool(uint8(stor3.field_168))
}

function trusteeContract() {
    return trusteeContractAddress
}

function proposedOwner() {
    return proposedOwner
}

function currentTime() {
    return currentTime
}

function phase1AccountTokensMax() {
    return phase1AccountTokensMax
}

function adminAddress() {
    return adminAddress
}

function changeTime(uint256 arg1) {
    require msg.sender == owner
    currentTime = arg1
    return 1
}

function initiateOwnershipTransfer(address arg1) {
    require msg.sender == owner
    proposedOwner = arg1
    emit OwnershipTransferInitiated(arg1);
    return 1
}

function finalize() {
    require adminAddress
    require adminAddress == msg.sender
    require not uint8(stor3.field_168)
    uint8(stor3.field_168) = 1
    emit Finalized()
    return 1
}

function completeOwnershipTransfer() {
    require proposedOwner == msg.sender
    owner = proposedOwner
    proposedOwner = 0
    emit OwnershipTransferCompleted(proposedOwner);
    return 1
}

function changeWallet(address arg1) {
    require adminAddress
    require adminAddress == msg.sender
    require arg1
    require arg1 != this.address
    require trusteeContractAddress != arg1
    require tokenContractAddress != arg1
    walletAddress = arg1
    emit WalletChanged(arg1);
    return 1
}

function setOpsAddress(address arg1) {
    if owner != msg.sender:
        require adminAddress
        require adminAddress == msg.sender
    require owner != arg1
    require arg1 != this.address
    if adminAddress:
        require adminAddress != arg1
    opsAddress = arg1
    emit OpsAddressChanged(arg1);
    return 1
}

function setAdminAddress(address arg1) {
    if owner != msg.sender:
        require adminAddress
        require adminAddress == msg.sender
    require owner != arg1
    require arg1 != this.address
    if opsAddress:
        require arg1 != opsAddress
    adminAddress = arg1
    emit AdminAddressChanged(arg1);
    return 1
}

function updateWhitelist(address arg1, uint8 arg2) {
    require opsAddress
    require msg.sender == opsAddress
    require arg1
    require arg2 <= 2
    require 240000000 * 10^18 > totalTokensSold
    require not uint8(stor3.field_168)
    if not pausedTime:
        require currentTime < endTime
    whitelist[address(arg1)] = arg2
    emit WhitelistUpdated(arg2, arg1);
    return 1
}

function setTokensPerKEther(uint256 arg1) {
    require adminAddress
    require adminAddress == msg.sender
    require 240000000 * 10^18 > totalTokensSold
    require not uint8(stor3.field_168)
    if not pausedTime:
        require currentTime < endTime
    require currentTime < 1530194278702
    require arg1 > 0
    tokensPerKEther = arg1
    emit TokensPerKEtherUpdated(arg1);
    return 1
}

function setPhase1AccountTokensMax(uint256 arg1) {
    require adminAddress
    require adminAddress == msg.sender
    require 240000000 * 10^18 > totalTokensSold
    require not uint8(stor3.field_168)
    if not pausedTime:
        require currentTime < endTime
    require currentTime < 1530194278702
    require arg1 > 0
    phase1AccountTokensMax = arg1
    emit Phase1AccountTokensMaxUpdated(arg1);
    return 1
}

function pause() {
    require adminAddress
    require adminAddress == msg.sender
    require not uint8(stor3.field_160)
    require 240000000 * 10^18 > totalTokensSold
    require not uint8(stor3.field_168)
    if not pausedTime:
        require currentTime < endTime
    pausedTime = currentTime
    require adminAddress
    require adminAddress == msg.sender
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit Pause()
}

function unpause() {
    require adminAddress
    require adminAddress == msg.sender
    require uint8(stor3.field_160)
    if currentTime > 1530194278702:
        if pausedTime >= 1530194278702:
            require pausedTime <= currentTime
            require currentTime - pausedTime + endTime >= endTime
            endTime = currentTime - pausedTime + endTime
        else:
            require 1530194278702 <= currentTime
            require currentTime + endTime - 1530194278702 >= endTime
            endTime = currentTime + endTime - 1530194278702
    pausedTime = 0
    require adminAddress
    require adminAddress == msg.sender
    require uint8(stor3.field_160)
    uint8(stor3.field_160) = 0
    emit Unpause()
}

function burnUnsoldTokens() {
    require uint8(stor3.field_168)
    require adminAddress
    require adminAddress == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x42966c68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit UnsoldTokensBurnt(ext_call.return_data[0]);
    return 1
}

function initialize() {
    require msg.sender == owner
    require not totalTokensSold
    require not totalPresaleBase
    require not totalPresaleBonus
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == 240000000 * 10^18
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args trusteeContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 137515169 * 10^18
    emit Initialized()
    return 1
}

function reclaimTokens(uint256 arg1) {
    require uint8(stor3.field_168)
    require adminAddress
    require adminAddress == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokensReclaimed(arg1);
    return 1
}

function addPresale(address arg1, uint256 arg2, uint256 arg3) {
    require adminAddress
    require adminAddress == msg.sender
    require 240000000 * 10^18 > totalTokensSold
    require not uint8(stor3.field_168)
    if not pausedTime:
        require currentTime < endTime
    require currentTime < 1530194278702
    require arg1
    require arg2 > 0
    require arg3 < arg2
    require arg2 + totalTokensSold >= totalTokensSold
    totalTokensSold += arg2
    require 240000000 * 10^18 >= arg2 + totalTokensSold
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    require arg2 + totalPresaleBase >= totalPresaleBase
    totalPresaleBase += arg2
    require arg3 + totalPresaleBonus >= totalPresaleBonus
    totalPresaleBonus += arg3
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args trusteeContractAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg3 + arg2 >= arg2
    require ext_code.size(trusteeContractAddress)
    call trusteeContractAddress.0x95c8d4ee with:
         gas gas_remaining wei
        args address(arg1), arg3 + arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit PresaleAdded(arg2, arg3, arg1);
    return 1
}

function buyTokens() payable {
    require not uint8(stor3.field_160)
    require 240000000 * 10^18 > totalTokensSold
    require not uint8(stor3.field_168)
    if not pausedTime:
        require currentTime < endTime
    require currentTime >= 1530194278702
    require msg.value >= 10^15
    require msg.value <= 10000 * 10^18
    require 240000000 * 10^18 > totalTokensSold
    require whitelist[address(msg.sender)] > 0
    require totalTokensSold <= 240000000 * 10^18
    if currentTime >= 1531250984984:
        require -totalTokensSold + 240000000 * 10^18 > 0
        if msg.value:
            require msg.value
            require tokensPerKEther * msg.value / msg.value == tokensPerKEther
        require tokensPerKEther * msg.value / 1000 > 0
        if tokensPerKEther * msg.value / 1000 <= -totalTokensSold + 240000000 * 10^18:
            require (tokensPerKEther * msg.value / 1000) + totalTokensSold >= totalTokensSold
            totalTokensSold += tokensPerKEther * msg.value / 1000
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, tokensPerKEther * msg.value / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require 0 <= msg.value
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TokensPurchased(msg.value, tokensPerKEther * msg.value / 1000, totalTokensSold, msg.sender);
        else:
            if -totalTokensSold + 240000000 * 10^18:
                require -totalTokensSold + 240000000 * 10^18
                require (-1000 * totalTokensSold) + 240000000000 * 10^18 / -totalTokensSold + 240000000 * 10^18 == 1000
            require tokensPerKEther
            require (-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther <= msg.value
            require 240000000 * 10^18 >= totalTokensSold
            totalTokensSold = 240000000 * 10^18
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, -totalTokensSold + 240000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if msg.value - ((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther) > 0:
                call msg.sender with:
                   value msg.value - ((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require msg.value - ((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther) <= msg.value
            call walletAddress with:
               value (-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TokensPurchased((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther, -totalTokensSold + 240000000 * 10^18, totalTokensSold, msg.sender);
    else:
        require whitelist[address(msg.sender)] == 1
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= phase1AccountTokensMax
        if phase1AccountTokensMax - ext_call.return_data[0] >= -totalTokensSold + 240000000 * 10^18:
            require -totalTokensSold + 240000000 * 10^18 > 0
            if msg.value:
                require msg.value
                require tokensPerKEther * msg.value / msg.value == tokensPerKEther
            require tokensPerKEther * msg.value / 1000 > 0
            if tokensPerKEther * msg.value / 1000 <= -totalTokensSold + 240000000 * 10^18:
                require (tokensPerKEther * msg.value / 1000) + totalTokensSold >= totalTokensSold
                totalTokensSold += tokensPerKEther * msg.value / 1000
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, tokensPerKEther * msg.value / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require 0 <= msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokensPurchased(msg.value, tokensPerKEther * msg.value / 1000, totalTokensSold, msg.sender);
            else:
                if -totalTokensSold + 240000000 * 10^18:
                    require -totalTokensSold + 240000000 * 10^18
                    require (-1000 * totalTokensSold) + 240000000000 * 10^18 / -totalTokensSold + 240000000 * 10^18 == 1000
                require tokensPerKEther
                require (-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther <= msg.value
                require 240000000 * 10^18 >= totalTokensSold
                totalTokensSold = 240000000 * 10^18
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -totalTokensSold + 240000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if msg.value - ((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther) > 0:
                    call msg.sender with:
                       value msg.value - ((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value - ((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther) <= msg.value
                call walletAddress with:
                   value (-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokensPurchased((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther, -totalTokensSold + 240000000 * 10^18, totalTokensSold, msg.sender);
        else:
            require phase1AccountTokensMax - ext_call.return_data[0] > 0
            if msg.value:
                require msg.value
                require tokensPerKEther * msg.value / msg.value == tokensPerKEther
            require tokensPerKEther * msg.value / 1000 > 0
            if tokensPerKEther * msg.value / 1000 <= phase1AccountTokensMax - ext_call.return_data[0]:
                require (tokensPerKEther * msg.value / 1000) + totalTokensSold >= totalTokensSold
                totalTokensSold += tokensPerKEther * msg.value / 1000
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, tokensPerKEther * msg.value / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require 0 <= msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokensPurchased(msg.value, tokensPerKEther * msg.value / 1000, totalTokensSold, msg.sender);
            else:
                if phase1AccountTokensMax - ext_call.return_data[0]:
                    require phase1AccountTokensMax - ext_call.return_data[0]
                    require (1000 * phase1AccountTokensMax) - (1000 * ext_call.return_data[0]) / phase1AccountTokensMax - ext_call.return_data[0] == 1000
                require tokensPerKEther
                require (1000 * phase1AccountTokensMax) - (1000 * ext_call.return_data[0]) / tokensPerKEther <= msg.value
                require phase1AccountTokensMax - ext_call.return_data[0] + totalTokensSold >= totalTokensSold
                totalTokensSold = phase1AccountTokensMax - ext_call.return_data[0] + totalTokensSold
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, phase1AccountTokensMax - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if msg.value - ((1000 * phase1AccountTokensMax) - (1000 * ext_call.return_data[0]) / tokensPerKEther) > 0:
                    call msg.sender with:
                       value msg.value - ((1000 * phase1AccountTokensMax) - (1000 * ext_call.return_data[0]) / tokensPerKEther) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value - ((1000 * phase1AccountTokensMax) - (1000 * ext_call.return_data[0]) / tokensPerKEther) <= msg.value
                call walletAddress with:
                   value (1000 * phase1AccountTokensMax) - (1000 * ext_call.return_data[0]) / tokensPerKEther wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokensPurchased((1000 * phase1AccountTokensMax) - (1000 * ext_call.return_data[0]) / tokensPerKEther, phase1AccountTokensMax - ext_call.return_data[0], totalTokensSold, msg.sender);
    if 240000000 * 10^18 == totalTokensSold:
        require not uint8(stor3.field_168)
        uint8(stor3.field_168) = 1
        emit Finalized()
    return 1
}

function _fallback() payable {
    require not uint8(stor3.field_160)
    require 240000000 * 10^18 > totalTokensSold
    require not uint8(stor3.field_168)
    if not pausedTime:
        require currentTime < endTime
    require currentTime >= 1530194278702
    require not uint8(stor3.field_160)
    require 240000000 * 10^18 > totalTokensSold
    require not uint8(stor3.field_168)
    if not pausedTime:
        require currentTime < endTime
    require currentTime >= 1530194278702
    require msg.value >= 10^15
    require msg.value <= 10000 * 10^18
    require 240000000 * 10^18 > totalTokensSold
    require whitelist[address(msg.sender)] > 0
    require totalTokensSold <= 240000000 * 10^18
    if currentTime >= 1531250984984:
        require -totalTokensSold + 240000000 * 10^18 > 0
        if msg.value:
            require msg.value
            require tokensPerKEther * msg.value / msg.value == tokensPerKEther
        require tokensPerKEther * msg.value / 1000 > 0
        if tokensPerKEther * msg.value / 1000 <= -totalTokensSold + 240000000 * 10^18:
            require (tokensPerKEther * msg.value / 1000) + totalTokensSold >= totalTokensSold
            totalTokensSold += tokensPerKEther * msg.value / 1000
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, tokensPerKEther * msg.value / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require 0 <= msg.value
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TokensPurchased(msg.value, tokensPerKEther * msg.value / 1000, totalTokensSold, msg.sender);
        else:
            if -totalTokensSold + 240000000 * 10^18:
                require -totalTokensSold + 240000000 * 10^18
                require (-1000 * totalTokensSold) + 240000000000 * 10^18 / -totalTokensSold + 240000000 * 10^18 == 1000
            require tokensPerKEther
            require (-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther <= msg.value
            require 240000000 * 10^18 >= totalTokensSold
            totalTokensSold = 240000000 * 10^18
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, -totalTokensSold + 240000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if msg.value - ((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther) > 0:
                call msg.sender with:
                   value msg.value - ((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require msg.value - ((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther) <= msg.value
            call walletAddress with:
               value (-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TokensPurchased((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther, -totalTokensSold + 240000000 * 10^18, totalTokensSold, msg.sender);
    else:
        require whitelist[address(msg.sender)] == 1
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= phase1AccountTokensMax
        if phase1AccountTokensMax - ext_call.return_data[0] >= -totalTokensSold + 240000000 * 10^18:
            require -totalTokensSold + 240000000 * 10^18 > 0
            if msg.value:
                require msg.value
                require tokensPerKEther * msg.value / msg.value == tokensPerKEther
            require tokensPerKEther * msg.value / 1000 > 0
            if tokensPerKEther * msg.value / 1000 <= -totalTokensSold + 240000000 * 10^18:
                require (tokensPerKEther * msg.value / 1000) + totalTokensSold >= totalTokensSold
                totalTokensSold += tokensPerKEther * msg.value / 1000
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, tokensPerKEther * msg.value / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require 0 <= msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokensPurchased(msg.value, tokensPerKEther * msg.value / 1000, totalTokensSold, msg.sender);
            else:
                if -totalTokensSold + 240000000 * 10^18:
                    require -totalTokensSold + 240000000 * 10^18
                    require (-1000 * totalTokensSold) + 240000000000 * 10^18 / -totalTokensSold + 240000000 * 10^18 == 1000
                require tokensPerKEther
                require (-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther <= msg.value
                require 240000000 * 10^18 >= totalTokensSold
                totalTokensSold = 240000000 * 10^18
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -totalTokensSold + 240000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if msg.value - ((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther) > 0:
                    call msg.sender with:
                       value msg.value - ((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value - ((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther) <= msg.value
                call walletAddress with:
                   value (-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokensPurchased((-1000 * totalTokensSold) + 240000000000 * 10^18 / tokensPerKEther, -totalTokensSold + 240000000 * 10^18, totalTokensSold, msg.sender);
        else:
            require phase1AccountTokensMax - ext_call.return_data[0] > 0
            if msg.value:
                require msg.value
                require tokensPerKEther * msg.value / msg.value == tokensPerKEther
            require tokensPerKEther * msg.value / 1000 > 0
            if tokensPerKEther * msg.value / 1000 <= phase1AccountTokensMax - ext_call.return_data[0]:
                require (tokensPerKEther * msg.value / 1000) + totalTokensSold >= totalTokensSold
                totalTokensSold += tokensPerKEther * msg.value / 1000
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, tokensPerKEther * msg.value / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require 0 <= msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokensPurchased(msg.value, tokensPerKEther * msg.value / 1000, totalTokensSold, msg.sender);
            else:
                if phase1AccountTokensMax - ext_call.return_data[0]:
                    require phase1AccountTokensMax - ext_call.return_data[0]
                    require (1000 * phase1AccountTokensMax) - (1000 * ext_call.return_data[0]) / phase1AccountTokensMax - ext_call.return_data[0] == 1000
                require tokensPerKEther
                require (1000 * phase1AccountTokensMax) - (1000 * ext_call.return_data[0]) / tokensPerKEther <= msg.value
                require phase1AccountTokensMax - ext_call.return_data[0] + totalTokensSold >= totalTokensSold
                totalTokensSold = phase1AccountTokensMax - ext_call.return_data[0] + totalTokensSold
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, phase1AccountTokensMax - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if msg.value - ((1000 * phase1AccountTokensMax) - (1000 * ext_call.return_data[0]) / tokensPerKEther) > 0:
                    call msg.sender with:
                       value msg.value - ((1000 * phase1AccountTokensMax) - (1000 * ext_call.return_data[0]) / tokensPerKEther) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value - ((1000 * phase1AccountTokensMax) - (1000 * ext_call.return_data[0]) / tokensPerKEther) <= msg.value
                call walletAddress with:
                   value (1000 * phase1AccountTokensMax) - (1000 * ext_call.return_data[0]) / tokensPerKEther wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokensPurchased((1000 * phase1AccountTokensMax) - (1000 * ext_call.return_data[0]) / tokensPerKEther, phase1AccountTokensMax - ext_call.return_data[0], totalTokensSold, msg.sender);
    if 240000000 * 10^18 == totalTokensSold:
        require not uint8(stor3.field_168)
        uint8(stor3.field_168) = 1
        emit Finalized()
}



}
