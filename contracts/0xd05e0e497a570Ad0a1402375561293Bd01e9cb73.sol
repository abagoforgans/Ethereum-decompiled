contract main {




// =====================  Runtime code  =====================


#
#  - sub_3180bfe1(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
mapping of uint8 stor155;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
address devFundAddress;
uint256 sub_29a0f85b;
uint256 sub_a59efddd;
uint256 sub_43568eae;
uint256 sub_7581d1d1;
uint256 sub_1727bcc7;
uint256 roundLength;
uint256 sub_672ff5d4;
uint256 sub_de70289e;
uint256 currentRound;
uint256 startBlock;
uint256 lastRound;
uint256 sub_d7568324;
uint256 totalReleased;
uint256 rewardFund;
uint256 sub_fd6a93fb;
uint256 reserveFund;
uint256 developmentFund;
uint256 allocatedRewards;
uint256 sub_f73c1390;
mapping of uint256 nonceOf;

function name() {
    return name[0 len name.length]
}

function sub_1727bcc7(?) {
    return sub_1727bcc7
}

function totalSupply() {
    return totalSupply
}

function sub_29a0f85b(?) {
    return sub_29a0f85b
}

function decimals() {
    return decimals
}

function sub_43568eae(?) {
    return sub_43568eae
}

function startBlock() {
    return startBlock
}

function version() {
    return version[0 len version.length]
}

function sub_672ff5d4(?) {
    return sub_672ff5d4
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7581d1d1(?) {
    return sub_7581d1d1
}

function allocatedRewards() {
    return allocatedRewards
}

function lastRound() {
    return lastRound
}

function currentRound() {
    return currentRound
}

function developmentFund() {
    return developmentFund
}

function roundLength() {
    return roundLength
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a59efddd(?) {
    return sub_a59efddd
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor155[address(arg1)])
}

function devFundAddress() {
    return devFundAddress
}

function reserveFund() {
    return reserveFund
}

function sub_d7568324(?) {
    return sub_d7568324
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_de70289e(?) {
    return sub_de70289e
}

function totalReleased() {
    return totalReleased
}

function nonceOf(address arg1) {
    require calldata.size - 4 >= 32
    return nonceOf[address(arg1)]
}

function rewardFund() {
    return rewardFund
}

function sub_f73c1390(?) {
    return sub_f73c1390
}

function sub_fd6a93fb(?) {
    return sub_fd6a93fb
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_9701fa34(?) {
    require calldata.size - 4 >= 32
    return 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function renounceMinter() {
    require msg.sender
    require stor155[address(msg.sender)]
    stor155[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function roundNum() {
    require startBlock <= block.number
    require roundLength > 0
    require roundLength
    return (block.number - startBlock / roundLength)
}

function sub_4cf9b9aa(?) {
    require startBlock <= block.number
    require roundLength > 0
    require roundLength
    return ((block.number - startBlock / roundLength) - lastRound)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor155[address(msg.sender)]
    require arg1
    require not stor155[address(arg1)]
    stor155[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_ca6da57e(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 > sub_fd6a93fb:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough airdrop rewards available'
    sub_fd6a93fb -= arg1
    require sub_f73c1390 + arg1 >= sub_f73c1390
    sub_f73c1390 += arg1
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function allocateRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 > rewardFund:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough curation rewards available'
    rewardFund -= arg1
    require allocatedRewards + arg1 >= allocatedRewards
    allocatedRewards += arg1
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor155[address(msg.sender)]
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    require arg1
    if not stor155[address(arg1)]:
        require arg1
        require not stor155[address(arg1)]
        stor155[address(arg1)] = 1
        emit MinterAdded(arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function sub_14d8bbf1(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require allocatedRewards >= arg1
    mem[ceil32(arg2.length) + 160] = arg1
    mem[ceil32(arg2.length) + 192] = address(msg.sender)
    mem[ceil32(arg2.length) + 212] = nonceOf[address(msg.sender)]
    mem[ceil32(arg2.length) + 128] = 84
    if arg2.length != 65:
        if owner:
            revert with 0, 'Claim not authorized'
    else:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 27:
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if owner != address(signer):
                revert with 0, 'Claim not authorized'
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                if owner:
                    revert with 0, 'Claim not authorized'
            else:
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if owner != address(signer):
                    revert with 0, 'Claim not authorized'
    nonceOf[address(msg.sender)]++
    require arg1 <= allocatedRewards
    allocatedRewards -= arg1
    require ext_code.size(this.address)
    call this.address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer to claimant failed'
    return 1
}

function releaseTokens() {
    require startBlock <= block.number
    require roundLength > 0
    require roundLength
    if lastRound >= block.number - startBlock / roundLength:
        revert with 0, 'No new rewards available'
    require lastRound <= block.number - startBlock / roundLength
    if lastRound >= sub_1727bcc7:
        idx = 0
        s = 0
        t = totalReleased
        while idx < (block.number - startBlock / roundLength) - lastRound:
            if not sub_7581d1d1:
                require 10^decimals > 0
                require 10^decimals
                require s + (0 / 10^decimals) >= s
                require t + (0 / 10^decimals) >= t
                idx = idx + 1
                s = s + (0 / 10^decimals)
                t = t + (0 / 10^decimals)
                continue 
            require sub_7581d1d1
            require sub_7581d1d1 * t / sub_7581d1d1 == t
            require 10^decimals > 0
            require 10^decimals
            require s + (sub_7581d1d1 * t / 10^decimals) >= s
            require t + (sub_7581d1d1 * t / 10^decimals) >= t
            idx = idx + 1
            s = s + (sub_7581d1d1 * t / 10^decimals)
            t = t + (sub_7581d1d1 * t / 10^decimals)
            continue 
        require msg.sender
        require stor155[address(msg.sender)]
        require this.address
        require totalSupply + s >= totalSupply
        totalSupply += s
        require balanceOf[address(this.address)] + s >= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += s
        emit Transfer(s, 0, this.address);
        if not s:
            require sub_fd6a93fb >= sub_fd6a93fb
            require rewardFund >= rewardFund
            require reserveFund >= reserveFund
        else:
            require s
            require 4 * s / s == 4
            require sub_fd6a93fb + (4 * s / 5 / 3) >= sub_fd6a93fb
            sub_fd6a93fb += 4 * s / 5 / 3
            require rewardFund + (4 * s / 5 / 3) >= rewardFund
            rewardFund += 4 * s / 5 / 3
            require reserveFund + (4 * s / 5 / 3) >= reserveFund
            reserveFund += 4 * s / 5 / 3
        require developmentFund + (s / 5) >= developmentFund
        developmentFund += s / 5
        require ext_code.size(this.address)
        call this.address.0xa9059cbb with:
             gas gas_remaining wei
            args devFundAddress, developmentFund
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer to devFundAddress failed'
        developmentFund = 0
        lastRound = block.number - startBlock / roundLength
        require totalReleased + s >= totalReleased
        totalReleased += s
        emit 0x39c15e28: s, rewardFund, sub_fd6a93fb, developmentFund
    else:
        if block.number - startBlock / roundLength < sub_1727bcc7:
            if lastRound:
                if (block.number - startBlock / roundLength) - lastRound >= 100000:
                    require sub_fd6a93fb >= sub_fd6a93fb
                    require rewardFund >= rewardFund
                    require reserveFund >= reserveFund
                    require developmentFund >= developmentFund
                    require ext_code.size(this.address)
                    call this.address.0xa9059cbb with:
                         gas gas_remaining wei
                        args devFundAddress, developmentFund
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer to devFundAddress failed'
                    developmentFund = 0
                    lastRound = block.number - startBlock / roundLength
                    require totalReleased >= totalReleased
                    emit 0x39c15e28: 0, rewardFund, sub_fd6a93fb, developmentFund
                else:
                    idx = 0
                    s = 0
                    s = 0
                    while idx < (block.number - startBlock / roundLength) - lastRound:
                        if not sub_672ff5d4:
                            require 10^decimals > 0
                            require 10^decimals
                            require s + (0 / 10^decimals) >= s
                            sub_d7568324 = 0 / 10^decimals
                            idx = idx + 1
                            s = 0 / 10^decimals
                            s = s + (0 / 10^decimals)
                            continue 
                        require sub_672ff5d4
                        require sub_672ff5d4 * sub_d7568324 / sub_672ff5d4 == sub_d7568324
                        require 10^decimals > 0
                        require 10^decimals
                        require s + (sub_672ff5d4 * sub_d7568324 / 10^decimals) >= s
                        sub_d7568324 = sub_672ff5d4 * sub_d7568324 / 10^decimals
                        idx = idx + 1
                        s = sub_672ff5d4 * sub_d7568324 / 10^decimals
                        s = s + (sub_672ff5d4 * sub_d7568324 / 10^decimals)
                        continue 
                    if not s:
                        require sub_fd6a93fb >= sub_fd6a93fb
                        require rewardFund >= rewardFund
                        require reserveFund >= reserveFund
                    else:
                        require s
                        require 4 * s / s == 4
                        require sub_fd6a93fb + (4 * s / 5 / 3) >= sub_fd6a93fb
                        sub_fd6a93fb += 4 * s / 5 / 3
                        require rewardFund + (4 * s / 5 / 3) >= rewardFund
                        rewardFund += 4 * s / 5 / 3
                        require reserveFund + (4 * s / 5 / 3) >= reserveFund
                        reserveFund += 4 * s / 5 / 3
                    require developmentFund + (s / 5) >= developmentFund
                    developmentFund += s / 5
                    require ext_code.size(this.address)
                    call this.address.0xa9059cbb with:
                         gas gas_remaining wei
                        args devFundAddress, developmentFund
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer to devFundAddress failed'
                    developmentFund = 0
                    lastRound = block.number - startBlock / roundLength
                    require totalReleased + s >= totalReleased
                    totalReleased += s
                    emit 0x39c15e28: s, rewardFund, sub_fd6a93fb, developmentFund
            else:
                if (block.number - startBlock / roundLength) - lastRound >= 100000:
                    if not sub_29a0f85b:
                        require sub_fd6a93fb >= sub_fd6a93fb
                        require rewardFund >= rewardFund
                        require reserveFund >= reserveFund
                    else:
                        require sub_29a0f85b
                        require 4 * sub_29a0f85b / sub_29a0f85b == 4
                        require sub_fd6a93fb + (4 * sub_29a0f85b / 5 / 3) >= sub_fd6a93fb
                        sub_fd6a93fb += 4 * sub_29a0f85b / 5 / 3
                        require rewardFund + (4 * sub_29a0f85b / 5 / 3) >= rewardFund
                        rewardFund += 4 * sub_29a0f85b / 5 / 3
                        require reserveFund + (4 * sub_29a0f85b / 5 / 3) >= reserveFund
                        reserveFund += 4 * sub_29a0f85b / 5 / 3
                    require developmentFund + (sub_29a0f85b / 5) >= developmentFund
                    developmentFund += sub_29a0f85b / 5
                    require ext_code.size(this.address)
                    call this.address.0xa9059cbb with:
                         gas gas_remaining wei
                        args devFundAddress, developmentFund
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer to devFundAddress failed'
                    developmentFund = 0
                    lastRound = block.number - startBlock / roundLength
                    require totalReleased + sub_29a0f85b >= totalReleased
                    totalReleased += sub_29a0f85b
                    emit 0x39c15e28: sub_29a0f85b, rewardFund, sub_fd6a93fb, developmentFund
                else:
                    idx = 0
                    s = 0
                    s = sub_29a0f85b
                    while idx < (block.number - startBlock / roundLength) - lastRound:
                        if not sub_672ff5d4:
                            require 10^decimals > 0
                            require 10^decimals
                            require s + (0 / 10^decimals) >= s
                            sub_d7568324 = 0 / 10^decimals
                            idx = idx + 1
                            s = 0 / 10^decimals
                            s = s + (0 / 10^decimals)
                            continue 
                        require sub_672ff5d4
                        require sub_672ff5d4 * sub_d7568324 / sub_672ff5d4 == sub_d7568324
                        require 10^decimals > 0
                        require 10^decimals
                        require s + (sub_672ff5d4 * sub_d7568324 / 10^decimals) >= s
                        sub_d7568324 = sub_672ff5d4 * sub_d7568324 / 10^decimals
                        idx = idx + 1
                        s = sub_672ff5d4 * sub_d7568324 / 10^decimals
                        s = s + (sub_672ff5d4 * sub_d7568324 / 10^decimals)
                        continue 
                    if not s:
                        require sub_fd6a93fb >= sub_fd6a93fb
                        require rewardFund >= rewardFund
                        require reserveFund >= reserveFund
                    else:
                        require s
                        require 4 * s / s == 4
                        require sub_fd6a93fb + (4 * s / 5 / 3) >= sub_fd6a93fb
                        sub_fd6a93fb += 4 * s / 5 / 3
                        require rewardFund + (4 * s / 5 / 3) >= rewardFund
                        rewardFund += 4 * s / 5 / 3
                        require reserveFund + (4 * s / 5 / 3) >= reserveFund
                        reserveFund += 4 * s / 5 / 3
                    require developmentFund + (s / 5) >= developmentFund
                    developmentFund += s / 5
                    require ext_code.size(this.address)
                    call this.address.0xa9059cbb with:
                         gas gas_remaining wei
                        args devFundAddress, developmentFund
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer to devFundAddress failed'
                    developmentFund = 0
                    lastRound = block.number - startBlock / roundLength
                    require totalReleased + s >= totalReleased
                    totalReleased += s
                    emit 0x39c15e28: s, rewardFund, sub_fd6a93fb, developmentFund
        else:
            require totalReleased <= sub_de70289e
            require sub_1727bcc7 <= block.number - startBlock / roundLength
            idx = 0
            s = 0
            t = sub_de70289e
            while idx < (block.number - startBlock / roundLength) + -sub_1727bcc7 + 1:
                if not sub_7581d1d1:
                    require 10^decimals > 0
                    require 10^decimals
                    require s + (0 / 10^decimals) >= s
                    require t + (0 / 10^decimals) >= t
                    idx = idx + 1
                    s = s + (0 / 10^decimals)
                    t = t + (0 / 10^decimals)
                    continue 
                require sub_7581d1d1
                require sub_7581d1d1 * t / sub_7581d1d1 == t
                require 10^decimals > 0
                require 10^decimals
                require s + (sub_7581d1d1 * t / 10^decimals) >= s
                require t + (sub_7581d1d1 * t / 10^decimals) >= t
                idx = idx + 1
                s = s + (sub_7581d1d1 * t / 10^decimals)
                t = t + (sub_7581d1d1 * t / 10^decimals)
                continue 
            require s >= 0
            require msg.sender
            require stor155[address(msg.sender)]
            require this.address
            require totalSupply + s >= totalSupply
            totalSupply += s
            require balanceOf[address(this.address)] + s >= balanceOf[address(this.address)]
            balanceOf[address(this.address)] += s
            emit Transfer(s, 0, this.address);
            if not sub_de70289e - totalReleased + s:
                require sub_fd6a93fb >= sub_fd6a93fb
                require rewardFund >= rewardFund
                require reserveFund >= reserveFund
            else:
                require sub_de70289e - totalReleased + s
                require 4 * sub_de70289e - totalReleased + s / sub_de70289e - totalReleased + s == 4
                require sub_fd6a93fb + (4 * sub_de70289e - totalReleased + s / 5 / 3) >= sub_fd6a93fb
                sub_fd6a93fb += 4 * sub_de70289e - totalReleased + s / 5 / 3
                require rewardFund + (4 * sub_de70289e - totalReleased + s / 5 / 3) >= rewardFund
                rewardFund += 4 * sub_de70289e - totalReleased + s / 5 / 3
                require reserveFund + (4 * sub_de70289e - totalReleased + s / 5 / 3) >= reserveFund
                reserveFund += 4 * sub_de70289e - totalReleased + s / 5 / 3
            require developmentFund + (sub_de70289e - totalReleased + s / 5) >= developmentFund
            developmentFund += sub_de70289e - totalReleased + s / 5
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args devFundAddress, developmentFund
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer to devFundAddress failed'
            developmentFund = 0
            lastRound = block.number - startBlock / roundLength
            require sub_de70289e + s >= totalReleased
            totalReleased = sub_de70289e + s
            emit 0x39c15e28: sub_de70289e - totalReleased + s, rewardFund, sub_fd6a93fb, developmentFund
    return 1
}



}
