contract main {




// =====================  Runtime code  =====================


const implementsERC721 = 1

const NAME = 'Curio'

const TOTAL_SUPPLY_LIMIT = 900

const SYMBOL = 'CUR'


array of uint256 token;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address tokenIndexToApproved;
address ownerAddress;
uint8 stor5; offset 160
address adminAddress;
address newContractAddress;
address auctionAddress;
uint256 releaseCreatedCount;

function releaseCreatedCount() {
    return releaseCreatedCount
}

function totalSupply() {
    return token.length
}

function tokenIndexToOwner(uint256 arg1) {
    return ownerOf[arg1]
}

function paused() {
    return bool(stor5)
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function newContractAddress() {
    return newContractAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function auction() {
    return auctionAddress
}

function ownerAddress() {
    return ownerAddress
}

function tokenIndexToApproved(uint256 arg1) {
    return tokenIndexToApproved[arg1]
}

function getToken(uint256 arg1) {
    return uint256(token[arg1][0 len token[arg1].length])
}

function adminAddress() {
    return adminAddress
}

function _fallback() payable {
    require msg.sender == auctionAddress
}

function setOwner(address arg1) {
    require msg.sender == ownerAddress
    require arg1
    ownerAddress = arg1
}

function setAdmin(address arg1) {
    require msg.sender == ownerAddress
    require arg1
    adminAddress = arg1
}

function pause() {
    if adminAddress != msg.sender:
        require msg.sender == ownerAddress
    require not stor5
    stor5 = 1
}

function unpause() {
    require msg.sender == ownerAddress
    require stor5
    require auctionAddress
    require not newContractAddress
    stor5 = 0
}

function setNewAddress(address arg1) {
    require msg.sender == ownerAddress
    require stor5
    newContractAddress = arg1
    emit ContractUpgrade(arg1);
}

function approve(address arg1, uint256 arg2) {
    require not stor5
    require ownerOf[arg2] == msg.sender
    tokenIndexToApproved[arg2] = arg1
    emit Approval(msg.sender, arg1, arg2);
}

function withdrawBalance() {
    require msg.sender == ownerAddress
    call ownerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAuctionBalance() {
    if adminAddress != msg.sender:
        require msg.sender == ownerAddress
    require ext_code.size(auctionAddress)
    call auctionAddress.0x5fd8c710 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAuctionPriceLimit(uint256 arg1) {
    if adminAddress != msg.sender:
        require msg.sender == ownerAddress
    require ext_code.size(auctionAddress)
    call auctionAddress.0xcf7c2985 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAuctionAddress(address arg1) {
    require msg.sender == ownerAddress
    require ext_code.size(arg1)
    call arg1.isCurioAuction() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    auctionAddress = arg1
}

function transfer(address arg1, uint256 arg2) {
    require not stor5
    require arg1
    require arg1 != this.address
    require auctionAddress != arg1
    require ownerOf[arg2] == msg.sender
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    if msg.sender:
        balanceOf[address(msg.sender)]--
        tokenIndexToApproved[arg2] = 0
    emit Transfer(msg.sender, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor5
    require arg2
    require arg2 != this.address
    require tokenIndexToApproved[arg3] == msg.sender
    require ownerOf[arg3] == arg1
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    if arg1:
        balanceOf[address(arg1)]--
        tokenIndexToApproved[arg3] = 0
    emit Transfer(arg1, arg2, arg3);
}

function createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require not stor5
    require ownerOf[arg1] == msg.sender
    tokenIndexToApproved[arg1] = auctionAddress
    require ext_code.size(auctionAddress)
    call auctionAddress.createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, arg3, arg4, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createFreeToken(string arg1, address arg2) {
    require msg.sender == adminAddress
    require arg2
    require arg2 != this.address
    require auctionAddress != arg2
    require 900 > releaseCreatedCount
    token.length++
    uint256(token[token.length][]) = Array(len=arg1.length, data=arg1[all])
    require token.length == uint32(token.length)
    emit Create(Array(len=arg1.length, data=arg1[all]), arg2, token.length);
    balanceOf[address(arg2)]++
    ownerOf[stor0.length] = arg2
    emit Transfer(0, arg2, token.length);
    releaseCreatedCount++
}

function tokensOfOwner(address arg1) {
    if not balanceOf[address(arg1)]:
        return ''
    mem[128 len 32 * balanceOf[address(arg1)]] = code.data[5280 len 32 * balanceOf[address(arg1)]]
    idx = 0
    s = 0
    while idx <= token.length:
        mem[0] = idx
        mem[32] = 1
        if ownerOf[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < balanceOf[address(arg1)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)]) + 192 len floor32(balanceOf[address(arg1)])] = mem[128 len floor32(balanceOf[address(arg1)])]
    return Array(len=balanceOf[address(arg1)], data=mem[128 len floor32(balanceOf[address(arg1)])], mem[(32 * balanceOf[address(arg1)]) + floor32(balanceOf[address(arg1)]) + 192 len (32 * balanceOf[address(arg1)]) - floor32(balanceOf[address(arg1)])]), 
}

function createReleaseTokenAuction(string arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == adminAddress
    require 900 > releaseCreatedCount
    token.length++
    uint256(token[token.length][]) = Array(len=arg1.length, data=arg1[all])
    require token.length == uint32(token.length)
    emit Create(Array(len=arg1.length, data=arg1[all]), this.address, token.length);
    balanceOf[address(this.address)]++
    ownerOf[stor0.length] = this.address
    emit Transfer(0, this.address, token.length);
    tokenIndexToApproved[stor0.length] = auctionAddress
    require ext_code.size(auctionAddress)
    call auctionAddress.createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args token.length, arg2, arg3, arg4, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    releaseCreatedCount++
}



}
