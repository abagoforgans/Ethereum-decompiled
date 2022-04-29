contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;

function _fallback() payable {
    stor5 = 0
    stor6 = 3
    stor7 = 12
    stor8 = 720 * 24 * 3600
    stor9 = 0
    require not msg.value
    stor0 = msg.sender
    stor3 = code.data[2951 len 20]
    return code.data[127 len 2812]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 stor2;
address lALATokenAddress;
uint256 totalUnreleasedTokens;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
mapping of struct vestingMap;

function allocateAgents(address arg1) {
    return bool(stor2[arg1])
}

function LALATokenAddress() {
    return lALATokenAddress
}

function vestingMap(address arg1) {
    return vestingMap[arg1].field_0, 
           vestingMap[arg1].field_256,
           vestingMap[arg1].field_512,
           vestingMap[arg1].field_768,
           vestingMap[arg1].field_1024,
           vestingMap[arg1].field_1280,
           bool(vestingMap[arg1].field_1536)
}

function owner() {
    return owner
}

function isVestingSet(address arg1) {
    return bool(vestingMap[address(arg1)].field_1024)
}

function newOwner() {
    return newOwner
}

function totalUnreleasedTokens() {
    return totalUnreleasedTokens
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function setAllocateAgent(address arg1, bool arg2) {
    require owner == msg.sender
    stor2[address(arg1)] = uint8(arg2)
    emit AllocateAgentChanged(address(arg1), arg2);
}

function freezeChangesToVesting(address arg1) {
    require not vestingMap[address(arg1)].field_1536
    require stor2[address(msg.sender)]
    require vestingMap[address(arg1)].field_1024
    vestingMap[address(arg1)].field_1536 = 1
}

function setDefaultVestingParameters(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) {
    require stor2[address(msg.sender)]
    require arg4
    require arg3
    require arg2 <= arg3
    stor5 = arg1
    stor6 = arg2
    stor7 = arg3
    stor8 = arg4
    stor9 = uint8(arg5)
}

function setVesting(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, bool arg7) {
    require not vestingMap[address(arg1)].field_1536
    require stor2[address(msg.sender)]
    require arg5
    if not arg6:
        require vestingMap[address(arg1)].field_1024 > 0
    require arg4
    require arg3 <= arg4
    if arg2:
        vestingMap[address(arg1)].field_0 = arg2
    else:
        vestingMap[address(arg1)].field_0 = block.timestamp
    vestingMap[address(arg1)].field_256 = arg3
    vestingMap[address(arg1)].field_512 = arg4
    vestingMap[address(arg1)].field_768 = arg5
    if not vestingMap[address(arg1)].field_1024:
        require arg6 + totalUnreleasedTokens >= totalUnreleasedTokens
        require ext_code.size(lALATokenAddress)
        call lALATokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] >= arg6 + totalUnreleasedTokens
        require arg6 + totalUnreleasedTokens >= totalUnreleasedTokens
        totalUnreleasedTokens += arg6
        vestingMap[address(arg1)].field_1024 = arg6
    vestingMap[address(arg1)].field_1280 = 0
    vestingMap[address(arg1)].field_1536 = uint8(arg7)
}

function setVestingWithDefaultSchedule(address arg1, uint256 arg2) {
    require not vestingMap[address(arg1)].field_1536
    require stor2[address(msg.sender)]
    require not vestingMap[address(arg1)].field_1536
    require stor2[address(msg.sender)]
    require stor8
    if not arg2:
        require vestingMap[address(arg1)].field_1024 > 0
    require stor7
    require stor6 <= stor7
    if stor5:
        vestingMap[address(arg1)].field_0 = stor5
    else:
        vestingMap[address(arg1)].field_0 = block.timestamp
    vestingMap[address(arg1)].field_256 = stor6
    vestingMap[address(arg1)].field_512 = stor7
    vestingMap[address(arg1)].field_768 = stor8
    if not vestingMap[address(arg1)].field_1024:
        require arg2 + totalUnreleasedTokens >= totalUnreleasedTokens
        require ext_code.size(lALATokenAddress)
        call lALATokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] >= arg2 + totalUnreleasedTokens
        require arg2 + totalUnreleasedTokens >= totalUnreleasedTokens
        totalUnreleasedTokens += arg2
        vestingMap[address(arg1)].field_1024 = arg2
    vestingMap[address(arg1)].field_1280 = 0
    vestingMap[address(arg1)].field_1536 = uint8(bool(stor9))
}

function releaseVestedTokens(address arg1) {
    require vestingMap[address(arg1)].field_1536
    require vestingMap[address(arg1)].field_1280 <= vestingMap[address(arg1)].field_1024
    require vestingMap[address(arg1)].field_1024 - vestingMap[address(arg1)].field_1280 > 0
    require vestingMap[address(arg1)].field_768
    require vestingMap[address(arg1)].field_256 <= block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768
    require vestingMap[address(arg1)].field_512
    if vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512 * vestingMap[address(arg1)].field_512 == vestingMap[address(arg1)].field_1024:
        if not vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512:
            if 0 <= vestingMap[address(arg1)].field_1024:
                require vestingMap[address(arg1)].field_1280 <= 0
                require 0 >= vestingMap[address(arg1)].field_1280
                vestingMap[address(arg1)].field_1280 = 0
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), -vestingMap[address(arg1)].field_1280
                require ext_call.success
                require -vestingMap[address(arg1)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens += vestingMap[address(arg1)].field_1280
                emit VestedTokensReleased(address(arg1), -vestingMap[address(arg1)].field_1280);
            else:
                require vestingMap[address(arg1)].field_1280 <= vestingMap[address(arg1)].field_1024
                require vestingMap[address(arg1)].field_1024 >= vestingMap[address(arg1)].field_1280
                vestingMap[address(arg1)].field_1280 = vestingMap[address(arg1)].field_1024
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), vestingMap[address(arg1)].field_1024 - vestingMap[address(arg1)].field_1280
                require ext_call.success
                require vestingMap[address(arg1)].field_1024 - vestingMap[address(arg1)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens = totalUnreleasedTokens - vestingMap[address(arg1)].field_1024 + vestingMap[address(arg1)].field_1280
                emit VestedTokensReleased(address(arg1), vestingMap[address(arg1)].field_1024 - vestingMap[address(arg1)].field_1280);
        else:
            require block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768 * vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512 / vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512 == block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768
            if block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768 * vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512 <= vestingMap[address(arg1)].field_1024:
                require vestingMap[address(arg1)].field_1280 <= block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768 * vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512
                require block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768 * vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512 >= vestingMap[address(arg1)].field_1280
                vestingMap[address(arg1)].field_1280 = block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768 * vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768 * vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512) - vestingMap[address(arg1)].field_1280
                require ext_call.success
                require (block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768 * vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512) - vestingMap[address(arg1)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens = totalUnreleasedTokens - (block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768 * vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512) + vestingMap[address(arg1)].field_1280
                emit VestedTokensReleased(address(arg1), (block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768 * vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512) - vestingMap[address(arg1)].field_1280);
            else:
                require vestingMap[address(arg1)].field_1280 <= vestingMap[address(arg1)].field_1024
                require vestingMap[address(arg1)].field_1024 >= vestingMap[address(arg1)].field_1280
                vestingMap[address(arg1)].field_1280 = vestingMap[address(arg1)].field_1024
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), vestingMap[address(arg1)].field_1024 - vestingMap[address(arg1)].field_1280
                require ext_call.success
                require vestingMap[address(arg1)].field_1024 - vestingMap[address(arg1)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens = totalUnreleasedTokens - vestingMap[address(arg1)].field_1024 + vestingMap[address(arg1)].field_1280
                emit VestedTokensReleased(address(arg1), vestingMap[address(arg1)].field_1024 - vestingMap[address(arg1)].field_1280);
    else:
        if not (vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512) + 1:
            if 0 <= vestingMap[address(arg1)].field_1024:
                require vestingMap[address(arg1)].field_1280 <= 0
                require 0 >= vestingMap[address(arg1)].field_1280
                vestingMap[address(arg1)].field_1280 = 0
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), -vestingMap[address(arg1)].field_1280
                require ext_call.success
                require -vestingMap[address(arg1)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens += vestingMap[address(arg1)].field_1280
                emit VestedTokensReleased(address(arg1), -vestingMap[address(arg1)].field_1280);
            else:
                require vestingMap[address(arg1)].field_1280 <= vestingMap[address(arg1)].field_1024
                require vestingMap[address(arg1)].field_1024 >= vestingMap[address(arg1)].field_1280
                vestingMap[address(arg1)].field_1280 = vestingMap[address(arg1)].field_1024
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), vestingMap[address(arg1)].field_1024 - vestingMap[address(arg1)].field_1280
                require ext_call.success
                require vestingMap[address(arg1)].field_1024 - vestingMap[address(arg1)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens = totalUnreleasedTokens - vestingMap[address(arg1)].field_1024 + vestingMap[address(arg1)].field_1280
                emit VestedTokensReleased(address(arg1), vestingMap[address(arg1)].field_1024 - vestingMap[address(arg1)].field_1280);
        else:
            require (block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) + (vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512 * block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) / (vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512) + 1 == block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768
            if (block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) + (vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512 * block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) <= vestingMap[address(arg1)].field_1024:
                require vestingMap[address(arg1)].field_1280 <= (block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) + (vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512 * block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768)
                require (block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) + (vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512 * block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) >= vestingMap[address(arg1)].field_1280
                vestingMap[address(arg1)].field_1280 = (block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) + (vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512 * block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768)
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) + (vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512 * block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) - vestingMap[address(arg1)].field_1280
                require ext_call.success
                require (block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) + (vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512 * block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) - vestingMap[address(arg1)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens = totalUnreleasedTokens - (block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) - (vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512 * block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) + vestingMap[address(arg1)].field_1280
                emit VestedTokensReleased(address(arg1), (block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) + (vestingMap[address(arg1)].field_1024 / vestingMap[address(arg1)].field_512 * block.timestamp - vestingMap[address(arg1)].field_0 / vestingMap[address(arg1)].field_768) - vestingMap[address(arg1)].field_1280);
            else:
                require vestingMap[address(arg1)].field_1280 <= vestingMap[address(arg1)].field_1024
                require vestingMap[address(arg1)].field_1024 >= vestingMap[address(arg1)].field_1280
                vestingMap[address(arg1)].field_1280 = vestingMap[address(arg1)].field_1024
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), vestingMap[address(arg1)].field_1024 - vestingMap[address(arg1)].field_1280
                require ext_call.success
                require vestingMap[address(arg1)].field_1024 - vestingMap[address(arg1)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens = totalUnreleasedTokens - vestingMap[address(arg1)].field_1024 + vestingMap[address(arg1)].field_1280
                emit VestedTokensReleased(address(arg1), vestingMap[address(arg1)].field_1024 - vestingMap[address(arg1)].field_1280);
}

function releaseMyVestedTokens() {
    require vestingMap[address(msg.sender)].field_1536
    require vestingMap[address(msg.sender)].field_1536
    require vestingMap[address(msg.sender)].field_1280 <= vestingMap[address(msg.sender)].field_1024
    require vestingMap[address(msg.sender)].field_1024 - vestingMap[address(msg.sender)].field_1280 > 0
    require vestingMap[address(msg.sender)].field_768
    require vestingMap[address(msg.sender)].field_256 <= block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768
    require vestingMap[address(msg.sender)].field_512
    if vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512 * vestingMap[address(msg.sender)].field_512 == vestingMap[address(msg.sender)].field_1024:
        if not vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512:
            if 0 <= vestingMap[address(msg.sender)].field_1024:
                require vestingMap[address(msg.sender)].field_1280 <= 0
                require 0 >= vestingMap[address(msg.sender)].field_1280
                vestingMap[address(msg.sender)].field_1280 = 0
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -vestingMap[address(msg.sender)].field_1280
                require ext_call.success
                require -vestingMap[address(msg.sender)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens += vestingMap[address(msg.sender)].field_1280
                emit VestedTokensReleased(msg.sender, -vestingMap[address(msg.sender)].field_1280);
            else:
                require vestingMap[address(msg.sender)].field_1280 <= vestingMap[address(msg.sender)].field_1024
                require vestingMap[address(msg.sender)].field_1024 >= vestingMap[address(msg.sender)].field_1280
                vestingMap[address(msg.sender)].field_1280 = vestingMap[address(msg.sender)].field_1024
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, vestingMap[address(msg.sender)].field_1024 - vestingMap[address(msg.sender)].field_1280
                require ext_call.success
                require vestingMap[address(msg.sender)].field_1024 - vestingMap[address(msg.sender)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens = totalUnreleasedTokens - vestingMap[address(msg.sender)].field_1024 + vestingMap[address(msg.sender)].field_1280
                emit VestedTokensReleased(msg.sender, vestingMap[address(msg.sender)].field_1024 - vestingMap[address(msg.sender)].field_1280);
        else:
            require block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768 * vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512 / vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512 == block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768
            if block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768 * vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512 <= vestingMap[address(msg.sender)].field_1024:
                require vestingMap[address(msg.sender)].field_1280 <= block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768 * vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512
                require block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768 * vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512 >= vestingMap[address(msg.sender)].field_1280
                vestingMap[address(msg.sender)].field_1280 = block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768 * vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768 * vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512) - vestingMap[address(msg.sender)].field_1280
                require ext_call.success
                require (block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768 * vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512) - vestingMap[address(msg.sender)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens = totalUnreleasedTokens - (block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768 * vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512) + vestingMap[address(msg.sender)].field_1280
                emit VestedTokensReleased(msg.sender, (block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768 * vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512) - vestingMap[address(msg.sender)].field_1280);
            else:
                require vestingMap[address(msg.sender)].field_1280 <= vestingMap[address(msg.sender)].field_1024
                require vestingMap[address(msg.sender)].field_1024 >= vestingMap[address(msg.sender)].field_1280
                vestingMap[address(msg.sender)].field_1280 = vestingMap[address(msg.sender)].field_1024
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, vestingMap[address(msg.sender)].field_1024 - vestingMap[address(msg.sender)].field_1280
                require ext_call.success
                require vestingMap[address(msg.sender)].field_1024 - vestingMap[address(msg.sender)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens = totalUnreleasedTokens - vestingMap[address(msg.sender)].field_1024 + vestingMap[address(msg.sender)].field_1280
                emit VestedTokensReleased(msg.sender, vestingMap[address(msg.sender)].field_1024 - vestingMap[address(msg.sender)].field_1280);
    else:
        if not (vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512) + 1:
            if 0 <= vestingMap[address(msg.sender)].field_1024:
                require vestingMap[address(msg.sender)].field_1280 <= 0
                require 0 >= vestingMap[address(msg.sender)].field_1280
                vestingMap[address(msg.sender)].field_1280 = 0
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -vestingMap[address(msg.sender)].field_1280
                require ext_call.success
                require -vestingMap[address(msg.sender)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens += vestingMap[address(msg.sender)].field_1280
                emit VestedTokensReleased(msg.sender, -vestingMap[address(msg.sender)].field_1280);
            else:
                require vestingMap[address(msg.sender)].field_1280 <= vestingMap[address(msg.sender)].field_1024
                require vestingMap[address(msg.sender)].field_1024 >= vestingMap[address(msg.sender)].field_1280
                vestingMap[address(msg.sender)].field_1280 = vestingMap[address(msg.sender)].field_1024
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, vestingMap[address(msg.sender)].field_1024 - vestingMap[address(msg.sender)].field_1280
                require ext_call.success
                require vestingMap[address(msg.sender)].field_1024 - vestingMap[address(msg.sender)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens = totalUnreleasedTokens - vestingMap[address(msg.sender)].field_1024 + vestingMap[address(msg.sender)].field_1280
                emit VestedTokensReleased(msg.sender, vestingMap[address(msg.sender)].field_1024 - vestingMap[address(msg.sender)].field_1280);
        else:
            require (block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) + (vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512 * block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) / (vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512) + 1 == block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768
            if (block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) + (vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512 * block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) <= vestingMap[address(msg.sender)].field_1024:
                require vestingMap[address(msg.sender)].field_1280 <= (block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) + (vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512 * block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768)
                require (block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) + (vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512 * block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) >= vestingMap[address(msg.sender)].field_1280
                vestingMap[address(msg.sender)].field_1280 = (block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) + (vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512 * block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768)
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) + (vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512 * block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) - vestingMap[address(msg.sender)].field_1280
                require ext_call.success
                require (block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) + (vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512 * block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) - vestingMap[address(msg.sender)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens = totalUnreleasedTokens - (block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) - (vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512 * block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) + vestingMap[address(msg.sender)].field_1280
                emit VestedTokensReleased(msg.sender, (block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) + (vestingMap[address(msg.sender)].field_1024 / vestingMap[address(msg.sender)].field_512 * block.timestamp - vestingMap[address(msg.sender)].field_0 / vestingMap[address(msg.sender)].field_768) - vestingMap[address(msg.sender)].field_1280);
            else:
                require vestingMap[address(msg.sender)].field_1280 <= vestingMap[address(msg.sender)].field_1024
                require vestingMap[address(msg.sender)].field_1024 >= vestingMap[address(msg.sender)].field_1280
                vestingMap[address(msg.sender)].field_1280 = vestingMap[address(msg.sender)].field_1024
                require ext_code.size(lALATokenAddress)
                call lALATokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, vestingMap[address(msg.sender)].field_1024 - vestingMap[address(msg.sender)].field_1280
                require ext_call.success
                require vestingMap[address(msg.sender)].field_1024 - vestingMap[address(msg.sender)].field_1280 <= totalUnreleasedTokens
                totalUnreleasedTokens = totalUnreleasedTokens - vestingMap[address(msg.sender)].field_1024 + vestingMap[address(msg.sender)].field_1280
                emit VestedTokensReleased(msg.sender, vestingMap[address(msg.sender)].field_1024 - vestingMap[address(msg.sender)].field_1280);
}



}
