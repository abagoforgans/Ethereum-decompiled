contract main {




// =====================  Runtime code  =====================


const isFailed = 0

const MAX_CROWDSALE_TIME = (1200 * 24 * 3600)

const MIN_CROWDSALE_TIME = (72 * 24 * 3600)

const MIN_HARD_CAP = 10^18


address owner;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint128 stor1; offset 168
uint128 stor1; offset 160
address managerAddress;
uint256 totalCollected;
uint256 totalCollectedETH;
uint256 totalSold;
uint256 minimalGoal;
uint256 hardCap;
uint256 duration;
uint256 startTimestamp;
uint256 endTimestamp;
address fundingAddress;
uint8 stor11; offset 160
uint128 stor11; offset 160
address tokenAddress;

function duration() {
    return duration
}

function started() {
    return bool(uint8(stor1.field_160))
}

function getToken() {
    return tokenAddress
}

function manager() {
    return managerAddress
}

function totalCollectedETH() {
    return totalCollectedETH
}

function minimalGoal() {
    return minimalGoal
}

function stopped() {
    return bool(uint8(stor1.field_168))
}

function owner() {
    return owner
}

function totalSold() {
    return totalSold
}

function endTimestamp() {
    return endTimestamp
}

function fundingAddress() {
    return fundingAddress
}

function totalCollected() {
    return totalCollected
}

function startTimestamp() {
    return startTimestamp
}

function isSuccessful() {
    return bool(uint8(stor11.field_160))
}

function hardCap() {
    return hardCap
}

function deposit() payable {
  stop
}

function _fallback() payable {
  stop
}

function transferManager(address arg1) {
    require msg.sender == managerAddress
    require arg1
    managerAddress = arg1
}

function isActive() {
    if not uint8(stor1.field_160):
        return bool(uint8(stor1.field_160))
    return not bool(uint8(stor11.field_160))
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mintETHRewards(address arg1, uint256 arg2) {
    require msg.sender == managerAddress
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    require ext_call.success
}

function stop() {
    require msg.sender == managerAddress
    require not uint8(stor1.field_168)
    if uint8(stor1.field_160):
        require not uint8(stor11.field_160)
    Mask(88, 0, stor1.field_168) = 1
}

function finish() {
    require not uint8(stor1.field_168)
    require uint8(stor1.field_160)
    require not uint8(stor11.field_160)
    require msg.sender == owner
    Mask(96, 0, stor11.field_160) = 1
    emit CUSTOM_CROWDSALE_FINISH()
}

function start(uint256 arg1, uint256 arg2, address arg3) {
    require not uint8(stor1.field_160)
    require not uint8(stor1.field_168)
    require msg.sender == managerAddress
    Mask(96, 0, stor1.field_160) = 1
    emit CROWDSALE_START(arg1, arg2, arg3);
}

function mintTokenRewards(address arg1, uint256 arg2) {
    require msg.sender == managerAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function changeToken(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit CUSTOM_CROWDSALE_TOKEN_ADDED(tokenAddress, uint8(ext_call.return_data[0]));
}

function notifySale(uint256 arg1, uint256 arg2, uint256 arg3) {
    require uint8(stor1.field_160)
    require not uint8(stor1.field_168)
    require uint8(stor1.field_160)
    require not uint8(stor11.field_160)
    require msg.sender == owner
    require totalCollected + arg1 >= totalCollected
    totalCollected += arg1
    require totalCollectedETH + arg2 >= totalCollectedETH
    totalCollectedETH += arg2
    require totalSold + arg3 >= totalSold
    totalSold += arg3
}

function withdraw() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}

function calculateRewards() {
    require ext_code.size(managerAddress)
    call managerAddress.0xa823cfaf with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(managerAddress)
    call managerAddress.0x80fa81b1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalSold:
        if totalCollectedETH:
            totalCollected = totalCollectedETH
        require ext_code.size(managerAddress)
        call managerAddress.fitCollectedValueIntoRange(uint256 arg1) with:
             gas gas_remaining wei
            args totalCollected
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        totalCollected = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            return 0
        if not totalCollected:
            return 0
        if totalCollected:
            if totalCollected * ext_call.return_data[0] / totalCollected == ext_call.return_data[0]:
                return totalCollected * ext_call.return_data[0] / 10^6, 0
    else:
        if totalSold:
            if totalSold * ext_call.return_data[0] / totalSold == ext_call.return_data[0]:
                if totalCollectedETH:
                    totalCollected = totalCollectedETH
                require ext_code.size(managerAddress)
                call managerAddress.fitCollectedValueIntoRange(uint256 arg1) with:
                     gas gas_remaining wei
                    args totalCollected
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                totalCollected = ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    return 0, totalSold * ext_call.return_data[0] / 10^6
                if not totalCollected:
                    return 0, totalSold * ext_call.return_data[0] / 10^6
                if totalCollected:
                    if totalCollected * ext_call.return_data[0] / totalCollected == ext_call.return_data[0]:
                        return totalCollected * ext_call.return_data[0] / 10^6, totalSold * ext_call.return_data[0] / 10^6
    revert
}



}
