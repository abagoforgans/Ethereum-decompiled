contract main {




// =====================  Runtime code  =====================


const name = 'ZethrDividendCard'

const implementsERC721 = 1

const symbol = 'ZDC'

const NAME = 'ZethrDividendCard'

const SYMBOL = 'ZDC'


address BANKROLLAddress;
mapping of address divCardIndexToOwner;
mapping of uint256 divCardRateToIndex;
mapping of uint256 balanceOf;
mapping of address divCardIndexToApproved;
mapping of uint256 priceOf;
mapping of uint8 stor6;
uint8 stor7; offset 160
address creatorAddress;
array of struct stor8;
address storDC68;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;

function creator() {
    return creatorAddress
}

function divCardRateToIndex(uint256 arg1) {
    return divCardRateToIndex[arg1]
}

function totalSupply() {
    return stor8.length
}

function onSale() {
    return bool(stor7)
}

function ownerOf(uint256 arg1) {
    require divCardIndexToOwner[arg1]
    return divCardIndexToOwner[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function BANKROLL() {
    return BANKROLLAddress
}

function priceOf(uint256 arg1) {
    return priceOf[arg1]
}

function divCardIndexToApproved(uint256 arg1) {
    return divCardIndexToApproved[arg1]
}

function divCardIndexToOwner(uint256 arg1) {
    return divCardIndexToOwner[arg1]
}

function _fallback() payable {
    revert
}

function startCardSale() {
    require msg.sender == creatorAddress
    stor7 = 1
}

function setBankroll(address arg1) {
    require stor6[msg.sender]
    BANKROLLAddress = arg1
}

function setCreator(address arg1) {
    require msg.sender == creatorAddress
    require arg1
    creatorAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require tx.origin == msg.sender
    require msg.sender == divCardIndexToOwner[arg2]
    divCardIndexToApproved[arg2] = arg1
    emit Approval(arg2, msg.sender, arg1);
}

function receiveDividends(uint256 arg1) payable {
    require msg.value / 2 <= msg.value
    call storDC68 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    call divCardIndexToOwner[stor2[arg1]] with:
       value msg.value - (msg.value / 2) wei
         gas 2300 * is_zero(value) wei
}

function transfer(address arg1, uint256 arg2) {
    require tx.origin == msg.sender
    require msg.sender == divCardIndexToOwner[arg2]
    require arg1
    balanceOf[address(arg1)]++
    divCardIndexToOwner[arg2] = arg1
    if msg.sender:
        balanceOf[address(msg.sender)]--
        divCardIndexToApproved[arg2] = 0
    emit Transfer(msg.sender, address(arg1), arg2);
}

function getDivCard(uint256 arg1) {
    require arg1 < stor8.length
    mem[128] = stor8[arg1].field_0
    idx = 128
    s = 0
    while stor8[arg1].length + 96 > idx:
        mem[idx + 32] = stor8[(2 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor8[arg1].length, data=mem[128 len stor8[arg1].length]), priceOf[arg1], divCardIndexToOwner[arg1]
}

function takeOwnership(uint256 arg1) {
    require tx.origin == msg.sender
    require msg.sender
    require divCardIndexToApproved[arg1] == msg.sender
    balanceOf[address(msg.sender)]++
    divCardIndexToOwner[arg1] = msg.sender
    if divCardIndexToOwner[arg1]:
        balanceOf[stor1[arg1]]--
        divCardIndexToApproved[arg1] = 0
    emit Transfer(divCardIndexToOwner[arg1], msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require tx.origin == msg.sender
    require arg1 == divCardIndexToOwner[arg3]
    require divCardIndexToApproved[arg3] == arg2
    require arg2
    balanceOf[address(arg2)]++
    divCardIndexToOwner[arg3] = arg2
    if arg1:
        balanceOf[address(arg1)]--
        divCardIndexToApproved[arg3] = 0
    emit Transfer(address(arg1), address(arg2), arg3);
}

function createDivCard(string arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == creatorAddress
    stor8.length++
    stor8[stor8.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    storF3F7[stor8.length] = arg3
    require stor8.length == uint32(stor8.length)
    emit Birth(stor8.length, Array(len=arg1.length, data=arg1[all]), BANKROLLAddress);
    priceOf[stor8.length] = arg2
    balanceOf[stor0]++
    divCardIndexToOwner[stor8.length] = BANKROLLAddress
    if BANKROLLAddress:
        balanceOf[stor0]--
        divCardIndexToApproved[stor8.length] = 0
    emit Transfer(BANKROLLAddress, BANKROLLAddress, stor8.length);
}

function purchase(uint256 arg1) payable {
    require 1 == bool(stor7)
    require tx.origin == msg.sender
    require divCardIndexToOwner[arg1] != msg.sender
    require msg.sender
    require priceOf[arg1] <= msg.value
    require arg1 < stor8.length
    if not priceOf[arg1]:
        require stor8[arg1].field_256 + 100
        require 0 / stor8[arg1].field_256 + 100 <= priceOf[arg1]
        require priceOf[arg1] - (0 / stor8[arg1].field_256 + 100) / 2 <= priceOf[arg1] - (0 / stor8[arg1].field_256 + 100)
        require (0 / stor8[arg1].field_256 + 100) + (priceOf[arg1] - (0 / stor8[arg1].field_256 + 100) / 2) >= priceOf[arg1] - (0 / stor8[arg1].field_256 + 100) / 2
        require priceOf[arg1] <= msg.value
        if not priceOf[arg1]:
            priceOf[arg1] = 0
        else:
            require (100 * priceOf[arg1]) + (stor8[arg1].field_256 * priceOf[arg1]) / priceOf[arg1] == stor8[arg1].field_256 + 100
            priceOf[arg1] = (100 * priceOf[arg1]) + (stor8[arg1].field_256 * priceOf[arg1]) / 100
        balanceOf[address(msg.sender)]++
        divCardIndexToOwner[arg1] = msg.sender
        if divCardIndexToOwner[arg1]:
            balanceOf[stor1[arg1]]--
            divCardIndexToApproved[arg1] = 0
        emit Transfer(divCardIndexToOwner[arg1], msg.sender, arg1);
        call BANKROLLAddress with:
           value priceOf[arg1] - (0 / stor8[arg1].field_256 + 100) - (priceOf[arg1] - (0 / stor8[arg1].field_256 + 100) / 2) wei
             gas 2300 * is_zero(value) wei
        call divCardIndexToOwner[arg1] with:
           value (0 / stor8[arg1].field_256 + 100) + (priceOf[arg1] - (0 / stor8[arg1].field_256 + 100) / 2) wei
             gas 2300 * is_zero(value) wei
    else:
        require 100 * priceOf[arg1] / priceOf[arg1] == 100
        require stor8[arg1].field_256 + 100
        require 100 * priceOf[arg1] / stor8[arg1].field_256 + 100 <= priceOf[arg1]
        require priceOf[arg1] - (100 * priceOf[arg1] / stor8[arg1].field_256 + 100) / 2 <= priceOf[arg1] - (100 * priceOf[arg1] / stor8[arg1].field_256 + 100)
        require (100 * priceOf[arg1] / stor8[arg1].field_256 + 100) + (priceOf[arg1] - (100 * priceOf[arg1] / stor8[arg1].field_256 + 100) / 2) >= priceOf[arg1] - (100 * priceOf[arg1] / stor8[arg1].field_256 + 100) / 2
        require priceOf[arg1] <= msg.value
        if not priceOf[arg1]:
            priceOf[arg1] = 0
        else:
            require (100 * priceOf[arg1]) + (stor8[arg1].field_256 * priceOf[arg1]) / priceOf[arg1] == stor8[arg1].field_256 + 100
            priceOf[arg1] = (100 * priceOf[arg1]) + (stor8[arg1].field_256 * priceOf[arg1]) / 100
        balanceOf[address(msg.sender)]++
        divCardIndexToOwner[arg1] = msg.sender
        if divCardIndexToOwner[arg1]:
            balanceOf[stor1[arg1]]--
            divCardIndexToApproved[arg1] = 0
        emit Transfer(divCardIndexToOwner[arg1], msg.sender, arg1);
        call BANKROLLAddress with:
           value priceOf[arg1] - (100 * priceOf[arg1] / stor8[arg1].field_256 + 100) - (priceOf[arg1] - (100 * priceOf[arg1] / stor8[arg1].field_256 + 100) / 2) wei
             gas 2300 * is_zero(value) wei
        call divCardIndexToOwner[arg1] with:
           value (100 * priceOf[arg1] / stor8[arg1].field_256 + 100) + (priceOf[arg1] - (100 * priceOf[arg1] / stor8[arg1].field_256 + 100) / 2) wei
             gas 2300 * is_zero(value) wei
    call msg.sender with:
       value msg.value - priceOf[arg1] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
