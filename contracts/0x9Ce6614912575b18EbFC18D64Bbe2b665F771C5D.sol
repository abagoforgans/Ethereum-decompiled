contract main {




// =====================  Runtime code  =====================


#
#  - sub_81cbc0bf(?)
#
const sub_3f9902f0(?) = 1

const GAS_LIMIT_IN_WEI = 5 * 10^10

const OWNER_WALLET = 0xebd4d348ca98d7f6ef39f9f06937ddea9bce6b6f


address owner;
uint256 stor1;
address tokenAddress;
uint256 stor2;
address walletAddress;
uint256 rate;
uint256 weiRaised;
address sub_66491238Address;
address stor7;
mapping of uint256 contributions;
mapping of uint256 caps;
uint8 stor10;
address stor10;
address sub_c5415fcdAddress; offset 8
uint256 sub_8a7b1501;
uint256 sub_23b4a7a3;
uint256 sub_d2c713a1;
uint8 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 openingTime;
uint256 closingTime;

function sub_23b4a7a3(?) {
    return sub_23b4a7a3
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function contributions(address arg1) {
    return contributions[arg1]
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function sub_66491238(?) {
    return sub_66491238Address
}

function caps(address arg1) {
    return caps[arg1]
}

function sub_8a7b1501(?) {
    return sub_8a7b1501
}

function getUserCap(address arg1) {
    return caps[address(arg1)]
}

function isFinalized() {
    return bool(uint8(stor10.field_0))
}

function owner() {
    return owner
}

function openingTime() {
    return openingTime
}

function getUserContribution(address arg1) {
    return contributions[address(arg1)]
}

function sub_c5415fcd(?) {
    return sub_c5415fcdAddress
}

function sub_d2c713a1(?) {
    return sub_d2c713a1
}

function token() {
    return address(tokenAddress)
}

function isOwner() {
    return (msg.sender == owner)
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function _fallback() payable {
    revert with 0, 'Can't use direct payment'
}

function buyTokens(address arg1) payable {
    revert with 0, 'Can't use direct payment'
}

function hasFinished() {
    if block.timestamp >= closingTime:
        return 1
    else:
        return 0
}

function setUserCap(address arg1, uint256 arg2) {
    require msg.sender == owner
    caps[address(arg1)] = arg2
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setGroupCap(address[] arg1, uint256 arg2) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 9
        caps[address(cd[((32 * idx) + arg1 + 36)])] = arg2
        idx = idx + 1
        continue 
}

function sub_eea48511(?) {
    require msg.sender == owner
    require ('cd', 36).length == ('cd', 4).length
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 9
        caps[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
}

function sub_b08e1429(?) payable {
    mem[64] = 96
    require not msg.value
    mem[96] = 0x5e5aae8400000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).mem[var18004 len 4] with:
         gas gas_remaining wei
        args mem[var18004 + 4 len var18005 - 4]
    mem[var18006] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if not mem[var22002]:
        mem[96] = 0x4000851f00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(tokenAddress))
        call address(tokenAddress).mem[var26004 len 4] with:
             gas gas_remaining wei
            args mem[var26004 + 4 len var26005 - 4]
        mem[var26006] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require mem[var30002 + 12 len 20]
            require address(tokenAddress) != mem[var30002 + 12 len 20]
            address(tokenAddress) = mem[var30002 + 12 len 20]
            require ext_code.size(sub_c5415fcdAddress)
            call sub_c5415fcdAddress.0xb08e1429 with:
                 gas gas_remaining wei
            s = mem[var30002]
            while ext_call.success:
                require ext_code.size(address(tokenAddress))
                call address(tokenAddress).0x5e5aae84 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                require ext_code.size(address(tokenAddress))
                call address(tokenAddress).migratedAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[12 len 20]
                require address(tokenAddress) != ext_call.return_data[12 len 20]
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                mem[96] = 0xb08e142900000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_c5415fcdAddress)
                call sub_c5415fcdAddress.0xb08e1429 with:
                     gas gas_remaining wei
                s = ext_call.return_data[0]
                continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function finalize() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    stor1++
    require not uint8(stor10.field_0)
    require block.timestamp >= closingTime
    mem[96] = 0x5e5aae8400000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).mem[var30004 len 4] with:
         gas gas_remaining wei
        args mem[var30004 + 4 len var30005 - 4]
    mem[var30006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mem[var34002]:
        mem[96] = 0x4000851f00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(tokenAddress))
        call address(tokenAddress).mem[var38004 len 4] with:
             gas gas_remaining wei
            args mem[var38004 + 4 len var38005 - 4]
        mem[var38006] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require mem[var42002 + 12 len 20]
            require address(tokenAddress) != mem[var42002 + 12 len 20]
            address(tokenAddress) = mem[var42002 + 12 len 20]
            require ext_code.size(sub_c5415fcdAddress)
            call sub_c5415fcdAddress.0xb08e1429 with:
                 gas gas_remaining wei
            s = mem[var42002]
            while ext_call.success:
                require ext_code.size(address(tokenAddress))
                call address(tokenAddress).0x5e5aae84 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(tokenAddress))
                    call address(tokenAddress).migratedAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[12 len 20]
                    require address(tokenAddress) != ext_call.return_data[12 len 20]
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    mem[96] = 0xb08e142900000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_c5415fcdAddress)
                    call sub_c5415fcdAddress.0xb08e1429 with:
                         gas gas_remaining wei
                    s = ext_call.return_data[0]
                    continue 
                require ext_code.size(sub_c5415fcdAddress)
                call sub_c5415fcdAddress.enableClaim() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(tokenAddress))
                call address(tokenAddress).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(tokenAddress))
                call address(tokenAddress).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(tokenAddress), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit Finalized()
                uint8(stor10.field_0) = 1
                require stor1 + 1 == stor1
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_c5415fcdAddress)
    call sub_c5415fcdAddress.enableClaim() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).0xa9059cbb with:
         gas gas_remaining wei
        args address(tokenAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Finalized()
    uint8(stor10.field_0) = 1
    require stor1 + 1 == stor1
}

function sub_7c11733d(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    stor17 = 0
    stor18 = 0
    stor14 = 1
    stor15 = arg2
    stor16 = arg3
    stor20 = arg5
    stor19 = arg4
    stor1++
    mem[96] = 0x5e5aae8400000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).mem[var24004 len 4] with:
         gas gas_remaining wei
        args mem[var24004 + 4 len var24005 - 4]
    mem[var24006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mem[var28002]:
        mem[96] = 0x4000851f00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(tokenAddress))
        call address(tokenAddress).mem[var32004 len 4] with:
             gas gas_remaining wei
            args mem[var32004 + 4 len var32005 - 4]
        mem[var32006] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require mem[var36002 + 12 len 20]
            require address(tokenAddress) != mem[var36002 + 12 len 20]
            address(tokenAddress) = mem[var36002 + 12 len 20]
            require ext_code.size(sub_c5415fcdAddress)
            call sub_c5415fcdAddress.0xb08e1429 with:
                 gas gas_remaining wei
            s = mem[var36002]
            while ext_call.success:
                require ext_code.size(address(tokenAddress))
                call address(tokenAddress).0x5e5aae84 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(tokenAddress))
                    call address(tokenAddress).migratedAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[12 len 20]
                    require address(tokenAddress) != ext_call.return_data[12 len 20]
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    mem[96] = 0xb08e142900000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_c5415fcdAddress)
                    call sub_c5415fcdAddress.0xb08e1429 with:
                         gas gas_remaining wei
                    s = ext_call.return_data[0]
                    continue 
                require sub_8a7b1501 + 1 == sub_23b4a7a3
                sub_8a7b1501++
                if block.gasprice > 5 * 10^10:
                    revert with 0, 'too much gas'
                if not stor14:
                    if arg1 != tx.origin:
                        revert with 0, 'invalid beneficiary'
                require block.timestamp >= openingTime
                require block.timestamp <= closingTime
                require arg1
                require stor14
                require arg1
                require stor19
                require stor19 + contributions[address(arg1)] >= contributions[address(arg1)]
                require stor19 + contributions[address(arg1)] <= caps[address(arg1)]
                if stor14:
                    require weiRaised >= weiRaised
                    require ext_code.size(address(tokenAddress))
                    call address(tokenAddress).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), stor20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if not stor20:
                        require ext_code.size(address(tokenAddress))
                        call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor10.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c5415fcdAddress)
                        call sub_c5415fcdAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(tokenAddress))
                        call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor10.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0x3e498ea7: 0, arg1
                    else:
                        require 2000 * stor20 / stor20 == 2000
                        require ext_code.size(address(tokenAddress))
                        call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor10.field_0), 2000 * stor20 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c5415fcdAddress)
                        call sub_c5415fcdAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), 2000 * stor20 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(tokenAddress))
                        call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor10.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0x3e498ea7: (2000 * stor20 / 10000), arg1
                    emit TokenPurchase(0, stor20, msg.sender, arg1);
                    if stor14:
                        emit 0xd5852300: stor15, stor16, stor19, stor20, msg.sender, arg1
                else:
                    if msg.value != 0:
                        revert with 0, 'Not matched amount'
                    if stor14:
                        require weiRaised >= weiRaised
                        require ext_code.size(address(tokenAddress))
                        call address(tokenAddress).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), stor20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        if not stor20:
                            require ext_code.size(address(tokenAddress))
                            call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor10.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_c5415fcdAddress)
                            call sub_c5415fcdAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(tokenAddress))
                            call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor10.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0x3e498ea7: 0, arg1
                        else:
                            require 2000 * stor20 / stor20 == 2000
                            require ext_code.size(address(tokenAddress))
                            call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor10.field_0), 2000 * stor20 / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_c5415fcdAddress)
                            call sub_c5415fcdAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), 2000 * stor20 / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(tokenAddress))
                            call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor10.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0x3e498ea7: (2000 * stor20 / 10000), arg1
                        emit TokenPurchase(0, stor20, msg.sender, arg1);
                        if stor14:
                            emit 0xd5852300: stor15, stor16, stor19, stor20, msg.sender, arg1
                    else:
                        if not stor19:
                            require weiRaised >= weiRaised
                            require ext_code.size(address(tokenAddress))
                            call address(tokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require ext_code.size(address(tokenAddress))
                            call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor10.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_c5415fcdAddress)
                            call sub_c5415fcdAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(tokenAddress))
                            call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor10.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0x3e498ea7: 0, arg1
                            emit TokenPurchase(address arg1, address arg2, uint256 arg3, uint256 arg4):
                                               0,
                                               msg.sender,
                                               arg1,
                            if stor14:
                                emit 0xd5852300: stor15, stor16, stor19, 0, msg.sender, arg1
                        else:
                            require rate * stor19 / stor19 == rate
                            require weiRaised >= weiRaised
                            require ext_code.size(address(tokenAddress))
                            call address(tokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), rate * stor19 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if not rate * stor19 / 10^18:
                                require ext_code.size(address(tokenAddress))
                                call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor10.field_0), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_c5415fcdAddress)
                                call sub_c5415fcdAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(tokenAddress))
                                call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor10.field_0), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0x3e498ea7: 0, arg1
                            else:
                                require 2000 * rate * stor19 / 10^18 / rate * stor19 / 10^18 == 2000
                                require ext_code.size(address(tokenAddress))
                                call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor10.field_0), 2000 * rate * stor19 / 10^18 / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_c5415fcdAddress)
                                call sub_c5415fcdAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), 2000 * rate * stor19 / 10^18 / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(tokenAddress))
                                call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor10.field_0), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0x3e498ea7: (2000 * rate * stor19 / 10^18 / 10000), arg1
                            emit TokenPurchase(0, rate * stor19 / 10^18, msg.sender, arg1);
                            if stor14:
                                emit 0xd5852300: stor15, stor16, stor19, rate * stor19 / 10^18, msg.sender, arg1
                require stor19 + sub_d2c713a1 >= sub_d2c713a1
                sub_d2c713a1 += stor19
                require ext_code.size(stor7)
                call stor7.0xabf1b6c3 with:
                     gas gas_remaining wei
                    args address(arg1), stor19
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require stor19 + contributions[address(arg1)] >= contributions[address(arg1)]
                contributions[address(arg1)] += stor19
                if not stor14:
                    if ext_code.size(walletAddress) <= 0:
                        call walletAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call walletAddress with:
                             gas 100000 wei
                        if not ext_call.success:
                            revert with 0, 'failed to transfer to wallet'
                    ('bool', 'ext_call.success')
                emit 0xd7451a3f: msg.value
                require sub_8a7b1501 == sub_23b4a7a3
                sub_23b4a7a3++
                stor14 = 0
                stor20 = 0
                require stor1 + 1 == stor1
        revert with ext_call.return_data[0 len return_data.size]
    require sub_8a7b1501 + 1 == sub_23b4a7a3
    sub_8a7b1501++
    if block.gasprice > 5 * 10^10:
        revert with 0, 'too much gas'
    if not stor14:
        if arg1 != tx.origin:
            revert with 0, 'invalid beneficiary'
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require stor14
    require arg1
    require stor19
    require stor19 + contributions[address(arg1)] >= contributions[address(arg1)]
    require stor19 + contributions[address(arg1)] <= caps[address(arg1)]
    if stor14:
        require weiRaised >= weiRaised
        require ext_code.size(address(tokenAddress))
        call address(tokenAddress).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), stor20
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if not stor20:
            require ext_code.size(address(tokenAddress))
            call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(stor10.field_0), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c5415fcdAddress)
            call sub_c5415fcdAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(tokenAddress))
            call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(stor10.field_0), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x3e498ea7: 0, arg1
        else:
            require 2000 * stor20 / stor20 == 2000
            require ext_code.size(address(tokenAddress))
            call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(stor10.field_0), 2000 * stor20 / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c5415fcdAddress)
            call sub_c5415fcdAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), 2000 * stor20 / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(tokenAddress))
            call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(stor10.field_0), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x3e498ea7: (2000 * stor20 / 10000), arg1
        emit TokenPurchase(0, stor20, msg.sender, arg1);
        if stor14:
            emit 0xd5852300: stor15, stor16, stor19, stor20, msg.sender, arg1
    else:
        if msg.value != 0:
            revert with 0, 'Not matched amount'
        if stor14:
            require weiRaised >= weiRaised
            require ext_code.size(address(tokenAddress))
            call address(tokenAddress).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), stor20
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if not stor20:
                require ext_code.size(address(tokenAddress))
                call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor10.field_0), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_c5415fcdAddress)
                call sub_c5415fcdAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(tokenAddress))
                call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor10.field_0), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x3e498ea7: 0, arg1
            else:
                require 2000 * stor20 / stor20 == 2000
                require ext_code.size(address(tokenAddress))
                call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor10.field_0), 2000 * stor20 / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_c5415fcdAddress)
                call sub_c5415fcdAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 2000 * stor20 / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(tokenAddress))
                call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor10.field_0), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x3e498ea7: (2000 * stor20 / 10000), arg1
            emit TokenPurchase(0, stor20, msg.sender, arg1);
            if stor14:
                emit 0xd5852300: stor15, stor16, stor19, stor20, msg.sender, arg1
        else:
            if not stor19:
                require weiRaised >= weiRaised
                require ext_code.size(address(tokenAddress))
                call address(tokenAddress).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(address(tokenAddress))
                call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor10.field_0), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_c5415fcdAddress)
                call sub_c5415fcdAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(tokenAddress))
                call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor10.field_0), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x3e498ea7: 0, arg1
                emit TokenPurchase(address arg1, address arg2, uint256 arg3, uint256 arg4):
                                   0,
                                   msg.sender,
                                   arg1,
                if stor14:
                    emit 0xd5852300: stor15, stor16, stor19, 0, msg.sender, arg1
            else:
                require rate * stor19 / stor19 == rate
                require weiRaised >= weiRaised
                require ext_code.size(address(tokenAddress))
                call address(tokenAddress).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), rate * stor19 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if not rate * stor19 / 10^18:
                    require ext_code.size(address(tokenAddress))
                    call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor10.field_0), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_c5415fcdAddress)
                    call sub_c5415fcdAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(tokenAddress))
                    call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor10.field_0), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0x3e498ea7: 0, arg1
                else:
                    require 2000 * rate * stor19 / 10^18 / rate * stor19 / 10^18 == 2000
                    require ext_code.size(address(tokenAddress))
                    call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor10.field_0), 2000 * rate * stor19 / 10^18 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_c5415fcdAddress)
                    call sub_c5415fcdAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 2000 * rate * stor19 / 10^18 / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(tokenAddress))
                    call address(tokenAddress).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor10.field_0), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0x3e498ea7: (2000 * rate * stor19 / 10^18 / 10000), arg1
                emit TokenPurchase(0, rate * stor19 / 10^18, msg.sender, arg1);
                if stor14:
                    emit 0xd5852300: stor15, stor16, stor19, rate * stor19 / 10^18, msg.sender, arg1
    require stor19 + sub_d2c713a1 >= sub_d2c713a1
    sub_d2c713a1 += stor19
    require ext_code.size(stor7)
    call stor7.0xabf1b6c3 with:
         gas gas_remaining wei
        args address(arg1), stor19
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor19 + contributions[address(arg1)] >= contributions[address(arg1)]
    contributions[address(arg1)] += stor19
    if not stor14:
        if ext_code.size(walletAddress) <= 0:
            call walletAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call walletAddress with:
                 gas 100000 wei
            if not ext_call.success:
                revert with 0, 'failed to transfer to wallet'
        ('bool', 'ext_call.success')
    emit 0xd7451a3f: msg.value
    require sub_8a7b1501 == sub_23b4a7a3
    sub_23b4a7a3++
    stor14 = 0
    stor20 = 0
    require stor1 + 1 == stor1
}



}
