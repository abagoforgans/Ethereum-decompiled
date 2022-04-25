contract main {


// =======================  Init code  ======================


address stor0; offset 8
mapping of uint8 stor1;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor10;

function _fallback() {
    stor0 = msg.sender
    stor1[address(msg.sender)] = 1
    emit LogAdministratorAdded(msg.sender, msg.sender);
    stor4 = 12 * 10^6
    stor5 = 150 * 10^18
    require code.data[6904 len 32] > block.timestamp
    stor10 = code.data[6904 len 32]
    stor8 = 12 * 10^6
    stor6 = 1000 * 10^18
    stor7 = 10^18
    emit 0x8a27c11d: 12 * 10^6, 10^18, 12 * 10^6, code.data[6904 len 32], 1000 * 10^18, 150 * 10^18
    return code.data[465 len 6439]
}



// =====================  Runtime code  =====================


const sub_5a6c04ef(?) = 12 * 10^6

const sub_692845b5(?) = 10^18

const sub_809865de(?) = 1000 * 10^18

const sub_86eb5330(?) = 150 * 10^18

const sub_b93e8405(?) = -1


uint8 state;
address owner; offset 8
mapping of uint8 stor1;
mapping of uint8 stor2;
uint256 whitelistLength;
uint256 sub_1ff8faa2;
uint256 sub_050e1f66;
uint256 sub_41745f3a;
uint256 sub_62cce1a4;
uint256 sub_9376b213;
uint256 numSubscribers;
uint256 startTime;
address sub_830f2829Address;
uint256 sub_6c3f044c;
address stor13;
mapping of uint256 balance;

function sub_050e1f66(?) {
    return sub_050e1f66
}

function isAdministrator(address arg1) {
    return bool(stor1[address(arg1)])
}

function getState() {
    require state <= 2
    return state
}

function sub_1ff8faa2(?) {
    return sub_1ff8faa2
}

function isWhitelisted(address arg1) {
    return bool(stor2[address(arg1)])
}

function sub_41745f3a(?) {
    return sub_41745f3a
}

function sub_62cce1a4(?) {
    return sub_62cce1a4
}

function sub_6c3f044c(?) {
    return sub_6c3f044c
}

function sub_830f2829(?) {
    return sub_830f2829Address
}

function getOwner() {
    return owner
}

function sub_9376b213(?) {
    return sub_9376b213
}

function getWhitelistLength() {
    return whitelistLength
}

function getStartTime() {
    return startTime
}

function getNumSubscribers() {
    return numSubscribers
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function isWhitelistEnabled() {
    return (sub_1ff8faa2 > 0)
}

function isAllowedWhitelist(uint256 arg1, uint256 arg2) {
    if arg1 > 0:
        return (arg1 > 0)
    return (arg2 > 0)
}

function sub_8f80b392(?) {
    if sub_1ff8faa2 <= 0:
        return sub_1ff8faa2 <= 0
    if arg2 <= sub_050e1f66:
        return arg2 <= sub_050e1f66
    return bool(stor2[address(arg1)])
}

function abort() {
    require stor1[address(msg.sender)]
    require state <= 2
    require not state
    require state <= 2
    require not state
    state = 2
    emit LogAbort(msg.sender);
}

function removeAdministrator(address arg1) {
    require owner == msg.sender
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit 0x5e2b00e6: msg.sender, arg1
}

function setStartTime(uint256 arg1) {
    require owner == msg.sender
    require state <= 2
    require not state
    require arg1 > block.timestamp
    startTime = arg1
    emit 0xfc64f8c9: arg1
}

function sub_8c273460(?) {
    require owner == msg.sender
    require state <= 2
    require not state
    require arg1 > 0
    require arg1 < sub_62cce1a4
    sub_62cce1a4 = arg1
    emit 0x68997e44: arg1
}

function addAdministrator(address arg1) {
    require owner == msg.sender
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit LogAdministratorAdded(msg.sender, arg1);
}

function sub_be05fc8f(?) {
    require owner == msg.sender
    require state <= 2
    require not state
    require arg1 > 0
    require arg1 >= sub_6c3f044c
    sub_41745f3a = arg1
    emit 0xd89736fc: arg1
}

function setMaxSubscribers(uint256 arg1) {
    require owner == msg.sender
    require state <= 2
    require not state
    require arg1 > 0
    require arg1 >= numSubscribers
    sub_9376b213 = arg1
    emit LogMaxSubscribersChanged(arg1);
}

function setAddresses(address arg1, address arg2) {
    require owner == msg.sender
    require state <= 2
    require not state
    require arg1
    require arg2
    sub_830f2829Address = arg1
    stor13 = arg2
    emit 0x648e7157: arg1, arg2
}

function sub_b6ababf4(?) {
    require owner == msg.sender
    require state <= 2
    require not state
    if sub_1ff8faa2 <= 0:
        require arg1 > 0
    if whitelistLength:
        require arg1 > sub_050e1f66
    sub_050e1f66 = arg1
    emit 0x297af10d: arg1, msg.sender
}

function setMaxWhitelistLength(uint256 arg1) {
    require owner == msg.sender
    require state <= 2
    require not state
    if arg1 <= 0:
        require sub_050e1f66 > 0
    require arg1 != sub_1ff8faa2
    sub_1ff8faa2 = arg1
    emit LogMaxWhitelistLengthChanged(arg1, msg.sender);
}

function removeFromWhitelist(address arg1) {
    require owner == msg.sender
    require state <= 2
    require not state
    require arg1
    require stor2[address(arg1)]
    require whitelistLength > 0
    whitelistLength--
    stor2[address(arg1)] = 0
    emit LogWhitelistAddressRemoved(arg1, msg.sender);
}

function addToWhitelist(address arg1) {
    require owner == msg.sender
    require state <= 2
    require not state
    require arg1
    require not stor2[address(arg1)]
    require whitelistLength < sub_1ff8faa2
    whitelistLength++
    stor2[address(arg1)] = 1
    emit LogWhitelistAddressAdded(arg1, msg.sender);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    stor1[address(msg.sender)] = 0
    emit 0x5e2b00e6: msg.sender, msg.sender
    stor1[address(arg1)] = 1
    emit LogAdministratorAdded(msg.sender, arg1);
    require arg1
    require owner != arg1
    emit LogOwnershipTransferred(owner, arg1);
    owner = arg1
}

function buy() {
    require owner == msg.sender
    require state <= 2
    require not state
    require block.timestamp >= startTime
    require sub_830f2829Address
    require state <= 2
    require not state
    state = 1
    emit 0x1f808e69: sub_6c3f044c
    call sub_830f2829Address with:
       value sub_6c3f044c wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function refund() {
    require state <= 2
    require state != 1
    require balance[address(msg.sender)] > 0
    require sub_6c3f044c > 0
    require balance[address(msg.sender)] <= sub_6c3f044c
    sub_6c3f044c -= balance[address(msg.sender)]
    balance[address(msg.sender)] = 0
    numSubscribers--
    call msg.sender with:
       value balance[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogRefund(msg.sender, balance[address(msg.sender)]);
}

function invest() payable {
    require state <= 2
    require not state
    require msg.value + sub_6c3f044c <= sub_41745f3a
    require msg.value + balance[address(msg.sender)] >= sub_62cce1a4
    require msg.value + balance[address(msg.sender)] >= balance[address(msg.sender)]
    if sub_1ff8faa2 > 0:
        if msg.value + balance[address(msg.sender)] > sub_050e1f66:
            require stor2[address(msg.sender)]
    if not balance[address(msg.sender)]:
        require numSubscribers < sub_9376b213
        numSubscribers++
    balance[address(msg.sender)] += msg.value
    require msg.value + sub_6c3f044c >= sub_6c3f044c
    sub_6c3f044c += msg.value
    emit LogDeposit(msg.sender, msg.value, msg.value + balance[address(msg.sender)]);
}

function _fallback() payable {
    require state <= 2
    require not state
    require msg.value + sub_6c3f044c <= sub_41745f3a
    require msg.value + balance[address(msg.sender)] >= sub_62cce1a4
    require msg.value + balance[address(msg.sender)] >= balance[address(msg.sender)]
    if sub_1ff8faa2 > 0:
        if msg.value + balance[address(msg.sender)] > sub_050e1f66:
            require stor2[address(msg.sender)]
    if not balance[address(msg.sender)]:
        require numSubscribers < sub_9376b213
        numSubscribers++
    balance[address(msg.sender)] += msg.value
    require msg.value + sub_6c3f044c >= sub_6c3f044c
    sub_6c3f044c += msg.value
    emit LogDeposit(msg.sender, msg.value, msg.value + balance[address(msg.sender)]);
}

function withdraw() {
    require state <= 2
    require state == 1
    require balance[address(msg.sender)] > 0
    require sub_6c3f044c > 0
    require ext_code.size(stor13)
    call stor13.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    if balance[address(msg.sender)]:
        require balance[address(msg.sender)]
        require ext_call.return_data[0] * balance[address(msg.sender)] / balance[address(msg.sender)] == ext_call.return_data[0]
    require sub_6c3f044c
    require balance[address(msg.sender)] <= sub_6c3f044c
    sub_6c3f044c -= balance[address(msg.sender)]
    balance[address(msg.sender)] = 0
    numSubscribers--
    require ext_code.size(stor13)
    call stor13.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0] * balance[address(msg.sender)] / sub_6c3f044c
    require ext_call.success
    require ext_call.return_data[0]
    emit LogWithdraw(msg.sender, ext_call.return_data[0] * balance[address(msg.sender)] / sub_6c3f044c);
}



}
