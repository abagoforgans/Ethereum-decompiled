contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;

function _fallback() payable {
    stor2 = 100 * 10^6
    require not msg.value
    stor0 = msg.sender
    stor5 = code.data[4137 len 32]
    stor6 = code.data[4169 len 32]
    stor7 = code.data[4201 len 32]
    stor8 = code.data[4245 len 20]
    return code.data[151 len 3986]
}



// =====================  Runtime code  =====================


const name = 'Integrative Wallet'

const decimals = 18

const symbol = 'IWT'


address owner;
address newOwner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 STARTDATE;
uint256 ENDDATE;
uint256 CAP;
address multisigAddress;
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

function multisig() {
    return multisigAddress
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
    if arg1 < STARTDATE + (24 * 3600):
        return 1200
    if arg1 < STARTDATE + (360 * 24 * 3600):
        return 1000
    if arg1 < STARTDATE + (432 * 24 * 3600):
        return 800
    if arg1 >= STARTDATE + (576 * 24 * 3600):
        if arg1 > ENDDATE:
            return 0
    return 600
}

function buyPrice() {
    if block.timestamp < STARTDATE:
        return 0
    if block.timestamp < STARTDATE + (24 * 3600):
        return 1200
    if block.timestamp < STARTDATE + (360 * 24 * 3600):
        return 1000
    if block.timestamp < STARTDATE + (432 * 24 * 3600):
        return 800
    if block.timestamp >= STARTDATE + (576 * 24 * 3600):
        if block.timestamp > ENDDATE:
            return 0
    return 600
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
    if block.timestamp < STARTDATE + (24 * 3600):
        require 1200 * msg.value > 0
        if (1200 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
            if (1200 * msg.value) + balanceOf[address(arg1)] >= 1200 * msg.value:
                balanceOf[address(arg1)] += 1200 * msg.value
                if (66000 * msg.value / 100) + balanceOf[stor8] >= balanceOf[stor8]:
                    if (66000 * msg.value / 100) + balanceOf[stor8] >= 66000 * msg.value / 100:
                        balanceOf[stor8] += 66000 * msg.value / 100
                        emit TokensBought(msg.value, totalEthers, 1200 * msg.value, 66000 * msg.value / 100, totalSupply, 1200, arg1);
                        emit Transfer((1200 * msg.value), 0, arg1);
                        emit Transfer((66000 * msg.value / 100), 0, multisigAddress);
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    else:
        if block.timestamp < STARTDATE + (360 * 24 * 3600):
            require 1000 * msg.value > 0
            if (1000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                if (1000 * msg.value) + balanceOf[address(arg1)] >= 1000 * msg.value:
                    balanceOf[address(arg1)] += 1000 * msg.value
                    if (55000 * msg.value / 100) + balanceOf[stor8] >= balanceOf[stor8]:
                        if (55000 * msg.value / 100) + balanceOf[stor8] >= 55000 * msg.value / 100:
                            balanceOf[stor8] += 55000 * msg.value / 100
                            emit TokensBought(msg.value, totalEthers, 1000 * msg.value, 55000 * msg.value / 100, totalSupply, 1000, arg1);
                            emit Transfer((1000 * msg.value), 0, arg1);
                            emit Transfer((55000 * msg.value / 100), 0, multisigAddress);
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
        else:
            if block.timestamp < STARTDATE + (432 * 24 * 3600):
                require 800 * msg.value > 0
                if (800 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                    if (800 * msg.value) + balanceOf[address(arg1)] >= 800 * msg.value:
                        balanceOf[address(arg1)] += 800 * msg.value
                        if (44000 * msg.value / 100) + balanceOf[stor8] >= balanceOf[stor8]:
                            if (44000 * msg.value / 100) + balanceOf[stor8] >= 44000 * msg.value / 100:
                                balanceOf[stor8] += 44000 * msg.value / 100
                                emit TokensBought(msg.value, totalEthers, 800 * msg.value, 44000 * msg.value / 100, totalSupply, 800, arg1);
                                emit Transfer((800 * msg.value), 0, arg1);
                                emit Transfer((44000 * msg.value / 100), 0, multisigAddress);
                                call multisigAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
            else:
                if block.timestamp >= STARTDATE + (576 * 24 * 3600):
                    require block.timestamp <= ENDDATE
                require 600 * msg.value > 0
                if (600 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                    if (600 * msg.value) + balanceOf[address(arg1)] >= 600 * msg.value:
                        balanceOf[address(arg1)] += 600 * msg.value
                        if (33000 * msg.value / 100) + balanceOf[stor8] >= balanceOf[stor8]:
                            if (33000 * msg.value / 100) + balanceOf[stor8] >= 33000 * msg.value / 100:
                                balanceOf[stor8] += 33000 * msg.value / 100
                                emit TokensBought(msg.value, totalEthers, 600 * msg.value, 33000 * msg.value / 100, totalSupply, 600, arg1);
                                emit Transfer((600 * msg.value), 0, arg1);
                                emit Transfer((33000 * msg.value / 100), 0, multisigAddress);
                                call multisigAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
    revert
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
    if block.timestamp < STARTDATE + (24 * 3600):
        require 1200 * msg.value > 0
        if (1200 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
            if (1200 * msg.value) + balanceOf[address(msg.sender)] >= 1200 * msg.value:
                balanceOf[address(msg.sender)] += 1200 * msg.value
                if (66000 * msg.value / 100) + balanceOf[stor8] >= balanceOf[stor8]:
                    if (66000 * msg.value / 100) + balanceOf[stor8] >= 66000 * msg.value / 100:
                        balanceOf[stor8] += 66000 * msg.value / 100
                        emit TokensBought(msg.value, totalEthers, 1200 * msg.value, 66000 * msg.value / 100, totalSupply, 1200, msg.sender);
                        emit Transfer((1200 * msg.value), 0, msg.sender);
                        emit Transfer((66000 * msg.value / 100), 0, multisigAddress);
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    else:
        if block.timestamp < STARTDATE + (360 * 24 * 3600):
            require 1000 * msg.value > 0
            if (1000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                if (1000 * msg.value) + balanceOf[address(msg.sender)] >= 1000 * msg.value:
                    balanceOf[address(msg.sender)] += 1000 * msg.value
                    if (55000 * msg.value / 100) + balanceOf[stor8] >= balanceOf[stor8]:
                        if (55000 * msg.value / 100) + balanceOf[stor8] >= 55000 * msg.value / 100:
                            balanceOf[stor8] += 55000 * msg.value / 100
                            emit TokensBought(msg.value, totalEthers, 1000 * msg.value, 55000 * msg.value / 100, totalSupply, 1000, msg.sender);
                            emit Transfer((1000 * msg.value), 0, msg.sender);
                            emit Transfer((55000 * msg.value / 100), 0, multisigAddress);
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
        else:
            if block.timestamp < STARTDATE + (432 * 24 * 3600):
                require 800 * msg.value > 0
                if (800 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                    if (800 * msg.value) + balanceOf[address(msg.sender)] >= 800 * msg.value:
                        balanceOf[address(msg.sender)] += 800 * msg.value
                        if (44000 * msg.value / 100) + balanceOf[stor8] >= balanceOf[stor8]:
                            if (44000 * msg.value / 100) + balanceOf[stor8] >= 44000 * msg.value / 100:
                                balanceOf[stor8] += 44000 * msg.value / 100
                                emit TokensBought(msg.value, totalEthers, 800 * msg.value, 44000 * msg.value / 100, totalSupply, 800, msg.sender);
                                emit Transfer((800 * msg.value), 0, msg.sender);
                                emit Transfer((44000 * msg.value / 100), 0, multisigAddress);
                                call multisigAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
            else:
                if block.timestamp >= STARTDATE + (576 * 24 * 3600):
                    require block.timestamp <= ENDDATE
                require 600 * msg.value > 0
                if (600 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                    if (600 * msg.value) + balanceOf[address(msg.sender)] >= 600 * msg.value:
                        balanceOf[address(msg.sender)] += 600 * msg.value
                        if (33000 * msg.value / 100) + balanceOf[stor8] >= balanceOf[stor8]:
                            if (33000 * msg.value / 100) + balanceOf[stor8] >= 33000 * msg.value / 100:
                                balanceOf[stor8] += 33000 * msg.value / 100
                                emit TokensBought(msg.value, totalEthers, 600 * msg.value, 33000 * msg.value / 100, totalSupply, 600, msg.sender);
                                emit Transfer((600 * msg.value), 0, msg.sender);
                                emit Transfer((33000 * msg.value / 100), 0, multisigAddress);
                                call multisigAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
    revert
}



}
