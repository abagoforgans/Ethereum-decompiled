contract main {




// =====================  Runtime code  =====================


mapping of struct sub_6a2d3edd;
mapping of uint256 playerID;
uint256 sub_b11df569;
address owner;
address bankerAddress;
uint256 sub_cfcb0cc1;
uint256 sub_d85fe04e;
uint256 sub_3712e726;
uint256 jackpotBalance;
mapping of struct stor10;

function sub_087a5b92(?) {
    return sub_cfcb0cc1
}

function banker() {
    return bankerAddress
}

function sub_3712e726(?) {
    return sub_3712e726
}

function sub_65ea3480(?) {
    return jackpotBalance
}

function sub_6a2d3edd(?) {
    require calldata.size - 4 >= 32
    if playerID[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address is not registered as a player!'
    return sub_6a2d3edd[stor1[address(arg1)]].field_768
}

function owner() {
    return owner
}

function getJackpotBalance() {
    return jackpotBalance
}

function sub_b11df569(?) {
    return sub_b11df569
}

function sub_cfcb0cc1(?) {
    return sub_cfcb0cc1
}

function sub_d85fe04e(?) {
    return sub_d85fe04e
}

function sub_de195350(?) {
    require calldata.size - 4 >= 32
    if playerID[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address is not registered as a player!'
    return sub_6a2d3edd[stor1[address(arg1)]].field_512
}

function getPlayerBalance(address arg1) {
    require calldata.size - 4 >= 32
    if playerID[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address is not registered as a player!'
    return sub_6a2d3edd[stor1[address(arg1)]].field_256
}

function getPlayerID(address arg1) {
    require calldata.size - 4 >= 32
    return playerID[address(arg1)]
}

function kill() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function deposit() payable {
    if sub_cfcb0cc1 + msg.value < sub_cfcb0cc1:
        revert with 0, 'SafeMath add failed'
    sub_cfcb0cc1 += msg.value
}

function setBanker(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    bankerAddress = arg1
}

function sub_5c36eccd(?) payable {
    require calldata.size - 4 >= 192
    if block.number >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid number of lastRevealBlock.'
    if stor10[arg1].field_0:
        revert with 0, 'The slot is not empty.'
    revert with 0, 'Invalid number value of bets.'
}

function sub_c13afce5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The value of probability cannot be zero.'
    sub_3712e726 = arg1
}

function sub_2574db63(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    if arg1 > 10 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The amount of max bet is out of range!'
    if arg1 < 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The amount of max bet is out of range!'
    sub_d85fe04e = arg1
}

function withdrawOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    if arg1 > sub_cfcb0cc1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The amount to withdraw is out of range!'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 > sub_cfcb0cc1:
        revert with 0, 'SafeMath sub failed'
    sub_cfcb0cc1 -= arg1
    emit 0x95105987: arg1, sub_cfcb0cc1
}

function refundBet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor10[arg1].field_0:
        revert with 0, 'The bet slot is empty.'
    if block.number <= stor10[arg1].field_1024:
        revert with 0, 'The bet is still in play.'
    if sub_6a2d3edd[stor1[stor10[arg1].field_0]].field_256 + stor10[arg1].field_256 < sub_6a2d3edd[stor1[stor10[arg1].field_0]].field_256:
        revert with 0, 'SafeMath add failed'
    sub_6a2d3edd[stor1[stor10[arg1].field_0]].field_256 += stor10[arg1].field_256
    if stor10[arg1].field_256 > sub_cfcb0cc1:
        revert with 0, 'SafeMath sub failed'
    sub_cfcb0cc1 -= stor10[arg1].field_256
    stor10[arg1].field_0 = 0
    stor10[arg1].field_256 = 0
    stor10[arg1].field_512 = 0
    stor10[arg1].field_768 = 0
    stor10[arg1].field_1024 = 0
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if playerID[address(msg.sender)] <= 0:
        revert with 0, 'A registered player is required!'
    if arg1 > sub_6a2d3edd[stor1[address(msg.sender)]].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The amount to withdraw is out of range!'
    call sub_6a2d3edd[stor1[address(msg.sender)]].field_0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 > sub_6a2d3edd[stor1[address(msg.sender)]].field_256:
        revert with 0, 'SafeMath sub failed'
    sub_6a2d3edd[stor1[address(msg.sender)]].field_256 -= arg1
    emit Withdraw(sub_6a2d3edd[stor1[address(msg.sender)]].field_0, arg1, sub_6a2d3edd[stor1[address(msg.sender)]].field_256);
}

function sub_17e4e25d(?) {
    require calldata.size - 4 >= 32
    if not stor10[arg1].field_0:
        revert with 0, 'The bet slot cannot be empty.'
    if stor10[arg1].field_768 >= block.number:
        revert with 0, 'Cannot reveal the bet on the same block where it was placed.'
    if block.number > stor10[arg1].field_1024:
        revert with 0, 'The bet is timeout.'
    if sub_6a2d3edd[stor1[stor10[arg1].field_0]].field_256 < sub_6a2d3edd[stor1[stor10[arg1].field_0]].field_256:
        revert with 0, 'SafeMath add failed'
    if jackpotBalance < jackpotBalance:
        revert with 0, 'SafeMath add failed'
    if 0 > sub_cfcb0cc1:
        revert with 0, 'SafeMath sub failed'
    emit 0x4dc9c449: sha3(arg1), sha3(arg1, block.hash(stor10[arg1].field_768)) % 38, 0, 0, sub_6a2d3edd[stor1[stor10[arg1].field_0]].field_512, 0
    stor10[arg1].field_0 = 0
    stor10[arg1].field_256 = 0
    stor10[arg1].field_512 = 0
    stor10[arg1].field_768 = 0
    stor10[arg1].field_1024 = 0
}



}
