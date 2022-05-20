contract main {




// =====================  Runtime code  =====================


const today = (block.timestamp / 24 * 3600)


address owner;
address sub_e35a19edAddress;
address sub_8c1cdb37Address;
address teamReserveWalletAddress;
uint256 sub_7c0dd623;
uint256 sub_439a217f;
uint256 teamReserveAllocation;
uint256 totalAllocation;
uint256 sub_b9e2cde2;
uint256 sub_c228c233;
uint256 teamVestingStages;
mapping of uint256 sub_410d6993;
mapping of uint256 sub_847f4292;
mapping of uint256 sub_3ca3c782;
mapping of uint256 sub_8b503cf4;
mapping of uint256 sub_f1bced9a;
mapping of uint256 sub_a1f94330;
uint256 lockedAt;
uint256 releaseTime;
uint256 sub_9e847fec;
address coinAddress;

function coin() {
    return coinAddress
}

function teamReserveAllocation() {
    return teamReserveAllocation
}

function sub_3ca3c782(?) {
    return sub_3ca3c782[arg1]
}

function sub_410d6993(?) {
    return sub_410d6993[arg1]
}

function sub_439a217f(?) {
    return sub_439a217f
}

function totalAllocation() {
    return totalAllocation
}

function teamVestingStages() {
    return teamVestingStages
}

function sub_7c0dd623(?) {
    return sub_7c0dd623
}

function sub_847f4292(?) {
    return sub_847f4292[arg1]
}

function sub_8b503cf4(?) {
    return sub_8b503cf4[arg1]
}

function sub_8c1cdb37(?) {
    return sub_8c1cdb37Address
}

function owner() {
    return owner
}

function sub_9e847fec(?) {
    return sub_9e847fec
}

function teamReserveWallet() {
    return teamReserveWalletAddress
}

function sub_a1f94330(?) {
    return sub_a1f94330[arg1]
}

function lockedAt() {
    return lockedAt
}

function releaseTime() {
    return releaseTime
}

function sub_b9e2cde2(?) {
    return sub_b9e2cde2
}

function sub_c228c233(?) {
    return sub_c228c233
}

function sub_e35a19ed(?) {
    return sub_e35a19edAddress
}

function sub_f1bced9a(?) {
    return sub_f1bced9a[arg1]
}

function _fallback() payable {
    revert
}

function sub_0168681b(?) {
    require msg.sender == owner
    require not sub_9e847fec
    sub_9e847fec = arg1
    emit 0x37b8bad9: sub_9e847fec
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setReleaseTime(uint256 arg1) {
    require msg.sender == owner
    require not releaseTime
    releaseTime = arg1
    emit 0x9ab5d0c6: releaseTime
}

function getTotalBalance() {
    require ext_code.size(coinAddress)
    call coinAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_1eae16b6(?) {
    require lockedAt > 0
    require msg.sender == sub_e35a19edAddress
    require arg2 <= sub_410d6993[address(msg.sender)]
    require arg2 <= sub_410d6993[address(msg.sender)]
    sub_410d6993[address(msg.sender)] -= arg2
    require sub_410d6993[address(arg1)] + arg2 >= sub_410d6993[address(arg1)]
    sub_410d6993[address(arg1)] += arg2
    emit 0xb98f49ce: arg2, msg.sender, arg1
}

function sub_c303f2dc(?) {
    require lockedAt > 0
    require msg.sender == sub_8c1cdb37Address
    require arg2 <= sub_847f4292[address(msg.sender)]
    require arg2 <= sub_847f4292[address(msg.sender)]
    sub_847f4292[address(msg.sender)] -= arg2
    require sub_847f4292[address(arg1)] + arg2 >= sub_847f4292[address(arg1)]
    sub_847f4292[address(arg1)] += arg2
    emit 0xb98f49ce: arg2, msg.sender, arg1
}

function recoverFailedLock() {
    require not lockedAt
    require not sub_410d6993[stor1]
    require not sub_847f4292[stor2]
    require not sub_3ca3c782[stor3]
    require msg.sender == owner
    require ext_code.size(coinAddress)
    call coinAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(coinAddress)
    call coinAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function allocate() {
    require not lockedAt
    require not sub_410d6993[stor1]
    require not sub_847f4292[stor2]
    require not sub_3ca3c782[stor3]
    require msg.sender == owner
    require ext_code.size(coinAddress)
    call coinAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == totalAllocation
    sub_410d6993[stor1] = sub_7c0dd623
    sub_847f4292[stor2] = sub_439a217f
    sub_3ca3c782[stor3] = teamReserveAllocation
    lockedAt = block.timestamp
    emit Allocated(sub_e35a19edAddress, sub_7c0dd623);
    emit Allocated(sub_8c1cdb37Address, sub_439a217f);
    emit Allocated(teamReserveWalletAddress, teamReserveAllocation);
}

function sub_4109021a(?) {
    require lockedAt > 0
    require releaseTime > 0
    require sub_8c1cdb37Address != msg.sender
    require sub_847f4292[address(msg.sender)] > 0
    require releaseTime <= block.timestamp / 24 * 3600
    require (block.timestamp / 24 * 3600) - releaseTime / 30 >= 0
    if (block.timestamp / 24 * 3600) - releaseTime / 30 >= sub_c228c233:
        require sub_f1bced9a[address(msg.sender)] <= sub_847f4292[address(msg.sender)]
        require sub_847f4292[address(msg.sender)] - sub_f1bced9a[address(msg.sender)] > 0
        require ext_code.size(coinAddress)
        call coinAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_847f4292[address(msg.sender)] - sub_f1bced9a[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require sub_847f4292[address(msg.sender)] >= sub_f1bced9a[address(msg.sender)]
        sub_f1bced9a[address(msg.sender)] = sub_847f4292[address(msg.sender)]
        emit Distributed(msg.sender, sub_847f4292[address(msg.sender)] - sub_f1bced9a[address(msg.sender)]);
    else:
        if not sub_847f4292[address(msg.sender)]:
            require 0 <= sub_847f4292[address(msg.sender)]
            if (block.timestamp / 24 * 3600) - releaseTime / 30 <= 0:
                require sub_f1bced9a[address(msg.sender)] <= 0
                require -sub_f1bced9a[address(msg.sender)] > 0
                require ext_code.size(coinAddress)
                call coinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -sub_f1bced9a[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require 0 >= sub_f1bced9a[address(msg.sender)]
                sub_f1bced9a[address(msg.sender)] = 0
                emit Distributed(msg.sender, -sub_f1bced9a[address(msg.sender)]);
            else:
                if not sub_847f4292[address(msg.sender)]:
                    require sub_c228c233
                    require 0 / sub_c228c233 >= 0 / sub_c228c233
                    require sub_f1bced9a[address(msg.sender)] <= 0 / sub_c228c233
                    require (0 / sub_c228c233) - sub_f1bced9a[address(msg.sender)] > 0
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / sub_c228c233) - sub_f1bced9a[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require 0 / sub_c228c233 >= sub_f1bced9a[address(msg.sender)]
                    sub_f1bced9a[address(msg.sender)] = 0 / sub_c228c233
                    emit Distributed(msg.sender, (0 / sub_c228c233) - sub_f1bced9a[address(msg.sender)]);
                else:
                    require sub_847f4292[address(msg.sender)]
                    require sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_847f4292[address(msg.sender)] == (block.timestamp / 24 * 3600) - releaseTime / 30
                    require sub_c228c233
                    require sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_c228c233 >= sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_c228c233
                    require sub_f1bced9a[address(msg.sender)] <= sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_c228c233
                    require (sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_c228c233) - sub_f1bced9a[address(msg.sender)] > 0
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_c228c233) - sub_f1bced9a[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_c228c233 >= sub_f1bced9a[address(msg.sender)]
                    sub_f1bced9a[address(msg.sender)] = sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_c228c233
                    emit Distributed(msg.sender, (sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_c228c233) - sub_f1bced9a[address(msg.sender)]);
        else:
            require sub_847f4292[address(msg.sender)]
            require 5 * sub_847f4292[address(msg.sender)] / sub_847f4292[address(msg.sender)] == 5
            require 5 * sub_847f4292[address(msg.sender)] / 10 <= sub_847f4292[address(msg.sender)]
            if (block.timestamp / 24 * 3600) - releaseTime / 30 <= 0:
                require 5 * sub_847f4292[address(msg.sender)] / 10 >= 0
                require sub_f1bced9a[address(msg.sender)] <= 5 * sub_847f4292[address(msg.sender)] / 10
                require (5 * sub_847f4292[address(msg.sender)] / 10) - sub_f1bced9a[address(msg.sender)] > 0
                require ext_code.size(coinAddress)
                call coinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (5 * sub_847f4292[address(msg.sender)] / 10) - sub_f1bced9a[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require 5 * sub_847f4292[address(msg.sender)] / 10 >= sub_f1bced9a[address(msg.sender)]
                sub_f1bced9a[address(msg.sender)] = 5 * sub_847f4292[address(msg.sender)] / 10
                emit Distributed(msg.sender, (5 * sub_847f4292[address(msg.sender)] / 10) - sub_f1bced9a[address(msg.sender)]);
            else:
                if not sub_847f4292[address(msg.sender)] - (5 * sub_847f4292[address(msg.sender)] / 10):
                    require sub_c228c233
                    require (0 / sub_c228c233) + (5 * sub_847f4292[address(msg.sender)] / 10) >= 0 / sub_c228c233
                    require sub_f1bced9a[address(msg.sender)] <= (0 / sub_c228c233) + (5 * sub_847f4292[address(msg.sender)] / 10)
                    require (0 / sub_c228c233) + (5 * sub_847f4292[address(msg.sender)] / 10) - sub_f1bced9a[address(msg.sender)] > 0
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / sub_c228c233) + (5 * sub_847f4292[address(msg.sender)] / 10) - sub_f1bced9a[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require (0 / sub_c228c233) + (5 * sub_847f4292[address(msg.sender)] / 10) >= sub_f1bced9a[address(msg.sender)]
                    sub_f1bced9a[address(msg.sender)] = (0 / sub_c228c233) + (5 * sub_847f4292[address(msg.sender)] / 10)
                    emit Distributed(msg.sender, (0 / sub_c228c233) + (5 * sub_847f4292[address(msg.sender)] / 10) - sub_f1bced9a[address(msg.sender)]);
                else:
                    require sub_847f4292[address(msg.sender)] - (5 * sub_847f4292[address(msg.sender)] / 10)
                    require (sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_847f4292[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_847f4292[address(msg.sender)] - (5 * sub_847f4292[address(msg.sender)] / 10) == (block.timestamp / 24 * 3600) - releaseTime / 30
                    require sub_c228c233
                    require ((sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_847f4292[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_c228c233) + (5 * sub_847f4292[address(msg.sender)] / 10) >= (sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_847f4292[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_c228c233
                    require sub_f1bced9a[address(msg.sender)] <= ((sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_847f4292[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_c228c233) + (5 * sub_847f4292[address(msg.sender)] / 10)
                    require ((sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_847f4292[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_c228c233) + (5 * sub_847f4292[address(msg.sender)] / 10) - sub_f1bced9a[address(msg.sender)] > 0
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ((sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_847f4292[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_c228c233) + (5 * sub_847f4292[address(msg.sender)] / 10) - sub_f1bced9a[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ((sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_847f4292[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_c228c233) + (5 * sub_847f4292[address(msg.sender)] / 10) >= sub_f1bced9a[address(msg.sender)]
                    sub_f1bced9a[address(msg.sender)] = ((sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_847f4292[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_c228c233) + (5 * sub_847f4292[address(msg.sender)] / 10)
                    emit Distributed(msg.sender, ((sub_847f4292[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_847f4292[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_c228c233) + (5 * sub_847f4292[address(msg.sender)] / 10) - sub_f1bced9a[address(msg.sender)]);
}

function sub_8c418946(?) {
    require lockedAt > 0
    require releaseTime > 0
    require sub_e35a19edAddress != msg.sender
    require sub_410d6993[address(msg.sender)] > 0
    require releaseTime <= block.timestamp / 24 * 3600
    require (block.timestamp / 24 * 3600) - releaseTime / 30 >= 0
    if (block.timestamp / 24 * 3600) - releaseTime / 30 >= sub_b9e2cde2:
        require sub_8b503cf4[address(msg.sender)] <= sub_410d6993[address(msg.sender)]
        require sub_410d6993[address(msg.sender)] - sub_8b503cf4[address(msg.sender)] > 0
        require ext_code.size(coinAddress)
        call coinAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_410d6993[address(msg.sender)] - sub_8b503cf4[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require sub_410d6993[address(msg.sender)] >= sub_8b503cf4[address(msg.sender)]
        sub_8b503cf4[address(msg.sender)] = sub_410d6993[address(msg.sender)]
        emit Distributed(msg.sender, sub_410d6993[address(msg.sender)] - sub_8b503cf4[address(msg.sender)]);
    else:
        if not sub_410d6993[address(msg.sender)]:
            require 0 <= sub_410d6993[address(msg.sender)]
            if (block.timestamp / 24 * 3600) - releaseTime / 30 <= 0:
                require sub_8b503cf4[address(msg.sender)] <= 0
                require -sub_8b503cf4[address(msg.sender)] > 0
                require ext_code.size(coinAddress)
                call coinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -sub_8b503cf4[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require 0 >= sub_8b503cf4[address(msg.sender)]
                sub_8b503cf4[address(msg.sender)] = 0
                emit Distributed(msg.sender, -sub_8b503cf4[address(msg.sender)]);
            else:
                if not sub_410d6993[address(msg.sender)]:
                    require sub_b9e2cde2
                    require 0 / sub_b9e2cde2 >= 0 / sub_b9e2cde2
                    require sub_8b503cf4[address(msg.sender)] <= 0 / sub_b9e2cde2
                    require (0 / sub_b9e2cde2) - sub_8b503cf4[address(msg.sender)] > 0
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / sub_b9e2cde2) - sub_8b503cf4[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require 0 / sub_b9e2cde2 >= sub_8b503cf4[address(msg.sender)]
                    sub_8b503cf4[address(msg.sender)] = 0 / sub_b9e2cde2
                    emit Distributed(msg.sender, (0 / sub_b9e2cde2) - sub_8b503cf4[address(msg.sender)]);
                else:
                    require sub_410d6993[address(msg.sender)]
                    require sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_410d6993[address(msg.sender)] == (block.timestamp / 24 * 3600) - releaseTime / 30
                    require sub_b9e2cde2
                    require sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_b9e2cde2 >= sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_b9e2cde2
                    require sub_8b503cf4[address(msg.sender)] <= sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_b9e2cde2
                    require (sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_b9e2cde2) - sub_8b503cf4[address(msg.sender)] > 0
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_b9e2cde2) - sub_8b503cf4[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_b9e2cde2 >= sub_8b503cf4[address(msg.sender)]
                    sub_8b503cf4[address(msg.sender)] = sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_b9e2cde2
                    emit Distributed(msg.sender, (sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30 / sub_b9e2cde2) - sub_8b503cf4[address(msg.sender)]);
        else:
            require sub_410d6993[address(msg.sender)]
            require 5 * sub_410d6993[address(msg.sender)] / sub_410d6993[address(msg.sender)] == 5
            require 5 * sub_410d6993[address(msg.sender)] / 10 <= sub_410d6993[address(msg.sender)]
            if (block.timestamp / 24 * 3600) - releaseTime / 30 <= 0:
                require 5 * sub_410d6993[address(msg.sender)] / 10 >= 0
                require sub_8b503cf4[address(msg.sender)] <= 5 * sub_410d6993[address(msg.sender)] / 10
                require (5 * sub_410d6993[address(msg.sender)] / 10) - sub_8b503cf4[address(msg.sender)] > 0
                require ext_code.size(coinAddress)
                call coinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (5 * sub_410d6993[address(msg.sender)] / 10) - sub_8b503cf4[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require 5 * sub_410d6993[address(msg.sender)] / 10 >= sub_8b503cf4[address(msg.sender)]
                sub_8b503cf4[address(msg.sender)] = 5 * sub_410d6993[address(msg.sender)] / 10
                emit Distributed(msg.sender, (5 * sub_410d6993[address(msg.sender)] / 10) - sub_8b503cf4[address(msg.sender)]);
            else:
                if not sub_410d6993[address(msg.sender)] - (5 * sub_410d6993[address(msg.sender)] / 10):
                    require sub_b9e2cde2
                    require (0 / sub_b9e2cde2) + (5 * sub_410d6993[address(msg.sender)] / 10) >= 0 / sub_b9e2cde2
                    require sub_8b503cf4[address(msg.sender)] <= (0 / sub_b9e2cde2) + (5 * sub_410d6993[address(msg.sender)] / 10)
                    require (0 / sub_b9e2cde2) + (5 * sub_410d6993[address(msg.sender)] / 10) - sub_8b503cf4[address(msg.sender)] > 0
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / sub_b9e2cde2) + (5 * sub_410d6993[address(msg.sender)] / 10) - sub_8b503cf4[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require (0 / sub_b9e2cde2) + (5 * sub_410d6993[address(msg.sender)] / 10) >= sub_8b503cf4[address(msg.sender)]
                    sub_8b503cf4[address(msg.sender)] = (0 / sub_b9e2cde2) + (5 * sub_410d6993[address(msg.sender)] / 10)
                    emit Distributed(msg.sender, (0 / sub_b9e2cde2) + (5 * sub_410d6993[address(msg.sender)] / 10) - sub_8b503cf4[address(msg.sender)]);
                else:
                    require sub_410d6993[address(msg.sender)] - (5 * sub_410d6993[address(msg.sender)] / 10)
                    require (sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_410d6993[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_410d6993[address(msg.sender)] - (5 * sub_410d6993[address(msg.sender)] / 10) == (block.timestamp / 24 * 3600) - releaseTime / 30
                    require sub_b9e2cde2
                    require ((sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_410d6993[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_b9e2cde2) + (5 * sub_410d6993[address(msg.sender)] / 10) >= (sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_410d6993[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_b9e2cde2
                    require sub_8b503cf4[address(msg.sender)] <= ((sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_410d6993[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_b9e2cde2) + (5 * sub_410d6993[address(msg.sender)] / 10)
                    require ((sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_410d6993[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_b9e2cde2) + (5 * sub_410d6993[address(msg.sender)] / 10) - sub_8b503cf4[address(msg.sender)] > 0
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ((sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_410d6993[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_b9e2cde2) + (5 * sub_410d6993[address(msg.sender)] / 10) - sub_8b503cf4[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ((sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_410d6993[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_b9e2cde2) + (5 * sub_410d6993[address(msg.sender)] / 10) >= sub_8b503cf4[address(msg.sender)]
                    sub_8b503cf4[address(msg.sender)] = ((sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_410d6993[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_b9e2cde2) + (5 * sub_410d6993[address(msg.sender)] / 10)
                    emit Distributed(msg.sender, ((sub_410d6993[address(msg.sender)] * (block.timestamp / 24 * 3600) - releaseTime / 30) - (5 * sub_410d6993[address(msg.sender)] / 10 * (block.timestamp / 24 * 3600) - releaseTime / 30) / sub_b9e2cde2) + (5 * sub_410d6993[address(msg.sender)] / 10) - sub_8b503cf4[address(msg.sender)]);
}

function claimTeamReserve() {
    require lockedAt > 0
    require sub_9e847fec > 0
    require teamReserveWalletAddress != msg.sender
    require sub_3ca3c782[address(msg.sender)] > 0
    require sub_9e847fec <= block.timestamp / 24 * 3600
    require (block.timestamp / 24 * 3600) - sub_9e847fec / 90 >= 0
    if (block.timestamp / 24 * 3600) - sub_9e847fec / 90 >= teamVestingStages:
        require sub_a1f94330[address(msg.sender)] <= sub_3ca3c782[address(msg.sender)]
        require sub_3ca3c782[address(msg.sender)] - sub_a1f94330[address(msg.sender)] > 0
        require ext_code.size(coinAddress)
        call coinAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_3ca3c782[address(msg.sender)] - sub_a1f94330[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require sub_3ca3c782[address(msg.sender)] >= sub_a1f94330[address(msg.sender)]
        sub_a1f94330[address(msg.sender)] = sub_3ca3c782[address(msg.sender)]
        emit Distributed(msg.sender, sub_3ca3c782[address(msg.sender)] - sub_a1f94330[address(msg.sender)]);
    else:
        if not sub_3ca3c782[address(msg.sender)]:
            require 0 <= sub_3ca3c782[address(msg.sender)]
            if (block.timestamp / 24 * 3600) - sub_9e847fec / 90 <= 0:
                require sub_a1f94330[address(msg.sender)] <= 0
                require -sub_a1f94330[address(msg.sender)] > 0
                require ext_code.size(coinAddress)
                call coinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -sub_a1f94330[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require 0 >= sub_a1f94330[address(msg.sender)]
                sub_a1f94330[address(msg.sender)] = 0
                emit Distributed(msg.sender, -sub_a1f94330[address(msg.sender)]);
            else:
                if not sub_3ca3c782[address(msg.sender)]:
                    require teamVestingStages
                    require 0 / teamVestingStages >= 0 / teamVestingStages
                    require sub_a1f94330[address(msg.sender)] <= 0 / teamVestingStages
                    require (0 / teamVestingStages) - sub_a1f94330[address(msg.sender)] > 0
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / teamVestingStages) - sub_a1f94330[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require 0 / teamVestingStages >= sub_a1f94330[address(msg.sender)]
                    sub_a1f94330[address(msg.sender)] = 0 / teamVestingStages
                    emit Distributed(msg.sender, (0 / teamVestingStages) - sub_a1f94330[address(msg.sender)]);
                else:
                    require sub_3ca3c782[address(msg.sender)]
                    require sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90 / sub_3ca3c782[address(msg.sender)] == (block.timestamp / 24 * 3600) - sub_9e847fec / 90
                    require teamVestingStages
                    require sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90 / teamVestingStages >= sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90 / teamVestingStages
                    require sub_a1f94330[address(msg.sender)] <= sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90 / teamVestingStages
                    require (sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90 / teamVestingStages) - sub_a1f94330[address(msg.sender)] > 0
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90 / teamVestingStages) - sub_a1f94330[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90 / teamVestingStages >= sub_a1f94330[address(msg.sender)]
                    sub_a1f94330[address(msg.sender)] = sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90 / teamVestingStages
                    emit Distributed(msg.sender, (sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90 / teamVestingStages) - sub_a1f94330[address(msg.sender)]);
        else:
            require sub_3ca3c782[address(msg.sender)]
            require 5 * sub_3ca3c782[address(msg.sender)] / sub_3ca3c782[address(msg.sender)] == 5
            require 5 * sub_3ca3c782[address(msg.sender)] / 100 <= sub_3ca3c782[address(msg.sender)]
            if (block.timestamp / 24 * 3600) - sub_9e847fec / 90 <= 0:
                require 5 * sub_3ca3c782[address(msg.sender)] / 100 >= 0
                require sub_a1f94330[address(msg.sender)] <= 5 * sub_3ca3c782[address(msg.sender)] / 100
                require (5 * sub_3ca3c782[address(msg.sender)] / 100) - sub_a1f94330[address(msg.sender)] > 0
                require ext_code.size(coinAddress)
                call coinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (5 * sub_3ca3c782[address(msg.sender)] / 100) - sub_a1f94330[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require 5 * sub_3ca3c782[address(msg.sender)] / 100 >= sub_a1f94330[address(msg.sender)]
                sub_a1f94330[address(msg.sender)] = 5 * sub_3ca3c782[address(msg.sender)] / 100
                emit Distributed(msg.sender, (5 * sub_3ca3c782[address(msg.sender)] / 100) - sub_a1f94330[address(msg.sender)]);
            else:
                if not sub_3ca3c782[address(msg.sender)] - (5 * sub_3ca3c782[address(msg.sender)] / 100):
                    require teamVestingStages
                    require (0 / teamVestingStages) + (5 * sub_3ca3c782[address(msg.sender)] / 100) >= 0 / teamVestingStages
                    require sub_a1f94330[address(msg.sender)] <= (0 / teamVestingStages) + (5 * sub_3ca3c782[address(msg.sender)] / 100)
                    require (0 / teamVestingStages) + (5 * sub_3ca3c782[address(msg.sender)] / 100) - sub_a1f94330[address(msg.sender)] > 0
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (0 / teamVestingStages) + (5 * sub_3ca3c782[address(msg.sender)] / 100) - sub_a1f94330[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require (0 / teamVestingStages) + (5 * sub_3ca3c782[address(msg.sender)] / 100) >= sub_a1f94330[address(msg.sender)]
                    sub_a1f94330[address(msg.sender)] = (0 / teamVestingStages) + (5 * sub_3ca3c782[address(msg.sender)] / 100)
                    emit Distributed(msg.sender, (0 / teamVestingStages) + (5 * sub_3ca3c782[address(msg.sender)] / 100) - sub_a1f94330[address(msg.sender)]);
                else:
                    require sub_3ca3c782[address(msg.sender)] - (5 * sub_3ca3c782[address(msg.sender)] / 100)
                    require (sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) - (5 * sub_3ca3c782[address(msg.sender)] / 100 * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) / sub_3ca3c782[address(msg.sender)] - (5 * sub_3ca3c782[address(msg.sender)] / 100) == (block.timestamp / 24 * 3600) - sub_9e847fec / 90
                    require teamVestingStages
                    require ((sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) - (5 * sub_3ca3c782[address(msg.sender)] / 100 * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) / teamVestingStages) + (5 * sub_3ca3c782[address(msg.sender)] / 100) >= (sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) - (5 * sub_3ca3c782[address(msg.sender)] / 100 * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) / teamVestingStages
                    require sub_a1f94330[address(msg.sender)] <= ((sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) - (5 * sub_3ca3c782[address(msg.sender)] / 100 * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) / teamVestingStages) + (5 * sub_3ca3c782[address(msg.sender)] / 100)
                    require ((sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) - (5 * sub_3ca3c782[address(msg.sender)] / 100 * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) / teamVestingStages) + (5 * sub_3ca3c782[address(msg.sender)] / 100) - sub_a1f94330[address(msg.sender)] > 0
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ((sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) - (5 * sub_3ca3c782[address(msg.sender)] / 100 * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) / teamVestingStages) + (5 * sub_3ca3c782[address(msg.sender)] / 100) - sub_a1f94330[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ((sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) - (5 * sub_3ca3c782[address(msg.sender)] / 100 * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) / teamVestingStages) + (5 * sub_3ca3c782[address(msg.sender)] / 100) >= sub_a1f94330[address(msg.sender)]
                    sub_a1f94330[address(msg.sender)] = ((sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) - (5 * sub_3ca3c782[address(msg.sender)] / 100 * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) / teamVestingStages) + (5 * sub_3ca3c782[address(msg.sender)] / 100)
                    emit Distributed(msg.sender, ((sub_3ca3c782[address(msg.sender)] * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) - (5 * sub_3ca3c782[address(msg.sender)] / 100 * (block.timestamp / 24 * 3600) - sub_9e847fec / 90) / teamVestingStages) + (5 * sub_3ca3c782[address(msg.sender)] / 100) - sub_a1f94330[address(msg.sender)]);
}



}
