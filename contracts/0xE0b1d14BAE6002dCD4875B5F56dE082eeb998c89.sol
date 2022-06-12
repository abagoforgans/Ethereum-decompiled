contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - rollDice(uint256 arg1)
#
const getBalance = eth.balance(this.address)

const NAME = 'DiceChain'


address owner;
uint256 minBid;
uint256 maxBid;
uint256 bidFee;
uint256 sub_1b2918df;
uint256 totalGamesPlayed;
uint256 sub_763bb3ed;
uint256 sub_130fe7f0;
address ceoAddress;
uint256 sub_8b9e8594;
uint256 sub_b996d948;
uint256 sub_376b3ac2;
uint8 stor12;
uint256 stor12;
uint256 sub_abaafbc2;
uint256 sub_243e5775;
uint32 gasForOraclize;
uint256 sub_3718b1f2;
mapping of uint256 sub_bb40433b;
mapping of uint256 stor22;
mapping of uint256 stor23;
mapping of uint256 stor24;

function ceoAddress() {
    return ceoAddress
}

function sub_130fe7f0(?) {
    return sub_130fe7f0
}

function sub_1b2918df(?) {
    return sub_1b2918df
}

function sub_243e5775(?) {
    return sub_243e5775
}

function sub_3718b1f2(?) {
    return sub_3718b1f2
}

function sub_376b3ac2(?) {
    return sub_376b3ac2
}

function minBid() {
    return minBid
}

function totalGamesPlayed() {
    return totalGamesPlayed
}

function gasForOraclize() {
    return gasForOraclize
}

function maxBid() {
    return maxBid
}

function sub_763bb3ed(?) {
    return sub_763bb3ed
}

function sub_8b9e8594(?) {
    return sub_8b9e8594
}

function owner() {
    return owner
}

function sub_abaafbc2(?) {
    return sub_abaafbc2
}

function sub_b996d948(?) {
    return sub_b996d948
}

function sub_bb40433b(?) {
    return sub_bb40433b[address(arg1)]
}

function activated_() {
    return bool(uint8(stor12))
}

function bidFee() {
    return bidFee
}

function _fallback() payable {
    revert
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function sub_77edf78b(?) {
    return stor22[msg.sender], stor23[msg.sender], stor24[msg.sender]
}

function transferOwnership(address arg1) {
    if msg.sender == owner:
        if arg1:
            owner = arg1
}

function sub_9d9f4765(?) {
    if 0 >= stor22[msg.sender]:
        return 0
    stor22[msg.sender] = 0
    stor23[msg.sender] = 0
    stor24[msg.sender] = 0
    emit 0xb38660c0: msg.sender, 1
    return 1
}

function deactivate() {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This action is available only t: the current CEO'
    require msg.sender
    uint8(stor12) = 0
}

function activate() {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This action is available only t: the current CEO'
    require msg.sender
    uint256(stor12) = not uint8(stor12) or Mask(248, 8, uint256(stor12))
}

function updateBalance() payable {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This action is available only t: the current CEO'
    if msg.value < 10^9:
        revert with 0, 'Too little'
    if msg.value > 100000 * 10^18:
        revert with 0, 'Woah! Too much!'
    emit balanceUpdated(msg.value);
}

function sub_a5fab6e8(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This action is available only t: the current CEO'
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'oThis function can be called onl by a human'
    sub_b996d948 = arg1
}

function sub_daeb39b5(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This action is available only t: the current CEO'
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'oThis function can be called onl by a human'
    sub_8b9e8594 = arg1
}

function sub_57e149e7(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This action is available only t: the current CEO'
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'oThis function can be called onl by a human'
    gasForOraclize = arg1
}

function setCEO(address arg1) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This action is available only t: the current CEO'
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'oThis function can be called onl by a human'
    require arg1
    ceoAddress = arg1
}

function withdrawPendingTransactions() {
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'oThis function can be called onl by a human'
    if bool(uint8(stor12)) != 1:
        revert with 0, 'The contract is inactive'
    sub_bb40433b[msg.sender] = 0
    call msg.sender with:
       value sub_bb40433b[msg.sender] wei
         gas gas_remaining wei
    if not ext_call.success:
        return 0
    return 1
}

function sub_54a0ac56(?) {
    if ceoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This action is available only t: the current CEO'
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'oThis function can be called onl by a human'
    if arg1 < 10^9:
        revert with 0, 'Too little'
    if arg1 > 100000 * 10^18:
        revert with 0, 'Woah! Too much!'
    bidFee = arg1
}



}
