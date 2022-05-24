contract main {




// =====================  Runtime code  =====================


const name = 'Rasputin Party Mansion'

const decimals = 10

const symbol = 'ROC2'


uint256 _totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 perTokenPrice;
uint256 owner_balance;
uint256 one_ether_usd_price;
uint256 bonus_percentage;
uint8 stor8;

function totalSupply() {
    return _totalSupply
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function bonus_percentage() {
    return bonus_percentage
}

function owner() {
    return owner
}

function ICO_state() {
    return bool(stor8)
}

function one_ether_usd_price() {
    return one_ether_usd_price
}

function owner_balance() {
    return owner_balance
}

function perTokenPrice() {
    return perTokenPrice
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function StopICO() {
    require msg.sender == owner
    stor8 = 0
}

function startICO() {
    require msg.sender == owner
    stor8 = 1
}

function sub_1273621f(?) {
    require msg.sender == owner
    bonus_percentage = arg1
}

function setTokenPrice(uint256 arg1) {
    require msg.sender == owner
    perTokenPrice = arg1
}

function setEtherPrice(uint256 arg1) {
    require msg.sender == owner
    one_ether_usd_price = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function drain() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    require balanceOf[address(arg1)] + balanceOf[stor3] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += balanceOf[stor3]
    balanceOf[stor3] = 0
    owner = arg1
    emit Transfer(balanceOf[address(arg1)], owner, owner);
}

function burntokens(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 <= balanceOf[address(this.address)]
    require arg1 <= _totalSupply
    _totalSupply -= arg1
    require arg1 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg1
    emit Transfer(arg1, this.address, 0);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 >= 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 >= 0
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require stor8
    require balanceOf[address(this.address)] >= 0
    require one_ether_usd_price > 0
    require 10^14 * perTokenPrice
    if bonus_percentage <= 0:
        require one_ether_usd_price * msg.value / 10^14 * perTokenPrice <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= one_ether_usd_price * msg.value / 10^14 * perTokenPrice
        require balanceOf[address(msg.sender)] + (one_ether_usd_price * msg.value / 10^14 * perTokenPrice) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += one_ether_usd_price * msg.value / 10^14 * perTokenPrice
        emit Transfer((one_ether_usd_price * msg.value / 10^14 * perTokenPrice), this.address, msg.sender);
    else:
        if not bonus_percentage:
            require one_ether_usd_price * msg.value / 10^14 * perTokenPrice >= one_ether_usd_price * msg.value / 10^14 * perTokenPrice
            require one_ether_usd_price * msg.value / 10^14 * perTokenPrice <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= one_ether_usd_price * msg.value / 10^14 * perTokenPrice
            require balanceOf[address(msg.sender)] + (one_ether_usd_price * msg.value / 10^14 * perTokenPrice) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += one_ether_usd_price * msg.value / 10^14 * perTokenPrice
            emit Transfer((one_ether_usd_price * msg.value / 10^14 * perTokenPrice), this.address, msg.sender);
        else:
            require bonus_percentage
            require bonus_percentage * one_ether_usd_price * msg.value / 10^14 * perTokenPrice / bonus_percentage == one_ether_usd_price * msg.value / 10^14 * perTokenPrice
            require (one_ether_usd_price * msg.value / 10^14 * perTokenPrice) + (bonus_percentage * one_ether_usd_price * msg.value / 10^14 * perTokenPrice / 100) >= one_ether_usd_price * msg.value / 10^14 * perTokenPrice
            require (one_ether_usd_price * msg.value / 10^14 * perTokenPrice) + (bonus_percentage * one_ether_usd_price * msg.value / 10^14 * perTokenPrice / 100) <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] = balanceOf[address(this.address)] - (one_ether_usd_price * msg.value / 10^14 * perTokenPrice) - (bonus_percentage * one_ether_usd_price * msg.value / 10^14 * perTokenPrice / 100)
            require balanceOf[address(msg.sender)] + (one_ether_usd_price * msg.value / 10^14 * perTokenPrice) + (bonus_percentage * one_ether_usd_price * msg.value / 10^14 * perTokenPrice / 100) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (one_ether_usd_price * msg.value / 10^14 * perTokenPrice) + (bonus_percentage * one_ether_usd_price * msg.value / 10^14 * perTokenPrice / 100)
            emit Transfer(((one_ether_usd_price * msg.value / 10^14 * perTokenPrice) + (bonus_percentage * one_ether_usd_price * msg.value / 10^14 * perTokenPrice / 100)), this.address, msg.sender);
}



}
