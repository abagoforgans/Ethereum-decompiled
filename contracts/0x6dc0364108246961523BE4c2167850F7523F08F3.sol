contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    stor5 = code.data[3964 len 32]
    stor6 = code.data[3996 len 32]
    stor7 = code.data[4028 len 32]
    return code.data[121 len 3843]
}



// =====================  Runtime code  =====================


const name = 'Arenaplay.io'

const decimals = 18

const symbol = 'APY'


address owner;
address newOwner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 STARTDATE;
uint256 ENDDATE;
uint256 CAP;
uint256 totalEthers;

function totalEthers() {
    return totalEthers
}

function totalSupply() {
    return totalSupply
}

function ENDDATE() {
    return ENDDATE
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function STARTDATE() {
    return STARTDATE
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

function CAP() {
    return CAP
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

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function buyPriceAt(uint256 arg1) {
    if arg1 < STARTDATE:
        return 0
    if arg1 < STARTDATE + (216 * 24 * 3600):
        return 2700
    if arg1 < STARTDATE + (432 * 24 * 3600):
        return 2400
    if arg1 < STARTDATE + (648 * 24 * 3600):
        return 2050
    if arg1 > ENDDATE:
        return 0
    return 1500
}

function buyPrice() {
    if block.timestamp < STARTDATE:
        return 0
    if block.timestamp < STARTDATE + (216 * 24 * 3600):
        return 2700
    if block.timestamp < STARTDATE + (432 * 24 * 3600):
        return 2400
    if block.timestamp < STARTDATE + (648 * 24 * 3600):
        return 2050
    if block.timestamp > ENDDATE:
        return 0
    return 1500
}

function addPrecommitment(address arg1, uint256 arg2) {
    require owner == msg.sender
    require block.timestamp < STARTDATE
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
    if block.timestamp <= ENDDATE:
        require totalEthers == CAP
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
    if block.timestamp <= ENDDATE:
        require totalEthers == CAP
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
    require block.timestamp >= STARTDATE
    require block.timestamp <= ENDDATE
    require msg.value > 0
    require msg.value + totalEthers >= totalEthers
    require msg.value + totalEthers >= msg.value
    totalEthers += msg.value
    require msg.value + totalEthers <= CAP
    require block.timestamp >= STARTDATE
    if block.timestamp < STARTDATE + (216 * 24 * 3600):
        require 2700 * msg.value > 0
        require (2700 * msg.value) + totalSupply >= totalSupply
        require (2700 * msg.value) + totalSupply >= 2700 * msg.value
        totalSupply += 2700 * msg.value
        require 5400 * msg.value >= 2700 * msg.value
        require (5400 * msg.value) + totalSupply >= 2700 * msg.value
        totalSupply += 5400 * msg.value
        require (2700 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require (2700 * msg.value) + balanceOf[address(arg1)] >= 2700 * msg.value
        balanceOf[address(arg1)] += 2700 * msg.value
        emit TokensBought(msg.value, totalEthers, 2700 * msg.value, 2700 * msg.value, totalSupply, 2700, arg1);
        emit Transfer((2700 * msg.value), 0, arg1);
    else:
        if block.timestamp < STARTDATE + (432 * 24 * 3600):
            require 2400 * msg.value > 0
            require (2400 * msg.value) + totalSupply >= totalSupply
            require (2400 * msg.value) + totalSupply >= 2400 * msg.value
            totalSupply += 2400 * msg.value
            require 4800 * msg.value >= 2400 * msg.value
            require (4800 * msg.value) + totalSupply >= 2400 * msg.value
            totalSupply += 4800 * msg.value
            require (2400 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            require (2400 * msg.value) + balanceOf[address(arg1)] >= 2400 * msg.value
            balanceOf[address(arg1)] += 2400 * msg.value
            emit TokensBought(msg.value, totalEthers, 2400 * msg.value, 2400 * msg.value, totalSupply, 2400, arg1);
            emit Transfer((2400 * msg.value), 0, arg1);
        else:
            if block.timestamp < STARTDATE + (648 * 24 * 3600):
                require 2050 * msg.value > 0
                require (2050 * msg.value) + totalSupply >= totalSupply
                require (2050 * msg.value) + totalSupply >= 2050 * msg.value
                totalSupply += 2050 * msg.value
                require 4100 * msg.value >= 2050 * msg.value
                require (4100 * msg.value) + totalSupply >= 2050 * msg.value
                totalSupply += 4100 * msg.value
                require (2050 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require (2050 * msg.value) + balanceOf[address(arg1)] >= 2050 * msg.value
                balanceOf[address(arg1)] += 2050 * msg.value
                emit TokensBought(msg.value, totalEthers, 2050 * msg.value, 2050 * msg.value, totalSupply, 2050, arg1);
                emit Transfer((2050 * msg.value), 0, arg1);
            else:
                require block.timestamp <= ENDDATE
                require 1500 * msg.value > 0
                require (1500 * msg.value) + totalSupply >= totalSupply
                require (1500 * msg.value) + totalSupply >= 1500 * msg.value
                totalSupply += 1500 * msg.value
                require 3000 * msg.value >= 1500 * msg.value
                require (3000 * msg.value) + totalSupply >= 1500 * msg.value
                totalSupply += 3000 * msg.value
                require (1500 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require (1500 * msg.value) + balanceOf[address(arg1)] >= 1500 * msg.value
                balanceOf[address(arg1)] += 1500 * msg.value
                emit TokensBought(msg.value, totalEthers, 1500 * msg.value, 1500 * msg.value, totalSupply, 1500, arg1);
                emit Transfer((1500 * msg.value), 0, arg1);
}

function _fallback() payable {
    require block.timestamp >= STARTDATE
    require block.timestamp <= ENDDATE
    require msg.value > 0
    require msg.value + totalEthers >= totalEthers
    require msg.value + totalEthers >= msg.value
    totalEthers += msg.value
    require msg.value + totalEthers <= CAP
    require block.timestamp >= STARTDATE
    if block.timestamp < STARTDATE + (216 * 24 * 3600):
        require 2700 * msg.value > 0
        require (2700 * msg.value) + totalSupply >= totalSupply
        require (2700 * msg.value) + totalSupply >= 2700 * msg.value
        totalSupply += 2700 * msg.value
        require 5400 * msg.value >= 2700 * msg.value
        require (5400 * msg.value) + totalSupply >= 2700 * msg.value
        totalSupply += 5400 * msg.value
        require (2700 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require (2700 * msg.value) + balanceOf[address(msg.sender)] >= 2700 * msg.value
        balanceOf[address(msg.sender)] += 2700 * msg.value
        emit TokensBought(msg.value, totalEthers, 2700 * msg.value, 2700 * msg.value, totalSupply, 2700, msg.sender);
        emit Transfer((2700 * msg.value), 0, msg.sender);
    else:
        if block.timestamp < STARTDATE + (432 * 24 * 3600):
            require 2400 * msg.value > 0
            require (2400 * msg.value) + totalSupply >= totalSupply
            require (2400 * msg.value) + totalSupply >= 2400 * msg.value
            totalSupply += 2400 * msg.value
            require 4800 * msg.value >= 2400 * msg.value
            require (4800 * msg.value) + totalSupply >= 2400 * msg.value
            totalSupply += 4800 * msg.value
            require (2400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require (2400 * msg.value) + balanceOf[address(msg.sender)] >= 2400 * msg.value
            balanceOf[address(msg.sender)] += 2400 * msg.value
            emit TokensBought(msg.value, totalEthers, 2400 * msg.value, 2400 * msg.value, totalSupply, 2400, msg.sender);
            emit Transfer((2400 * msg.value), 0, msg.sender);
        else:
            if block.timestamp < STARTDATE + (648 * 24 * 3600):
                require 2050 * msg.value > 0
                require (2050 * msg.value) + totalSupply >= totalSupply
                require (2050 * msg.value) + totalSupply >= 2050 * msg.value
                totalSupply += 2050 * msg.value
                require 4100 * msg.value >= 2050 * msg.value
                require (4100 * msg.value) + totalSupply >= 2050 * msg.value
                totalSupply += 4100 * msg.value
                require (2050 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require (2050 * msg.value) + balanceOf[address(msg.sender)] >= 2050 * msg.value
                balanceOf[address(msg.sender)] += 2050 * msg.value
                emit TokensBought(msg.value, totalEthers, 2050 * msg.value, 2050 * msg.value, totalSupply, 2050, msg.sender);
                emit Transfer((2050 * msg.value), 0, msg.sender);
            else:
                require block.timestamp <= ENDDATE
                require 1500 * msg.value > 0
                require (1500 * msg.value) + totalSupply >= totalSupply
                require (1500 * msg.value) + totalSupply >= 1500 * msg.value
                totalSupply += 1500 * msg.value
                require 3000 * msg.value >= 1500 * msg.value
                require (3000 * msg.value) + totalSupply >= 1500 * msg.value
                totalSupply += 3000 * msg.value
                require (1500 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require (1500 * msg.value) + balanceOf[address(msg.sender)] >= 1500 * msg.value
                balanceOf[address(msg.sender)] += 1500 * msg.value
                emit TokensBought(msg.value, totalEthers, 1500 * msg.value, 1500 * msg.value, totalSupply, 1500, msg.sender);
                emit Transfer((1500 * msg.value), 0, msg.sender);
}



}
