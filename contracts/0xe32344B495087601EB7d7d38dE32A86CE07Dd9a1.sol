contract main {




// =====================  Runtime code  =====================


const name = 'CryptoBlocks'

const symbol = 'CB'

const BLOCK_DURATION = (24 * 3600)

const BLOCK_BASIC_PRICE = 10^16


array of struct stor0;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address sub_eb546d9c;
address saleAuctionAddress;
array of uint256 lastGen0SalePrices;
array of address owners;
address beneficiaryAddress;
mapping of address sub_43509feb;
uint256 gen0CreatedCount;

function owners(uint256 arg1) {
    require arg1 < 16
    return owners[arg1]
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_43509feb(?) {
    return sub_43509feb[arg1]
}

function lastGen0SalePrices(uint256 arg1) {
    require arg1 < 5
    return lastGen0SalePrices[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function ownershipTokenCount(address arg1) {
    return balanceOf[arg1]
}

function saleAuction() {
    return saleAuctionAddress
}

function sub_eb546d9c(?) {
    return sub_eb546d9c[arg1]
}

function gen0CreatedCount() {
    return gen0CreatedCount
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (stor0.length - 1)
}

function computeBlockPrice(uint256 arg1, uint256 arg2, uint256 arg3) {
    return (arg1 * arg2 * arg3)
}

function checkBalance() {
    require msg.sender == beneficiaryAddress
    return eth.balance(this.address)
}

function setSaleAuctionAddress(address arg1) {
    require msg.sender == beneficiaryAddress
    saleAuctionAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2] == msg.sender
    sub_eb546d9c[arg2] = arg1
    emit Approval(msg.sender, address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) {
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    if msg.sender:
        balanceOf[address(msg.sender)]--
    emit Transfer(msg.sender, address(arg1), arg2);
}

function withdrawBalance() {
    require msg.sender == beneficiaryAddress
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    require sub_eb546d9c[arg3] == msg.sender
    require ownerOf[arg3] == arg1
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    if arg1:
        balanceOf[address(arg1)]--
    emit Transfer(address(arg1), address(arg2), arg3);
}

function createSaleAuction(uint256 arg1, uint256 arg2) {
    sub_eb546d9c[arg1] = saleAuctionAddress
    require ext_code.size(saleAuctionAddress)
    call saleAuctionAddress.createAuction(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args arg1, arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBlock(uint256 arg1) {
    require arg1 < stor0.length
    mem[384] = stor[sha3((4 * arg1) + ('name', 'stor0', 0) + 2)].field_0
    idx = 384
    s = 0
    while stor[(4 * arg1) + ('name', 'stor0', 0) + 2].length + 352 > idx:
        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor0', 0) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[(4 * arg1) + ('name', 'stor0', 0) + 2].length, data=mem[384 len stor[(4 * arg1) + ('name', 'stor0', 0) + 2].length]), 
           stor0[arg1].field_0,
           stor0[arg1].field_256,
           stor0[arg1].field_768
}

function create(string arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require arg4 == uint16(arg4)
    stor0.length++
    stor0[stor0.length].field_0 = arg2
    stor0[stor0.length].field_256 = arg3
    stor[sha3((4 * stor0.length) + ('name', 'stor0', 0) + 2)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[stor0.length].field_768 = uint16(arg4)
    emit Birth(address(this.address), stor0.length, arg2, arg3, Array(len=arg1.length, data=arg1[all]), arg4 << 240);
    balanceOf[address(this.address)]++
    ownerOf[stor0.length] = this.address
    emit Transfer(0, address(this.address), stor0.length);
    return stor0.length
}

function migrateBlock(string arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) {
    require arg4 == uint16(arg4)
    stor0.length++
    stor0[stor0.length].field_0 = arg2
    stor0[stor0.length].field_256 = arg3
    stor[sha3((4 * stor0.length) + ('name', 'stor0', 0) + 2)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[stor0.length].field_768 = uint16(arg4)
    emit Birth(address(this.address), stor0.length, arg2, arg3, Array(len=arg1.length, data=arg1[all]), arg4 << 240);
    balanceOf[address(this.address)]++
    ownerOf[stor0.length] = this.address
    emit Transfer(0, address(this.address), stor0.length);
    sub_eb546d9c[stor0.length] = arg5
    return stor0.length
}

function tokensOfOwner(address arg1) {
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = code.data[7691 len 32 * balanceOf[address(arg1)]]
    idx = 1
    s = 0
    while idx <= stor0.length - 1:
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

function buyBlock(string arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require msg.value >= arg2 * arg3 * arg5
    require arg4 == uint16(arg4)
    stor0.length++
    stor0[stor0.length].field_0 = arg2
    stor0[stor0.length].field_256 = arg3
    stor[sha3((4 * stor0.length) + ('name', 'stor0', 0) + 2)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[stor0.length].field_768 = uint16(arg4)
    emit Birth(address(this.address), stor0.length, arg2, arg3, Array(len=arg1.length, data=arg1[all]), arg4 << 240);
    balanceOf[address(this.address)]++
    ownerOf[stor0.length] = this.address
    emit Transfer(0, address(this.address), stor0.length);
    sub_eb546d9c[stor0.length] = saleAuctionAddress
    require ext_code.size(saleAuctionAddress)
    call saleAuctionAddress.createAuction(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor0.length, arg2 * arg3 * arg5, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(saleAuctionAddress)
    call saleAuctionAddress.bidCustomAuction(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor0.length, msg.value, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return stor0.length
}



}
