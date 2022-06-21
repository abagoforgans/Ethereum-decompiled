contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
uint8 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
uint8 passiveAirdropStatus;
uint256 passiveAirdropTokensAllocation;
uint256 airdropAmount;
uint256 passiveAirdropTokensSold;
mapping of uint8 stor13;
uint256 stor14;
uint256 airdropFee;
uint8 whitelistingStatus;
mapping of uint8 stor17;
uint256 sellPrice;
uint256 buyPrice;
uint8 stor20;

function name() {
    return name[0 len name.length].field_0
}

function passiveAirdropTokensAllocation() {
    return passiveAirdropTokensAllocation
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sellPrice() {
    return sellPrice
}

function passiveAirdropTokensSold() {
    return passiveAirdropTokensSold
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function airdropFee() {
    return airdropFee
}

function frozenAccount(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function safeguard() {
    return bool(stor5)
}

function passiveAirdropStatus() {
    return bool(passiveAirdropStatus)
}

function whitelistingStatus() {
    return bool(whitelistingStatus)
}

function airdropClaimed(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor13[arg1][arg2])
}

function whitelisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor17[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function airdropAmount() {
    return airdropAmount
}

function isContract(address arg1) {
    require calldata.size - 4 >= 32
    return (uint32(ext_code.size(arg1)) > 0)
}

function changeSafeguardStatus() {
    require msg.sender == owner
    if stor5:
        stor5 = 0
    else:
        stor5 = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function updateAirdropFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    airdropFee = arg1
}

function changePassiveAirdropAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    airdropAmount = arg1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
}

function changeWhitelistingStatus() {
    require msg.sender == owner
    if whitelistingStatus:
        whitelistingStatus = 0
    else:
        whitelistingStatus = 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor5
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function stopPassiveAirDropCompletely() {
    require msg.sender == owner
    passiveAirdropTokensAllocation = 0
    airdropAmount = 0
    stor14++
    passiveAirdropStatus = 0
}

function whitelistUser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require bool(whitelistingStatus) == 1
    require arg1
    stor17[address(arg1)] = 1
}

function freezeAccount(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor8[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function startNewPassiveAirDrop(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    passiveAirdropTokensAllocation = arg1
    airdropAmount = arg2
    passiveAirdropStatus = 1
}

function manualWithdrawEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor5
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor5
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function manualWithdrawTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not stor5
    require owner
    require not stor8[address(this.address)]
    require not stor8[stor0]
    require arg1 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg1
    require balanceOf[stor0] + arg1 >= balanceOf[stor0]
    balanceOf[stor0] += arg1
    emit Transfer(arg1, this.address, owner);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor5
    require arg1
    require not stor8[address(msg.sender)]
    require not stor8[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function buyTokens() payable {
    require not stor5
    require msg.sender
    require not stor8[address(this.address)]
    require not stor8[address(msg.sender)]
    require msg.value * buyPrice <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += -1 * msg.value * buyPrice
    require balanceOf[address(msg.sender)] + (msg.value * buyPrice) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * buyPrice
    emit Transfer((msg.value * buyPrice), this.address, msg.sender);
}

function _fallback() payable {
    require not stor5
    require msg.sender
    require not stor8[address(this.address)]
    require not stor8[address(msg.sender)]
    require msg.value * buyPrice <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += -1 * msg.value * buyPrice
    require balanceOf[address(msg.sender)] + (msg.value * buyPrice) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * buyPrice
    emit Transfer((msg.value * buyPrice), this.address, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require not stor5
    require arg2
    require not stor8[address(arg1)]
    require not stor8[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require not stor20
    require not owner
    bool(name.length) = 0
    name.length.field_1 = 5
    name.length.field_8 = 'Envoy' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 4
    symbol.length.field_8 = 'NVOY' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 18
    totalSupply = 250 * 10^6 * 10^decimals
    owner = arg1
    balanceOf[stor0] = totalSupply
    emit Transfer(totalSupply, 0, owner);
    stor20 = 1
}

function whitelistManyUsers(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    require bool(whitelistingStatus) == 1
    require arg1.length <= 150
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 17
        stor17[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sellTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require 10^decimals
    require eth.balance(this.address) >= arg1 * sellPrice / 10^decimals
    require not stor5
    require this.address
    require not stor8[address(msg.sender)]
    require not stor8[address(this.address)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require balanceOf[address(this.address)] + arg1 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    call msg.sender with:
       value arg1 * sellPrice / 10^decimals wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function airdropACTIVE(address[] arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    require arg1.length <= 150
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _15 = mem[(32 * idx) + 128]
        require not stor5
        require mem[(32 * idx) + 140 len 20]
        require not stor8[address(this.address)]
        require not stor8[address(mem[(32 * idx) + 128])]
        require arg2 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= arg2
        require balanceOf[address(mem[(32 * idx) + 128])] + arg2 >= balanceOf[address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        balanceOf[address(mem[(32 * idx) + 128])] += arg2
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, this.address, address(_15));
        idx = idx + 1
        continue 
}

function claimPassiveAirdrop() payable {
    if airdropAmount <= 0:
        revert with 0, 'Token amount must not be zero'
    if not passiveAirdropStatus:
        revert with 0, 'Air drop is not active'
    if passiveAirdropTokensSold > passiveAirdropTokensAllocation:
        revert with 0, 'Air drop sold out'
    if stor13[stor14][address(msg.sender)]:
        revert with 0, 'user claimed air drop already'
    if uint32(ext_code.size(msg.sender)) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x704e6f20636f6e7472616374206164647265737320616c6c6f77656420746f20636c61696d206169722064726f,
                    mem[209 len 19]
    if msg.value < airdropFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4e6f7420656e6f75676820657468657220746f20636c61696d20746869732061697264726f,
                    mem[202 len 26]
    require not stor5
    require msg.sender
    require not stor8[address(this.address)]
    require not stor8[address(msg.sender)]
    require airdropAmount <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= airdropAmount
    require balanceOf[address(msg.sender)] + airdropAmount >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += airdropAmount
    emit Transfer(airdropAmount, this.address, msg.sender);
    passiveAirdropTokensSold += airdropAmount
    stor13[stor14][address(msg.sender)] = 1
    return 1
}



}
