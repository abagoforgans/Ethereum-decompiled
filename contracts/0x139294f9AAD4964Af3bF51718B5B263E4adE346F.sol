contract main {




// =====================  Runtime code  =====================


const sub_7473a355(?) = msg.sender

const atNow = block.timestamp

const msgValue = msg.value


address owner;
array of uint256 name;
uint256 decimals;
array of uint256 symbol;
uint8 stor5;
uint256 coinIssuedSale;
uint256 saleEtherReceived;
uint256 stor8;
uint256 stor9;
address walletAddress;
uint256 totalSupply;
uint256 saleSupply;
uint256 firstPreSaleDate;
uint256 firstPreSaleEndDate;
uint256 secondPreSaleDate;
uint256 secondPreSaleEndDate;
uint256 publicSaleDate;
uint256 sub_5f6ce01a;
uint8 stor19;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor22;
mapping of uint8 stor23;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function secondPreSaleDate() {
    return secondPreSaleDate
}

function saleEtherReceived() {
    return saleEtherReceived
}

function firstPreSaleDate() {
    return firstPreSaleDate
}

function coinIssuedSale() {
    return coinIssuedSale
}

function decimals() {
    return decimals
}

function wallet() {
    return walletAddress
}

function sub_5f6ce01a(?) {
    return sub_5f6ce01a
}

function totalCoinLock() {
    return bool(stor19)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function secondPreSaleEndDate() {
    return secondPreSaleEndDate
}

function saleSupply() {
    return saleSupply
}

function firstPreSaleEndDate() {
    return firstPreSaleEndDate
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokenLock() {
    return bool(stor5)
}

function publicSaleDate() {
    return publicSaleDate
}

function sub_4702c08f(?) {
    return msg.value >= stor8
}

function hasClosed() {
    return (block.timestamp > firstPreSaleEndDate)
}

function sub_4aa2a170(?) {
    require msg.sender == owner
    stor23[address(arg1)] = 1
    emit 0xa7992961: arg1
}

function sub_82bcba97(?) {
    require msg.sender == owner
    require not stor19
    stor19 = 1
    emit 0x80db7846 
}

function removeLock(address arg1) {
    require msg.sender == owner
    stor23[address(arg1)] = 0
    emit RemoveLock(arg1);
}

function removeTotalCoinLock() {
    require msg.sender == owner
    require bool(stor19) == 1
    stor19 = 0
    emit RemoveTotalCoinLock()
}

function isOpen() {
    if block.timestamp < firstPreSaleDate:
        return block.timestamp >= firstPreSaleDate
    return block.timestamp <= firstPreSaleEndDate
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    require arg1
    owner = arg1
    emit OwnerTransferPropose(owner, arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require bool(stor19) != 1
    require bool(stor23[address(msg.sender)]) != 1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function _fallback() payable {
    require saleSupply > coinIssuedSale
    if block.timestamp < firstPreSaleDate:
        if block.timestamp < secondPreSaleDate:
            require block.timestamp >= publicSaleDate
            require block.timestamp < sub_5f6ce01a
            require msg.value >= stor8
            require stor22[address(msg.sender)] + msg.value >= stor22[address(msg.sender)]
            require stor22[address(msg.sender)] + msg.value <= stor9
            require 4650 * msg.value / 4650 == msg.value
            require coinIssuedSale + (4650 * msg.value) >= coinIssuedSale
            require saleSupply >= coinIssuedSale + (4650 * msg.value)
            require coinIssuedSale + (4650 * msg.value) >= coinIssuedSale
            coinIssuedSale += 4650 * msg.value
            require saleEtherReceived + msg.value >= saleEtherReceived
            saleEtherReceived += msg.value
            require balanceOf[address(msg.sender)] + (4650 * msg.value) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 4650 * msg.value
            require 4650 * msg.value <= balanceOf[stor10]
            balanceOf[stor10] += -4650 * msg.value
            require stor22[address(msg.sender)] + msg.value >= stor22[address(msg.sender)]
            stor22[address(msg.sender)] += msg.value
            emit Transfer((4650 * msg.value), 0, msg.sender);
            emit CoinIssuedSale(4650 * msg.value, balanceOf[address(msg.sender)], msg.value, msg.sender);
        else:
            if block.timestamp < secondPreSaleEndDate:
                require msg.value >= stor8
                require stor22[address(msg.sender)] + msg.value >= stor22[address(msg.sender)]
                require stor22[address(msg.sender)] + msg.value <= stor9
                require 5000 * msg.value / 5000 == msg.value
                require coinIssuedSale + (5000 * msg.value) >= coinIssuedSale
                require saleSupply >= coinIssuedSale + (5000 * msg.value)
                require coinIssuedSale + (5000 * msg.value) >= coinIssuedSale
                coinIssuedSale += 5000 * msg.value
                require saleEtherReceived + msg.value >= saleEtherReceived
                saleEtherReceived += msg.value
                require balanceOf[address(msg.sender)] + (5000 * msg.value) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 5000 * msg.value
                require 5000 * msg.value <= balanceOf[stor10]
                balanceOf[stor10] += -5000 * msg.value
                require stor22[address(msg.sender)] + msg.value >= stor22[address(msg.sender)]
                stor22[address(msg.sender)] += msg.value
                emit Transfer((5000 * msg.value), 0, msg.sender);
                emit CoinIssuedSale(5000 * msg.value, balanceOf[address(msg.sender)], msg.value, msg.sender);
            else:
                require block.timestamp >= publicSaleDate
                require block.timestamp < sub_5f6ce01a
                require msg.value >= stor8
                require stor22[address(msg.sender)] + msg.value >= stor22[address(msg.sender)]
                require stor22[address(msg.sender)] + msg.value <= stor9
                require 4650 * msg.value / 4650 == msg.value
                require coinIssuedSale + (4650 * msg.value) >= coinIssuedSale
                require saleSupply >= coinIssuedSale + (4650 * msg.value)
                require coinIssuedSale + (4650 * msg.value) >= coinIssuedSale
                coinIssuedSale += 4650 * msg.value
                require saleEtherReceived + msg.value >= saleEtherReceived
                saleEtherReceived += msg.value
                require balanceOf[address(msg.sender)] + (4650 * msg.value) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 4650 * msg.value
                require 4650 * msg.value <= balanceOf[stor10]
                balanceOf[stor10] += -4650 * msg.value
                require stor22[address(msg.sender)] + msg.value >= stor22[address(msg.sender)]
                stor22[address(msg.sender)] += msg.value
                emit Transfer((4650 * msg.value), 0, msg.sender);
                emit CoinIssuedSale(4650 * msg.value, balanceOf[address(msg.sender)], msg.value, msg.sender);
    else:
        if block.timestamp < firstPreSaleEndDate:
            require msg.value >= stor8
            require stor22[address(msg.sender)] + msg.value >= stor22[address(msg.sender)]
            require stor22[address(msg.sender)] + msg.value <= stor9
            require 5500 * msg.value / 5500 == msg.value
            require coinIssuedSale + (5500 * msg.value) >= coinIssuedSale
            require saleSupply >= coinIssuedSale + (5500 * msg.value)
            require coinIssuedSale + (5500 * msg.value) >= coinIssuedSale
            coinIssuedSale += 5500 * msg.value
            require saleEtherReceived + msg.value >= saleEtherReceived
            saleEtherReceived += msg.value
            require balanceOf[address(msg.sender)] + (5500 * msg.value) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 5500 * msg.value
            require 5500 * msg.value <= balanceOf[stor10]
            balanceOf[stor10] += -5500 * msg.value
            require stor22[address(msg.sender)] + msg.value >= stor22[address(msg.sender)]
            stor22[address(msg.sender)] += msg.value
            emit Transfer((5500 * msg.value), 0, msg.sender);
            emit CoinIssuedSale(5500 * msg.value, balanceOf[address(msg.sender)], msg.value, msg.sender);
        else:
            if block.timestamp < secondPreSaleDate:
                require block.timestamp >= publicSaleDate
                require block.timestamp < sub_5f6ce01a
                require msg.value >= stor8
                require stor22[address(msg.sender)] + msg.value >= stor22[address(msg.sender)]
                require stor22[address(msg.sender)] + msg.value <= stor9
                require 4650 * msg.value / 4650 == msg.value
                require coinIssuedSale + (4650 * msg.value) >= coinIssuedSale
                require saleSupply >= coinIssuedSale + (4650 * msg.value)
                require coinIssuedSale + (4650 * msg.value) >= coinIssuedSale
                coinIssuedSale += 4650 * msg.value
                require saleEtherReceived + msg.value >= saleEtherReceived
                saleEtherReceived += msg.value
                require balanceOf[address(msg.sender)] + (4650 * msg.value) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 4650 * msg.value
                require 4650 * msg.value <= balanceOf[stor10]
                balanceOf[stor10] += -4650 * msg.value
                require stor22[address(msg.sender)] + msg.value >= stor22[address(msg.sender)]
                stor22[address(msg.sender)] += msg.value
                emit Transfer((4650 * msg.value), 0, msg.sender);
                emit CoinIssuedSale(4650 * msg.value, balanceOf[address(msg.sender)], msg.value, msg.sender);
            else:
                if block.timestamp < secondPreSaleEndDate:
                    require msg.value >= stor8
                    require stor22[address(msg.sender)] + msg.value >= stor22[address(msg.sender)]
                    require stor22[address(msg.sender)] + msg.value <= stor9
                    require 5000 * msg.value / 5000 == msg.value
                    require coinIssuedSale + (5000 * msg.value) >= coinIssuedSale
                    require saleSupply >= coinIssuedSale + (5000 * msg.value)
                    require coinIssuedSale + (5000 * msg.value) >= coinIssuedSale
                    coinIssuedSale += 5000 * msg.value
                    require saleEtherReceived + msg.value >= saleEtherReceived
                    saleEtherReceived += msg.value
                    require balanceOf[address(msg.sender)] + (5000 * msg.value) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 5000 * msg.value
                    require 5000 * msg.value <= balanceOf[stor10]
                    balanceOf[stor10] += -5000 * msg.value
                    require stor22[address(msg.sender)] + msg.value >= stor22[address(msg.sender)]
                    stor22[address(msg.sender)] += msg.value
                    emit Transfer((5000 * msg.value), 0, msg.sender);
                    emit CoinIssuedSale(5000 * msg.value, balanceOf[address(msg.sender)], msg.value, msg.sender);
                else:
                    require block.timestamp >= publicSaleDate
                    require block.timestamp < sub_5f6ce01a
                    require msg.value >= stor8
                    require stor22[address(msg.sender)] + msg.value >= stor22[address(msg.sender)]
                    require stor22[address(msg.sender)] + msg.value <= stor9
                    require 4650 * msg.value / 4650 == msg.value
                    require coinIssuedSale + (4650 * msg.value) >= coinIssuedSale
                    require saleSupply >= coinIssuedSale + (4650 * msg.value)
                    require coinIssuedSale + (4650 * msg.value) >= coinIssuedSale
                    coinIssuedSale += 4650 * msg.value
                    require saleEtherReceived + msg.value >= saleEtherReceived
                    saleEtherReceived += msg.value
                    require balanceOf[address(msg.sender)] + (4650 * msg.value) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 4650 * msg.value
                    require 4650 * msg.value <= balanceOf[stor10]
                    balanceOf[stor10] += -4650 * msg.value
                    require stor22[address(msg.sender)] + msg.value >= stor22[address(msg.sender)]
                    stor22[address(msg.sender)] += msg.value
                    emit Transfer((4650 * msg.value), 0, msg.sender);
                    emit CoinIssuedSale(4650 * msg.value, balanceOf[address(msg.sender)], msg.value, msg.sender);
    call walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
