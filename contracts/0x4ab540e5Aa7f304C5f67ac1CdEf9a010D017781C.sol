contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 stor1;
address owner; offset 8
address whitelistingAddress;
address tokenAddress;
mapping of struct contributions;
uint256 sub_57784424;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 weiRaised;
uint256 tokenRaised;
mapping of uint256 stor11;
uint256 tokenCap;
uint256 individualCap;
uint256 totalSupply;
address vaultAddress;
uint256 sub_06c7d3e4;
address vestingAddress;
mapping of uint256 sub_e073520b;
uint256 stor19;

function individualCap() {
    return individualCap
}

function sub_06c7d3e4(?) {
    return sub_06c7d3e4
}

function totalSupply() {
    return totalSupply
}

function contributions(uint256 arg1) {
    require calldata.size - 4 >= 32
    return contributions[arg1].field_0, 
           contributions[arg1].field_256,
           contributions[arg1].field_512,
           bool(contributions[arg1].field_768)
}

function tokenRaised() {
    return tokenRaised
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function vesting() {
    return vestingAddress
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function whitelisting() {
    return whitelistingAddress
}

function wallet() {
    return walletAddress
}

function sub_57784424(?) {
    return sub_57784424
}

function paused() {
    return bool(stor1)
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function tokenCap() {
    return tokenCap
}

function sub_e073520b(?) {
    require calldata.size - 4 >= 32
    return sub_e073520b[arg1]
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_46515e1b(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor19 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTokenCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    tokenCap = arg1
}

function hasEnded() {
    if tokenCap <= totalSupply:
        return tokenCap <= totalSupply
    return (block.timestamp > endTime)
}

function setIndividualCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    individualCap = arg1
}

function unpause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require stor1
    stor1 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require not stor1
    stor1 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_053a504e(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > block.timestamp
    require block.timestamp < sub_06c7d3e4
    require arg1 > endTime
    sub_06c7d3e4 = arg1
}

function setEndTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > block.timestamp
    require block.timestamp < endTime
    require arg1 > startTime
    endTime = arg1
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > block.timestamp
    require block.timestamp < startTime
    require arg1 < endTime
    startTime = arg1
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function closeRefunds() {
    require msg.sender == owner
    require block.timestamp > sub_06c7d3e4
    require ext_code.size(vaultAddress)
    call vaultAddress.close() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferTokenOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit 0x670e929e: owner, arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7f647f9d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not contributions[arg1].field_768
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args contributions[arg1].field_0, contributions[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require contributions[arg1].field_256 <= weiRaised
    weiRaised -= contributions[arg1].field_256
    contributions[arg1].field_0 = 0
    contributions[arg1].field_256 = 0
    contributions[arg1].field_512 = 0
    contributions[arg1].field_768 = 0
}

function _fallback() payable {
    require not stor1
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value <= 375 * 10^16 * 24 * 3600
    require msg.value + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
    require msg.value + stor11[address(msg.sender)] <= 385 * 10^18
    if block.timestamp <= startTime + 600:
        require ext_code.size(whitelistingAddress)
        staticcall whitelistingAddress.0x8480760c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    contributions[stor5].field_0 = msg.sender
    contributions[stor5].field_256 = msg.value
    contributions[stor5].field_512 = block.timestamp
    require msg.value + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
    stor11[address(msg.sender)] += msg.value
    require contributions[stor5].field_256 + weiRaised >= weiRaised
    weiRaised += contributions[stor5].field_256
    emit 0xdc832774: contributions[stor5].field_256, contributions[stor5].field_512, sub_57784424, contributions[stor5].field_0
    sub_57784424++
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6384d46c(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require block.timestamp >= endTime
    require ext_code.size(whitelistingAddress)
    staticcall whitelistingAddress.isInvestorApproved(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require tokenCap >= arg2 + totalSupply
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg2 >= arg2
    require individualCap >= ext_call.return_data[0] + arg2
    require arg2 + tokenRaised >= tokenRaised
    tokenRaised += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.sethodlPremium(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), arg2, stor19
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenPurchase(0, arg2, msg.sender, arg1);
}

function allocateTokens(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require not contributions[arg1].field_768
    require block.timestamp >= endTime
    require ext_code.size(whitelistingAddress)
    staticcall whitelistingAddress.isInvestorApproved(address arg1) with:
            gas gas_remaining wei
           args contributions[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require tokenCap >= arg2 + totalSupply
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args contributions[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg2 >= arg2
    require individualCap >= ext_call.return_data[0] + arg2
    contributions[arg1].field_768 = 1
    require arg2 + tokenRaised >= tokenRaised
    tokenRaised += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args contributions[arg1].field_0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.sethodlPremium(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args contributions[arg1].field_0, arg2, stor19
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenPurchase(contributions[arg1].field_256, arg2, msg.sender, contributions[arg1].field_0);
}

function sub_aaf4cc69(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require msg.sender == owner
    require ('cd', 36).length == ('cd', 4).length
    require ('cd', 68).length == ('cd', 36).length
    idx = 0
    while idx < ('cd', 4).length:
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 'Invalid address'
        require block.timestamp >= endTime
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] + totalSupply >= totalSupply
        totalSupply += cd[((32 * idx) + cd[36] + 36)]
        require tokenCap >= cd[((32 * idx) + cd[36] + 36)] + totalSupply
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[36] + 36)] + sub_e073520b[address(cd[((32 * idx) + cd[4] + 36)])] >= sub_e073520b[address(cd[((32 * idx) + cd[4] + 36)])]
        require idx < ('cd', 4).length
        sub_e073520b[address(cd[((32 * idx) + cd[4] + 36)])] += cd[((32 * idx) + cd[36] + 36)]
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 18
        require individualCap >= sub_e073520b[address(cd[((32 * idx) + cd[4] + 36)])]
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] + tokenRaised >= tokenRaised
        tokenRaised += cd[((32 * idx) + cd[36] + 36)]
        require idx < ('cd', 36).length
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args vestingAddress, cd[((32 * idx) + cd[36] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        require uint8(cd[((32 * idx) + cd[68] + 36)]) <= 6
        mem[96] = 0x4460a2ca00000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[132] = cd[((32 * idx) + cd[36] + 36)]
        mem[164] = block.timestamp
        mem[196] = uint8(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(vestingAddress)
        call vestingAddress.initializeVesting(address arg1, uint256 arg2, uint256 arg3, uint8 arg4) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)], block.timestamp, uint8(cd[((32 * idx) + cd[68] + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
