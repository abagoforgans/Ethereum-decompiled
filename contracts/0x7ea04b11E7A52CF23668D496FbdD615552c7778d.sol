contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - distributeTokens(uint256 arg1, uint256 arg2)
#
const decimalUnits = 0

const initialSupply = 40 * 10^6


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 indexes;
mapping of address addresses;
uint256 lastIndex;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint8 stor13;
array of uint256 tokenName;
array of uint256 tokenSymbol;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function indexes(address arg1) {
    return indexes[arg1]
}

function decimals() {
    return decimals
}

function sellPrice() {
    return sellPrice
}

function standard() {
    return standard[0 len standard.length]
}

function tokenName() {
    return tokenName[0 len tokenName.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function tokenSymbol() {
    return tokenSymbol[0 len tokenSymbol.length]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor13[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function addresses(uint256 arg1) {
    return addresses[arg1]
}

function lastIndex() {
    return lastIndex
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor13[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function buy() payable {
    require buyPrice
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[address(this.address)] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor13[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getAddresses() {
    idx = 0
    while idx < lastIndex:
        mem[0] = idx + 1
        mem[32] = 9
        require idx < lastIndex
        mem[(32 * idx) + 192] = addresses[idx + 1]
        idx = idx + 1
        continue 
    mem[(32 * lastIndex) + 256 len floor32(lastIndex)] = mem[192 len floor32(lastIndex)]
    return Array(len=lastIndex, data=mem[192 len floor32(lastIndex)], mem[(32 * lastIndex) + floor32(lastIndex) + 256 len (32 * lastIndex) - floor32(lastIndex)]), 
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor13[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if arg2 > 0:
        if not balanceOf[address(msg.sender)]:
            addresses[stor8[address(msg.sender)]] = addresses[stor10]
            indexes[stor9[stor10]] = indexes[address(msg.sender)]
            indexes[address(msg.sender)] = 0
            addresses[stor10] = 0
            lastIndex--
        if not indexes[address(arg1)]:
            lastIndex++
            addresses[stor10] = arg1
            indexes[address(arg1)] = lastIndex
}



}
