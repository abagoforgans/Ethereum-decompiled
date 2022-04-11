contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
address stor5;

function _fallback() payable {
    stor2 = 0
    stor5 = 0xe43311768025d0773f62fbf4a6cd083c508d979
    stor0 = msg.sender
    return code.data[92 len 4144]
}



// =====================  Runtime code  =====================


const name = 'Arenaplay.io'

const decimals = 18

const symbol = 'APY'

const ENDDATE = 1504543071

const STARTDATE = 1501173471

const CAP = 44432 * 10^18


address owner;
address newOwner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address multisigAddress;
uint256 totalEthers;

function totalEthers() {
    return totalEthers
}

function totalSupply() {
    return totalSupply
}

function multisig() {
    return multisigAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function ArenplayToken() {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function acceptOwnership() {
    if newOwner == msg.sender:
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function buyPriceAt(uint256 arg1) {
    if arg1 < 1501173471:
        return 0
    if arg1 < 1501951071:
        return 2700
    if arg1 < 1502728671:
        return 2400
    if arg1 < 1503506271:
        return 2050
    if arg1 > 1504543071:
        return 0
    return 1500
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function buyPrice() {
    if block.timestamp < 1501173471:
        return 0
    if block.timestamp < 1501951071:
        return 2700
    if block.timestamp < 1502728671:
        return 2400
    if block.timestamp < 1503506271:
        return 2050
    if block.timestamp > 1504543071:
        return 0
    return 1500
}

function addPrecommitment(address arg1, uint256 arg2) {
    require owner == msg.sender
    require block.timestamp < 1501173471
    require arg2 > 0
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply >= arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp <= 1504543071:
        require totalEthers == 44432 * 10^18
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp <= 1504543071:
        require totalEthers == 44432 * 10^18
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function proxyPayment(address arg1) payable {
    require block.timestamp >= 1501173471
    require block.timestamp <= 1504543071
    require msg.value > 0
    require msg.value + totalEthers >= totalEthers
    require msg.value + totalEthers >= msg.value
    totalEthers += msg.value
    require msg.value + totalEthers <= 44432 * 10^18
    require block.timestamp >= 1501173471
    if block.timestamp < 1501951071:
        require 2700 * msg.value > 0
        require (2700 * msg.value) + totalSupply >= totalSupply
        require (2700 * msg.value) + totalSupply >= 2700 * msg.value
        totalSupply += 2700 * msg.value
        require 2 * 2700 * msg.value / 7 >= 0
        require (2 * 2700 * msg.value / 7) + (2700 * msg.value) + totalSupply >= 2 * 2700 * msg.value / 7
        totalSupply = (2 * 2700 * msg.value / 7) + (2700 * msg.value) + totalSupply
        require (2700 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require (2700 * msg.value) + balanceOf[address(arg1)] >= 2700 * msg.value
        balanceOf[address(arg1)] += 2700 * msg.value
        require (2 * 2700 * msg.value / 7) + balanceOf[stor5] >= balanceOf[stor5]
        require (2 * 2700 * msg.value / 7) + balanceOf[stor5] >= 2 * 2700 * msg.value / 7
        balanceOf[stor5] += 2 * 2700 * msg.value / 7
        emit TokensBought(msg.value, totalEthers, 2700 * msg.value, 2 * 2700 * msg.value / 7, totalSupply, 2700, arg1);
        emit Transfer((2700 * msg.value), 0, arg1);
        emit Transfer((2 * 2700 * msg.value / 7), 0, multisigAddress);
    else:
        if block.timestamp < 1502728671:
            require 2400 * msg.value > 0
            require (2400 * msg.value) + totalSupply >= totalSupply
            require (2400 * msg.value) + totalSupply >= 2400 * msg.value
            totalSupply += 2400 * msg.value
            require 2 * 2400 * msg.value / 7 >= 0
            require (2 * 2400 * msg.value / 7) + (2400 * msg.value) + totalSupply >= 2 * 2400 * msg.value / 7
            totalSupply = (2 * 2400 * msg.value / 7) + (2400 * msg.value) + totalSupply
            require (2400 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            require (2400 * msg.value) + balanceOf[address(arg1)] >= 2400 * msg.value
            balanceOf[address(arg1)] += 2400 * msg.value
            require (2 * 2400 * msg.value / 7) + balanceOf[stor5] >= balanceOf[stor5]
            require (2 * 2400 * msg.value / 7) + balanceOf[stor5] >= 2 * 2400 * msg.value / 7
            balanceOf[stor5] += 2 * 2400 * msg.value / 7
            emit TokensBought(msg.value, totalEthers, 2400 * msg.value, 2 * 2400 * msg.value / 7, totalSupply, 2400, arg1);
            emit Transfer((2400 * msg.value), 0, arg1);
            emit Transfer((2 * 2400 * msg.value / 7), 0, multisigAddress);
        else:
            if block.timestamp < 1503506271:
                require 2050 * msg.value > 0
                require (2050 * msg.value) + totalSupply >= totalSupply
                require (2050 * msg.value) + totalSupply >= 2050 * msg.value
                totalSupply += 2050 * msg.value
                require 2 * 2050 * msg.value / 7 >= 0
                require (2 * 2050 * msg.value / 7) + (2050 * msg.value) + totalSupply >= 2 * 2050 * msg.value / 7
                totalSupply = (2 * 2050 * msg.value / 7) + (2050 * msg.value) + totalSupply
                require (2050 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require (2050 * msg.value) + balanceOf[address(arg1)] >= 2050 * msg.value
                balanceOf[address(arg1)] += 2050 * msg.value
                require (2 * 2050 * msg.value / 7) + balanceOf[stor5] >= balanceOf[stor5]
                require (2 * 2050 * msg.value / 7) + balanceOf[stor5] >= 2 * 2050 * msg.value / 7
                balanceOf[stor5] += 2 * 2050 * msg.value / 7
                emit TokensBought(msg.value, totalEthers, 2050 * msg.value, 2 * 2050 * msg.value / 7, totalSupply, 2050, arg1);
                emit Transfer((2050 * msg.value), 0, arg1);
                emit Transfer((2 * 2050 * msg.value / 7), 0, multisigAddress);
            else:
                require block.timestamp <= 1504543071
                require 1500 * msg.value > 0
                require (1500 * msg.value) + totalSupply >= totalSupply
                require (1500 * msg.value) + totalSupply >= 1500 * msg.value
                totalSupply += 1500 * msg.value
                require 2 * 1500 * msg.value / 7 >= 0
                require (2 * 1500 * msg.value / 7) + (1500 * msg.value) + totalSupply >= 2 * 1500 * msg.value / 7
                totalSupply = (2 * 1500 * msg.value / 7) + (1500 * msg.value) + totalSupply
                require (1500 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require (1500 * msg.value) + balanceOf[address(arg1)] >= 1500 * msg.value
                balanceOf[address(arg1)] += 1500 * msg.value
                require (2 * 1500 * msg.value / 7) + balanceOf[stor5] >= balanceOf[stor5]
                require (2 * 1500 * msg.value / 7) + balanceOf[stor5] >= 2 * 1500 * msg.value / 7
                balanceOf[stor5] += 2 * 1500 * msg.value / 7
                emit TokensBought(msg.value, totalEthers, 1500 * msg.value, 2 * 1500 * msg.value / 7, totalSupply, 1500, arg1);
                emit Transfer((1500 * msg.value), 0, arg1);
                emit Transfer((2 * 1500 * msg.value / 7), 0, multisigAddress);
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp >= 1501173471
    require block.timestamp <= 1504543071
    require msg.value > 0
    require msg.value + totalEthers >= totalEthers
    require msg.value + totalEthers >= msg.value
    totalEthers += msg.value
    require msg.value + totalEthers <= 44432 * 10^18
    require block.timestamp >= 1501173471
    if block.timestamp < 1501951071:
        require 2700 * msg.value > 0
        require (2700 * msg.value) + totalSupply >= totalSupply
        require (2700 * msg.value) + totalSupply >= 2700 * msg.value
        totalSupply += 2700 * msg.value
        require 2 * 2700 * msg.value / 7 >= 0
        require (2 * 2700 * msg.value / 7) + (2700 * msg.value) + totalSupply >= 2 * 2700 * msg.value / 7
        totalSupply = (2 * 2700 * msg.value / 7) + (2700 * msg.value) + totalSupply
        require (2700 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require (2700 * msg.value) + balanceOf[address(msg.sender)] >= 2700 * msg.value
        balanceOf[address(msg.sender)] += 2700 * msg.value
        require (2 * 2700 * msg.value / 7) + balanceOf[stor5] >= balanceOf[stor5]
        require (2 * 2700 * msg.value / 7) + balanceOf[stor5] >= 2 * 2700 * msg.value / 7
        balanceOf[stor5] += 2 * 2700 * msg.value / 7
        emit TokensBought(msg.value, totalEthers, 2700 * msg.value, 2 * 2700 * msg.value / 7, totalSupply, 2700, msg.sender);
        emit Transfer((2700 * msg.value), 0, msg.sender);
        emit Transfer((2 * 2700 * msg.value / 7), 0, multisigAddress);
    else:
        if block.timestamp < 1502728671:
            require 2400 * msg.value > 0
            require (2400 * msg.value) + totalSupply >= totalSupply
            require (2400 * msg.value) + totalSupply >= 2400 * msg.value
            totalSupply += 2400 * msg.value
            require 2 * 2400 * msg.value / 7 >= 0
            require (2 * 2400 * msg.value / 7) + (2400 * msg.value) + totalSupply >= 2 * 2400 * msg.value / 7
            totalSupply = (2 * 2400 * msg.value / 7) + (2400 * msg.value) + totalSupply
            require (2400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require (2400 * msg.value) + balanceOf[address(msg.sender)] >= 2400 * msg.value
            balanceOf[address(msg.sender)] += 2400 * msg.value
            require (2 * 2400 * msg.value / 7) + balanceOf[stor5] >= balanceOf[stor5]
            require (2 * 2400 * msg.value / 7) + balanceOf[stor5] >= 2 * 2400 * msg.value / 7
            balanceOf[stor5] += 2 * 2400 * msg.value / 7
            emit TokensBought(msg.value, totalEthers, 2400 * msg.value, 2 * 2400 * msg.value / 7, totalSupply, 2400, msg.sender);
            emit Transfer((2400 * msg.value), 0, msg.sender);
            emit Transfer((2 * 2400 * msg.value / 7), 0, multisigAddress);
        else:
            if block.timestamp < 1503506271:
                require 2050 * msg.value > 0
                require (2050 * msg.value) + totalSupply >= totalSupply
                require (2050 * msg.value) + totalSupply >= 2050 * msg.value
                totalSupply += 2050 * msg.value
                require 2 * 2050 * msg.value / 7 >= 0
                require (2 * 2050 * msg.value / 7) + (2050 * msg.value) + totalSupply >= 2 * 2050 * msg.value / 7
                totalSupply = (2 * 2050 * msg.value / 7) + (2050 * msg.value) + totalSupply
                require (2050 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require (2050 * msg.value) + balanceOf[address(msg.sender)] >= 2050 * msg.value
                balanceOf[address(msg.sender)] += 2050 * msg.value
                require (2 * 2050 * msg.value / 7) + balanceOf[stor5] >= balanceOf[stor5]
                require (2 * 2050 * msg.value / 7) + balanceOf[stor5] >= 2 * 2050 * msg.value / 7
                balanceOf[stor5] += 2 * 2050 * msg.value / 7
                emit TokensBought(msg.value, totalEthers, 2050 * msg.value, 2 * 2050 * msg.value / 7, totalSupply, 2050, msg.sender);
                emit Transfer((2050 * msg.value), 0, msg.sender);
                emit Transfer((2 * 2050 * msg.value / 7), 0, multisigAddress);
            else:
                require block.timestamp <= 1504543071
                require 1500 * msg.value > 0
                require (1500 * msg.value) + totalSupply >= totalSupply
                require (1500 * msg.value) + totalSupply >= 1500 * msg.value
                totalSupply += 1500 * msg.value
                require 2 * 1500 * msg.value / 7 >= 0
                require (2 * 1500 * msg.value / 7) + (1500 * msg.value) + totalSupply >= 2 * 1500 * msg.value / 7
                totalSupply = (2 * 1500 * msg.value / 7) + (1500 * msg.value) + totalSupply
                require (1500 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require (1500 * msg.value) + balanceOf[address(msg.sender)] >= 1500 * msg.value
                balanceOf[address(msg.sender)] += 1500 * msg.value
                require (2 * 1500 * msg.value / 7) + balanceOf[stor5] >= balanceOf[stor5]
                require (2 * 1500 * msg.value / 7) + balanceOf[stor5] >= 2 * 1500 * msg.value / 7
                balanceOf[stor5] += 2 * 1500 * msg.value / 7
                emit TokensBought(msg.value, totalEthers, 1500 * msg.value, 2 * 1500 * msg.value / 7, totalSupply, 1500, msg.sender);
                emit Transfer((1500 * msg.value), 0, msg.sender);
                emit Transfer((2 * 1500 * msg.value / 7), 0, multisigAddress);
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
