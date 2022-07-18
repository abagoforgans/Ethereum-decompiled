contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    require code.data[7274 len 20]
    require code.data[7306 len 20]
    stor0 = code.data[7274 len 20]
    stor1 = code.data[7306 len 20]
    return code.data[172 len 7090]
}



// =====================  Runtime code  =====================


address adminAddress;
address sub_5f7ee8e6Address;
uint8 stor2; offset 160
uint8 stor2; offset 168
uint8 stor2; offset 176
address reserveAddress;
mapping of uint8 stor3;
mapping of uint8 stor4;
array of struct contributors;
uint256 start;
uint256 sub_44b563db;
uint256 sub_44c16ca8;
uint256 sub_494115bb;
uint256 sub_54e92f26;
uint256 adminStake;
uint256 sub_0ee180c5;
uint256 sub_a1956e32;
mapping of uint256 stake;
uint256 sub_b61ebda8;

function sub_0ee180c5(?) {
    return sub_0ee180c5
}

function isContributor(address arg1) {
    return bool(stor3[arg1])
}

function stake(address arg1) {
    return stake[arg1]
}

function contributors(uint256 arg1) {
    require arg1 < contributors.length
    return address(contributors[arg1].field_0)
}

function sub_44b563db(?) {
    return sub_44b563db
}

function sub_44c16ca8(?) {
    return sub_44c16ca8
}

function sub_494115bb(?) {
    return sub_494115bb
}

function sub_54e92f26(?) {
    return sub_54e92f26
}

function sub_5f7ee8e6(?) {
    return sub_5f7ee8e6Address
}

function adminStake() {
    return adminStake
}

function sub_6542ed29(?) {
    return bool(uint8(stor2.field_176))
}

function hasClaimed(address arg1) {
    return bool(stor4[arg1])
}

function sub_a1956e32(?) {
    return sub_a1956e32
}

function sub_b61ebda8(?) {
    return sub_b61ebda8
}

function start() {
    return start
}

function reserve() {
    return reserveAddress
}

function sub_d6e56d63(?) {
    return bool(uint8(stor2.field_160))
}

function sub_e7a69a1a(?) {
    return bool(uint8(stor2.field_168))
}

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function changeAdmin(address arg1) {
    require sub_5f7ee8e6Address == msg.sender
    adminAddress = arg1
}

function setReserve(address arg1) {
    require adminAddress == msg.sender
    require block.timestamp < start + sub_44b563db
    require 1 == bool(uint8(stor2.field_160))
    reserveAddress = arg1
}

function setFundScheme(uint256 arg1, uint256 arg2) {
    require adminAddress == msg.sender
    require block.timestamp < start + sub_44b563db
    require 1 == bool(uint8(stor2.field_160))
    require arg1 > 0
    adminStake = arg1
    sub_b61ebda8 = arg2
}

function logEndBal() {
    require block.timestamp > start + sub_44b563db + sub_44c16ca8 + sub_494115bb + sub_54e92f26
    require not uint8(stor2.field_176)
    require 1 == bool(uint8(stor2.field_160))
    sub_a1956e32 = eth.balance(this.address)
    uint8(stor2.field_176) = 1
}

function setTimePeriods(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require adminAddress == msg.sender
    require not uint8(stor2.field_160)
    start = block.timestamp
    sub_44b563db = 3600 * arg1
    sub_44c16ca8 = 3600 * arg2
    sub_494115bb = 3600 * arg3
    sub_54e92f26 = 3600 * arg4
    uint8(stor2.field_160) = 1
}

function pullEther(uint256 arg1) {
    require reserveAddress == msg.sender
    require block.timestamp < start + sub_44b563db + sub_44c16ca8 + sub_494115bb
    require block.timestamp > start + sub_44b563db + sub_44c16ca8
    call reserveAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EtherPulled(arg1, reserveAddress);
    return 1
}

function withdrawEther(uint256 arg1, address arg2) {
    require 1 == bool(uint8(stor2.field_160))
    require adminAddress == msg.sender
    require block.timestamp < start + sub_44b563db + sub_44c16ca8 + sub_494115bb
    require block.timestamp > start + sub_44b563db + sub_44c16ca8
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EtherWithdraw(arg1, arg2);
}

function adminDeposit() payable {
    require 1 == bool(uint8(stor2.field_160))
    require adminAddress == msg.sender
    require not uint8(stor2.field_168)
    require block.timestamp < start + sub_44b563db + sub_44c16ca8
    require block.timestamp > start + sub_44b563db
    require msg.value == adminStake
    sub_0ee180c5 += msg.value
    stake[address(msg.sender)] += msg.value
    uint8(stor2.field_168) = 1
    emit AdminDeposit(msg.sender, msg.value);
}

function pullToken(address arg1, uint256 arg2) {
    require reserveAddress == msg.sender
    require block.timestamp < start + sub_44b563db + sub_44c16ca8 + sub_494115bb + sub_54e92f26
    require block.timestamp > start + sub_44b563db + sub_44c16ca8
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args reserveAddress, arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit 0xdae1d2fe: address(arg1), arg2, reserveAddress
    return 1
}

function contributorDeposit() payable {
    require 1 == bool(uint8(stor2.field_160))
    require stor3[address(msg.sender)]
    require 1 == bool(uint8(stor2.field_168))
    require block.timestamp < start + sub_44b563db + sub_44c16ca8
    require block.timestamp > start + sub_44b563db
    require adminStake >= msg.value
    require msg.value > 0
    require stake[address(msg.sender)] < adminStake
    sub_0ee180c5 += msg.value
    stake[address(msg.sender)] += msg.value
    emit ContributorDeposit(msg.sender, msg.value);
}

function withdrawToken(address arg1, uint256 arg2, address arg3) {
    require 1 == bool(uint8(stor2.field_160))
    require adminAddress == msg.sender
    require block.timestamp < start + sub_44b563db + sub_44c16ca8 + sub_494115bb
    require block.timestamp > start + sub_44b563db + sub_44c16ca8
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg3), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit TokenWithdraw(address(arg1), arg2, arg3);
}

function adminRefund() {
    require 1 == bool(uint8(stor2.field_160))
    require adminAddress == msg.sender
    require 1 == bool(uint8(stor2.field_168))
    require block.timestamp < start + sub_44b563db + sub_44c16ca8
    require block.timestamp > start + sub_44b563db
    require sub_0ee180c5 == adminStake
    call adminAddress with:
       value adminStake wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    uint8(stor2.field_168) = 0
    sub_0ee180c5 -= adminStake
    emit AdminDepositReturned(msg.sender, adminStake);
}

function addContributor(address arg1) {
    require adminAddress == msg.sender
    require block.timestamp < start + sub_44b563db
    require 1 == bool(uint8(stor2.field_160))
    require not stor3[address(arg1)]
    require adminAddress != arg1
    stor3[address(arg1)] = 1
    contributors.length++
    if not contributors.length <= contributors.length + 1:
        idx = contributors.length + 1
        while contributors.length > idx:
            contributors[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(contributors[contributors.length].field_0) = arg1
    emit ContributorAdded(arg1);
}

function getContributors() {
    if not contributors.length:
        mem[(32 * contributors.length) + 160] = 32
        mem[(32 * contributors.length) + 192] = contributors.length
        mem[(32 * contributors.length) + 224 len floor32(contributors.length)] = mem[160 len floor32(contributors.length)]
        return memory
          from (32 * contributors.length) + 160
           len (96 * contributors.length) + 64
    mem[160] = address(contributors.field_0)
    idx = 160
    s = 0
    while (32 * contributors.length) + 128 > idx:
        mem[idx + 32] = address(contributors[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * contributors.length) + 224 len floor32(contributors.length)] = mem[160 len floor32(contributors.length)]
    return Array(len=contributors.length, data=mem[160 len floor32(contributors.length)], mem[(32 * contributors.length) + floor32(contributors.length) + 224 len (32 * contributors.length) - floor32(contributors.length)]), 
}

function contributorClaim() {
    require 1 == bool(uint8(stor2.field_160))
    require stor3[address(msg.sender)]
    require block.timestamp > start + sub_44b563db + sub_44c16ca8 + sub_494115bb + sub_54e92f26
    require 1 == bool(uint8(stor2.field_176))
    require not stor4[address(msg.sender)]
    require sub_0ee180c5
    if sub_a1956e32 <= sub_0ee180c5:
        call msg.sender with:
           value stake[address(msg.sender)] * sub_a1956e32 / sub_0ee180c5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call msg.sender with:
           value (10000 * sub_a1956e32) - (10000 * sub_0ee180c5) - (sub_a1956e32 * sub_b61ebda8) + (sub_0ee180c5 * sub_b61ebda8) / 10000 * stake[address(msg.sender)] / sub_0ee180c5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call msg.sender with:
           value stake[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
    stor4[address(msg.sender)] = 1
}

function adminClaim() {
    require adminAddress == msg.sender
    require 1 == bool(uint8(stor2.field_160))
    require block.timestamp > start + sub_44b563db + sub_44c16ca8 + sub_494115bb + sub_54e92f26
    require 1 == bool(uint8(stor2.field_176))
    require not stor4[address(msg.sender)]
    if sub_a1956e32 <= sub_0ee180c5:
        require sub_0ee180c5
        call adminAddress with:
           value adminStake * sub_a1956e32 / sub_0ee180c5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call adminAddress with:
           value (sub_a1956e32 * sub_b61ebda8) - (sub_0ee180c5 * sub_b61ebda8) / 10000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require sub_0ee180c5
        call adminAddress with:
           value (10000 * sub_a1956e32) - (10000 * sub_0ee180c5) - (sub_a1956e32 * sub_b61ebda8) + (sub_0ee180c5 * sub_b61ebda8) / 10000 * adminStake / sub_0ee180c5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call adminAddress with:
           value adminStake wei
             gas 2300 * is_zero(value) wei
    stor4[address(msg.sender)] = 1
}

function checkBalance(address arg1) {
    if block.timestamp >= start + sub_44b563db + sub_44c16ca8 + sub_494115bb:
        if block.timestamp >= start + sub_44b563db + sub_44c16ca8 + sub_494115bb + sub_54e92f26:
            return 0
        if block.timestamp <= start + sub_44b563db + sub_44c16ca8 + sub_494115bb:
            return 0
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            return 0
    else:
        if block.timestamp > start + sub_44b563db + sub_44c16ca8:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                return eth.balance(this.address)
        else:
            if block.timestamp >= start + sub_44b563db + sub_44c16ca8 + sub_494115bb + sub_54e92f26:
                return 0
            if block.timestamp <= start + sub_44b563db + sub_44c16ca8 + sub_494115bb:
                return 0
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                return 0
    ('iszero', ('eq', 1364068194842176056990105843868530818345537040110, ('param', 'arg1')))
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function removeContributor(address arg1) {
    require adminAddress == msg.sender
    require block.timestamp < start + sub_44b563db
    require 1 == bool(uint8(stor2.field_160))
    require stor3[address(arg1)]
    stor3[address(arg1)] = 0
    idx = 0
    while idx < contributors.length - 1:
        require idx < contributors.length
        mem[0] = 5
        if address(contributors[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require contributors.length - 1 < contributors.length
        require idx < contributors.length
        address(contributors[idx].field_0) = address(contributors[contributors.length].field_0)
        contributors.length--
        if not contributors.length <= contributors.length - 1:
            idx = contributors.length + sha3(5) - 1
            while sha3(5) + contributors.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit ContributorRemoval(arg1);
    contributors.length--
    if not contributors.length <= contributors.length - 1:
        idx = contributors.length - 1
        while contributors.length > idx:
            contributors[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit ContributorRemoval(arg1);
}

function contributorRefund() {
    require 1 == bool(uint8(stor2.field_160))
    require stor3[address(msg.sender)]
    require block.timestamp < start + sub_44b563db + sub_44c16ca8
    require block.timestamp > start + sub_44b563db
    stor3[address(msg.sender)] = 0
    idx = 0
    while idx < contributors.length - 1:
        require idx < contributors.length
        mem[0] = 5
        if address(contributors[idx].field_0) != msg.sender:
            idx = idx + 1
            continue 
        require contributors.length - 1 < contributors.length
        require idx < contributors.length
        address(contributors[idx].field_0) = address(contributors[contributors.length].field_0)
        contributors.length--
        if not contributors.length <= contributors.length - 1:
            idx = contributors.length + sha3(5) - 1
            while sha3(5) + contributors.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit ContributorRemoval(msg.sender);
        if stake[address(msg.sender)] > 0:
            call msg.sender with:
               value stake[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            sub_0ee180c5 -= stake[address(msg.sender)]
            stake[address(msg.sender)] = 0
            emit ContributorDepositReturn(msg.sender, 0);
    contributors.length--
    if not contributors.length <= contributors.length - 1:
        idx = contributors.length - 1
        while contributors.length > idx:
            contributors[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit ContributorRemoval(msg.sender);
    if stake[address(msg.sender)] > 0:
        call msg.sender with:
           value stake[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        sub_0ee180c5 -= stake[address(msg.sender)]
        stake[address(msg.sender)] = 0
        emit ContributorDepositReturn(msg.sender, 0);
}



}
