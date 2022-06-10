contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
mapping of uint8 stor12;
uint8 stor14;
uint256 stor14; offset 8
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
address stor21;
address stor22;
address stor23;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 12
    stor2.length.field_8 = 'Rebero Token' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'RBR' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    stor5 = 500 * 10^6 * 10^stor4
    stor6 = 50 * 10^6 * 10^stor4
    stor7 = 25 * 10^6 * 10^stor4
    stor8 = 50 * 10^6 * 10^stor4
    stor9 = 375 * 10^6 * 10^stor4
    stor10 = 125 * 10^6 * 10^stor4
    stor11 = 10^15
    uint8(stor14.field_0) = 1
    Mask(248, 0, stor14.field_8) = 0
    stor15 = 0
    stor16 = 0
    stor17 = 0
    stor18 = 0
    stor19 = 0
    stor20 = 0
    stor21 = 0
    stor22 = 0
    stor23 = 0
    stor0[0xb61e51d10c09b91b1ff12efaa1baf4b149ff87d6] = 0
    stor0[0x39c98ce5f3e9a3960c1bc1baf258f4e160210d21] = 0
    stor0[0xd9e5f5d2595068e8865454a370fa79a6ee122e6b] = 0
    require stor0[0xb61e51d10c09b91b1ff12efaa1baf4b149ff87d6] + stor10 >= stor0[0xb61e51d10c09b91b1ff12efaa1baf4b149ff87d6]
    require stor0[0xb61e51d10c09b91b1ff12efaa1baf4b149ff87d6] + stor10 >= stor10
    stor0[0xb61e51d10c09b91b1ff12efaa1baf4b149ff87d6] += stor10
    require stor19 + stor10 >= stor19
    require stor19 + stor10 >= stor10
    stor19 += stor10
    require stor20 + stor10 >= stor20
    require stor20 + stor10 >= stor10
    stor20 += stor10
    emit Transfer(stor10, 0, this.address);
    emit Transfer(stor10, this.address, 0xb61e51d10c09b91b1ff12efaa1baf4b149ff87d6);
    stor12[0xb61e51d10c09b91b1ff12efaa1baf4b149ff87d6] = 1
    stor12[0x39c98ce5f3e9a3960c1bc1baf258f4e160210d21] = 1
    stor12[0xd9e5f5d2595068e8865454a370fa79a6ee122e6b] = 1
    return code.data[1887 len 11042]
}



// =====================  Runtime code  =====================


const isToken = 1


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_c98b09a7;
uint256 sub_16bf73dc;
uint256 poolBounty;
uint256 poolSale;
uint256 ownerInitialBalance;
uint256 price;
mapping of uint8 stor12;
mapping of uint256 specialBonus;
uint8 transferAllowed;
uint8 crowdsalePaused; offset 8
uint256 stor14; offset 8
uint256 currentBonus;
uint256 statsEthereumRaised;
uint256 statsSold;
uint256 statsMinted;
uint256 statsReserved;
uint256 statsTotal;
address owner;
address minterAddress;
address walletAddress;

function name() {
    return name[0 len name.length]
}

function minter() {
    return minterAddress
}

function specialBonus(address arg1) {
    return specialBonus[arg1]
}

function poolBounty() {
    return poolBounty
}

function sub_16bf73dc(?) {
    return sub_16bf73dc
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function StatsSold() {
    return statsSold
}

function StatsEthereumRaised() {
    return statsEthereumRaised
}

function sellPrice() {
    return price
}

function wallet() {
    return walletAddress
}

function poolSale() {
    return poolSale
}

function allowedTransfer(address arg1) {
    return bool(stor12[arg1])
}

function StatsTotal() {
    return statsTotal
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function TransferAllowed() {
    return bool(transferAllowed)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function StatsReserved() {
    return statsReserved
}

function price() {
    return price
}

function CrowdsalePaused() {
    return bool(crowdsalePaused)
}

function ownerInitialBalance() {
    return ownerInitialBalance
}

function sub_c98b09a7(?) {
    return sub_c98b09a7
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function StatsMinted() {
    return statsMinted
}

function currentBonus() {
    return currentBonus
}

function eventPause(bool arg1) {
    require msg.sender == owner
    stor14 = Mask(248, 0, arg1)
}

function setTransferAllowance(bool arg1) {
    require msg.sender == owner
    transferAllowed = uint8(arg1)
}

function allowTransfer(address arg1, bool arg2) {
    require msg.sender == owner
    stor12[address(arg1)] = uint8(arg2)
}

function changeOwner(address arg1) {
    require msg.sender == owner
    balanceOf[address(arg1)] = balanceOf[stor21]
    balanceOf[stor21] = 0
    owner = arg1
}

function changeMinter(address arg1) {
    require msg.sender == owner
    balanceOf[address(arg1)] = balanceOf[stor22]
    balanceOf[stor22] = 0
    minterAddress = arg1
}

function changeWallet(address arg1) {
    require msg.sender == owner
    balanceOf[address(arg1)] = balanceOf[stor23]
    balanceOf[stor23] = 0
    walletAddress = arg1
}

function setTokenPrice(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == minterAddress
    price = arg1
    emit PriceChanged(Array(len=13, data='New price is '), arg1);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setSpecialBonus(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == minterAddress
    require arg2 >= 0
    require arg2 + 100 >= 100
    require arg2 + 100 >= arg2
    specialBonus[address(arg1)] = arg2 + 100
}

function setBonus(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == minterAddress
    require arg1 >= 0
    require arg1 + 100 >= 100
    require arg1 + 100 >= arg1
    currentBonus = arg1 + 100
    emit BonusChanged(Array(len=23, data='New crowdsale bonus is '), arg1);
}

function transfer(address arg1, uint256 arg2) {
    if not transferAllowed:
        require stor12[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseTokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == minterAddress
    require arg2 > 0
    require arg2 * 10^decimals <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += -1 * arg2 * 10^decimals
    require arg2 * 10^decimals <= statsMinted
    statsMinted += -1 * arg2 * 10^decimals
    require arg2 * 10^decimals <= statsTotal
    statsTotal += -1 * arg2 * 10^decimals
    emit Transfer((arg2 * 10^decimals), arg1, 0);
    emit Burn((arg2 * 10^decimals), arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not transferAllowed:
        require stor12[address(msg.sender)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mintTokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == minterAddress
    require arg2 > 0
    require statsTotal + (arg2 * 10^decimals) >= statsTotal
    require statsTotal + (arg2 * 10^decimals) >= arg2 * 10^decimals
    require statsTotal + (arg2 * 10^decimals) <= totalSupply
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= arg2 * 10^decimals
    balanceOf[address(arg1)] += arg2 * 10^decimals
    require statsMinted + (arg2 * 10^decimals) >= statsMinted
    require statsMinted + (arg2 * 10^decimals) >= arg2 * 10^decimals
    statsMinted += arg2 * 10^decimals
    require statsTotal + (arg2 * 10^decimals) >= statsTotal
    require statsTotal + (arg2 * 10^decimals) >= arg2 * 10^decimals
    statsTotal += arg2 * 10^decimals
    emit Transfer((arg2 * 10^decimals), 0, this.address);
    emit Transfer((arg2 * 10^decimals), this.address, arg1);
    emit Mint((arg2 * 10^decimals), arg1);
    return 1
}

function _fallback() payable {
    require owner != msg.sender
    require minterAddress != msg.sender
    require walletAddress != msg.sender
    require not crowdsalePaused
    require msg.value >= price
    require price
    require msg.value / price > 0
    if currentBonus <= 0:
        if specialBonus[address(msg.sender)] <= 0:
            require statsSold + (msg.value / price * 10^decimals) >= statsSold
            require statsSold + (msg.value / price * 10^decimals) >= msg.value / price * 10^decimals
            require statsSold + (msg.value / price * 10^decimals) <= poolSale
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require balanceOf[address(msg.sender)] + (msg.value / price * 10^decimals) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] + (msg.value / price * 10^decimals) >= msg.value / price * 10^decimals
            balanceOf[address(msg.sender)] += msg.value / price * 10^decimals
            require statsSold + (msg.value / price * 10^decimals) >= statsSold
            require statsSold + (msg.value / price * 10^decimals) >= msg.value / price * 10^decimals
            statsSold += msg.value / price * 10^decimals
            require statsTotal + (msg.value / price * 10^decimals) >= statsTotal
            require statsTotal + (msg.value / price * 10^decimals) >= msg.value / price * 10^decimals
            statsTotal += msg.value / price * 10^decimals
            emit Transfer((msg.value / price * 10^decimals), 0, this.address);
            emit Transfer((msg.value / price * 10^decimals), this.address, msg.sender);
            require statsEthereumRaised + msg.value >= statsEthereumRaised
            require statsEthereumRaised + msg.value >= msg.value
            statsEthereumRaised += msg.value
            emit Buy(msg.value, msg.value / price * 10^decimals, currentBonus, msg.sender);
        else:
            if msg.value / price:
                require msg.value / price
                require msg.value / price * specialBonus[address(msg.sender)] / msg.value / price == specialBonus[address(msg.sender)]
            require msg.value / price * specialBonus[address(msg.sender)] == (100 * msg.value / price * specialBonus[address(msg.sender)] / 100) + (msg.value / price * specialBonus[address(msg.sender)] % 100)
            require (msg.value / price * specialBonus[address(msg.sender)] / 100) + (msg.value / price) >= msg.value / price * specialBonus[address(msg.sender)] / 100
            require (msg.value / price * specialBonus[address(msg.sender)] / 100) + (msg.value / price) >= msg.value / price
            require statsSold + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsSold
            require statsSold >= 0
            require statsSold + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals) <= poolSale
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require balanceOf[address(msg.sender)] + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] >= 0
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            require statsSold + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsSold
            require statsSold >= 0
            statsSold = statsSold + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            require statsTotal + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsTotal
            require statsTotal >= 0
            statsTotal = statsTotal + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            emit Transfer(((msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals)), 0, this.address);
            emit Transfer(((msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals)), this.address, msg.sender);
            require statsEthereumRaised + msg.value >= statsEthereumRaised
            require statsEthereumRaised + msg.value >= msg.value
            statsEthereumRaised += msg.value
            emit Buy(msg.value, (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals), currentBonus, msg.sender);
    else:
        if msg.value / price:
            require msg.value / price
            require msg.value / price * currentBonus / msg.value / price == currentBonus
        require msg.value / price * currentBonus == (100 * msg.value / price * currentBonus / 100) + (msg.value / price * currentBonus % 100)
        require (msg.value / price * currentBonus / 100) + (msg.value / price) >= msg.value / price * currentBonus / 100
        require (msg.value / price * currentBonus / 100) + (msg.value / price) >= msg.value / price
        if specialBonus[address(msg.sender)] <= 0:
            require statsSold + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsSold
            require statsSold >= 0
            require statsSold + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) <= poolSale
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require balanceOf[address(msg.sender)] + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] >= 0
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            require statsSold + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsSold
            require statsSold >= 0
            statsSold = statsSold + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            require statsTotal + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsTotal
            require statsTotal >= 0
            statsTotal = statsTotal + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            emit Transfer(((msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)), 0, this.address);
            emit Transfer(((msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)), this.address, msg.sender);
            require statsEthereumRaised + msg.value >= statsEthereumRaised
            require statsEthereumRaised + msg.value >= msg.value
            statsEthereumRaised += msg.value
            emit Buy(msg.value, (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals), currentBonus, msg.sender);
        else:
            if (msg.value / price * currentBonus / 100) + (msg.value / price):
                require (msg.value / price * currentBonus / 100) + (msg.value / price)
                require (msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / (msg.value / price * currentBonus / 100) + (msg.value / price) == specialBonus[address(msg.sender)]
            require (msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) == (100 * (msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100) + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) % 100)
            require ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100) + (msg.value / price * currentBonus / 100) + (msg.value / price) >= (msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100
            require (msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 >= 0
            require statsSold + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsSold
            require statsSold >= 0
            require statsSold + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) <= poolSale
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require balanceOf[address(msg.sender)] + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] >= 0
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            require statsSold + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsSold
            require statsSold >= 0
            statsSold = statsSold + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            require statsTotal + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsTotal
            require statsTotal >= 0
            statsTotal = statsTotal + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            emit Transfer((((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)), 0, this.address);
            emit Transfer((((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)), this.address, msg.sender);
            require statsEthereumRaised + msg.value >= statsEthereumRaised
            require statsEthereumRaised + msg.value >= msg.value
            statsEthereumRaised += msg.value
            emit Buy(msg.value, ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals), currentBonus, msg.sender);
}

function buy() payable {
    require owner != msg.sender
    require minterAddress != msg.sender
    require walletAddress != msg.sender
    require not crowdsalePaused
    require msg.value >= price
    require price
    require msg.value / price > 0
    if currentBonus <= 0:
        if specialBonus[address(msg.sender)] <= 0:
            require statsSold + (msg.value / price * 10^decimals) >= statsSold
            require statsSold + (msg.value / price * 10^decimals) >= msg.value / price * 10^decimals
            require statsSold + (msg.value / price * 10^decimals) <= poolSale
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require balanceOf[address(msg.sender)] + (msg.value / price * 10^decimals) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] + (msg.value / price * 10^decimals) >= msg.value / price * 10^decimals
            balanceOf[address(msg.sender)] += msg.value / price * 10^decimals
            require statsSold + (msg.value / price * 10^decimals) >= statsSold
            require statsSold + (msg.value / price * 10^decimals) >= msg.value / price * 10^decimals
            statsSold += msg.value / price * 10^decimals
            require statsTotal + (msg.value / price * 10^decimals) >= statsTotal
            require statsTotal + (msg.value / price * 10^decimals) >= msg.value / price * 10^decimals
            statsTotal += msg.value / price * 10^decimals
            emit Transfer((msg.value / price * 10^decimals), 0, this.address);
            emit Transfer((msg.value / price * 10^decimals), this.address, msg.sender);
            require statsEthereumRaised + msg.value >= statsEthereumRaised
            require statsEthereumRaised + msg.value >= msg.value
            statsEthereumRaised += msg.value
            emit Buy(msg.value, msg.value / price * 10^decimals, currentBonus, msg.sender);
        else:
            if msg.value / price:
                require msg.value / price
                require msg.value / price * specialBonus[address(msg.sender)] / msg.value / price == specialBonus[address(msg.sender)]
            require msg.value / price * specialBonus[address(msg.sender)] == (100 * msg.value / price * specialBonus[address(msg.sender)] / 100) + (msg.value / price * specialBonus[address(msg.sender)] % 100)
            require (msg.value / price * specialBonus[address(msg.sender)] / 100) + (msg.value / price) >= msg.value / price * specialBonus[address(msg.sender)] / 100
            require (msg.value / price * specialBonus[address(msg.sender)] / 100) + (msg.value / price) >= msg.value / price
            require statsSold + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsSold
            require statsSold >= 0
            require statsSold + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals) <= poolSale
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require balanceOf[address(msg.sender)] + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] >= 0
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            require statsSold + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsSold
            require statsSold >= 0
            statsSold = statsSold + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            require statsTotal + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsTotal
            require statsTotal >= 0
            statsTotal = statsTotal + (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            emit Transfer(((msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals)), 0, this.address);
            emit Transfer(((msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals)), this.address, msg.sender);
            require statsEthereumRaised + msg.value >= statsEthereumRaised
            require statsEthereumRaised + msg.value >= msg.value
            statsEthereumRaised += msg.value
            emit Buy(msg.value, (msg.value / price * specialBonus[address(msg.sender)] / 100 * 10^decimals) + (msg.value / price * 10^decimals), currentBonus, msg.sender);
    else:
        if msg.value / price:
            require msg.value / price
            require msg.value / price * currentBonus / msg.value / price == currentBonus
        require msg.value / price * currentBonus == (100 * msg.value / price * currentBonus / 100) + (msg.value / price * currentBonus % 100)
        require (msg.value / price * currentBonus / 100) + (msg.value / price) >= msg.value / price * currentBonus / 100
        require (msg.value / price * currentBonus / 100) + (msg.value / price) >= msg.value / price
        if specialBonus[address(msg.sender)] <= 0:
            require statsSold + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsSold
            require statsSold >= 0
            require statsSold + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) <= poolSale
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require balanceOf[address(msg.sender)] + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] >= 0
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            require statsSold + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsSold
            require statsSold >= 0
            statsSold = statsSold + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            require statsTotal + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsTotal
            require statsTotal >= 0
            statsTotal = statsTotal + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            emit Transfer(((msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)), 0, this.address);
            emit Transfer(((msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)), this.address, msg.sender);
            require statsEthereumRaised + msg.value >= statsEthereumRaised
            require statsEthereumRaised + msg.value >= msg.value
            statsEthereumRaised += msg.value
            emit Buy(msg.value, (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals), currentBonus, msg.sender);
        else:
            if (msg.value / price * currentBonus / 100) + (msg.value / price):
                require (msg.value / price * currentBonus / 100) + (msg.value / price)
                require (msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / (msg.value / price * currentBonus / 100) + (msg.value / price) == specialBonus[address(msg.sender)]
            require (msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) == (100 * (msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100) + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) % 100)
            require ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100) + (msg.value / price * currentBonus / 100) + (msg.value / price) >= (msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100
            require (msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 >= 0
            require statsSold + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsSold
            require statsSold >= 0
            require statsSold + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) <= poolSale
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require balanceOf[address(msg.sender)] + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] >= 0
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            require statsSold + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsSold
            require statsSold >= 0
            statsSold = statsSold + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            require statsTotal + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals) >= statsTotal
            require statsTotal >= 0
            statsTotal = statsTotal + ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)
            emit Transfer((((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)), 0, this.address);
            emit Transfer((((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals)), this.address, msg.sender);
            require statsEthereumRaised + msg.value >= statsEthereumRaised
            require statsEthereumRaised + msg.value >= msg.value
            statsEthereumRaised += msg.value
            emit Buy(msg.value, ((msg.value / price * currentBonus / 100 * specialBonus[address(msg.sender)]) + (msg.value / price * specialBonus[address(msg.sender)]) / 100 * 10^decimals) + (msg.value / price * currentBonus / 100 * 10^decimals) + (msg.value / price * 10^decimals), currentBonus, msg.sender);
    return 1
}



}
