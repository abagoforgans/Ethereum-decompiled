contract main {




// =====================  Runtime code  =====================


const charge = 1


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor5;
uint256 sellPrice;
uint256 buyPrice;
uint8 stor8;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor11;
mapping of address fromaddr;
mapping of uint8 stor13;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function admins(address arg1) {
    return bool(stor13[arg1])
}

function fromaddr(address arg1) {
    return address(fromaddr[arg1])
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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
    return bool(stor11[arg1])
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function actived() {
    return bool(stor8)
}

function getfrom(address arg1) {
    return address(fromaddr[address(arg1)])
}

function getprice() {
    return buyPrice, sellPrice
}

function setactive(bool arg1) {
    require msg.sender == owner
    stor8 = uint8(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function totalSupply() {
    require balanceOf[this.address] <= stor5
    return (stor5 - balanceOf[this.address])
}

function admAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor13[address(arg1)] = uint8(arg2)
}

function setPrices(uint256 arg1, uint256 arg2) {
    require 1 == bool(stor13[msg.sender])
    buyPrice = arg1
    sellPrice = arg2
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function freezeAccount(address arg1, bool arg2) {
    require 1 == bool(stor13[msg.sender])
    stor11[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    require 1 == bool(stor13[msg.sender])
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw(address arg1) {
    require msg.sender == owner
    require 1 == bool(stor8)
    require not stor11[address(arg1)]
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintToken(address arg1, uint256 arg2) {
    require not stor11[address(arg1)]
    require 1 == bool(stor13[msg.sender])
    require 1 == bool(stor8)
    require arg2 <= balanceOf[this.address]
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= balanceOf[this.address]
    balanceOf[this.address] -= arg2
    emit Transfer(arg2, this.address, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require 1 == bool(stor8)
    require not stor11[address(arg1)]
    require not stor11[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require 1 == bool(stor8)
    require not stor11[msg.sender]
    require msg.value > 0
    require msg.value * buyPrice / 10^18 <= balanceOf[this.address]
    require (msg.value * buyPrice / 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += msg.value * buyPrice / 10^18
    require msg.value * buyPrice / 10^18 <= balanceOf[this.address]
    balanceOf[this.address] -= msg.value * buyPrice / 10^18
    emit Transfer((msg.value * buyPrice / 10^18), owner, msg.sender);
}

function buy() payable {
    require 1 == bool(stor8)
    require not stor11[msg.sender]
    require msg.value > 0
    require msg.value * buyPrice / 10^18 <= balanceOf[this.address]
    require (msg.value * buyPrice / 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += msg.value * buyPrice / 10^18
    require msg.value * buyPrice / 10^18 <= balanceOf[this.address]
    balanceOf[this.address] -= msg.value * buyPrice / 10^18
    emit Transfer((msg.value * buyPrice / 10^18), owner, msg.sender);
    return (msg.value * buyPrice / 10^18)
}

function sell(uint256 arg1) {
    require 1 == bool(stor8)
    require not stor11[msg.sender]
    require arg1 > 0
    require arg1 <= balanceOf[msg.sender]
    require arg1 * sellPrice / 10^18 <= eth.balance(this.address)
    call msg.sender with:
       value arg1 * sellPrice / 10^18 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[this.address] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor11[msg.sender]
    require not stor11[address(arg1)]
    require 1 == bool(stor8)
    require arg2 <= balanceOf[msg.sender]
    require arg1 != msg.sender
    require arg1
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    if not address(fromaddr[address(arg1)]):
        uint256(fromaddr[address(arg1)]) = msg.sender or Mask(96, 160, uint256(fromaddr[address(arg1)]))
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[msg.sender] + balanceOf[address(arg1)] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    return 1
}

function subBalances(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 1 == bool(stor13[msg.sender])
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[32] = 9
        balanceOf[mem[(32 * idx) + 140 len 20]] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, this.address);
        require idx < arg2.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s
        idx = idx + 1
        s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
        continue 
    require (_41 * arg1.length) + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[this.address] += _41 * arg1.length
}

function addBalances(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 1 == bool(stor13[msg.sender])
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[32] = 9
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], this.address, msg.sender);
        require idx < arg2.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s
        idx = idx + 1
        s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
        continue 
    require _41 * arg1.length <= balanceOf[this.address]
    balanceOf[this.address] += -1 * _41 * arg1.length
}



}
