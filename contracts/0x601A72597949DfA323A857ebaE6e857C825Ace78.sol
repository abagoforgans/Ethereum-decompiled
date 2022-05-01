contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor6 = 10^16
    stor7 = 10000000 * 10^18
    stor8 = 0
    stor9 = 0
    stor10 = 421349 * 3600
    stor11 = 422981 * 3600
    stor12 = 421685 * 3600
    stor13 = 422165 * 3600
    stor14 = 422501 * 3600
    require not msg.value
    stor3 = msg.sender
    stor4 = code.data[8454 len 20]
    stor5 = code.data[8486 len 20]
    stor0[stor4] = 5000000 * 10^18
    require stor8 + 5000000 * 10^18 >= stor8
    stor8 += 5000000 * 10^18
    emit Transfer(5000000 * 10^18, 0, code.data[8454 len 20]);
    return code.data[643 len 7799]
}



// =====================  Runtime code  =====================


const name = 'White Stone Coin'

const decimals = 18

const symbol = 'WHS'

const UNIT = 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address companyWalletAddress;
address adminAddress;
uint256 tokenPrice;
uint256 maxSupply;
uint256 totalSupply;
uint256 totalWeiReceived;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function totalSupply() {
    return totalSupply
}

function companyWallet() {
    return companyWalletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokenPrice() {
    return tokenPrice
}

function totalWeiReceived() {
    return totalWeiReceived
}

function owner() {
    return owner
}

function maxSupply() {
    return maxSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function setAdmin(address arg1) {
    require msg.sender == owner
    adminAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sendTokens(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    require block.timestamp < stor11
    require block.timestamp >= stor10
    require totalSupply + arg2 <= maxSupply
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
    if block.timestamp <= stor12:
        if block.timestamp <= stor13:
            if block.timestamp <= stor14:
                if 30 * arg2 / 100 > 0:
                    emit Transfer((30 * arg2 / 100), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 30 * arg2 / 100
                    require balanceOf[address(msg.sender)] + (30 * arg2 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 30 * arg2 / 100
        else:
            if block.timestamp <= stor14:
                if 5 * arg2 / 100 > 0:
                    emit Transfer((5 * arg2 / 100), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 5 * arg2 / 100
                    require balanceOf[address(msg.sender)] + (5 * arg2 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 5 * arg2 / 100
    else:
        if block.timestamp <= stor13:
            if block.timestamp <= stor14:
                if 15 * arg2 / 100 > 0:
                    emit Transfer((15 * arg2 / 100), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 15 * arg2 / 100
                    require balanceOf[address(msg.sender)] + (15 * arg2 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 15 * arg2 / 100
        else:
            if block.timestamp <= stor14:
                if 5 * arg2 / 100 > 0:
                    emit Transfer((5 * arg2 / 100), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 5 * arg2 / 100
                    require balanceOf[address(msg.sender)] + (5 * arg2 / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 5 * arg2 / 100
}

function buyTokens() payable {
    require block.timestamp < stor11
    require block.timestamp >= stor10
    require msg.value > 0
    require tokenPrice
    require tokenPrice
    require totalSupply + (10^18 * msg.value / tokenPrice) >= totalSupply
    totalSupply += 10^18 * msg.value / tokenPrice
    require totalSupply <= maxSupply
    require totalWeiReceived + msg.value >= totalWeiReceived
    totalWeiReceived += msg.value
    require balanceOf[address(msg.sender)] + (10^18 * msg.value / tokenPrice) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^18 * msg.value / tokenPrice
    emit TokenPurchase(msg.value, 10^18 * msg.value / tokenPrice, msg.sender, msg.sender);
    emit Transfer((10^18 * msg.value / tokenPrice), 0, msg.sender);
    if block.timestamp <= stor12:
        if block.timestamp <= stor13:
            if block.timestamp <= stor14:
                if 10^18 * 30 * msg.value / 100 / tokenPrice > 0:
                    emit Transfer((10^18 * 30 * msg.value / 100 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 10^18 * 30 * msg.value / 100 / tokenPrice
                    require balanceOf[address(msg.sender)] + (10^18 * 30 * msg.value / 100 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * 30 * msg.value / 100 / tokenPrice
            else:
                if 0 / tokenPrice > 0:
                    emit Transfer((0 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 0 / tokenPrice
                    require balanceOf[address(msg.sender)] + (0 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 0 / tokenPrice
        else:
            if block.timestamp <= stor14:
                if 10^18 * 5 * msg.value / 100 / tokenPrice > 0:
                    emit Transfer((10^18 * 5 * msg.value / 100 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 10^18 * 5 * msg.value / 100 / tokenPrice
                    require balanceOf[address(msg.sender)] + (10^18 * 5 * msg.value / 100 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * 5 * msg.value / 100 / tokenPrice
            else:
                if 0 / tokenPrice > 0:
                    emit Transfer((0 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 0 / tokenPrice
                    require balanceOf[address(msg.sender)] + (0 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 0 / tokenPrice
    else:
        if block.timestamp <= stor13:
            if block.timestamp <= stor14:
                if 10^18 * 15 * msg.value / 100 / tokenPrice > 0:
                    emit Transfer((10^18 * 15 * msg.value / 100 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 10^18 * 15 * msg.value / 100 / tokenPrice
                    require balanceOf[address(msg.sender)] + (10^18 * 15 * msg.value / 100 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * 15 * msg.value / 100 / tokenPrice
            else:
                if 0 / tokenPrice > 0:
                    emit Transfer((0 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 0 / tokenPrice
                    require balanceOf[address(msg.sender)] + (0 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 0 / tokenPrice
        else:
            if block.timestamp <= stor14:
                if 10^18 * 5 * msg.value / 100 / tokenPrice > 0:
                    emit Transfer((10^18 * 5 * msg.value / 100 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 10^18 * 5 * msg.value / 100 / tokenPrice
                    require balanceOf[address(msg.sender)] + (10^18 * 5 * msg.value / 100 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * 5 * msg.value / 100 / tokenPrice
            else:
                if 0 / tokenPrice > 0:
                    emit Transfer((0 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 0 / tokenPrice
                    require balanceOf[address(msg.sender)] + (0 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 0 / tokenPrice
    call companyWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp < stor11
    require block.timestamp >= stor10
    require msg.value > 0
    require tokenPrice
    require tokenPrice
    require totalSupply + (10^18 * msg.value / tokenPrice) >= totalSupply
    totalSupply += 10^18 * msg.value / tokenPrice
    require totalSupply <= maxSupply
    require totalWeiReceived + msg.value >= totalWeiReceived
    totalWeiReceived += msg.value
    require balanceOf[address(msg.sender)] + (10^18 * msg.value / tokenPrice) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^18 * msg.value / tokenPrice
    emit TokenPurchase(msg.value, 10^18 * msg.value / tokenPrice, msg.sender, msg.sender);
    emit Transfer((10^18 * msg.value / tokenPrice), 0, msg.sender);
    if block.timestamp <= stor12:
        if block.timestamp <= stor13:
            if block.timestamp <= stor14:
                if 10^18 * 30 * msg.value / 100 / tokenPrice > 0:
                    emit Transfer((10^18 * 30 * msg.value / 100 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 10^18 * 30 * msg.value / 100 / tokenPrice
                    require balanceOf[address(msg.sender)] + (10^18 * 30 * msg.value / 100 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * 30 * msg.value / 100 / tokenPrice
            else:
                if 0 / tokenPrice > 0:
                    emit Transfer((0 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 0 / tokenPrice
                    require balanceOf[address(msg.sender)] + (0 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 0 / tokenPrice
        else:
            if block.timestamp <= stor14:
                if 10^18 * 5 * msg.value / 100 / tokenPrice > 0:
                    emit Transfer((10^18 * 5 * msg.value / 100 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 10^18 * 5 * msg.value / 100 / tokenPrice
                    require balanceOf[address(msg.sender)] + (10^18 * 5 * msg.value / 100 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * 5 * msg.value / 100 / tokenPrice
            else:
                if 0 / tokenPrice > 0:
                    emit Transfer((0 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 0 / tokenPrice
                    require balanceOf[address(msg.sender)] + (0 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 0 / tokenPrice
    else:
        if block.timestamp <= stor13:
            if block.timestamp <= stor14:
                if 10^18 * 15 * msg.value / 100 / tokenPrice > 0:
                    emit Transfer((10^18 * 15 * msg.value / 100 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 10^18 * 15 * msg.value / 100 / tokenPrice
                    require balanceOf[address(msg.sender)] + (10^18 * 15 * msg.value / 100 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * 15 * msg.value / 100 / tokenPrice
            else:
                if 0 / tokenPrice > 0:
                    emit Transfer((0 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 0 / tokenPrice
                    require balanceOf[address(msg.sender)] + (0 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 0 / tokenPrice
        else:
            if block.timestamp <= stor14:
                if 10^18 * 5 * msg.value / 100 / tokenPrice > 0:
                    emit Transfer((10^18 * 5 * msg.value / 100 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 10^18 * 5 * msg.value / 100 / tokenPrice
                    require balanceOf[address(msg.sender)] + (10^18 * 5 * msg.value / 100 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * 5 * msg.value / 100 / tokenPrice
            else:
                if 0 / tokenPrice > 0:
                    emit Transfer((0 / tokenPrice), companyWalletAddress, msg.sender);
                    balanceOf[stor4] -= 0 / tokenPrice
                    require balanceOf[address(msg.sender)] + (0 / tokenPrice) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 0 / tokenPrice
    call companyWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
