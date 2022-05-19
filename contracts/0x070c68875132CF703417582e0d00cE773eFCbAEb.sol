contract main {




// =====================  Runtime code  =====================


const INVESTOR_LOCK_DURATION = (4320 * 24 * 3600)

const TEAM_LOCK_DURATION_PART1 = (8760 * 24 * 3600)

const TEAM_LOCK_DURATION_PART2 = (17520 * 24 * 3600)


address owner;
array of struct tokenTimelockCount;
address tokenAddress;
uint8 stor3; offset 160
address crowdsaleAddress;

function activated() {
    return bool(stor3)
}

function getTokenTimelockCount(address arg1) {
    return tokenTimelockCount[address(arg1)].field_0
}

function getTokenTimelockDetails(address arg1, uint256 arg2) {
    require arg2 < tokenTimelockCount[address(arg1)].field_0
    require arg2 < tokenTimelockCount[address(arg1)].field_0
    require arg2 < tokenTimelockCount[address(arg1)].field_0
    require arg2 < tokenTimelockCount[address(arg1)].field_0
    require arg2 < tokenTimelockCount[address(arg1)].field_0
    require arg2 < tokenTimelockCount[address(arg1)].field_0
    return tokenTimelockCount[address(arg1)][arg2].field_0, 
           tokenTimelockCount[address(arg1)][arg2].field_256,
           bool(tokenTimelockCount[address(arg1)][arg2].field_512),
           bool(tokenTimelockCount[address(arg1)][arg2].field_520),
           bool(tokenTimelockCount[address(arg1)][arg2].field_528)
}

function owner() {
    return owner
}

function crowdsale() {
    return crowdsaleAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function activate() {
    require msg.sender == crowdsaleAddress
    stor3 = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setCrowdsale(address arg1) {
    require msg.sender == owner
    require arg1
    crowdsaleAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function releaseFor(address arg1, uint256 arg2) {
    require stor3
    require arg1
    require arg2 < tokenTimelockCount[address(arg1)].field_0
    require arg2 < tokenTimelockCount[address(arg1)].field_0
    require not tokenTimelockCount[address(arg1)][arg2].field_528
    require arg2 < tokenTimelockCount[address(arg1)].field_0
    require not tokenTimelockCount[address(arg1)][arg2].field_512
    require block.timestamp >= tokenTimelockCount[address(arg1)][arg2].field_256
    tokenTimelockCount[address(arg1)][arg2].field_512 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), tokenTimelockCount[address(arg1)][arg2].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenTimelockReleased(tokenTimelockCount[address(arg1)][arg2].field_0, arg1);
}

function release(uint256 arg1) {
    require stor3
    require msg.sender
    require arg1 < tokenTimelockCount[address(msg.sender)].field_0
    require arg1 < tokenTimelockCount[address(msg.sender)].field_0
    require not tokenTimelockCount[address(msg.sender)][arg1].field_528
    require arg1 < tokenTimelockCount[address(msg.sender)].field_0
    require not tokenTimelockCount[address(msg.sender)][arg1].field_512
    require block.timestamp >= tokenTimelockCount[address(msg.sender)][arg1].field_256
    tokenTimelockCount[address(msg.sender)][arg1].field_512 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, tokenTimelockCount[address(msg.sender)][arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenTimelockReleased(tokenTimelockCount[address(msg.sender)][arg1].field_0, msg.sender);
}

function revokeTokenTimelock(address arg1, uint256 arg2) {
    require stor3
    require msg.sender == owner
    require arg1
    require arg2 < tokenTimelockCount[address(arg1)].field_0
    require arg2 < tokenTimelockCount[address(arg1)].field_0
    require not tokenTimelockCount[address(arg1)][arg2].field_528
    require arg2 < tokenTimelockCount[address(arg1)].field_0
    require tokenTimelockCount[address(arg1)][arg2].field_520
    require arg2 < tokenTimelockCount[address(arg1)].field_0
    require not tokenTimelockCount[address(arg1)][arg2].field_512
    require arg2 < tokenTimelockCount[address(arg1)].field_0
    tokenTimelockCount[address(arg1)][arg2].field_528 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, tokenTimelockCount[address(arg1)][arg2].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenTimelockRevoked(arg1);
}

function createInvestorTokenTimeLock(address arg1, uint256 arg2, uint256 arg3, address arg4) {
    require msg.sender == crowdsaleAddress
    require arg1
    require arg2 > 0
    require arg4
    require arg3 + (4320 * 24 * 3600) >= arg3
    tokenTimelockCount[address(arg1)].field_0++
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_0 = arg2
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_256 = arg3 + (4320 * 24 * 3600)
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_512 = 0
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_520 = 0
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_528 = 0
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_536 = 0
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_536 = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg4), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenTimelockCreated(arg3 + (4320 * 24 * 3600), 0, arg2, arg1);
    return 1
}

function createTeamTokenTimeLock(address arg1, uint256 arg2, uint256 arg3, address arg4) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require arg4
    require arg3 + (8760 * 24 * 3600) >= arg3
    tokenTimelockCount[address(arg1)].field_0++
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_0 = arg2 / 2
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_255 = 0
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_256 = arg3 + (8760 * 24 * 3600)
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_512 = 0
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_520 = 1
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_528 = 0
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_536 = 0
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_536 = 0
    require arg3 + (17520 * 24 * 3600) >= arg3
    tokenTimelockCount[address(arg1)].field_0++
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_0 = arg2 / 2
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_255 = 0
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_256 = arg3 + (17520 * 24 * 3600)
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_512 = 0
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_520 = 1
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_528 = 0
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_536 = 0
    tokenTimelockCount[address(arg1)][tokenTimelockCount[address(arg1)].field_0].field_536 = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg4), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenTimelockCreated(arg3 + (8760 * 24 * 3600), 1, arg2 / 2, arg1);
    emit TokenTimelockCreated(arg3 + (17520 * 24 * 3600), 1, arg2 / 2, arg1);
    return 1
}

function changeBeneficiary(uint256 arg1, address arg2) {
    require stor3
    require msg.sender
    require arg1 < tokenTimelockCount[address(msg.sender)].field_0
    require arg1 < tokenTimelockCount[address(msg.sender)].field_0
    require not tokenTimelockCount[address(msg.sender)][arg1].field_528
    require arg1 < tokenTimelockCount[msg.sender].field_0
    tokenTimelockCount[address(arg2)].field_0++
    tokenTimelockCount[address(arg2)][tokenTimelockCount[address(arg2)].field_0].field_0 = tokenTimelockCount[msg.sender][arg1].field_0
    tokenTimelockCount[address(arg2)][tokenTimelockCount[address(arg2)].field_0].field_256 = tokenTimelockCount[msg.sender][arg1].field_256
    tokenTimelockCount[address(arg2)][tokenTimelockCount[address(arg2)].field_0].field_512 = uint8(bool(tokenTimelockCount[msg.sender][arg1].field_512))
    tokenTimelockCount[address(arg2)][tokenTimelockCount[address(arg2)].field_0].field_512 = uint8(bool(tokenTimelockCount[msg.sender][arg1].field_512))
    tokenTimelockCount[address(arg2)][tokenTimelockCount[address(arg2)].field_0].field_520 = Mask(248, 0, bool(tokenTimelockCount[msg.sender][arg1].field_520))
    tokenTimelockCount[address(arg2)][tokenTimelockCount[address(arg2)].field_0].field_528 = Mask(240, 16, bool(tokenTimelockCount[msg.sender][arg1].field_512)) >> 16
    tokenTimelockCount[address(arg2)][tokenTimelockCount[address(arg2)].field_0].field_512 = uint8(bool(tokenTimelockCount[msg.sender][arg1].field_512))
    tokenTimelockCount[address(arg2)][tokenTimelockCount[address(arg2)].field_0].field_520 = uint8(bool(tokenTimelockCount[msg.sender][arg1].field_520))
    tokenTimelockCount[address(arg2)][tokenTimelockCount[address(arg2)].field_0].field_528 = Mask(240, 0, bool(tokenTimelockCount[msg.sender][arg1].field_528))
    tokenTimelockCount[address(arg2)][tokenTimelockCount[address(arg2)].field_0].field_536 = Mask(232, 24, bool(tokenTimelockCount[msg.sender][arg1].field_512)) >> 24
    tokenTimelockCount[address(arg2)][tokenTimelockCount[address(arg2)].field_0].field_536 = Mask(232, 16, bool(tokenTimelockCount[msg.sender][arg1].field_520)) >> 16
    if tokenTimelockCount[msg.sender].field_0 > 1:
        require 1 <= tokenTimelockCount[msg.sender].field_0
        require tokenTimelockCount[msg.sender].field_0 - 1 < tokenTimelockCount[msg.sender].field_0
        require arg1 < tokenTimelockCount[msg.sender].field_0
        tokenTimelockCount[msg.sender][arg1].field_0 = tokenTimelockCount[msg.sender][tokenTimelockCount[msg.sender].field_0].field_0
        tokenTimelockCount[msg.sender][arg1].field_256 = tokenTimelockCount[msg.sender][tokenTimelockCount[msg.sender].field_0].field_0
        tokenTimelockCount[msg.sender][arg1].field_512 = uint8(bool(tokenTimelockCount[msg.sender][tokenTimelockCount[msg.sender].field_0].field_0))
        tokenTimelockCount[msg.sender][arg1].field_512 = uint8(bool(tokenTimelockCount[msg.sender][tokenTimelockCount[msg.sender].field_0].field_0))
        tokenTimelockCount[msg.sender][arg1].field_520 = Mask(248, 0, bool(tokenTimelockCount[msg.sender][tokenTimelockCount[msg.sender].field_0].field_0))
        tokenTimelockCount[msg.sender][arg1].field_528 = Mask(240, 16, bool(tokenTimelockCount[msg.sender][tokenTimelockCount[msg.sender].field_0].field_0)) >> 16
        tokenTimelockCount[msg.sender][arg1].field_512 = uint8(bool(tokenTimelockCount[msg.sender][tokenTimelockCount[msg.sender].field_0].field_0))
        tokenTimelockCount[msg.sender][arg1].field_520 = uint8(bool(tokenTimelockCount[msg.sender][tokenTimelockCount[msg.sender].field_0].field_0))
        tokenTimelockCount[msg.sender][arg1].field_528 = Mask(240, 0, bool(tokenTimelockCount[msg.sender][tokenTimelockCount[msg.sender].field_0].field_0))
        tokenTimelockCount[msg.sender][arg1].field_536 = Mask(232, 24, bool(tokenTimelockCount[msg.sender][tokenTimelockCount[msg.sender].field_0].field_0)) >> 24
        tokenTimelockCount[msg.sender][arg1].field_536 = Mask(232, 16, bool(tokenTimelockCount[msg.sender][tokenTimelockCount[msg.sender].field_0].field_0)) >> 16
        require 1 <= tokenTimelockCount[msg.sender].field_0
        require tokenTimelockCount[msg.sender].field_0 - 1 < tokenTimelockCount[msg.sender].field_0
        tokenTimelockCount[msg.sender][tokenTimelockCount[msg.sender].field_0].field_0 = 0
        tokenTimelockCount[msg.sender][tokenTimelockCount[msg.sender].field_0].field_0 = 0
        tokenTimelockCount[msg.sender][tokenTimelockCount[msg.sender].field_0].field_0 = 0
    tokenTimelockCount[msg.sender].field_0--
    if tokenTimelockCount[msg.sender].field_0 > tokenTimelockCount[msg.sender].field_0 - 1:
        idx = (3 * tokenTimelockCount[msg.sender].field_0) - 3
        while 3 * tokenTimelockCount[msg.sender].field_0 > idx:
            tokenTimelockCount[msg.sender][idx].field_0 = 0
            tokenTimelockCount[msg.sender][idx].field_256 = 0
            tokenTimelockCount[msg.sender][idx].field_512 = 0
            idx = idx + 3
            continue 
    emit TokenTimelockBeneficiaryChanged(msg.sender, arg2);
}



}
