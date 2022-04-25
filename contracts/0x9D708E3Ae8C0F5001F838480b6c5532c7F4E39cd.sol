contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor8 = 1
    stor9 = 10^16
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[4200 len 20]
    stor2 = code.data[4232 len 20]
    return code.data[139 len 4049]
}



// =====================  Runtime code  =====================


const name = 'Mutants'

const symbol = 'MUT'


address owner;
address sub_dc1ef2ffAddress;
address sub_332b44bfAddress;
mapping of uint256 tokenData;
mapping of address tokenIdToOwner;
mapping of address tokenIdToApproved;
mapping of uint8 stor6;
mapping of uint256 balanceOf;
uint256 tokenIdCounter;
uint256 mintPrice;

function tokenIdToData(uint256 arg1) {
    return tokenData[arg1]
}

function approvedFor(uint256 arg1) {
    return tokenIdToApproved[arg1]
}

function sub_332b44bf(?) {
    return sub_332b44bfAddress
}

function ownerOf(uint256 arg1) {
    return tokenIdToOwner[arg1]
}

function mintPrice() {
    return mintPrice
}

function tokenIdToOwner(uint256 arg1) {
    return tokenIdToOwner[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_8f94ea94(?) {
    return bool(stor6[arg1])
}

function tokenIdCounter() {
    return tokenIdCounter
}

function tokenData(uint256 arg1) {
    return tokenData[arg1]
}

function sub_dc1ef2ff(?) {
    return sub_dc1ef2ffAddress
}

function sub_e1fca31f(?) {
    return bool(stor6[arg1])
}

function ownerToBalance(address arg1) {
    return balanceOf[arg1]
}

function tokenIdToApproved(uint256 arg1) {
    return tokenIdToApproved[arg1]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (tokenIdCounter - 1)
}

function tokenExists(uint256 arg1) {
    return (arg1 < tokenIdCounter)
}

function sub_31c46b73(?) {
    require owner == msg.sender
    sub_332b44bfAddress = arg1
}

function sub_575b2e59(?) {
    require owner == msg.sender
    sub_dc1ef2ffAddress = arg1
}

function setMintPrice(uint256 arg1) {
    require owner == msg.sender
    mintPrice = arg1
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require arg2 < tokenIdCounter
    require tokenIdToOwner[arg2] == msg.sender
    require arg1
    require arg1 != this.address
    tokenIdToOwner[arg2] = arg1
    tokenIdToApproved[arg2] = 0
    balanceOf[address(msg.sender)]--
    balanceOf[arg1]++
    emit Transfer(msg.sender, address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    require arg1 != msg.sender
    require arg2 < tokenIdCounter
    require tokenIdToOwner[arg2] == msg.sender
    if arg1:
        tokenIdToApproved[arg2] = arg1
        emit Approval(msg.sender, address(arg1), arg2);
    else:
        if tokenIdToApproved[arg2]:
            tokenIdToApproved[arg2] = 0
            emit Approval(msg.sender, 0, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require tokenIdToApproved[arg3] == msg.sender
    require arg3 < tokenIdCounter
    require tokenIdToOwner[arg3] == arg1
    require arg2
    require arg2 != this.address
    tokenIdToOwner[arg3] = arg2
    tokenIdToApproved[arg3] = 0
    balanceOf[address(arg1)]--
    balanceOf[arg2]++
    emit Transfer(msg.sender, address(arg2), arg3);
}

function birth() payable {
    require msg.value == mintPrice
    hash = sha256hash(tokenIdCounter, block.number, block.timestamp) 
    require sha256hash.result
    require ext_code.size(sub_dc1ef2ffAddress)
    call sub_dc1ef2ffAddress.0x855016ac with:
         gas gas_remaining - 710 wei
        args hash
    require ext_call.success
    tokenIdCounter++
    tokenData[stor8] = ext_call.return_data[0]
    tokenIdToOwner[stor8] = msg.sender
    balanceOf[address(msg.sender)]++
    if 1000 == tokenIdCounter:
        mintPrice = 10^17
    if 10000 == tokenIdCounter:
        mintPrice = 10^18
    if 100000 == tokenIdCounter:
        mintPrice = 10 * 10^18
    if 10^6 == tokenIdCounter:
        mintPrice = 100 * 10^18
    emit Birth(tokenIdCounter, hash, msg.sender);
}

function tokensOfOwner(address arg1) {
    if not balanceOf[address(arg1)]:
        return ''
    idx = 1
    s = 0
    while idx <= tokenIdCounter - 1:
        mem[0] = idx
        mem[32] = 4
        if tokenIdToOwner[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < balanceOf[address(arg1)]
        mem[(32 * s) + 192] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)]) + 256 len floor32(balanceOf[address(arg1)])] = mem[192 len floor32(balanceOf[address(arg1)])]
    return Array(len=balanceOf[address(arg1)], data=mem[192 len floor32(balanceOf[address(arg1)])], mem[(32 * balanceOf[address(arg1)]) + floor32(balanceOf[address(arg1)]) + 256 len (32 * balanceOf[address(arg1)]) - floor32(balanceOf[address(arg1)])]), 
}

function sub_7703b342(?) payable {
    require msg.value == mintPrice
    require arg1 < tokenIdCounter
    require arg2 < tokenIdCounter
    require tokenIdToOwner[arg1] == msg.sender
    require tokenIdToOwner[arg2] == msg.sender
    require not stor6[arg1]
    require not stor6[arg2]
    hash = sha256hash(tokenIdCounter, block.number, block.timestamp) 
    require sha256hash.result
    require ext_code.size(sub_332b44bfAddress)
    call sub_332b44bfAddress.0xe5079585 with:
         gas gas_remaining - 710 wei
        args hash, tokenData[arg1], tokenData[arg2]
    require ext_call.success
    stor6[arg1] = 1
    stor6[arg2] = 1
    tokenIdCounter++
    tokenData[stor8] = ext_call.return_data[0]
    tokenIdToOwner[stor8] = msg.sender
    balanceOf[address(msg.sender)]++
    if 1000 == tokenIdCounter:
        mintPrice = 10^17
    if 10000 == tokenIdCounter:
        mintPrice = 10^18
    if 100000 == tokenIdCounter:
        mintPrice = 10 * 10^18
    if 10^6 == tokenIdCounter:
        mintPrice = 100 * 10^18
    emit 0x37a96e83: tokenIdCounter, hash, arg1, arg2, msg.sender
}



}
