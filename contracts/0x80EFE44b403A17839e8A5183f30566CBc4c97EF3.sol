contract main {




// =====================  Runtime code  =====================


const thisBalance = eth.balance(this.address)


address owner;
address stor1;
uint256 maxProfit;
address secretSignerAddress;
uint128 lockedInBets;
mapping of struct stor5;
mapping of struct profile;
mapping of uint8 stor7;
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

function getProfile() {
    return profile[address(msg.sender)].field_0, profile[address(msg.sender)].field_256
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

function setNickName(bytes32 arg1) {
    require calldata.size - 4 >= 32
    profile[address(msg.sender)].field_256 = arg1
}

function setAvatarIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < 0:
        revert with 0, 'avatar index should be in range'
    if arg1 > 100:
        revert with 0, 'avatar index should be in range'
    profile[address(msg.sender)].field_0 = arg1
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
    if not stor7[address(arg1)]:
        stor7[address(arg1)] = 1
}

function deleteCroupier(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    if bool(stor7[address(arg1)]) == 1:
        stor7[address(arg1)] = 0
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
        emit Payment(arg2, 0, 0, 0, arg1);
}

function refundBet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor5[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e4265742073686f756c6420626520696e20616e2027616374697665272073746174,
                    mem[198 len 30]
    if block.number <= stor5[arg1].field_264 + 250:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e426c6f636b686173682063616e277420626520717565726965642062792045564d,
                    mem[198 len 30]
    stor5[arg1].field_0 = 0
    if 0 >= stor5[arg1].field_256:
        revert with 0, 'Win probability out of range.'
    if stor5[arg1].field_256 > 100:
        revert with 0, 'Win probability out of range.'
    if stor5[arg1].field_0 >= 10^17:
        if stor5[arg1].field_0 / 100 >= 4 * 10^14:
            if (stor5[arg1].field_0 / 100) + 10^15 > stor5[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765,
                            mem[198 len 30]
            require stor5[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor5[arg1].field_0) + (-100 * stor5[arg1].field_0 / 100) - 10^17 / stor5[arg1].field_256))
        else:
            if 14 * 10^14 > stor5[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765,
                            mem[198 len 30]
            require stor5[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor5[arg1].field_0) - 14 * 10^16 / stor5[arg1].field_256))
    else:
        if stor5[arg1].field_0 / 100 >= 4 * 10^14:
            if stor5[arg1].field_0 / 100 > stor5[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765,
                            mem[198 len 30]
            require stor5[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor5[arg1].field_0) - (100 * stor5[arg1].field_0 / 100) / stor5[arg1].field_256))
        else:
            if 4 * 10^14 > stor5[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765,
                            mem[198 len 30]
            require stor5[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor5[arg1].field_0) - 4 * 10^16 / stor5[arg1].field_256))
    call stor5[arg1].field_344 with:
       value stor5[arg1].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(stor5[arg1].field_0, stor5[arg1].field_344);
    else:
        emit Payment(stor5[arg1].field_0, 0, 0, 0, stor5[arg1].field_344);
}

function placeBet(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    if stor5[arg3].field_344:
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
    if arg1 <= 0:
        revert with 0, 
                    32,
                    46,
                    0x2e48696768206d6f64756c6f2072616e67652c206265744d61736b206c6172676572207468616e206d6f64756c6f,
                    Mask(112, 0, arg6),
                    mem[481 len 4]
    if arg1 > 100:
        revert with 0, 
                    32,
                    46,
                    0x2e48696768206d6f64756c6f2072616e67652c206265744d61736b206c6172676572207468616e206d6f64756c6f,
                    Mask(112, 0, arg6),
                    mem[481 len 4]
    if 0 >= arg1:
        revert with 0, 'Win probability out of range.'
    if arg1 > 100:
        revert with 0, 'Win probability out of range.'
    if msg.value >= 10^17:
        if msg.value / 100 >= 4 * 10^14:
            if (msg.value / 100) + 10^15 > msg.value:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[481 len 4]
            require arg1
            if (100 * msg.value) + (-100 * msg.value / 100) - 10^17 / arg1 > msg.value + maxProfit:
                revert with 0, 'maxProfit limit violation. '
            lockedInBets = uint128(lockedInBets + ((100 * msg.value) + (-100 * msg.value / 100) - 10^17 / arg1))
        else:
            if 14 * 10^14 > msg.value:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[481 len 4]
            require arg1
            if (100 * msg.value) - 14 * 10^16 / arg1 > msg.value + maxProfit:
                revert with 0, 'maxProfit limit violation. '
            lockedInBets = uint128(lockedInBets + ((100 * msg.value) - 14 * 10^16 / arg1))
        if lockedInBets + 10^15 > eth.balance(this.address):
            revert with 0, 'Cannot afford to lose this bet.'
    else:
        if msg.value / 100 >= 4 * 10^14:
            if msg.value / 100 > msg.value:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[481 len 4]
            require arg1
            if (100 * msg.value) - (100 * msg.value / 100) / arg1 > msg.value + maxProfit:
                revert with 0, 'maxProfit limit violation. '
            lockedInBets = uint128(lockedInBets + ((100 * msg.value) - (100 * msg.value / 100) / arg1))
        else:
            if 4 * 10^14 > msg.value:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[481 len 4]
            require arg1
            if (100 * msg.value) - 4 * 10^16 / arg1 > msg.value + maxProfit:
                revert with 0, 'maxProfit limit violation. '
            lockedInBets = uint128(lockedInBets + ((100 * msg.value) - 4 * 10^16 / arg1))
        if lockedInBets > eth.balance(this.address):
            revert with 0, 'Cannot afford to lose this bet.'
    emit Commit(arg3);
    stor5[arg3].field_0 = msg.value
    stor5[arg3].field_256 = uint8(arg1)
    stor5[arg3].field_264 = block.number % 1099511627776
    stor5[arg3].field_304 = 0
    stor5[arg3].field_344 = msg.sender
    require ext_code.size(sub_a9c1685bAddress)
    call sub_a9c1685bAddress.addUserExp(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function placeBetWithInviter(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    if stor5[arg3].field_344:
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
    if arg1 <= 0:
        revert with 0, 
                    32,
                    46,
                    0x2e48696768206d6f64756c6f2072616e67652c206265744d61736b206c6172676572207468616e206d6f64756c6f,
                    Mask(112, 0, arg6),
                    mem[481 len 4]
    if arg1 > 100:
        revert with 0, 
                    32,
                    46,
                    0x2e48696768206d6f64756c6f2072616e67652c206265744d61736b206c6172676572207468616e206d6f64756c6f,
                    Mask(112, 0, arg6),
                    mem[481 len 4]
    if 0 >= arg1:
        revert with 0, 'Win probability out of range.'
    if arg1 > 100:
        revert with 0, 'Win probability out of range.'
    if msg.value >= 10^17:
        if msg.value / 100 >= 4 * 10^14:
            if (msg.value / 100) + 10^15 > msg.value:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[481 len 4]
            require arg1
            if (100 * msg.value) + (-100 * msg.value / 100) - 10^17 / arg1 > msg.value + maxProfit:
                revert with 0, 'maxProfit limit violation. '
            lockedInBets = uint128(lockedInBets + ((100 * msg.value) + (-100 * msg.value / 100) - 10^17 / arg1))
        else:
            if 14 * 10^14 > msg.value:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[481 len 4]
            require arg1
            if (100 * msg.value) - 14 * 10^16 / arg1 > msg.value + maxProfit:
                revert with 0, 'maxProfit limit violation. '
            lockedInBets = uint128(lockedInBets + ((100 * msg.value) - 14 * 10^16 / arg1))
        if lockedInBets + 10^15 > eth.balance(this.address):
            revert with 0, 'Cannot afford to lose this bet.'
    else:
        if msg.value / 100 >= 4 * 10^14:
            if msg.value / 100 > msg.value:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[481 len 4]
            require arg1
            if (100 * msg.value) - (100 * msg.value / 100) / arg1 > msg.value + maxProfit:
                revert with 0, 'maxProfit limit violation. '
            lockedInBets = uint128(lockedInBets + ((100 * msg.value) - (100 * msg.value / 100) / arg1))
        else:
            if 4 * 10^14 > msg.value:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, Mask(208, 0, arg6), mem[481 len 4]
            require arg1
            if (100 * msg.value) - 4 * 10^16 / arg1 > msg.value + maxProfit:
                revert with 0, 'maxProfit limit violation. '
            lockedInBets = uint128(lockedInBets + ((100 * msg.value) - 4 * 10^16 / arg1))
        if lockedInBets > eth.balance(this.address):
            revert with 0, 'Cannot afford to lose this bet.'
    emit Commit(arg3);
    stor5[arg3].field_0 = msg.value
    stor5[arg3].field_256 = uint8(arg1)
    stor5[arg3].field_264 = block.number % 1099511627776
    stor5[arg3].field_304 = 0
    stor5[arg3].field_344 = msg.sender
    stor5[arg3].field_512 = arg7
    require ext_code.size(sub_a9c1685bAddress)
    call sub_a9c1685bAddress.addUserExp(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function settleBet(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if not stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x2e4f6e6c7943726f7570696572206d6574686f64732063616c6c6564206279206e6f6e2d63726f7570696572,
                    mem[208 len 20]
    if block.number <= stor5[arg1].field_264:
        revert with 0, 
                    32,
                    51,
                    0x2e736574746c6542657420696e207468652073616d6520626c6f636b20617320706c6163654265742c206f72206265666f7265,
                    mem[279 len 13]
    if block.number > stor5[arg1].field_264 + 250:
        revert with 0, 32, 34, 0x2e426c6f636b686173682063616e277420626520717565726965642062792045564d, mem[262 len 30]
    require block.hash(stor5[arg1].field_264) == arg2
    if not stor5[arg1].field_0:
        revert with 0, 32, 34, 0x2e4265742073686f756c6420626520696e20616e2027616374697665272073746174, mem[262 len 30]
    require ext_code.size(sub_a9c1685bAddress)
    staticcall sub_a9c1685bAddress.getVIPBounusRate(address arg1) with:
            gas gas_remaining wei
           args stor5[arg1].field_344
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        call stor5[arg1].field_344 with:
           value stor5[arg1].field_0 * ext_call.return_data[0] / 10000 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit VIPPayback((stor5[arg1].field_0 * ext_call.return_data[0] / 10000), stor5[arg1].field_344);
    stor5[arg1].field_0 = 0
    if 0 >= stor5[arg1].field_256:
        revert with 0, 'Win probability out of range.'
    if stor5[arg1].field_256 > 100:
        revert with 0, 'Win probability out of range.'
    if stor5[arg1].field_0 >= 10^17:
        if stor5[arg1].field_0 / 100 >= 4 * 10^14:
            if (stor5[arg1].field_0 / 100) + 10^15 > stor5[arg1].field_0:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
            require stor5[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor5[arg1].field_0) + (-100 * stor5[arg1].field_0 / 100) - 10^17 / stor5[arg1].field_256))
            if stor5[arg1].field_0 >= 10^17:
                call sub_a9c1685bAddress with:
                   value 10^15 wei
                     gas 0 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_a9c1685bAddress)
                call sub_a9c1685bAddress.increaseJackpot(uint256 arg1) with:
                     gas gas_remaining wei
                    args 10^15
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sha3(arg1, arg2) / 100 % 1000:
                    require ext_code.size(sub_a9c1685bAddress)
                    staticcall sub_a9c1685bAddress.0xe78e0362 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_a9c1685bAddress)
                    call sub_a9c1685bAddress.0x62b686fc with:
                         gas gas_remaining wei
                        args stor5[arg1].field_344
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] > 0:
                        emit JackpotPayment(ext_call.return_data[0], sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
            if stor5[arg1].field_512:
                call stor5[arg1].field_512 with:
                   value 7 * stor5[arg1].field_0 / 100 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call sub_a9c1685bAddress with:
               value uint128(7 * stor5[arg1].field_0 / 100 / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_a9c1685bAddress)
            call sub_a9c1685bAddress.0x40448c6 with:
                 gas gas_remaining wei
                args uint128(7 * stor5[arg1].field_0 / 100 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sha3(arg1, arg2) % 100 >= stor5[arg1].field_256:
                call stor5[arg1].field_344 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    emit FailedPayment(1, stor5[arg1].field_344);
                else:
                    emit Payment(0, sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
            else:
                if not (100 * stor5[arg1].field_0) + (-100 * stor5[arg1].field_0 / 100) - 10^17 / stor5[arg1].field_256:
                    call stor5[arg1].field_344 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, stor5[arg1].field_344);
                    else:
                        emit Payment((100 * stor5[arg1].field_0) + (-100 * stor5[arg1].field_0 / 100) - 10^17 / stor5[arg1].field_256, sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
                else:
                    call stor5[arg1].field_344 with:
                       value (100 * stor5[arg1].field_0) + (-100 * stor5[arg1].field_0 / 100) - 10^17 / stor5[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit FailedPayment(((100 * stor5[arg1].field_0) + (-100 * stor5[arg1].field_0 / 100) - 10^17 / stor5[arg1].field_256), stor5[arg1].field_344);
                    else:
                        emit Payment((100 * stor5[arg1].field_0) + (-100 * stor5[arg1].field_0 / 100) - 10^17 / stor5[arg1].field_256, sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
        else:
            if 14 * 10^14 > stor5[arg1].field_0:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
            require stor5[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor5[arg1].field_0) - 14 * 10^16 / stor5[arg1].field_256))
            if stor5[arg1].field_0 >= 10^17:
                call sub_a9c1685bAddress with:
                   value 10^15 wei
                     gas 0 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_a9c1685bAddress)
                call sub_a9c1685bAddress.increaseJackpot(uint256 arg1) with:
                     gas gas_remaining wei
                    args 10^15
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sha3(arg1, arg2) / 100 % 1000:
                    require ext_code.size(sub_a9c1685bAddress)
                    staticcall sub_a9c1685bAddress.0xe78e0362 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_a9c1685bAddress)
                    call sub_a9c1685bAddress.0x62b686fc with:
                         gas gas_remaining wei
                        args stor5[arg1].field_344
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] > 0:
                        emit JackpotPayment(ext_call.return_data[0], sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
            if stor5[arg1].field_512:
                call stor5[arg1].field_512 with:
                   value 7 * stor5[arg1].field_0 / 100 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call sub_a9c1685bAddress with:
               value uint128(7 * stor5[arg1].field_0 / 100 / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_a9c1685bAddress)
            call sub_a9c1685bAddress.0x40448c6 with:
                 gas gas_remaining wei
                args uint128(7 * stor5[arg1].field_0 / 100 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sha3(arg1, arg2) % 100 >= stor5[arg1].field_256:
                call stor5[arg1].field_344 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    emit FailedPayment(1, stor5[arg1].field_344);
                else:
                    emit Payment(0, sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
            else:
                if not (100 * stor5[arg1].field_0) - 14 * 10^16 / stor5[arg1].field_256:
                    call stor5[arg1].field_344 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, stor5[arg1].field_344);
                    else:
                        emit Payment((100 * stor5[arg1].field_0) - 14 * 10^16 / stor5[arg1].field_256, sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
                else:
                    call stor5[arg1].field_344 with:
                       value (100 * stor5[arg1].field_0) - 14 * 10^16 / stor5[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit FailedPayment(((100 * stor5[arg1].field_0) - 14 * 10^16 / stor5[arg1].field_256), stor5[arg1].field_344);
                    else:
                        emit Payment((100 * stor5[arg1].field_0) - 14 * 10^16 / stor5[arg1].field_256, sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
    else:
        if stor5[arg1].field_0 / 100 >= 4 * 10^14:
            if stor5[arg1].field_0 / 100 > stor5[arg1].field_0:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
            require stor5[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor5[arg1].field_0) - (100 * stor5[arg1].field_0 / 100) / stor5[arg1].field_256))
            if stor5[arg1].field_0 >= 10^17:
                call sub_a9c1685bAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_a9c1685bAddress)
                call sub_a9c1685bAddress.increaseJackpot(uint256 arg1) with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sha3(arg1, arg2) / 100 % 1000:
                    require ext_code.size(sub_a9c1685bAddress)
                    staticcall sub_a9c1685bAddress.0xe78e0362 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_a9c1685bAddress)
                    call sub_a9c1685bAddress.0x62b686fc with:
                         gas gas_remaining wei
                        args stor5[arg1].field_344
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] > 0:
                        emit JackpotPayment(ext_call.return_data[0], sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
            if stor5[arg1].field_512:
                call stor5[arg1].field_512 with:
                   value 7 * stor5[arg1].field_0 / 100 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call sub_a9c1685bAddress with:
               value uint128(7 * stor5[arg1].field_0 / 100 / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_a9c1685bAddress)
            call sub_a9c1685bAddress.0x40448c6 with:
                 gas gas_remaining wei
                args uint128(7 * stor5[arg1].field_0 / 100 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sha3(arg1, arg2) % 100 >= stor5[arg1].field_256:
                call stor5[arg1].field_344 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    emit FailedPayment(1, stor5[arg1].field_344);
                else:
                    emit Payment(0, sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
            else:
                if not (100 * stor5[arg1].field_0) - (100 * stor5[arg1].field_0 / 100) / stor5[arg1].field_256:
                    call stor5[arg1].field_344 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, stor5[arg1].field_344);
                    else:
                        emit Payment((100 * stor5[arg1].field_0) - (100 * stor5[arg1].field_0 / 100) / stor5[arg1].field_256, sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
                else:
                    call stor5[arg1].field_344 with:
                       value (100 * stor5[arg1].field_0) - (100 * stor5[arg1].field_0 / 100) / stor5[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit FailedPayment(((100 * stor5[arg1].field_0) - (100 * stor5[arg1].field_0 / 100) / stor5[arg1].field_256), stor5[arg1].field_344);
                    else:
                        emit Payment((100 * stor5[arg1].field_0) - (100 * stor5[arg1].field_0 / 100) / stor5[arg1].field_256, sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
        else:
            if 4 * 10^14 > stor5[arg1].field_0:
                revert with 0, 32, 34, 0x2e42657420646f65736e2774206576656e20636f76657220686f7573652065646765, mem[358 len 30]
            require stor5[arg1].field_256
            lockedInBets = uint128(lockedInBets - ((100 * stor5[arg1].field_0) - 4 * 10^16 / stor5[arg1].field_256))
            if stor5[arg1].field_0 >= 10^17:
                call sub_a9c1685bAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_a9c1685bAddress)
                call sub_a9c1685bAddress.increaseJackpot(uint256 arg1) with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sha3(arg1, arg2) / 100 % 1000:
                    require ext_code.size(sub_a9c1685bAddress)
                    staticcall sub_a9c1685bAddress.0xe78e0362 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_a9c1685bAddress)
                    call sub_a9c1685bAddress.0x62b686fc with:
                         gas gas_remaining wei
                        args stor5[arg1].field_344
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] > 0:
                        emit JackpotPayment(ext_call.return_data[0], sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
            if stor5[arg1].field_512:
                call stor5[arg1].field_512 with:
                   value 7 * stor5[arg1].field_0 / 100 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call sub_a9c1685bAddress with:
               value uint128(7 * stor5[arg1].field_0 / 100 / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_a9c1685bAddress)
            call sub_a9c1685bAddress.0x40448c6 with:
                 gas gas_remaining wei
                args uint128(7 * stor5[arg1].field_0 / 100 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sha3(arg1, arg2) % 100 >= stor5[arg1].field_256:
                call stor5[arg1].field_344 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    emit FailedPayment(1, stor5[arg1].field_344);
                else:
                    emit Payment(0, sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
            else:
                if not (100 * stor5[arg1].field_0) - 4 * 10^16 / stor5[arg1].field_256:
                    call stor5[arg1].field_344 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, stor5[arg1].field_344);
                    else:
                        emit Payment((100 * stor5[arg1].field_0) - 4 * 10^16 / stor5[arg1].field_256, sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
                else:
                    call stor5[arg1].field_344 with:
                       value (100 * stor5[arg1].field_0) - 4 * 10^16 / stor5[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit FailedPayment(((100 * stor5[arg1].field_0) - 4 * 10^16 / stor5[arg1].field_256), stor5[arg1].field_344);
                    else:
                        emit Payment((100 * stor5[arg1].field_0) - 4 * 10^16 / stor5[arg1].field_256, sha3(arg1, arg2) % 100, stor5[arg1].field_256, stor5[arg1].field_0, stor5[arg1].field_344);
}



}
