contract main {




// =====================  Runtime code  =====================


const IS_MINT_PAUSER = 'isTUSDMintPausers'

const IS_MINT_RATIFIER = 'isTUSDMintRatifier'

const RATIFY_MINT_SIGS = 1

const MULTISIG_MINT_SIGS = 3

const PAUSED_IMPLEMENTATION = 1

const IS_REDEMPTION_ADMIN = 'isTUSDRedemptionAdmin'


address owner;
array of address stor1;
uint256 instantMintThreshold;
uint256 ratifiedMintThreshold;
uint256 multiSigMintThreshold;
uint256 instantMintLimit;
uint256 ratifiedMintLimit;
uint256 multiSigMintLimit;
uint256 instantMintPool;
uint256 ratifiedMintPool;
uint256 multiSigMintPool;
array of address ratifiedPoolRefillApprovals;
address stor12;
uint256 stor12;
uint8 mintPaused;
uint256 mintReqInvalidBeforeThisBlock;
address mintKeyAddress;
mapping of struct mintOperations;
address tokenAddress;
address registryAddress;
address sub_df66b8f8Address;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727731;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727732;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727733;
array of uint8 stor12396694973890998440467380340983585058878106250672390494374587083972727727734;

function initialized() {
    return bool(stor1.length.field_160)
}

function ratifiedMintThreshold() {
    return ratifiedMintThreshold
}

function multiSigMintThreshold() {
    return multiSigMintThreshold
}

function mintOperationCount() {
    return mintOperations.length
}

function ratifiedMintPool() {
    return ratifiedMintPool
}

function multiSigMintLimit() {
    return multiSigMintLimit
}

function mintKey() {
    return mintKeyAddress
}

function instantMintThreshold() {
    return instantMintThreshold
}

function registry() {
    return registryAddress
}

function mintPaused() {
    return bool(mintPaused)
}

function instantMintPool() {
    return instantMintPool
}

function owner() {
    return owner
}

function ratifiedPoolRefillApprovals(uint256 arg1) {
    require arg1 < 2
    return ratifiedPoolRefillApprovals[arg1]
}

function multiSigMintPool() {
    return multiSigMintPool
}

function mintReqInvalidBeforeThisBlock() {
    return mintReqInvalidBeforeThisBlock
}

function sub_df66b8f8(?) {
    return sub_df66b8f8Address
}

function pendingOwner() {
    return address(stor1.length)
}

function ratifiedMintLimit() {
    return ratifiedMintLimit
}

function mintOperations(uint256 arg1) {
    require arg1 < mintOperations.length
    return mintOperations[arg1].field_0, 
           mintOperations[arg1].field_256,
           mintOperations[arg1].field_512,
           mintOperations[arg1].field_768,
           bool(mintOperations[arg1].field_1024)
}

function token() {
    return tokenAddress
}

function instantMintLimit() {
    return instantMintLimit
}

function _fallback() payable {
    revert
}

function unpauseMints() {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    mintPaused = 0
    emit AllMintsPaused(0);
}

function setToken(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    tokenAddress = arg1
    emit SetToken(arg1);
}

function invalidateAllPendingMints() {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    mintReqInvalidBeforeThisBlock = block.number
}

function setRegistry(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    registryAddress = arg1
    emit SetRegistry(arg1);
}

function setFastPause(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    sub_df66b8f8Address = arg1
    emit FastPauseSet(arg1);
}

function refillMultiSigMintPool() {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    multiSigMintPool = multiSigMintLimit
    emit MultiSigPoolRefilled()
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    address(stor1.length) = arg1
    emit NewOwnerPending(owner, arg1);
}

function initialize() {
    if stor1.length.field_160:
        revert with 0, 'already initialized'
    owner = 0xcdbd95534b5a980f33d1acdee4db7cc1eb8a31de
    stor1.length.field_160 = 1
}

function claimOwnership() {
    require address(stor1.length) == msg.sender
    emit OwnershipTransferred(owner, address(stor1.length));
    owner = address(stor1.length)
    address(stor1.length) = 0
}

function unpauseMint(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require arg1 < mintOperations.length
    mintOperations[arg1].field_1024 = 0
    emit MintPaused(arg1, 0);
}

function transferMintKey(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    if not arg1:
        revert with 0, 'new mint key cannot be 0x0'
    emit TransferMintKey(mintKeyAddress, arg1);
    mintKeyAddress = arg1
}

function issueClaimOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require ext_code.size(arg1)
    call arg1.0x4e71e0c8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reclaimEther(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimTusdProxyOwnership() {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.claimProxyOwnership() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function requestReclaimEther() {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x9a6a30a4 with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTokenRegistry(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa91ee0dc with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMintThresholds(uint256 arg1, uint256 arg2, uint256 arg3) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require arg1 <= arg2
    require arg2 <= arg3
    instantMintThreshold = arg1
    ratifiedMintThreshold = arg2
    multiSigMintThreshold = arg3
    emit MintThresholdChanged(arg1, arg2, arg3);
}

function wipeBlackListedTrueUSD(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xbd7243f6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function upgradeTusdProxyImplTo(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.upgradeTo(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function requestReclaimToken(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x88ee39cc with:
         gas gas_remaining wei
        args address(arg1), owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferChild(address arg1, address arg2) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TransferChild(arg1, arg2);
}

function transferTusdProxyOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.transferProxyOwnership(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function requestReclaimContract(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x2aed7f3f with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RequestReclaimContract(arg1);
}

function setBurnBounds(uint256 arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress with:
       funct Mask(32, 224, 'R`P') >> 224
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pauseToken() {
    if sub_df66b8f8Address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'must be pauser or owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.upgradeTo(address arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function revokeMint(uint256 arg1) {
    if mintKeyAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'must be mintKey or owner'
    require arg1 < mintOperations.length
    mintOperations[arg1].field_0 = 0
    mintOperations[arg1].field_256 = 0
    mintOperations[arg1].field_512 = 0
    mintOperations[arg1].field_768 = 0
    mintOperations[arg1].field_1024 = 0
    emit RevokeMint(arg1);
}

function pauseMints() {
    require ext_code.size(registryAddress)
    call registryAddress.hasAttribute(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args msg.sender, 'isTUSDMintPausers'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'must be pauser or owner'
    mintPaused = 1
    emit AllMintsPaused(1);
}

function setMintLimits(uint256 arg1, uint256 arg2, uint256 arg3) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require arg1 <= arg2
    require arg2 <= arg3
    instantMintLimit = arg1
    if arg1 < instantMintPool:
        instantMintPool = instantMintLimit
    ratifiedMintLimit = arg2
    if arg2 < ratifiedMintPool:
        ratifiedMintPool = ratifiedMintLimit
    multiSigMintLimit = arg3
    if arg3 < multiSigMintPool:
        multiSigMintPool = multiSigMintLimit
    emit MintLimitsChanged(arg1, arg2, arg3);
}

function requestMint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        if mintPaused:
            revert with 0, 'minting is paused'
    if mintKeyAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'must be mintKey or owner'
    emit RequestMint(mintOperations.length, msg.sender, arg1, arg2);
    mintOperations.length++
    mintOperations[mintOperations.length].field_0 = arg1
    stor1B68[stor16.length] = arg2
    stor1B68[stor16.length] = block.number
    stor1B68[stor16.length] = 0
    stor1B68[stor16.length] = 0
}

function pauseMint(uint256 arg1) {
    require ext_code.size(registryAddress)
    call registryAddress.hasAttribute(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args msg.sender, 'isTUSDMintPausers'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'must be pauser or owner'
    require arg1 < mintOperations.length
    mintOperations[arg1].field_1024 = 1
    emit MintPaused(arg1, 1);
}

function reclaimToken(address arg1, address arg2) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
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

function refillInstantMintPool() {
    require ext_code.size(registryAddress)
    call registryAddress.hasAttribute(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args msg.sender, 'isTUSDMintRatifier'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'must be ratifier or owner'
    require instantMintPool <= instantMintLimit
    require instantMintLimit - instantMintPool <= ratifiedMintPool
    ratifiedMintPool = ratifiedMintPool - instantMintLimit + instantMintPool
    instantMintPool = instantMintLimit
    emit InstantPoolRefilled()
}

function instantMint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        if mintPaused:
            revert with 0, 'minting is paused'
    if mintKeyAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'must be mintKey or owner'
    if arg2 > instantMintThreshold:
        revert with 0, 'over the instant mint threshold'
    if arg2 > instantMintPool:
        revert with 0, 'instant mint pool is dry'
    instantMintPool -= arg2
    emit InstantMint(arg1, arg2, msg.sender);
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function hasEnoughApproval(uint256 arg1, uint256 arg2) {
    if arg2 > ratifiedMintPool:
        if arg2 > multiSigMintPool:
            if owner != msg.sender:
                return 0
        else:
            if arg2 > multiSigMintThreshold:
                if owner != msg.sender:
                    return 0
            else:
                if arg1 < 3:
                    if owner != msg.sender:
                        return 0
    else:
        if arg2 > ratifiedMintThreshold:
            if arg2 > multiSigMintPool:
                if owner != msg.sender:
                    return 0
            else:
                if arg2 > multiSigMintThreshold:
                    if owner != msg.sender:
                        return 0
                else:
                    if arg1 < 3:
                        if owner != msg.sender:
                            return 0
        else:
            if arg1 < 1:
                if arg2 > multiSigMintPool:
                    if owner != msg.sender:
                        return 0
                else:
                    if arg2 > multiSigMintThreshold:
                        if owner != msg.sender:
                            return 0
                    else:
                        if arg1 < 3:
                            if owner != msg.sender:
                                return 0
    return 1
}

function canFinalize(uint256 arg1) {
    require arg1 < mintOperations.length
    if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
        revert with 0, 'this mint is invalid'
    if mintOperations[arg1].field_1024:
        revert with 0, 'this mint is paused'
    if mintOperations[arg1].field_256 > ratifiedMintPool:
        if mintOperations[arg1].field_256 > multiSigMintPool:
            if owner != msg.sender:
                revert with 0, 'not enough approvals'
        else:
            if mintOperations[arg1].field_256 > multiSigMintThreshold:
                if owner != msg.sender:
                    revert with 0, 'not enough approvals'
            else:
                if mintOperations[arg1].field_768 < 3:
                    if owner != msg.sender:
                        revert with 0, 'not enough approvals'
    else:
        if mintOperations[arg1].field_256 > ratifiedMintThreshold:
            if mintOperations[arg1].field_256 > multiSigMintPool:
                if owner != msg.sender:
                    revert with 0, 'not enough approvals'
            else:
                if mintOperations[arg1].field_256 > multiSigMintThreshold:
                    if owner != msg.sender:
                        revert with 0, 'not enough approvals'
                else:
                    if mintOperations[arg1].field_768 < 3:
                        if owner != msg.sender:
                            revert with 0, 'not enough approvals'
        else:
            if mintOperations[arg1].field_768 < 1:
                if mintOperations[arg1].field_256 > multiSigMintPool:
                    if owner != msg.sender:
                        revert with 0, 'not enough approvals'
                else:
                    if mintOperations[arg1].field_256 > multiSigMintThreshold:
                        if owner != msg.sender:
                            revert with 0, 'not enough approvals'
                    else:
                        if mintOperations[arg1].field_768 < 3:
                            if owner != msg.sender:
                                revert with 0, 'not enough approvals'
    return 1
}

function refillRatifiedMintPool() {
    mem[196] = 'isTUSDMintRatifier'
    require ext_code.size(registryAddress)
    call registryAddress.hasAttribute(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args msg.sender, 'isTUSDMintRatifier'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'must be ratifier or owner'
        ratifiedPoolRefillApprovals.length = 0
        uint256(stor12) = 0
        require ratifiedMintPool <= ratifiedMintLimit
        require ratifiedMintLimit - ratifiedMintPool <= multiSigMintPool
        multiSigMintPool = multiSigMintPool - ratifiedMintLimit + ratifiedMintPool
        ratifiedMintPool = ratifiedMintLimit
        emit RatifyPoolRefilled()
    else:
        if owner == msg.sender:
            ratifiedPoolRefillApprovals.length = 0
            uint256(stor12) = 0
            require ratifiedMintPool <= ratifiedMintLimit
            require ratifiedMintLimit - ratifiedMintPool <= multiSigMintPool
            multiSigMintPool = multiSigMintPool - ratifiedMintLimit + ratifiedMintPool
            ratifiedMintPool = ratifiedMintLimit
            emit RatifyPoolRefilled()
        else:
            idx = 160
            s = 11
            while 224 > idx + 32:
                mem[idx + 32] = stor1[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            require ratifiedPoolRefillApprovals.length != msg.sender
            require mem[204 len 20] != msg.sender
            if not ratifiedPoolRefillApprovals.length:
                ratifiedPoolRefillApprovals.length = msg.sender
            else:
                if not mem[204 len 20]:
                    address(stor12) = msg.sender
                else:
                    ratifiedPoolRefillApprovals.length = 0
                    uint256(stor12) = 0
                    require ratifiedMintPool <= ratifiedMintLimit
                    require ratifiedMintLimit - ratifiedMintPool <= multiSigMintPool
                    multiSigMintPool = multiSigMintPool - ratifiedMintLimit + ratifiedMintPool
                    ratifiedMintPool = ratifiedMintLimit
                    emit RatifyPoolRefilled()
}

function finalizeMint(uint256 arg1) {
    if owner != msg.sender:
        if mintPaused:
            revert with 0, 'minting is paused'
    require arg1 < mintOperations.length
    require arg1 < mintOperations.length
    if owner != msg.sender:
        if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
            revert with 0, 'this mint is invalid'
        if mintOperations[arg1].field_1024:
            revert with 0, 'this mint is paused'
        if mintOperations[arg1].field_256 > ratifiedMintPool:
            if mintOperations[arg1].field_256 > multiSigMintPool:
                if owner != msg.sender:
                    revert with 0, 'not enough approvals'
            else:
                if mintOperations[arg1].field_256 > multiSigMintThreshold:
                    if owner != msg.sender:
                        revert with 0, 'not enough approvals'
                else:
                    if mintOperations[arg1].field_768 < 3:
                        if owner != msg.sender:
                            revert with 0, 'not enough approvals'
        else:
            if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                if mintOperations[arg1].field_256 > multiSigMintPool:
                    if owner != msg.sender:
                        revert with 0, 'not enough approvals'
                else:
                    if mintOperations[arg1].field_256 > multiSigMintThreshold:
                        if owner != msg.sender:
                            revert with 0, 'not enough approvals'
                    else:
                        if mintOperations[arg1].field_768 < 3:
                            if owner != msg.sender:
                                revert with 0, 'not enough approvals'
            else:
                if mintOperations[arg1].field_768 < 1:
                    if mintOperations[arg1].field_256 > multiSigMintPool:
                        if owner != msg.sender:
                            revert with 0, 'not enough approvals'
                    else:
                        if mintOperations[arg1].field_256 > multiSigMintThreshold:
                            if owner != msg.sender:
                                revert with 0, 'not enough approvals'
                        else:
                            if mintOperations[arg1].field_768 < 3:
                                if owner != msg.sender:
                                    revert with 0, 'not enough approvals'
        if mintOperations[arg1].field_256 > ratifiedMintPool:
            require mintOperations[arg1].field_256 <= multiSigMintPool
            multiSigMintPool -= mintOperations[arg1].field_256
        else:
            if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                require mintOperations[arg1].field_256 <= multiSigMintPool
                multiSigMintPool -= mintOperations[arg1].field_256
            else:
                require mintOperations[arg1].field_256 <= ratifiedMintPool
                ratifiedMintPool -= mintOperations[arg1].field_256
    mintOperations[arg1].field_0 = 0
    mintOperations[arg1].field_256 = 0
    mintOperations[arg1].field_512 = 0
    mintOperations[arg1].field_768 = 0
    mintOperations[arg1].field_1024 = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args mintOperations[arg1].field_0, mintOperations[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FinalizeMint(arg1, msg.sender, mintOperations[arg1].field_0, mintOperations[arg1].field_256);
}

function ratifyMint(uint256 arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        if mintPaused:
            revert with 0, 'minting is paused'
    require ext_code.size(registryAddress)
    call registryAddress.hasAttribute(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args msg.sender, 'isTUSDMintRatifier'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'must be ratifier or owner'
    require arg1 < mintOperations.length
    if arg2 != mintOperations[arg1].field_0:
        revert with 0, 'to address does not match'
    if arg3 != mintOperations[arg1].field_256:
        revert with 0, 'amount does not match'
    require arg1 < mintOperations.length
    if stor[(6 * arg1) + ('name', 'mintOperations', 16) + 5][address(msg.sender)].field_0:
        revert with 0, 'already approved'
    require arg1 < mintOperations.length
    stor[('name', 'mintOperations', 16) + (6 * arg1) + 5][address(msg.sender)].field_0 = 1
    require mintOperations[arg1].field_768 + 1 >= mintOperations[arg1].field_768
    require arg1 < mintOperations.length
    mintOperations[arg1].field_768++
    emit MintRatified(arg1, msg.sender);
    if arg3 > ratifiedMintPool:
        if arg3 > multiSigMintPool:
            if owner == msg.sender:
                if owner != msg.sender:
                    if mintPaused:
                        revert with 0, 'minting is paused'
                require arg1 < mintOperations.length
                require arg1 < mintOperations.length
                if owner != msg.sender:
                    if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
                        revert with 0, 'this mint is invalid'
                    if mintOperations[arg1].field_1024:
                        revert with 0, 'this mint is paused'
                    if mintOperations[arg1].field_256 > ratifiedMintPool:
                        if mintOperations[arg1].field_256 > multiSigMintPool:
                            if owner != msg.sender:
                                revert with 0, 'not enough approvals'
                        else:
                            if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                if owner != msg.sender:
                                    revert with 0, 'not enough approvals'
                            else:
                                if mintOperations[arg1].field_768 < 3:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                    else:
                        if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                            if mintOperations[arg1].field_256 > multiSigMintPool:
                                if owner != msg.sender:
                                    revert with 0, 'not enough approvals'
                            else:
                                if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_768 < 3:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                        else:
                            if mintOperations[arg1].field_768 < 1:
                                if mintOperations[arg1].field_256 > multiSigMintPool:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_768 < 3:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                    if mintOperations[arg1].field_256 > ratifiedMintPool:
                        require mintOperations[arg1].field_256 <= multiSigMintPool
                        multiSigMintPool -= mintOperations[arg1].field_256
                    else:
                        if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                            require mintOperations[arg1].field_256 <= multiSigMintPool
                            multiSigMintPool -= mintOperations[arg1].field_256
                        else:
                            require mintOperations[arg1].field_256 <= ratifiedMintPool
                            ratifiedMintPool -= mintOperations[arg1].field_256
                mintOperations[arg1].field_0 = 0
                mintOperations[arg1].field_256 = 0
                mintOperations[arg1].field_512 = 0
                mintOperations[arg1].field_768 = 0
                mintOperations[arg1].field_1024 = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args mintOperations[arg1].field_0, mintOperations[arg1].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit FinalizeMint(arg1, msg.sender, mintOperations[arg1].field_0, mintOperations[arg1].field_256);
        else:
            if arg3 > multiSigMintThreshold:
                if owner == msg.sender:
                    if owner != msg.sender:
                        if mintPaused:
                            revert with 0, 'minting is paused'
                    require arg1 < mintOperations.length
                    require arg1 < mintOperations.length
                    if owner != msg.sender:
                        if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
                            revert with 0, 'this mint is invalid'
                        if mintOperations[arg1].field_1024:
                            revert with 0, 'this mint is paused'
                        if mintOperations[arg1].field_256 > ratifiedMintPool:
                            if mintOperations[arg1].field_256 > multiSigMintPool:
                                if owner != msg.sender:
                                    revert with 0, 'not enough approvals'
                            else:
                                if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_768 < 3:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                        else:
                            if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                if mintOperations[arg1].field_256 > multiSigMintPool:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_768 < 3:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                            else:
                                if mintOperations[arg1].field_768 < 1:
                                    if mintOperations[arg1].field_256 > multiSigMintPool:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_768 < 3:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                        if mintOperations[arg1].field_256 > ratifiedMintPool:
                            require mintOperations[arg1].field_256 <= multiSigMintPool
                            multiSigMintPool -= mintOperations[arg1].field_256
                        else:
                            if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                require mintOperations[arg1].field_256 <= multiSigMintPool
                                multiSigMintPool -= mintOperations[arg1].field_256
                            else:
                                require mintOperations[arg1].field_256 <= ratifiedMintPool
                                ratifiedMintPool -= mintOperations[arg1].field_256
                    mintOperations[arg1].field_0 = 0
                    mintOperations[arg1].field_256 = 0
                    mintOperations[arg1].field_512 = 0
                    mintOperations[arg1].field_768 = 0
                    mintOperations[arg1].field_1024 = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args mintOperations[arg1].field_0, mintOperations[arg1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit FinalizeMint(arg1, msg.sender, mintOperations[arg1].field_0, mintOperations[arg1].field_256);
            else:
                if mintOperations[arg1].field_768 >= 3:
                    if owner != msg.sender:
                        if mintPaused:
                            revert with 0, 'minting is paused'
                    require arg1 < mintOperations.length
                    require arg1 < mintOperations.length
                    if owner != msg.sender:
                        if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
                            revert with 0, 'this mint is invalid'
                        if mintOperations[arg1].field_1024:
                            revert with 0, 'this mint is paused'
                        if mintOperations[arg1].field_256 > ratifiedMintPool:
                            if mintOperations[arg1].field_256 > multiSigMintPool:
                                if owner != msg.sender:
                                    revert with 0, 'not enough approvals'
                            else:
                                if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_768 < 3:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                        else:
                            if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                if mintOperations[arg1].field_256 > multiSigMintPool:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_768 < 3:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                            else:
                                if mintOperations[arg1].field_768 < 1:
                                    if mintOperations[arg1].field_256 > multiSigMintPool:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_768 < 3:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                        if mintOperations[arg1].field_256 > ratifiedMintPool:
                            require mintOperations[arg1].field_256 <= multiSigMintPool
                            multiSigMintPool -= mintOperations[arg1].field_256
                        else:
                            if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                require mintOperations[arg1].field_256 <= multiSigMintPool
                                multiSigMintPool -= mintOperations[arg1].field_256
                            else:
                                require mintOperations[arg1].field_256 <= ratifiedMintPool
                                ratifiedMintPool -= mintOperations[arg1].field_256
                    mintOperations[arg1].field_0 = 0
                    mintOperations[arg1].field_256 = 0
                    mintOperations[arg1].field_512 = 0
                    mintOperations[arg1].field_768 = 0
                    mintOperations[arg1].field_1024 = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args mintOperations[arg1].field_0, mintOperations[arg1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit FinalizeMint(arg1, msg.sender, mintOperations[arg1].field_0, mintOperations[arg1].field_256);
                else:
                    if owner == msg.sender:
                        if owner != msg.sender:
                            if mintPaused:
                                revert with 0, 'minting is paused'
                        require arg1 < mintOperations.length
                        require arg1 < mintOperations.length
                        if owner != msg.sender:
                            if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
                                revert with 0, 'this mint is invalid'
                            if mintOperations[arg1].field_1024:
                                revert with 0, 'this mint is paused'
                            if mintOperations[arg1].field_256 > ratifiedMintPool:
                                if mintOperations[arg1].field_256 > multiSigMintPool:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_768 < 3:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                            else:
                                if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                    if mintOperations[arg1].field_256 > multiSigMintPool:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_768 < 3:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_768 < 1:
                                        if mintOperations[arg1].field_256 > multiSigMintPool:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                            else:
                                                if mintOperations[arg1].field_768 < 3:
                                                    if owner != msg.sender:
                                                        revert with 0, 'not enough approvals'
                            if mintOperations[arg1].field_256 > ratifiedMintPool:
                                require mintOperations[arg1].field_256 <= multiSigMintPool
                                multiSigMintPool -= mintOperations[arg1].field_256
                            else:
                                if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                    require mintOperations[arg1].field_256 <= multiSigMintPool
                                    multiSigMintPool -= mintOperations[arg1].field_256
                                else:
                                    require mintOperations[arg1].field_256 <= ratifiedMintPool
                                    ratifiedMintPool -= mintOperations[arg1].field_256
                        mintOperations[arg1].field_0 = 0
                        mintOperations[arg1].field_256 = 0
                        mintOperations[arg1].field_512 = 0
                        mintOperations[arg1].field_768 = 0
                        mintOperations[arg1].field_1024 = 0
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args mintOperations[arg1].field_0, mintOperations[arg1].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit FinalizeMint(arg1, msg.sender, mintOperations[arg1].field_0, mintOperations[arg1].field_256);
    else:
        if arg3 > ratifiedMintThreshold:
            if arg3 > multiSigMintPool:
                if owner == msg.sender:
                    if owner != msg.sender:
                        if mintPaused:
                            revert with 0, 'minting is paused'
                    require arg1 < mintOperations.length
                    require arg1 < mintOperations.length
                    if owner != msg.sender:
                        if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
                            revert with 0, 'this mint is invalid'
                        if mintOperations[arg1].field_1024:
                            revert with 0, 'this mint is paused'
                        if mintOperations[arg1].field_256 > ratifiedMintPool:
                            if mintOperations[arg1].field_256 > multiSigMintPool:
                                if owner != msg.sender:
                                    revert with 0, 'not enough approvals'
                            else:
                                if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_768 < 3:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                        else:
                            if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                if mintOperations[arg1].field_256 > multiSigMintPool:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_768 < 3:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                            else:
                                if mintOperations[arg1].field_768 < 1:
                                    if mintOperations[arg1].field_256 > multiSigMintPool:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_768 < 3:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                        if mintOperations[arg1].field_256 > ratifiedMintPool:
                            require mintOperations[arg1].field_256 <= multiSigMintPool
                            multiSigMintPool -= mintOperations[arg1].field_256
                        else:
                            if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                require mintOperations[arg1].field_256 <= multiSigMintPool
                                multiSigMintPool -= mintOperations[arg1].field_256
                            else:
                                require mintOperations[arg1].field_256 <= ratifiedMintPool
                                ratifiedMintPool -= mintOperations[arg1].field_256
                    mintOperations[arg1].field_0 = 0
                    mintOperations[arg1].field_256 = 0
                    mintOperations[arg1].field_512 = 0
                    mintOperations[arg1].field_768 = 0
                    mintOperations[arg1].field_1024 = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args mintOperations[arg1].field_0, mintOperations[arg1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit FinalizeMint(arg1, msg.sender, mintOperations[arg1].field_0, mintOperations[arg1].field_256);
            else:
                if arg3 > multiSigMintThreshold:
                    if owner == msg.sender:
                        if owner != msg.sender:
                            if mintPaused:
                                revert with 0, 'minting is paused'
                        require arg1 < mintOperations.length
                        require arg1 < mintOperations.length
                        if owner != msg.sender:
                            if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
                                revert with 0, 'this mint is invalid'
                            if mintOperations[arg1].field_1024:
                                revert with 0, 'this mint is paused'
                            if mintOperations[arg1].field_256 > ratifiedMintPool:
                                if mintOperations[arg1].field_256 > multiSigMintPool:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_768 < 3:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                            else:
                                if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                    if mintOperations[arg1].field_256 > multiSigMintPool:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_768 < 3:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_768 < 1:
                                        if mintOperations[arg1].field_256 > multiSigMintPool:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                            else:
                                                if mintOperations[arg1].field_768 < 3:
                                                    if owner != msg.sender:
                                                        revert with 0, 'not enough approvals'
                            if mintOperations[arg1].field_256 > ratifiedMintPool:
                                require mintOperations[arg1].field_256 <= multiSigMintPool
                                multiSigMintPool -= mintOperations[arg1].field_256
                            else:
                                if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                    require mintOperations[arg1].field_256 <= multiSigMintPool
                                    multiSigMintPool -= mintOperations[arg1].field_256
                                else:
                                    require mintOperations[arg1].field_256 <= ratifiedMintPool
                                    ratifiedMintPool -= mintOperations[arg1].field_256
                        mintOperations[arg1].field_0 = 0
                        mintOperations[arg1].field_256 = 0
                        mintOperations[arg1].field_512 = 0
                        mintOperations[arg1].field_768 = 0
                        mintOperations[arg1].field_1024 = 0
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args mintOperations[arg1].field_0, mintOperations[arg1].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit FinalizeMint(arg1, msg.sender, mintOperations[arg1].field_0, mintOperations[arg1].field_256);
                else:
                    if mintOperations[arg1].field_768 >= 3:
                        if owner != msg.sender:
                            if mintPaused:
                                revert with 0, 'minting is paused'
                        require arg1 < mintOperations.length
                        require arg1 < mintOperations.length
                        if owner != msg.sender:
                            if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
                                revert with 0, 'this mint is invalid'
                            if mintOperations[arg1].field_1024:
                                revert with 0, 'this mint is paused'
                            if mintOperations[arg1].field_256 > ratifiedMintPool:
                                if mintOperations[arg1].field_256 > multiSigMintPool:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_768 < 3:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                            else:
                                if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                    if mintOperations[arg1].field_256 > multiSigMintPool:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_768 < 3:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_768 < 1:
                                        if mintOperations[arg1].field_256 > multiSigMintPool:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                            else:
                                                if mintOperations[arg1].field_768 < 3:
                                                    if owner != msg.sender:
                                                        revert with 0, 'not enough approvals'
                            if mintOperations[arg1].field_256 > ratifiedMintPool:
                                require mintOperations[arg1].field_256 <= multiSigMintPool
                                multiSigMintPool -= mintOperations[arg1].field_256
                            else:
                                if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                    require mintOperations[arg1].field_256 <= multiSigMintPool
                                    multiSigMintPool -= mintOperations[arg1].field_256
                                else:
                                    require mintOperations[arg1].field_256 <= ratifiedMintPool
                                    ratifiedMintPool -= mintOperations[arg1].field_256
                        mintOperations[arg1].field_0 = 0
                        mintOperations[arg1].field_256 = 0
                        mintOperations[arg1].field_512 = 0
                        mintOperations[arg1].field_768 = 0
                        mintOperations[arg1].field_1024 = 0
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args mintOperations[arg1].field_0, mintOperations[arg1].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit FinalizeMint(arg1, msg.sender, mintOperations[arg1].field_0, mintOperations[arg1].field_256);
                    else:
                        if owner == msg.sender:
                            if owner != msg.sender:
                                if mintPaused:
                                    revert with 0, 'minting is paused'
                            require arg1 < mintOperations.length
                            require arg1 < mintOperations.length
                            if owner != msg.sender:
                                if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
                                    revert with 0, 'this mint is invalid'
                                if mintOperations[arg1].field_1024:
                                    revert with 0, 'this mint is paused'
                                if mintOperations[arg1].field_256 > ratifiedMintPool:
                                    if mintOperations[arg1].field_256 > multiSigMintPool:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_768 < 3:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                        if mintOperations[arg1].field_256 > multiSigMintPool:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                            else:
                                                if mintOperations[arg1].field_768 < 3:
                                                    if owner != msg.sender:
                                                        revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_768 < 1:
                                            if mintOperations[arg1].field_256 > multiSigMintPool:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                            else:
                                                if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                                    if owner != msg.sender:
                                                        revert with 0, 'not enough approvals'
                                                else:
                                                    if mintOperations[arg1].field_768 < 3:
                                                        if owner != msg.sender:
                                                            revert with 0, 'not enough approvals'
                                if mintOperations[arg1].field_256 > ratifiedMintPool:
                                    require mintOperations[arg1].field_256 <= multiSigMintPool
                                    multiSigMintPool -= mintOperations[arg1].field_256
                                else:
                                    if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                        require mintOperations[arg1].field_256 <= multiSigMintPool
                                        multiSigMintPool -= mintOperations[arg1].field_256
                                    else:
                                        require mintOperations[arg1].field_256 <= ratifiedMintPool
                                        ratifiedMintPool -= mintOperations[arg1].field_256
                            mintOperations[arg1].field_0 = 0
                            mintOperations[arg1].field_256 = 0
                            mintOperations[arg1].field_512 = 0
                            mintOperations[arg1].field_768 = 0
                            mintOperations[arg1].field_1024 = 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args mintOperations[arg1].field_0, mintOperations[arg1].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit FinalizeMint(arg1, msg.sender, mintOperations[arg1].field_0, mintOperations[arg1].field_256);
        else:
            if mintOperations[arg1].field_768 >= 1:
                if owner != msg.sender:
                    if mintPaused:
                        revert with 0, 'minting is paused'
                require arg1 < mintOperations.length
                require arg1 < mintOperations.length
                if owner != msg.sender:
                    if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
                        revert with 0, 'this mint is invalid'
                    if mintOperations[arg1].field_1024:
                        revert with 0, 'this mint is paused'
                    if mintOperations[arg1].field_256 > ratifiedMintPool:
                        if mintOperations[arg1].field_256 > multiSigMintPool:
                            if owner != msg.sender:
                                revert with 0, 'not enough approvals'
                        else:
                            if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                if owner != msg.sender:
                                    revert with 0, 'not enough approvals'
                            else:
                                if mintOperations[arg1].field_768 < 3:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                    else:
                        if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                            if mintOperations[arg1].field_256 > multiSigMintPool:
                                if owner != msg.sender:
                                    revert with 0, 'not enough approvals'
                            else:
                                if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_768 < 3:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                        else:
                            if mintOperations[arg1].field_768 < 1:
                                if mintOperations[arg1].field_256 > multiSigMintPool:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_768 < 3:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                    if mintOperations[arg1].field_256 > ratifiedMintPool:
                        require mintOperations[arg1].field_256 <= multiSigMintPool
                        multiSigMintPool -= mintOperations[arg1].field_256
                    else:
                        if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                            require mintOperations[arg1].field_256 <= multiSigMintPool
                            multiSigMintPool -= mintOperations[arg1].field_256
                        else:
                            require mintOperations[arg1].field_256 <= ratifiedMintPool
                            ratifiedMintPool -= mintOperations[arg1].field_256
                mintOperations[arg1].field_0 = 0
                mintOperations[arg1].field_256 = 0
                mintOperations[arg1].field_512 = 0
                mintOperations[arg1].field_768 = 0
                mintOperations[arg1].field_1024 = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args mintOperations[arg1].field_0, mintOperations[arg1].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit FinalizeMint(arg1, msg.sender, mintOperations[arg1].field_0, mintOperations[arg1].field_256);
            else:
                if arg3 > multiSigMintPool:
                    if owner == msg.sender:
                        if owner != msg.sender:
                            if mintPaused:
                                revert with 0, 'minting is paused'
                        require arg1 < mintOperations.length
                        require arg1 < mintOperations.length
                        if owner != msg.sender:
                            if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
                                revert with 0, 'this mint is invalid'
                            if mintOperations[arg1].field_1024:
                                revert with 0, 'this mint is paused'
                            if mintOperations[arg1].field_256 > ratifiedMintPool:
                                if mintOperations[arg1].field_256 > multiSigMintPool:
                                    if owner != msg.sender:
                                        revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_768 < 3:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                            else:
                                if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                    if mintOperations[arg1].field_256 > multiSigMintPool:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_768 < 3:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_768 < 1:
                                        if mintOperations[arg1].field_256 > multiSigMintPool:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                            else:
                                                if mintOperations[arg1].field_768 < 3:
                                                    if owner != msg.sender:
                                                        revert with 0, 'not enough approvals'
                            if mintOperations[arg1].field_256 > ratifiedMintPool:
                                require mintOperations[arg1].field_256 <= multiSigMintPool
                                multiSigMintPool -= mintOperations[arg1].field_256
                            else:
                                if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                    require mintOperations[arg1].field_256 <= multiSigMintPool
                                    multiSigMintPool -= mintOperations[arg1].field_256
                                else:
                                    require mintOperations[arg1].field_256 <= ratifiedMintPool
                                    ratifiedMintPool -= mintOperations[arg1].field_256
                        mintOperations[arg1].field_0 = 0
                        mintOperations[arg1].field_256 = 0
                        mintOperations[arg1].field_512 = 0
                        mintOperations[arg1].field_768 = 0
                        mintOperations[arg1].field_1024 = 0
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args mintOperations[arg1].field_0, mintOperations[arg1].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit FinalizeMint(arg1, msg.sender, mintOperations[arg1].field_0, mintOperations[arg1].field_256);
                else:
                    if arg3 > multiSigMintThreshold:
                        if owner == msg.sender:
                            if owner != msg.sender:
                                if mintPaused:
                                    revert with 0, 'minting is paused'
                            require arg1 < mintOperations.length
                            require arg1 < mintOperations.length
                            if owner != msg.sender:
                                if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
                                    revert with 0, 'this mint is invalid'
                                if mintOperations[arg1].field_1024:
                                    revert with 0, 'this mint is paused'
                                if mintOperations[arg1].field_256 > ratifiedMintPool:
                                    if mintOperations[arg1].field_256 > multiSigMintPool:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_768 < 3:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                        if mintOperations[arg1].field_256 > multiSigMintPool:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                            else:
                                                if mintOperations[arg1].field_768 < 3:
                                                    if owner != msg.sender:
                                                        revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_768 < 1:
                                            if mintOperations[arg1].field_256 > multiSigMintPool:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                            else:
                                                if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                                    if owner != msg.sender:
                                                        revert with 0, 'not enough approvals'
                                                else:
                                                    if mintOperations[arg1].field_768 < 3:
                                                        if owner != msg.sender:
                                                            revert with 0, 'not enough approvals'
                                if mintOperations[arg1].field_256 > ratifiedMintPool:
                                    require mintOperations[arg1].field_256 <= multiSigMintPool
                                    multiSigMintPool -= mintOperations[arg1].field_256
                                else:
                                    if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                        require mintOperations[arg1].field_256 <= multiSigMintPool
                                        multiSigMintPool -= mintOperations[arg1].field_256
                                    else:
                                        require mintOperations[arg1].field_256 <= ratifiedMintPool
                                        ratifiedMintPool -= mintOperations[arg1].field_256
                            mintOperations[arg1].field_0 = 0
                            mintOperations[arg1].field_256 = 0
                            mintOperations[arg1].field_512 = 0
                            mintOperations[arg1].field_768 = 0
                            mintOperations[arg1].field_1024 = 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args mintOperations[arg1].field_0, mintOperations[arg1].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit FinalizeMint(arg1, msg.sender, mintOperations[arg1].field_0, mintOperations[arg1].field_256);
                    else:
                        if mintOperations[arg1].field_768 >= 3:
                            if owner != msg.sender:
                                if mintPaused:
                                    revert with 0, 'minting is paused'
                            require arg1 < mintOperations.length
                            require arg1 < mintOperations.length
                            if owner != msg.sender:
                                if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
                                    revert with 0, 'this mint is invalid'
                                if mintOperations[arg1].field_1024:
                                    revert with 0, 'this mint is paused'
                                if mintOperations[arg1].field_256 > ratifiedMintPool:
                                    if mintOperations[arg1].field_256 > multiSigMintPool:
                                        if owner != msg.sender:
                                            revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_768 < 3:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                else:
                                    if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                        if mintOperations[arg1].field_256 > multiSigMintPool:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                            else:
                                                if mintOperations[arg1].field_768 < 3:
                                                    if owner != msg.sender:
                                                        revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_768 < 1:
                                            if mintOperations[arg1].field_256 > multiSigMintPool:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                            else:
                                                if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                                    if owner != msg.sender:
                                                        revert with 0, 'not enough approvals'
                                                else:
                                                    if mintOperations[arg1].field_768 < 3:
                                                        if owner != msg.sender:
                                                            revert with 0, 'not enough approvals'
                                if mintOperations[arg1].field_256 > ratifiedMintPool:
                                    require mintOperations[arg1].field_256 <= multiSigMintPool
                                    multiSigMintPool -= mintOperations[arg1].field_256
                                else:
                                    if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                        require mintOperations[arg1].field_256 <= multiSigMintPool
                                        multiSigMintPool -= mintOperations[arg1].field_256
                                    else:
                                        require mintOperations[arg1].field_256 <= ratifiedMintPool
                                        ratifiedMintPool -= mintOperations[arg1].field_256
                            mintOperations[arg1].field_0 = 0
                            mintOperations[arg1].field_256 = 0
                            mintOperations[arg1].field_512 = 0
                            mintOperations[arg1].field_768 = 0
                            mintOperations[arg1].field_1024 = 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args mintOperations[arg1].field_0, mintOperations[arg1].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit FinalizeMint(arg1, msg.sender, mintOperations[arg1].field_0, mintOperations[arg1].field_256);
                        else:
                            if owner == msg.sender:
                                if owner != msg.sender:
                                    if mintPaused:
                                        revert with 0, 'minting is paused'
                                require arg1 < mintOperations.length
                                require arg1 < mintOperations.length
                                if owner != msg.sender:
                                    if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
                                        revert with 0, 'this mint is invalid'
                                    if mintOperations[arg1].field_1024:
                                        revert with 0, 'this mint is paused'
                                    if mintOperations[arg1].field_256 > ratifiedMintPool:
                                        if mintOperations[arg1].field_256 > multiSigMintPool:
                                            if owner != msg.sender:
                                                revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                            else:
                                                if mintOperations[arg1].field_768 < 3:
                                                    if owner != msg.sender:
                                                        revert with 0, 'not enough approvals'
                                    else:
                                        if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                            if mintOperations[arg1].field_256 > multiSigMintPool:
                                                if owner != msg.sender:
                                                    revert with 0, 'not enough approvals'
                                            else:
                                                if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                                    if owner != msg.sender:
                                                        revert with 0, 'not enough approvals'
                                                else:
                                                    if mintOperations[arg1].field_768 < 3:
                                                        if owner != msg.sender:
                                                            revert with 0, 'not enough approvals'
                                        else:
                                            if mintOperations[arg1].field_768 < 1:
                                                if mintOperations[arg1].field_256 > multiSigMintPool:
                                                    if owner != msg.sender:
                                                        revert with 0, 'not enough approvals'
                                                else:
                                                    if mintOperations[arg1].field_256 > multiSigMintThreshold:
                                                        if owner != msg.sender:
                                                            revert with 0, 'not enough approvals'
                                                    else:
                                                        if mintOperations[arg1].field_768 < 3:
                                                            if owner != msg.sender:
                                                                revert with 0, 'not enough approvals'
                                    if mintOperations[arg1].field_256 > ratifiedMintPool:
                                        require mintOperations[arg1].field_256 <= multiSigMintPool
                                        multiSigMintPool -= mintOperations[arg1].field_256
                                    else:
                                        if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                                            require mintOperations[arg1].field_256 <= multiSigMintPool
                                            multiSigMintPool -= mintOperations[arg1].field_256
                                        else:
                                            require mintOperations[arg1].field_256 <= ratifiedMintPool
                                            ratifiedMintPool -= mintOperations[arg1].field_256
                                mintOperations[arg1].field_0 = 0
                                mintOperations[arg1].field_256 = 0
                                mintOperations[arg1].field_512 = 0
                                mintOperations[arg1].field_768 = 0
                                mintOperations[arg1].field_1024 = 0
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args mintOperations[arg1].field_0, mintOperations[arg1].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit FinalizeMint(arg1, msg.sender, mintOperations[arg1].field_0, mintOperations[arg1].field_256);
}



}
