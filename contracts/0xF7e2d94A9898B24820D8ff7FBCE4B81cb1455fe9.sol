contract main {




// =====================  Runtime code  =====================


#
#  - settleBet(uint256 arg1, bytes32 arg2)
#
const thisBalance = eth.balance(this.address)


address owner;
address stor1;
uint256 maxProfit;
address secretSignerAddress;
uint128 lockedInBets;
mapping of struct stor5;
mapping of uint8 stor6;
address sub_a9c1685bAddress;

function secretSigner() {
    return secretSignerAddress
}

function owner() {
    return owner
}

function getSecretSigner() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    return secretSignerAddress
}

function sub_a9c1685b(?) {
    return sub_a9c1685bAddress
}

function maxProfit() {
    return maxProfit
}

function lockedInBets() {
    return lockedInBets
}

function kill() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    if lockedInBets:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x2e416c6c20626574732073686f756c642062652070726f6365737365642028736574746c6564206f7220726566756e64656429206265666f72652073656c662d6465737472756374,
                    mem[236 len 24]
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_e78e0362(?) {
    require ext_code.size(sub_a9c1685bAddress)
    staticcall sub_a9c1685bAddress.0xe78e0362 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_77e24446(?) {
    require ext_code.size(sub_a9c1685bAddress)
    staticcall sub_a9c1685bAddress.0x77e24446 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[16 len 16]
}

function acceptNextOwner() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe43616e206f6e6c792061636365707420707265617070726f766564206e6577206f776e6572,
                    mem[202 len 26]
    owner = stor1
}

function getMyAccuAmount() {
    require ext_code.size(sub_a9c1685bAddress)
    staticcall sub_a9c1685bAddress.getUserExp(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setSecretSigner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    secretSignerAddress = arg1
}

function setVIPLibraryAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    sub_a9c1685bAddress = arg1
}

function addCroupier(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    if not stor6[address(arg1)]:
        stor6[address(arg1)] = 1
}

function deleteCroupier(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    if bool(stor6[address(arg1)]) == 1:
        stor6[address(arg1)] = 0
}

function approveNextOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    if arg1 == owner:
        revert with 0, 'Cannot approve current owner.'
    stor1 = arg1
}

function payTodayReward(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    require ext_code.size(sub_a9c1685bAddress)
    call sub_a9c1685bAddress.0xbab46bd3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMaxProfit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    if arg1 >= 10 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e6d617850726f6669742073686f756c6420626520612073616e65206e756d626572,
                    mem[198 len 30]
    maxProfit = arg1
}

function withdrawFunds(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    if arg2 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e496e63726561736520616d6f756e74206c6172676572207468616e2062616c616e6365,
                    mem[200 len 28]
    if lockedInBets + arg2 > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(arg2, arg1);
    else:
        emit 0xa72748b2: arg2, 0, 0, 0, 0, 0, arg1
}

function refundBet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor5[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e4265742073686f756c6420626520696e20616e2027616374697665272073746174,
                    mem[198 len 30]
    if block.number <= stor5[arg1].field_256 + 250:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e426c6f636b686173682063616e277420626520717565726965642062792045564d,
                    mem[198 len 30]
    stor5[arg1].field_0 = 0
    lockedInBets = uint128(lockedInBets - (5 * stor5[arg1].field_0))
    call stor5[arg1].field_296 with:
       value stor5[arg1].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(stor5[arg1].field_0, stor5[arg1].field_296);
    else:
        emit 0xa72748b2: stor5[arg1].field_0, 0, 0, 0, 0, 0, stor5[arg1].field_296
}

function placeBet(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    if stor5[arg3].field_296:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x654265742073686f756c6420626520696e20612027636c65616e27207374617465,
                    mem[197 len 31]
    if msg.value < 10^16:
        revert with 0, 'Amount should be within range.'
    if msg.value > 10 * 10^18:
        revert with 0, 'Amount should be within range.'
    if arg1 <= 0:
        revert with 0, 'Mask should be within range.'
    if arg1 >= 1099511627776:
        revert with 0, 'Mask should be within range.'
    if block.number > arg2:
        revert with 0, 'Commit has expired.'
    mem[261 len 0] = None
    signer = erecover(sha3(mem[261 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2 % 1099511627776, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if secretSignerAddress != address(signer):
        revert with 0, 'ECDSA signature is not valid.'
    if 5 * msg.value > msg.value + maxProfit:
        revert with 0, 'maxProfit limit violation. '
    lockedInBets = uint128(lockedInBets + (5 * msg.value))
    if msg.value >= 10^17:
        if lockedInBets + 10^15 > eth.balance(this.address):
            revert with 0, 'Cannot afford to lose this bet.'
    else:
        if lockedInBets > eth.balance(this.address):
            revert with 0, 'Cannot afford to lose this bet.'
    emit Commit(arg3);
    stor5[arg3].field_0 = msg.value
    stor5[arg3].field_256 = block.number % 1099511627776
    stor5[arg3].field_296 = msg.sender
    require ext_code.size(sub_a9c1685bAddress)
    call sub_a9c1685bAddress.addUserExp(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function placeBetWithInviter(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    if stor5[arg3].field_296:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x654265742073686f756c6420626520696e20612027636c65616e27207374617465,
                    mem[197 len 31]
    if msg.value < 10^16:
        revert with 0, 'Amount should be within range.'
    if msg.value > 10 * 10^18:
        revert with 0, 'Amount should be within range.'
    if arg1 <= 0:
        revert with 0, 'Mask should be within range.'
    if arg1 >= 1099511627776:
        revert with 0, 'Mask should be within range.'
    if this.address == arg7:
        revert with 0, 'cannot invite mysql'
    if not arg7:
        revert with 0, 'cannot invite mysql'
    if block.number > arg2:
        revert with 0, 'Commit has expired.'
    mem[261 len 0] = None
    signer = erecover(sha3(mem[261 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2 % 1099511627776, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if secretSignerAddress != address(signer):
        revert with 0, 'ECDSA signature is not valid.'
    if 5 * msg.value > msg.value + maxProfit:
        revert with 0, 'maxProfit limit violation. '
    lockedInBets = uint128(lockedInBets + (5 * msg.value))
    if msg.value >= 10^17:
        if lockedInBets + 10^15 > eth.balance(this.address):
            revert with 0, 'Cannot afford to lose this bet.'
    else:
        if lockedInBets > eth.balance(this.address):
            revert with 0, 'Cannot afford to lose this bet.'
    emit Commit(arg3);
    stor5[arg3].field_0 = msg.value
    stor5[arg3].field_256 = block.number % 1099511627776
    stor5[arg3].field_296 = msg.sender
    stor5[arg3].field_512 = arg7
    require ext_code.size(sub_a9c1685bAddress)
    call sub_a9c1685bAddress.addUserExp(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
