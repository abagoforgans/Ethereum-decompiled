contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
uint256 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 sub_29644b64;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint8 stor7;
uint256 sellPrice;
uint256 buyPrice;
uint256 minBalanceForAccounts;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_29644b64(?) {
    return sub_29644b64
}

function decimals() {
    return decimals
}

function minBalanceForAccounts() {
    return minBalanceForAccounts
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return address(owner)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function deposit(uint256 arg1) payable {
    require arg1 == msg.value
}

function changeOwner(address arg1) {
    require msg.sender == address(owner)
    address(owner) = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == address(owner)
    address(owner) = arg1
}

function sub_b6fac2c2(?) {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    sub_29644b64 = 10^18
}

function setMinBalance(uint256 arg1) {
    require msg.sender == address(owner)
    minBalanceForAccounts = 5 * 10^15 * arg1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == address(owner)
    sellPrice = arg1
    buyPrice = arg2
}

function buy() payable {
    require buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    return (msg.value / buyPrice)
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == address(owner)
    stor7[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == address(owner)
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, address(owner));
    emit Transfer(arg2, address(owner), arg1);
}

function withdraw() {
    require msg.sender == address(owner)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sell(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    balanceOf[this.address] += arg1
    balanceOf[msg.sender] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg1, msg.sender, this.address);
    return (arg1 * sellPrice)
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require arg2 <= balanceOf[msg.sender]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    require arg1
    require not stor7[msg.sender]
    require msg.sender == address(owner)
    if eth.balance(arg1) < minBalanceForAccounts:
        require sellPrice
        require minBalanceForAccounts - eth.balance(arg1) / sellPrice <= balanceOf[msg.sender]
        balanceOf[this.address] += minBalanceForAccounts - eth.balance(arg1) / sellPrice
        balanceOf[msg.sender] -= minBalanceForAccounts - eth.balance(arg1) / sellPrice
        call msg.sender with:
           value minBalanceForAccounts - eth.balance(arg1) / sellPrice * sellPrice wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer((minBalanceForAccounts - eth.balance(arg1) / sellPrice), msg.sender, this.address);
        call arg1 with:
           value minBalanceForAccounts - eth.balance(arg1) / sellPrice * sellPrice wei
             gas 2300 * is_zero(value) wei
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}



}
