contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint8 stor17;

function _fallback() payable {
    stor1 = 0
    stor3 = 4600
    stor4 = 56076645 * 10^17
    stor5 = 0
    stor6 = 15
    stor7 = 720 * 24 * 3600
    stor8 = 420132 * 3600
    stor9 = stor8 + (720 * 24 * 3600)
    stor10 = 0
    stor11 = 0
    stor12 = 5 * 10^15 * 3600
    stor13 = 3600
    stor17 = 1
    require not msg.value
    stor0 = msg.sender
    require code.data[6925 len 20]
    stor2 = code.data[6925 len 20]
    stor5 = code.data[6957 len 20]
    return code.data[556 len 6357]
}



// =====================  Runtime code  =====================


const DURATION = (720 * 24 * 3600)


address owner;
address stor1;
address tokenAddress;
uint256 rate;
uint256 totalTokenCap;
address issuerAddress;
uint256 bonusRate;
uint256 bonusDuration;
uint256 startTime;
uint256 endTime;
uint256 totalEtherContributed;
uint256 totalTokenIssued;
uint256 sub_2b32704f;
uint256 sub_29d2cdc9;
mapping of uint256 sub_4de58efe;
mapping of uint256 tokenIssued;
mapping of uint8 stor16;
uint8 stor17;

function bonusDuration() {
    return bonusDuration
}

function issuer() {
    return issuerAddress
}

function sub_29d2cdc9(?) {
    return sub_29d2cdc9
}

function sub_2b32704f(?) {
    return sub_2b32704f
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function sub_4de58efe(?) {
    return sub_4de58efe[address(arg1)]
}

function bonusRate() {
    return bonusRate
}

function totalTokenIssued() {
    return totalTokenIssued
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function totalTokenCap() {
    return totalTokenCap
}

function totalEtherContributed() {
    return totalEtherContributed
}

function isWhitelist(address arg1) {
    return bool(stor16[address(arg1)])
}

function saleSwitch() {
    return bool(stor17)
}

function getTokenIssued(address arg1) {
    return tokenIssued[address(arg1)]
}

function token() {
    return tokenAddress
}

function sub_b2745d89(?) {
    bonusDuration = arg1
}

function open() {
    require msg.sender == owner
    stor17 = 1
}

function close() {
    require msg.sender == owner
    stor17 = 0
}

function sub_4fdd62d6(?) {
    require msg.sender == owner
    sub_29d2cdc9 = arg1
}

function sub_d1902683(?) {
    require msg.sender == owner
    sub_2b32704f = arg1
}

function changeRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
}

function sub_ec8fb598(?) {
    require msg.sender == owner
    totalTokenCap = arg1
}

function changeIssuer(address arg1) {
    require msg.sender == owner
    require arg1
    issuerAddress = arg1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    stor1 = arg1
}

function acceptOwnership() {
    require msg.sender == stor1
    emit OwnerUpdate(owner, stor1);
    owner = stor1
    stor1 = 0
}

function changeStartTime(uint256 arg1) {
    require msg.sender == owner
    startTime = arg1
    endTime = startTime + (720 * 24 * 3600)
}

function withdraw() {
    require msg.sender == owner
    call issuerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function calculateAmount(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg1 * arg2 / arg1 == arg2
    if block.timestamp > startTime + bonusDuration:
        return (arg1 * arg2)
    return ((100 * arg1 * arg2) + (bonusRate * arg1 * arg2) / 100)
}

function removeWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    if var11001 >= arg1.length:
    require var13002 < arg1.length
    if not var17001:
    require var19001 < arg1.length
    stor16[mem[(32 * var21001) + 140 len 20]] = 0
    if var23001 >= arg1.length:
    require var25002 < arg1.length
    if not var29001:
    require var31001 < arg1.length
    stor16[mem[(32 * var33001) + 140 len 20]] = 0
    if var35001 >= arg1.length:
    require var37002 < arg1.length
    if not var41001:
    require var43001 < arg1.length
    stor16[mem[(32 * var45001) + 140 len 20]] = 0
    if var47001 >= arg1.length:
    # nil
}

function addWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    if var12001 >= arg1.length:
    require var14002 < arg1.length
    if not var18001:
    require var20001 < arg1.length
    stor16[mem[(32 * var22001) + 140 len 20]] = 1
    require var22006 < arg1.length
    mem[(32 * arg1.length) + 128] = mem[(32 * var24001) + 140 len 20]
    emit 0xc0ebdbbb: mem[(32 * arg1.length) + 128]
    if var26001 >= arg1.length:
    require var28002 < arg1.length
    if not var32001:
    require var34001 < arg1.length
    stor16[mem[(32 * var36001) + 140 len 20]] = 1
    require var36006 < arg1.length
    mem[(32 * arg1.length) + 128] = mem[(32 * var38001) + 140 len 20]
    emit 0xc0ebdbbb: mem[(32 * arg1.length) + 128]
    if var40001 >= arg1.length:
    require var42002 < arg1.length
    if not var46001:
    require var48001 < arg1.length
    # nil
}

function _fallback() payable {
    require stor17
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require stor16[address(msg.sender)]
    if block.timestamp <= startTime + sub_29d2cdc9:
        require sub_4de58efe[address(msg.sender)] + msg.value <= sub_2b32704f
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    if block.timestamp > startTime + bonusDuration:
        require totalTokenIssued + (msg.value * rate) <= totalTokenCap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args issuerAddress, msg.sender, msg.value * rate
        require ext_call.success
        require ext_call.return_data[0]
        require totalEtherContributed + msg.value >= totalEtherContributed
        totalEtherContributed += msg.value
        totalTokenIssued += msg.value * rate
        require sub_4de58efe[address(msg.sender)] + msg.value >= sub_4de58efe[address(msg.sender)]
        sub_4de58efe[address(msg.sender)] += msg.value
        require tokenIssued[address(msg.sender)] + (msg.value * rate) >= tokenIssued[address(msg.sender)]
        tokenIssued[address(msg.sender)] += msg.value * rate
        emit Contribute(msg.value, msg.value * rate, msg.sender);
    else:
        require totalTokenIssued + ((100 * msg.value * rate) + (bonusRate * msg.value * rate) / 100) <= totalTokenCap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args issuerAddress, msg.sender, (100 * msg.value * rate) + (bonusRate * msg.value * rate) / 100
        require ext_call.success
        require ext_call.return_data[0]
        require totalEtherContributed + msg.value >= totalEtherContributed
        totalEtherContributed += msg.value
        totalTokenIssued += (100 * msg.value * rate) + (bonusRate * msg.value * rate) / 100
        require sub_4de58efe[address(msg.sender)] + msg.value >= sub_4de58efe[address(msg.sender)]
        sub_4de58efe[address(msg.sender)] += msg.value
        require tokenIssued[address(msg.sender)] + ((100 * msg.value * rate) + (bonusRate * msg.value * rate) / 100) >= tokenIssued[address(msg.sender)]
        tokenIssued[address(msg.sender)] += (100 * msg.value * rate) + (bonusRate * msg.value * rate) / 100
        emit Contribute(msg.value, (100 * msg.value * rate) + (bonusRate * msg.value * rate) / 100, msg.sender);
}



}
