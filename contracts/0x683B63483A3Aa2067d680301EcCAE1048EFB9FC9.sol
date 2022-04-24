contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor6;
uint256 stor7;
uint256 stor13;
uint16 stor14;
address stor14; offset 16
uint256 stor14; offset 16
uint256 stor23;
uint64 stor24;

function _fallback() {
    stor0 = code.data[6667 len 20]
    stor7 = code.data[6719 len 32]
    stor1 = code.data[6699 len 20]
    stor23 = code.data[6751 len 32]
    stor6 = 0
    stor13 = 0
    uint16(stor14.field_0) = 0
    Mask(240, 0, stor14.field_16) = 0
    address(stor14.field_16) = msg.sender
    stor24 = 0
    return code.data[196 len 6459]
}



// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - sub_b79a064d(?)
#  - start(address arg1)
#  - _fallback()
#
address sub_222b9e3fAddress;
address tokenRewardAddress;
address nextAddress;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint8 stor3; offset 176
uint128 stor3; offset 184
uint128 stor3; offset 176
address sub_2320f368Address;
uint256 minCap;
uint256 hardCap;
uint256 amountRaised;
uint256 tokenPrice;
uint256 startTime;
uint256 endTime;
uint256 discount;
uint256 minPurchase;
uint256 tokenCount;
uint256 tokenSold;
uint8 stor14;
uint8 stor14; offset 8
address owner; offset 16
mapping of uint256 sub_ebfff4de;
mapping of uint256 sub_44eb2244;
mapping of address sub_dd860296;
uint256 sub_d361eb46;
mapping of uint8 stor19;
mapping of uint8 stor20;
mapping of address coordinatorAccountIndex;
uint256 coordinatorAccountCount;
uint256 minCoordinatorCount;
uint8 hardCapReached;
uint8 minCapReached; offset 8
uint8 sub_b374354d; offset 16
uint8 finished; offset 24
uint8 sub_37f6f22d; offset 32

function canWithdrawBeforeEnd() {
    return bool(uint8(stor3.field_176))
}

function sub_14f02da9(?) {
    return bool(stor20[arg1])
}

function sub_222b9e3f(?) {
    return sub_222b9e3fAddress
}

function sub_2320f368(?) {
    return sub_2320f368Address
}

function endTime() {
    return endTime
}

function sub_33537035(?) {
    return bool(uint8(stor3.field_160))
}

function minPurchase() {
    return minPurchase
}

function sub_37f6f22d(?) {
    return bool(sub_37f6f22d)
}

function minCap() {
    return minCap
}

function sub_44eb2244(?) {
    return sub_44eb2244[arg1]
}

function next() {
    return nextAddress
}

function tokenSold() {
    return tokenSold
}

function discount() {
    return discount
}

function tokenReward() {
    return tokenRewardAddress
}

function startTime() {
    return startTime
}

function amountRaised() {
    return amountRaised
}

function tokenPrice() {
    return tokenPrice
}

function minCapReached() {
    return bool(minCapReached)
}

function owner() {
    return owner
}

function sub_948c5e5a(?) {
    return bool(uint8(stor3.field_168))
}

function hardCapReached() {
    return bool(hardCapReached)
}

function tokenCount() {
    return tokenCount
}

function isLocked() {
    return bool(uint8(stor14.field_0))
}

function isPaused() {
    return bool(uint8(stor14.field_8))
}

function sub_b374354d(?) {
    return bool(sub_b374354d)
}

function finished() {
    return bool(finished)
}

function sub_d361eb46(?) {
    return sub_d361eb46
}

function coordinatorAccountCount() {
    return coordinatorAccountCount
}

function coordinatorAccountIndex(uint256 arg1) {
    return coordinatorAccountIndex[arg1]
}

function sub_dd860296(?) {
    return sub_dd860296[arg1]
}

function minCoordinatorCount() {
    return minCoordinatorCount
}

function sub_e94233b7(?) {
    return bool(stor19[arg1])
}

function sub_ebfff4de(?) {
    return sub_ebfff4de[arg1]
}

function hardCap() {
    return hardCap
}

function sub_625b9484(?) {
    require tokenPrice
    require -arg2 + 100
    return (100 * arg1 / tokenPrice / -arg2 + 100)
}

function lock() {
    if not uint8(stor14.field_0):
        require owner == msg.sender
        uint8(stor14.field_0) = 1
        emit Lock()
}

function changeOwner(address arg1) {
    require not uint8(stor14.field_0)
    require owner == msg.sender
    owner = arg1
    emit OwnerChanged(arg1);
}

function isOpen() {
    if not sub_37f6f22d:
        if block.timestamp < startTime:
            return block.timestamp >= startTime
    if finished:
        return not bool(finished)
    return block.timestamp <= endTime
}

function isClosed() {
    if not sub_37f6f22d:
        if block.timestamp < startTime:
            return (block.timestamp < startTime)
    if finished:
        return bool(finished)
    return (block.timestamp > endTime)
}

function addCoordinator(address arg1) {
    if not uint8(stor14.field_0):
        require owner == msg.sender
        coordinatorAccountIndex[stor22] = arg1
        stor20[address(arg1)] = 0
        stor19[address(arg1)] = 0
        coordinatorAccountCount++
}

function sub_31d60100(?) {
    idx = 0
    s = 0
    while idx < coordinatorAccountCount:
        mem[0] = idx
        mem[32] = 21
        if coordinatorAccountIndex[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = coordinatorAccountCount + 1
        s = 1
        continue 
    require s
    stor20[address(msg.sender)] = uint8(arg1)
}

function sub_5a852c22(?) {
    idx = 0
    s = 0
    while idx < coordinatorAccountCount:
        mem[0] = idx
        mem[32] = 21
        if coordinatorAccountIndex[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = coordinatorAccountCount + 1
        s = 1
        continue 
    require s
    stor19[address(msg.sender)] = uint8(arg1)
}

function sub_b2b546af(?) {
    if not uint8(stor14.field_0):
        require owner == msg.sender
        minCap = arg1
        hardCap = arg2
        tokenCount = arg3
        startTime = arg4
        endTime = arg5
        discount = arg6
        minPurchase = arg7
        nextAddress = arg8
        sub_2320f368Address = arg9
        uint8(stor3.field_160) = uint8(arg10)
        uint8(stor3.field_168) = uint8(arg11)
        Mask(80, 0, stor3.field_176) = Mask(80, 0, arg12)
        Mask(72, 0, stor3.field_184) = Mask(72, 16, arg11) >> 16
        Mask(72, 0, stor3.field_184) = Mask(72, 24, arg10) >> 24
}

function resume() {
    if not sub_37f6f22d:
        require block.timestamp >= startTime
    require not finished
    require block.timestamp <= endTime
    require uint8(stor14.field_8)
    idx = 0
    s = 0
    while idx < coordinatorAccountCount:
        mem[0] = coordinatorAccountIndex[idx]
        mem[32] = 19
        if bool(stor19[stor21[idx]]) != 1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require s >= minCoordinatorCount
    uint8(stor14.field_8) = 0
    idx = 0
    while idx < coordinatorAccountCount:
        mem[0] = coordinatorAccountIndex[idx]
        mem[32] = 19
        stor19[stor21[idx]] = 0
        idx = idx + 1
        continue 
    emit Resumed()
}

function pause() {
    if not sub_37f6f22d:
        require block.timestamp >= startTime
    require not finished
    require block.timestamp <= endTime
    require not uint8(stor14.field_8)
    idx = 0
    s = 0
    while idx < coordinatorAccountCount:
        mem[0] = coordinatorAccountIndex[idx]
        mem[32] = 20
        if bool(stor20[stor21[idx]]) != 1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require s >= minCoordinatorCount
    uint8(stor14.field_8) = 1
    idx = 0
    while idx < coordinatorAccountCount:
        mem[0] = coordinatorAccountIndex[idx]
        mem[32] = 20
        stor20[stor21[idx]] = 0
        idx = idx + 1
        continue 
    emit Paused()
}

function removeCoordinator(address arg1) {
    if not uint8(stor14.field_0):
        require owner == msg.sender
        stor19[address(arg1)] = 0
        stor20[address(arg1)] = 0
        idx = 0
        while idx < coordinatorAccountCount:
            mem[0] = idx
            mem[32] = 21
            if coordinatorAccountIndex[idx] != arg1:
                idx = idx + 1
                continue 
            s = idx
            while s < coordinatorAccountCount - 1:
                mem[32] = 21
                mem[0] = s
                coordinatorAccountIndex[s] = coordinatorAccountIndex[s + 1]
                s = s + 1
                continue 
            coordinatorAccountCount--
            mem[0] = coordinatorAccountCount - 1
            mem[32] = 21
            coordinatorAccountIndex[stor22 - 1] = 0
            idx = coordinatorAccountCount + 1
            continue 
}

function sub_2c2e312a(?) payable {
    if sub_37f6f22d:
        if finished:
            if block.timestamp > endTime:
                if not finished:
                    finished = 1
        else:
            require block.timestamp > endTime
            if not finished:
                finished = 1
    else:
        if block.timestamp < startTime:
            if block.timestamp > endTime:
                if not finished:
                    finished = 1
        else:
            if finished:
                if block.timestamp > endTime:
                    if not finished:
                        finished = 1
            else:
                require block.timestamp > endTime
                if not finished:
                    finished = 1
    idx = 0
    while idx < sub_d361eb46:
        mem[0] = sub_dd860296[idx]
        mem[32] = 15
        if sub_ebfff4de[stor17[idx]] > 0:
            mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[100] = sub_dd860296[idx]
            mem[132] = sub_ebfff4de[stor17[idx]]
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args sub_dd860296[idx], sub_ebfff4de[stor17[idx]]
            require ext_call.success
            mem[0] = sub_dd860296[idx]
            mem[32] = 15
            sub_ebfff4de[stor17[idx]] = 0
        idx = idx + 1
        continue 
    if amountRaised < minCap:
        if not minCapReached:
            minCapReached = 1
            emit 0x2b517277 
        idx = 0
        while idx < sub_d361eb46:
            mem[0] = sub_dd860296[idx]
            mem[32] = 16
            if sub_44eb2244[stor17[idx]] > 0:
                call sub_dd860296[idx] with:
                   value sub_44eb2244[stor17[idx]] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                mem[0] = sub_dd860296[idx]
                mem[32] = 16
                sub_44eb2244[stor17[idx]] = 0
            idx = idx + 1
            continue 
    else:
        if arg1 > 0:
            require ext_code.size(sub_222b9e3fAddress)
            if not uint8(stor3.field_168):
                call sub_222b9e3fAddress.0x2f3f0bc3 with:
                   value arg1 wei
                     gas gas_remaining - 9710 wei
            else:
                call sub_222b9e3fAddress.0x3277a8e8 with:
                   value arg1 wei
                     gas gas_remaining - 9710 wei
            require ext_call.success
}



}
