contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() payable {
    stor2 = 0
    stor0 = msg.sender
    return code.data[92 len 7282]
}



// =====================  Runtime code  =====================


const name = 'Dowcoin'

const decimals = 18

const symbol = 'DOW'


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
    require msg.sender == owner
    newOwner = arg1
}

function sub_781ca0dc(?) {
    STARTDATE = arg1
    ENDDATE = arg2
    CAP = arg3
    multisigAddress = arg4
}

function acceptOwnership() {
    if msg.sender == newOwner:
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function addPrecommitment(address arg1, uint256 arg2) {
    require msg.sender == owner
    require block.timestamp < STARTDATE
    require arg2 > 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 >= arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp >= STARTDATE:
        require totalEthers == CAP
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function buyPriceAt(uint256 arg1) {
    if arg1 < STARTDATE:
        return 0
    if arg1 < STARTDATE + (720 * 24 * 3600):
        return 15000
    if arg1 < STARTDATE + (960 * 24 * 3600):
        return 7500
    if arg1 < STARTDATE + (1200 * 24 * 3600):
        return 5000
    if arg1 < STARTDATE + (1440 * 24 * 3600):
        return 3750
    if arg1 < STARTDATE + (1632 * 24 * 3600):
        return 3000
    if arg1 < STARTDATE + (1824 * 24 * 3600):
        return 2000
    if arg1 < STARTDATE + (1992 * 24 * 3600):
        return 1500
    if arg1 >= STARTDATE + (2160 * 24 * 3600):
        if arg1 > ENDDATE:
            return 0
    return 1200
}

function buyPrice() {
    if block.timestamp < STARTDATE:
        return 0
    if block.timestamp < STARTDATE + (720 * 24 * 3600):
        return 15000
    if block.timestamp < STARTDATE + (960 * 24 * 3600):
        return 7500
    if block.timestamp < STARTDATE + (1200 * 24 * 3600):
        return 5000
    if block.timestamp < STARTDATE + (1440 * 24 * 3600):
        return 3750
    if block.timestamp < STARTDATE + (1632 * 24 * 3600):
        return 3000
    if block.timestamp < STARTDATE + (1824 * 24 * 3600):
        return 2000
    if block.timestamp < STARTDATE + (1992 * 24 * 3600):
        return 1500
    if block.timestamp >= STARTDATE + (2160 * 24 * 3600):
        if block.timestamp > ENDDATE:
            return 0
    return 1200
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp >= STARTDATE:
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
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function proxyPayment(address arg1) payable {
    require block.timestamp >= STARTDATE
    require block.timestamp <= ENDDATE
    require msg.value > 0
    require totalEthers + msg.value >= totalEthers
    require totalEthers + msg.value >= msg.value
    totalEthers += msg.value
    require totalEthers <= CAP
    require block.timestamp >= STARTDATE
    if block.timestamp < STARTDATE + (720 * 24 * 3600):
        require 15000 * msg.value > 0
        if totalSupply + (15000 * msg.value) >= totalSupply:
            if totalSupply + (15000 * msg.value) >= 15000 * msg.value:
                totalSupply += 15000 * msg.value
                if totalSupply + (45000 * msg.value / 7) >= totalSupply:
                    if totalSupply + (45000 * msg.value / 7) >= 45000 * msg.value / 7:
                        totalSupply += 45000 * msg.value / 7
                        if balanceOf[address(arg1)] + (15000 * msg.value) >= balanceOf[address(arg1)]:
                            if balanceOf[address(arg1)] + (15000 * msg.value) >= 15000 * msg.value:
                                balanceOf[address(arg1)] += 15000 * msg.value
                                if balanceOf[stor8] + (45000 * msg.value / 7) >= balanceOf[stor8]:
                                    if balanceOf[stor8] + (45000 * msg.value / 7) >= 45000 * msg.value / 7:
                                        balanceOf[stor8] += 45000 * msg.value / 7
                                        emit TokensBought(msg.value, totalEthers, 15000 * msg.value, 45000 * msg.value / 7, totalSupply, 15000, arg1);
                                        emit Transfer((15000 * msg.value), 0, arg1);
                                        emit Transfer((45000 * msg.value / 7), 0, multisigAddress);
                                        call multisigAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
    else:
        if block.timestamp < STARTDATE + (960 * 24 * 3600):
            require 7500 * msg.value > 0
            if totalSupply + (7500 * msg.value) >= totalSupply:
                if totalSupply + (7500 * msg.value) >= 7500 * msg.value:
                    totalSupply += 7500 * msg.value
                    if totalSupply + (22500 * msg.value / 7) >= totalSupply:
                        if totalSupply + (22500 * msg.value / 7) >= 22500 * msg.value / 7:
                            totalSupply += 22500 * msg.value / 7
                            if balanceOf[address(arg1)] + (7500 * msg.value) >= balanceOf[address(arg1)]:
                                if balanceOf[address(arg1)] + (7500 * msg.value) >= 7500 * msg.value:
                                    balanceOf[address(arg1)] += 7500 * msg.value
                                    if balanceOf[stor8] + (22500 * msg.value / 7) >= balanceOf[stor8]:
                                        if balanceOf[stor8] + (22500 * msg.value / 7) >= 22500 * msg.value / 7:
                                            balanceOf[stor8] += 22500 * msg.value / 7
                                            emit TokensBought(msg.value, totalEthers, 7500 * msg.value, 22500 * msg.value / 7, totalSupply, 7500, arg1);
                                            emit Transfer((7500 * msg.value), 0, arg1);
                                            emit Transfer((22500 * msg.value / 7), 0, multisigAddress);
                                            call multisigAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
        else:
            if block.timestamp < STARTDATE + (1200 * 24 * 3600):
                require 5000 * msg.value > 0
                if totalSupply + (5000 * msg.value) >= totalSupply:
                    if totalSupply + (5000 * msg.value) >= 5000 * msg.value:
                        totalSupply += 5000 * msg.value
                        if totalSupply + (15000 * msg.value / 7) >= totalSupply:
                            if totalSupply + (15000 * msg.value / 7) >= 15000 * msg.value / 7:
                                totalSupply += 15000 * msg.value / 7
                                if balanceOf[address(arg1)] + (5000 * msg.value) >= balanceOf[address(arg1)]:
                                    if balanceOf[address(arg1)] + (5000 * msg.value) >= 5000 * msg.value:
                                        balanceOf[address(arg1)] += 5000 * msg.value
                                        if balanceOf[stor8] + (15000 * msg.value / 7) >= balanceOf[stor8]:
                                            if balanceOf[stor8] + (15000 * msg.value / 7) >= 15000 * msg.value / 7:
                                                balanceOf[stor8] += 15000 * msg.value / 7
                                                emit TokensBought(msg.value, totalEthers, 5000 * msg.value, 15000 * msg.value / 7, totalSupply, 5000, arg1);
                                                emit Transfer((5000 * msg.value), 0, arg1);
                                                emit Transfer((15000 * msg.value / 7), 0, multisigAddress);
                                                call multisigAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
            else:
                if block.timestamp < STARTDATE + (1440 * 24 * 3600):
                    require 3750 * msg.value > 0
                    if totalSupply + (3750 * msg.value) >= totalSupply:
                        if totalSupply + (3750 * msg.value) >= 3750 * msg.value:
                            totalSupply += 3750 * msg.value
                            if totalSupply + (11250 * msg.value / 7) >= totalSupply:
                                if totalSupply + (11250 * msg.value / 7) >= 11250 * msg.value / 7:
                                    totalSupply += 11250 * msg.value / 7
                                    if balanceOf[address(arg1)] + (3750 * msg.value) >= balanceOf[address(arg1)]:
                                        if balanceOf[address(arg1)] + (3750 * msg.value) >= 3750 * msg.value:
                                            balanceOf[address(arg1)] += 3750 * msg.value
                                            if balanceOf[stor8] + (11250 * msg.value / 7) >= balanceOf[stor8]:
                                                if balanceOf[stor8] + (11250 * msg.value / 7) >= 11250 * msg.value / 7:
                                                    balanceOf[stor8] += 11250 * msg.value / 7
                                                    emit TokensBought(msg.value, totalEthers, 3750 * msg.value, 11250 * msg.value / 7, totalSupply, 3750, arg1);
                                                    emit Transfer((3750 * msg.value), 0, arg1);
                                                    emit Transfer((11250 * msg.value / 7), 0, multisigAddress);
                                                    call multisigAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                else:
                    if block.timestamp < STARTDATE + (1632 * 24 * 3600):
                        require 3000 * msg.value > 0
                        if totalSupply + (3000 * msg.value) >= totalSupply:
                            if totalSupply + (3000 * msg.value) >= 3000 * msg.value:
                                totalSupply += 3000 * msg.value
                                if totalSupply + (9000 * msg.value / 7) >= totalSupply:
                                    if totalSupply + (9000 * msg.value / 7) >= 9000 * msg.value / 7:
                                        totalSupply += 9000 * msg.value / 7
                                        if balanceOf[address(arg1)] + (3000 * msg.value) >= balanceOf[address(arg1)]:
                                            if balanceOf[address(arg1)] + (3000 * msg.value) >= 3000 * msg.value:
                                                balanceOf[address(arg1)] += 3000 * msg.value
                                                if balanceOf[stor8] + (9000 * msg.value / 7) >= balanceOf[stor8]:
                                                    if balanceOf[stor8] + (9000 * msg.value / 7) >= 9000 * msg.value / 7:
                                                        balanceOf[stor8] += 9000 * msg.value / 7
                                                        emit TokensBought(msg.value, totalEthers, 3000 * msg.value, 9000 * msg.value / 7, totalSupply, 3000, arg1);
                                                        emit Transfer((3000 * msg.value), 0, arg1);
                                                        emit Transfer((9000 * msg.value / 7), 0, multisigAddress);
                                                        call multisigAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                    else:
                        if block.timestamp < STARTDATE + (1824 * 24 * 3600):
                            require 2000 * msg.value > 0
                            if totalSupply + (2000 * msg.value) >= totalSupply:
                                if totalSupply + (2000 * msg.value) >= 2000 * msg.value:
                                    totalSupply += 2000 * msg.value
                                    if totalSupply + (6000 * msg.value / 7) >= totalSupply:
                                        if totalSupply + (6000 * msg.value / 7) >= 6000 * msg.value / 7:
                                            totalSupply += 6000 * msg.value / 7
                                            if balanceOf[address(arg1)] + (2000 * msg.value) >= balanceOf[address(arg1)]:
                                                if balanceOf[address(arg1)] + (2000 * msg.value) >= 2000 * msg.value:
                                                    balanceOf[address(arg1)] += 2000 * msg.value
                                                    if balanceOf[stor8] + (6000 * msg.value / 7) >= balanceOf[stor8]:
                                                        if balanceOf[stor8] + (6000 * msg.value / 7) >= 6000 * msg.value / 7:
                                                            balanceOf[stor8] += 6000 * msg.value / 7
                                                            emit TokensBought(msg.value, totalEthers, 2000 * msg.value, 6000 * msg.value / 7, totalSupply, 2000, arg1);
                                                            emit Transfer((2000 * msg.value), 0, arg1);
                                                            emit Transfer((6000 * msg.value / 7), 0, multisigAddress);
                                                            call multisigAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                        else:
                            if block.timestamp < STARTDATE + (1992 * 24 * 3600):
                                require 1500 * msg.value > 0
                                if totalSupply + (1500 * msg.value) >= totalSupply:
                                    if totalSupply + (1500 * msg.value) >= 1500 * msg.value:
                                        totalSupply += 1500 * msg.value
                                        if totalSupply + (4500 * msg.value / 7) >= totalSupply:
                                            if totalSupply + (4500 * msg.value / 7) >= 4500 * msg.value / 7:
                                                totalSupply += 4500 * msg.value / 7
                                                if balanceOf[address(arg1)] + (1500 * msg.value) >= balanceOf[address(arg1)]:
                                                    if balanceOf[address(arg1)] + (1500 * msg.value) >= 1500 * msg.value:
                                                        balanceOf[address(arg1)] += 1500 * msg.value
                                                        if balanceOf[stor8] + (4500 * msg.value / 7) >= balanceOf[stor8]:
                                                            if balanceOf[stor8] + (4500 * msg.value / 7) >= 4500 * msg.value / 7:
                                                                balanceOf[stor8] += 4500 * msg.value / 7
                                                                emit TokensBought(msg.value, totalEthers, 1500 * msg.value, 4500 * msg.value / 7, totalSupply, 1500, arg1);
                                                                emit Transfer((1500 * msg.value), 0, arg1);
                                                                emit Transfer((4500 * msg.value / 7), 0, multisigAddress);
                                                                call multisigAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if ext_call.success:
                            else:
                                if block.timestamp >= STARTDATE + (2160 * 24 * 3600):
                                    require block.timestamp <= ENDDATE
                                require 1200 * msg.value > 0
                                if totalSupply + (1200 * msg.value) >= totalSupply:
                                    if totalSupply + (1200 * msg.value) >= 1200 * msg.value:
                                        totalSupply += 1200 * msg.value
                                        if totalSupply + (3600 * msg.value / 7) >= totalSupply:
                                            if totalSupply + (3600 * msg.value / 7) >= 3600 * msg.value / 7:
                                                totalSupply += 3600 * msg.value / 7
                                                if balanceOf[address(arg1)] + (1200 * msg.value) >= balanceOf[address(arg1)]:
                                                    if balanceOf[address(arg1)] + (1200 * msg.value) >= 1200 * msg.value:
                                                        balanceOf[address(arg1)] += 1200 * msg.value
                                                        if balanceOf[stor8] + (3600 * msg.value / 7) >= balanceOf[stor8]:
                                                            if balanceOf[stor8] + (3600 * msg.value / 7) >= 3600 * msg.value / 7:
                                                                balanceOf[stor8] += 3600 * msg.value / 7
                                                                emit TokensBought(msg.value, totalEthers, 1200 * msg.value, 3600 * msg.value / 7, totalSupply, 1200, arg1);
                                                                emit Transfer((1200 * msg.value), 0, arg1);
                                                                emit Transfer((3600 * msg.value / 7), 0, multisigAddress);
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
    require totalEthers + msg.value >= totalEthers
    require totalEthers + msg.value >= msg.value
    totalEthers += msg.value
    require totalEthers <= CAP
    require block.timestamp >= STARTDATE
    if block.timestamp < STARTDATE + (720 * 24 * 3600):
        require 15000 * msg.value > 0
        if totalSupply + (15000 * msg.value) >= totalSupply:
            if totalSupply + (15000 * msg.value) >= 15000 * msg.value:
                totalSupply += 15000 * msg.value
                if totalSupply + (45000 * msg.value / 7) >= totalSupply:
                    if totalSupply + (45000 * msg.value / 7) >= 45000 * msg.value / 7:
                        totalSupply += 45000 * msg.value / 7
                        if balanceOf[address(msg.sender)] + (15000 * msg.value) >= balanceOf[address(msg.sender)]:
                            if balanceOf[address(msg.sender)] + (15000 * msg.value) >= 15000 * msg.value:
                                balanceOf[address(msg.sender)] += 15000 * msg.value
                                if balanceOf[stor8] + (45000 * msg.value / 7) >= balanceOf[stor8]:
                                    if balanceOf[stor8] + (45000 * msg.value / 7) >= 45000 * msg.value / 7:
                                        balanceOf[stor8] += 45000 * msg.value / 7
                                        emit TokensBought(msg.value, totalEthers, 15000 * msg.value, 45000 * msg.value / 7, totalSupply, 15000, msg.sender);
                                        emit Transfer((15000 * msg.value), 0, msg.sender);
                                        emit Transfer((45000 * msg.value / 7), 0, multisigAddress);
                                        call multisigAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
    else:
        if block.timestamp < STARTDATE + (960 * 24 * 3600):
            require 7500 * msg.value > 0
            if totalSupply + (7500 * msg.value) >= totalSupply:
                if totalSupply + (7500 * msg.value) >= 7500 * msg.value:
                    totalSupply += 7500 * msg.value
                    if totalSupply + (22500 * msg.value / 7) >= totalSupply:
                        if totalSupply + (22500 * msg.value / 7) >= 22500 * msg.value / 7:
                            totalSupply += 22500 * msg.value / 7
                            if balanceOf[address(msg.sender)] + (7500 * msg.value) >= balanceOf[address(msg.sender)]:
                                if balanceOf[address(msg.sender)] + (7500 * msg.value) >= 7500 * msg.value:
                                    balanceOf[address(msg.sender)] += 7500 * msg.value
                                    if balanceOf[stor8] + (22500 * msg.value / 7) >= balanceOf[stor8]:
                                        if balanceOf[stor8] + (22500 * msg.value / 7) >= 22500 * msg.value / 7:
                                            balanceOf[stor8] += 22500 * msg.value / 7
                                            emit TokensBought(msg.value, totalEthers, 7500 * msg.value, 22500 * msg.value / 7, totalSupply, 7500, msg.sender);
                                            emit Transfer((7500 * msg.value), 0, msg.sender);
                                            emit Transfer((22500 * msg.value / 7), 0, multisigAddress);
                                            call multisigAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
        else:
            if block.timestamp < STARTDATE + (1200 * 24 * 3600):
                require 5000 * msg.value > 0
                if totalSupply + (5000 * msg.value) >= totalSupply:
                    if totalSupply + (5000 * msg.value) >= 5000 * msg.value:
                        totalSupply += 5000 * msg.value
                        if totalSupply + (15000 * msg.value / 7) >= totalSupply:
                            if totalSupply + (15000 * msg.value / 7) >= 15000 * msg.value / 7:
                                totalSupply += 15000 * msg.value / 7
                                if balanceOf[address(msg.sender)] + (5000 * msg.value) >= balanceOf[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)] + (5000 * msg.value) >= 5000 * msg.value:
                                        balanceOf[address(msg.sender)] += 5000 * msg.value
                                        if balanceOf[stor8] + (15000 * msg.value / 7) >= balanceOf[stor8]:
                                            if balanceOf[stor8] + (15000 * msg.value / 7) >= 15000 * msg.value / 7:
                                                balanceOf[stor8] += 15000 * msg.value / 7
                                                emit TokensBought(msg.value, totalEthers, 5000 * msg.value, 15000 * msg.value / 7, totalSupply, 5000, msg.sender);
                                                emit Transfer((5000 * msg.value), 0, msg.sender);
                                                emit Transfer((15000 * msg.value / 7), 0, multisigAddress);
                                                call multisigAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
            else:
                if block.timestamp < STARTDATE + (1440 * 24 * 3600):
                    require 3750 * msg.value > 0
                    if totalSupply + (3750 * msg.value) >= totalSupply:
                        if totalSupply + (3750 * msg.value) >= 3750 * msg.value:
                            totalSupply += 3750 * msg.value
                            if totalSupply + (11250 * msg.value / 7) >= totalSupply:
                                if totalSupply + (11250 * msg.value / 7) >= 11250 * msg.value / 7:
                                    totalSupply += 11250 * msg.value / 7
                                    if balanceOf[address(msg.sender)] + (3750 * msg.value) >= balanceOf[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)] + (3750 * msg.value) >= 3750 * msg.value:
                                            balanceOf[address(msg.sender)] += 3750 * msg.value
                                            if balanceOf[stor8] + (11250 * msg.value / 7) >= balanceOf[stor8]:
                                                if balanceOf[stor8] + (11250 * msg.value / 7) >= 11250 * msg.value / 7:
                                                    balanceOf[stor8] += 11250 * msg.value / 7
                                                    emit TokensBought(msg.value, totalEthers, 3750 * msg.value, 11250 * msg.value / 7, totalSupply, 3750, msg.sender);
                                                    emit Transfer((3750 * msg.value), 0, msg.sender);
                                                    emit Transfer((11250 * msg.value / 7), 0, multisigAddress);
                                                    call multisigAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                else:
                    if block.timestamp < STARTDATE + (1632 * 24 * 3600):
                        require 3000 * msg.value > 0
                        if totalSupply + (3000 * msg.value) >= totalSupply:
                            if totalSupply + (3000 * msg.value) >= 3000 * msg.value:
                                totalSupply += 3000 * msg.value
                                if totalSupply + (9000 * msg.value / 7) >= totalSupply:
                                    if totalSupply + (9000 * msg.value / 7) >= 9000 * msg.value / 7:
                                        totalSupply += 9000 * msg.value / 7
                                        if balanceOf[address(msg.sender)] + (3000 * msg.value) >= balanceOf[address(msg.sender)]:
                                            if balanceOf[address(msg.sender)] + (3000 * msg.value) >= 3000 * msg.value:
                                                balanceOf[address(msg.sender)] += 3000 * msg.value
                                                if balanceOf[stor8] + (9000 * msg.value / 7) >= balanceOf[stor8]:
                                                    if balanceOf[stor8] + (9000 * msg.value / 7) >= 9000 * msg.value / 7:
                                                        balanceOf[stor8] += 9000 * msg.value / 7
                                                        emit TokensBought(msg.value, totalEthers, 3000 * msg.value, 9000 * msg.value / 7, totalSupply, 3000, msg.sender);
                                                        emit Transfer((3000 * msg.value), 0, msg.sender);
                                                        emit Transfer((9000 * msg.value / 7), 0, multisigAddress);
                                                        call multisigAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                    else:
                        if block.timestamp < STARTDATE + (1824 * 24 * 3600):
                            require 2000 * msg.value > 0
                            if totalSupply + (2000 * msg.value) >= totalSupply:
                                if totalSupply + (2000 * msg.value) >= 2000 * msg.value:
                                    totalSupply += 2000 * msg.value
                                    if totalSupply + (6000 * msg.value / 7) >= totalSupply:
                                        if totalSupply + (6000 * msg.value / 7) >= 6000 * msg.value / 7:
                                            totalSupply += 6000 * msg.value / 7
                                            if balanceOf[address(msg.sender)] + (2000 * msg.value) >= balanceOf[address(msg.sender)]:
                                                if balanceOf[address(msg.sender)] + (2000 * msg.value) >= 2000 * msg.value:
                                                    balanceOf[address(msg.sender)] += 2000 * msg.value
                                                    if balanceOf[stor8] + (6000 * msg.value / 7) >= balanceOf[stor8]:
                                                        if balanceOf[stor8] + (6000 * msg.value / 7) >= 6000 * msg.value / 7:
                                                            balanceOf[stor8] += 6000 * msg.value / 7
                                                            emit TokensBought(msg.value, totalEthers, 2000 * msg.value, 6000 * msg.value / 7, totalSupply, 2000, msg.sender);
                                                            emit Transfer((2000 * msg.value), 0, msg.sender);
                                                            emit Transfer((6000 * msg.value / 7), 0, multisigAddress);
                                                            call multisigAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                        else:
                            if block.timestamp < STARTDATE + (1992 * 24 * 3600):
                                require 1500 * msg.value > 0
                                if totalSupply + (1500 * msg.value) >= totalSupply:
                                    if totalSupply + (1500 * msg.value) >= 1500 * msg.value:
                                        totalSupply += 1500 * msg.value
                                        if totalSupply + (4500 * msg.value / 7) >= totalSupply:
                                            if totalSupply + (4500 * msg.value / 7) >= 4500 * msg.value / 7:
                                                totalSupply += 4500 * msg.value / 7
                                                if balanceOf[address(msg.sender)] + (1500 * msg.value) >= balanceOf[address(msg.sender)]:
                                                    if balanceOf[address(msg.sender)] + (1500 * msg.value) >= 1500 * msg.value:
                                                        balanceOf[address(msg.sender)] += 1500 * msg.value
                                                        if balanceOf[stor8] + (4500 * msg.value / 7) >= balanceOf[stor8]:
                                                            if balanceOf[stor8] + (4500 * msg.value / 7) >= 4500 * msg.value / 7:
                                                                balanceOf[stor8] += 4500 * msg.value / 7
                                                                emit TokensBought(msg.value, totalEthers, 1500 * msg.value, 4500 * msg.value / 7, totalSupply, 1500, msg.sender);
                                                                emit Transfer((1500 * msg.value), 0, msg.sender);
                                                                emit Transfer((4500 * msg.value / 7), 0, multisigAddress);
                                                                call multisigAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if ext_call.success:
                            else:
                                if block.timestamp >= STARTDATE + (2160 * 24 * 3600):
                                    require block.timestamp <= ENDDATE
                                require 1200 * msg.value > 0
                                if totalSupply + (1200 * msg.value) >= totalSupply:
                                    if totalSupply + (1200 * msg.value) >= 1200 * msg.value:
                                        totalSupply += 1200 * msg.value
                                        if totalSupply + (3600 * msg.value / 7) >= totalSupply:
                                            if totalSupply + (3600 * msg.value / 7) >= 3600 * msg.value / 7:
                                                totalSupply += 3600 * msg.value / 7
                                                if balanceOf[address(msg.sender)] + (1200 * msg.value) >= balanceOf[address(msg.sender)]:
                                                    if balanceOf[address(msg.sender)] + (1200 * msg.value) >= 1200 * msg.value:
                                                        balanceOf[address(msg.sender)] += 1200 * msg.value
                                                        if balanceOf[stor8] + (3600 * msg.value / 7) >= balanceOf[stor8]:
                                                            if balanceOf[stor8] + (3600 * msg.value / 7) >= 3600 * msg.value / 7:
                                                                balanceOf[stor8] += 3600 * msg.value / 7
                                                                emit TokensBought(msg.value, totalEthers, 1200 * msg.value, 3600 * msg.value / 7, totalSupply, 1200, msg.sender);
                                                                emit Transfer((1200 * msg.value), 0, msg.sender);
                                                                emit Transfer((3600 * msg.value / 7), 0, multisigAddress);
                                                                call multisigAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if ext_call.success:
    revert
}



}
