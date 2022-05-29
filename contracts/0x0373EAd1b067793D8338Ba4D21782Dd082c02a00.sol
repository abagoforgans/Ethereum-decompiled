contract main {




// =====================  Runtime code  =====================


const name = 'SuperHero'

const symbol = 'SH'


uint8 stor0; offset 160
address owner;
uint256 fee;
uint256 snatch;
array of struct token;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address tokenIndexToApproved;
array of struct herosForSale;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;

function totalSupply() {
    return token.length
}

function tokenIndexToOwner(uint256 arg1) {
    return ownerOf[arg1]
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function snatch() {
    return snatch
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function tokenIndexToApproved(uint256 arg1) {
    return tokenIndexToApproved[arg1]
}

function herosForSale(uint256 arg1) {
    mem[128] = herosForSale[arg1].field_0
    idx = 128
    s = 0
    while herosForSale[arg1].length + 96 > idx:
        mem[idx + 32] = herosForSale[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=herosForSale[arg1].length, data=mem[128 len herosForSale[arg1].length]), 
           herosForSale[arg1].field_256,
           herosForSale[arg1].field_512
}

function fee() {
    return fee
}

function getToken(uint256 arg1) {
    require arg1 < token.length
    mem[320] = token[arg1].field_0
    idx = 320
    s = 0
    while token[arg1].length + 320 > idx + 32:
        mem[idx + 32] = token[(3 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=token[arg1].length, data=mem[320 len token[arg1].length]), token[arg1].field_256, token[arg1].field_512
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2] == msg.sender
    tokenIndexToApproved[arg2] = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    uint8(stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changePrice(uint256 arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require msg.sender == ownerOf[arg1]
    require arg1 < token.length
    token[arg1].field_256 = arg2
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require ownerOf[arg2] == msg.sender
    require not uint8(stor0.field_160)
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    if msg.sender:
        balanceOf[address(msg.sender)]--
        tokenIndexToApproved[arg2] = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    require tokenIndexToApproved[arg3] == msg.sender
    require ownerOf[arg3] == arg1
    require not uint8(stor0.field_160)
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    if arg1:
        balanceOf[address(arg1)]--
        tokenIndexToApproved[arg3] = 0
}

function mint(string arg1, uint256 arg2) {
    require msg.sender == owner
    if 250 <= token.length:
        revert with 0, 'Max amount of superheroes is reached'
    token.length++
    token[token.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    storC257[stor3.length] = arg2
    storC257[stor3.length] = block.timestamp
    require not uint8(stor0.field_160)
    balanceOf[address(stor0.field_0)]++
    ownerOf[stor3.length] = owner
    return token.length
}

function snatchHero(uint256 arg1) payable {
    require not uint8(stor0.field_160)
    require arg1 < token.length
    require block.timestamp - token[arg1].field_512 <= snatch
    require arg1 < token.length
    require token[arg1].field_256 <= msg.value
    call ownerOf[arg1] with:
       value msg.value - (msg.value * fee / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require not uint8(stor0.field_160)
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    if ownerOf[arg1]:
        balanceOf[stor4[arg1]]--
        tokenIndexToApproved[arg1] = 0
    require arg1 < token.length
    token[arg1].field_512 = block.timestamp
    token[arg1].field_256 = 120 * token[arg1].field_256 / 100
}

function buyHero(uint256 arg1) payable {
    require not uint8(stor0.field_160)
    require herosForSale[arg1].field_256
    require herosForSale[arg1].field_256 <= msg.value
    require not uint8(stor0.field_160)
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    if owner:
        balanceOf[address(stor0.field_0)]--
        tokenIndexToApproved[arg1] = 0
    require arg1 < token.length
    token[arg1].field_512 = block.timestamp
    token[arg1].field_256 = 120 * herosForSale[arg1].field_256 / 100
    herosForSale[arg1].field_0 = 0
    if 31 < herosForSale[arg1].length:
        idx = 0
        while herosForSale[arg1].length + 31 / 32 > idx:
            herosForSale[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    herosForSale[arg1].field_256 = 0
    herosForSale[arg1].field_512 = 0
}

function tokensOfOwner(address arg1) {
    if not balanceOf[address(arg1)]:
        return ''
    mem[128 len 32 * balanceOf[address(arg1)]] = code.data[5164 len 32 * balanceOf[address(arg1)]]
    idx = 1
    s = 0
    while idx <= token.length:
        mem[0] = idx
        mem[32] = 4
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

function saleHero(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    require msg.sender == ownerOf[arg1]
    require arg1 < token.length
    if 31 >= token[arg1].length:
        herosForSale[arg1].field_0 = token[arg1].field_0
        idx = 0
        while herosForSale[arg1].length + 31 / 32 > idx:
            herosForSale[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        herosForSale[arg1].field_0 = Mask(255, 1, (256 * not token[arg1].field_0) - 1 and token[arg1].field_0) + 1
        if not Mask(255, 1, (256 * not token[arg1].field_0) - 1 and token[arg1].field_0):
            idx = 0
            while herosForSale[arg1].length + 31 / 32 > idx:
                herosForSale[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while token[arg1].length + 31 / 32 > idx:
                herosForSale[arg1][s].field_0 = token[(3 * arg1) + idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = token[arg1].length + 31 / 32
            while herosForSale[arg1].length + 31 / 32 > idx:
                herosForSale[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    herosForSale[arg1].field_256 = token[arg1].field_256
    herosForSale[arg1].field_512 = token[arg1].field_512
}



}
