contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
address stor5;

function _fallback() payable {
    stor2 = 0
    stor5 = 0xa22ab8a9d641ce77e06d98b7d7065d324d3d6976
    require not msg.value
    stor0 = msg.sender
    return code.data[187 len 7132]
}



// =====================  Runtime code  =====================


const name = 'Dao.Casino'

const decimals = 18

const symbol = 'BET'

const ENDDATE = (416989 * 3600)

const STARTDATE = (416317 * 3600)

const CAP = 84417 * 10^18


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

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
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

function buyPriceAt(uint256 arg1) {
    if arg1 < 416317 * 3600:
        return 0
    if arg1 < 416365 * 3600:
        return 2000
    if arg1 < 416677 * 3600:
        return 1800
    if arg1 < 416749 * 3600:
        return 1700
    if arg1 < 416821 * 3600:
        return 1600
    if arg1 < 416893 * 3600:
        return 1500
    if arg1 < 416965 * 3600:
        return 1400
    if arg1 > 416989 * 3600:
        return 0
    return 1300
}

function addPrecommitment(address arg1, uint256 arg2) {
    require msg.sender == owner
    require block.timestamp < 416317 * 3600
    require arg2 > 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 >= arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function buyPrice() {
    if block.timestamp < 416317 * 3600:
        return 0
    if block.timestamp < 416365 * 3600:
        return 2000
    if block.timestamp < 416677 * 3600:
        return 1800
    if block.timestamp < 416749 * 3600:
        return 1700
    if block.timestamp < 416821 * 3600:
        return 1600
    if block.timestamp < 416893 * 3600:
        return 1500
    if block.timestamp < 416965 * 3600:
        return 1400
    if block.timestamp > 416989 * 3600:
        return 0
    return 1300
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp <= 416989 * 3600:
        require totalEthers == 84417 * 10^18
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp <= 416989 * 3600:
        require totalEthers == 84417 * 10^18
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
    require block.timestamp >= 416317 * 3600
    require block.timestamp <= 416989 * 3600
    require msg.value > 0
    require totalEthers + msg.value >= totalEthers
    require totalEthers + msg.value >= msg.value
    totalEthers += msg.value
    require totalEthers <= 84417 * 10^18
    require block.timestamp >= 416317 * 3600
    if block.timestamp < 416365 * 3600:
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
                                if balanceOf[stor5] + (6000 * msg.value / 7) >= balanceOf[stor5]:
                                    if balanceOf[stor5] + (6000 * msg.value / 7) >= 6000 * msg.value / 7:
                                        balanceOf[stor5] += 6000 * msg.value / 7
                                        emit TokensBought(msg.value, totalEthers, 2000 * msg.value, 6000 * msg.value / 7, totalSupply, 2000, arg1);
                                        emit Transfer((2000 * msg.value), 0, arg1);
                                        emit Transfer((6000 * msg.value / 7), 0, multisigAddress);
                                        call multisigAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
    else:
        if block.timestamp < 416677 * 3600:
            require 1800 * msg.value > 0
            if totalSupply + (1800 * msg.value) >= totalSupply:
                if totalSupply + (1800 * msg.value) >= 1800 * msg.value:
                    totalSupply += 1800 * msg.value
                    if totalSupply + (5400 * msg.value / 7) >= totalSupply:
                        if totalSupply + (5400 * msg.value / 7) >= 5400 * msg.value / 7:
                            totalSupply += 5400 * msg.value / 7
                            if balanceOf[address(arg1)] + (1800 * msg.value) >= balanceOf[address(arg1)]:
                                if balanceOf[address(arg1)] + (1800 * msg.value) >= 1800 * msg.value:
                                    balanceOf[address(arg1)] += 1800 * msg.value
                                    if balanceOf[stor5] + (5400 * msg.value / 7) >= balanceOf[stor5]:
                                        if balanceOf[stor5] + (5400 * msg.value / 7) >= 5400 * msg.value / 7:
                                            balanceOf[stor5] += 5400 * msg.value / 7
                                            emit TokensBought(msg.value, totalEthers, 1800 * msg.value, 5400 * msg.value / 7, totalSupply, 1800, arg1);
                                            emit Transfer((1800 * msg.value), 0, arg1);
                                            emit Transfer((5400 * msg.value / 7), 0, multisigAddress);
                                            call multisigAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
        else:
            if block.timestamp < 416749 * 3600:
                require 1700 * msg.value > 0
                if totalSupply + (1700 * msg.value) >= totalSupply:
                    if totalSupply + (1700 * msg.value) >= 1700 * msg.value:
                        totalSupply += 1700 * msg.value
                        if totalSupply + (5100 * msg.value / 7) >= totalSupply:
                            if totalSupply + (5100 * msg.value / 7) >= 5100 * msg.value / 7:
                                totalSupply += 5100 * msg.value / 7
                                if balanceOf[address(arg1)] + (1700 * msg.value) >= balanceOf[address(arg1)]:
                                    if balanceOf[address(arg1)] + (1700 * msg.value) >= 1700 * msg.value:
                                        balanceOf[address(arg1)] += 1700 * msg.value
                                        if balanceOf[stor5] + (5100 * msg.value / 7) >= balanceOf[stor5]:
                                            if balanceOf[stor5] + (5100 * msg.value / 7) >= 5100 * msg.value / 7:
                                                balanceOf[stor5] += 5100 * msg.value / 7
                                                emit TokensBought(msg.value, totalEthers, 1700 * msg.value, 5100 * msg.value / 7, totalSupply, 1700, arg1);
                                                emit Transfer((1700 * msg.value), 0, arg1);
                                                emit Transfer((5100 * msg.value / 7), 0, multisigAddress);
                                                call multisigAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
            else:
                if block.timestamp < 416821 * 3600:
                    require 1600 * msg.value > 0
                    if totalSupply + (1600 * msg.value) >= totalSupply:
                        if totalSupply + (1600 * msg.value) >= 1600 * msg.value:
                            totalSupply += 1600 * msg.value
                            if totalSupply + (4800 * msg.value / 7) >= totalSupply:
                                if totalSupply + (4800 * msg.value / 7) >= 4800 * msg.value / 7:
                                    totalSupply += 4800 * msg.value / 7
                                    if balanceOf[address(arg1)] + (1600 * msg.value) >= balanceOf[address(arg1)]:
                                        if balanceOf[address(arg1)] + (1600 * msg.value) >= 1600 * msg.value:
                                            balanceOf[address(arg1)] += 1600 * msg.value
                                            if balanceOf[stor5] + (4800 * msg.value / 7) >= balanceOf[stor5]:
                                                if balanceOf[stor5] + (4800 * msg.value / 7) >= 4800 * msg.value / 7:
                                                    balanceOf[stor5] += 4800 * msg.value / 7
                                                    emit TokensBought(msg.value, totalEthers, 1600 * msg.value, 4800 * msg.value / 7, totalSupply, 1600, arg1);
                                                    emit Transfer((1600 * msg.value), 0, arg1);
                                                    emit Transfer((4800 * msg.value / 7), 0, multisigAddress);
                                                    call multisigAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                else:
                    if block.timestamp < 416893 * 3600:
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
                                                if balanceOf[stor5] + (4500 * msg.value / 7) >= balanceOf[stor5]:
                                                    if balanceOf[stor5] + (4500 * msg.value / 7) >= 4500 * msg.value / 7:
                                                        balanceOf[stor5] += 4500 * msg.value / 7
                                                        emit TokensBought(msg.value, totalEthers, 1500 * msg.value, 4500 * msg.value / 7, totalSupply, 1500, arg1);
                                                        emit Transfer((1500 * msg.value), 0, arg1);
                                                        emit Transfer((4500 * msg.value / 7), 0, multisigAddress);
                                                        call multisigAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                    else:
                        if block.timestamp < 416965 * 3600:
                            require 1400 * msg.value > 0
                            if totalSupply + (1400 * msg.value) >= totalSupply:
                                if totalSupply + (1400 * msg.value) >= 1400 * msg.value:
                                    totalSupply += 1400 * msg.value
                                    if totalSupply + (4200 * msg.value / 7) >= totalSupply:
                                        if totalSupply + (4200 * msg.value / 7) >= 4200 * msg.value / 7:
                                            totalSupply += 4200 * msg.value / 7
                                            if balanceOf[address(arg1)] + (1400 * msg.value) >= balanceOf[address(arg1)]:
                                                if balanceOf[address(arg1)] + (1400 * msg.value) >= 1400 * msg.value:
                                                    balanceOf[address(arg1)] += 1400 * msg.value
                                                    if balanceOf[stor5] + (4200 * msg.value / 7) >= balanceOf[stor5]:
                                                        if balanceOf[stor5] + (4200 * msg.value / 7) >= 4200 * msg.value / 7:
                                                            balanceOf[stor5] += 4200 * msg.value / 7
                                                            emit TokensBought(msg.value, totalEthers, 1400 * msg.value, 4200 * msg.value / 7, totalSupply, 1400, arg1);
                                                            emit Transfer((1400 * msg.value), 0, arg1);
                                                            emit Transfer((4200 * msg.value / 7), 0, multisigAddress);
                                                            call multisigAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                        else:
                            require block.timestamp <= 416989 * 3600
                            require 1300 * msg.value > 0
                            if totalSupply + (1300 * msg.value) >= totalSupply:
                                if totalSupply + (1300 * msg.value) >= 1300 * msg.value:
                                    totalSupply += 1300 * msg.value
                                    if totalSupply + (3900 * msg.value / 7) >= totalSupply:
                                        if totalSupply + (3900 * msg.value / 7) >= 3900 * msg.value / 7:
                                            totalSupply += 3900 * msg.value / 7
                                            if balanceOf[address(arg1)] + (1300 * msg.value) >= balanceOf[address(arg1)]:
                                                if balanceOf[address(arg1)] + (1300 * msg.value) >= 1300 * msg.value:
                                                    balanceOf[address(arg1)] += 1300 * msg.value
                                                    if balanceOf[stor5] + (3900 * msg.value / 7) >= balanceOf[stor5]:
                                                        if balanceOf[stor5] + (3900 * msg.value / 7) >= 3900 * msg.value / 7:
                                                            balanceOf[stor5] += 3900 * msg.value / 7
                                                            emit TokensBought(msg.value, totalEthers, 1300 * msg.value, 3900 * msg.value / 7, totalSupply, 1300, arg1);
                                                            emit Transfer((1300 * msg.value), 0, arg1);
                                                            emit Transfer((3900 * msg.value / 7), 0, multisigAddress);
                                                            call multisigAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
    revert
}

function _fallback() payable {
    require block.timestamp >= 416317 * 3600
    require block.timestamp <= 416989 * 3600
    require msg.value > 0
    require totalEthers + msg.value >= totalEthers
    require totalEthers + msg.value >= msg.value
    totalEthers += msg.value
    require totalEthers <= 84417 * 10^18
    require block.timestamp >= 416317 * 3600
    if block.timestamp < 416365 * 3600:
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
                                if balanceOf[stor5] + (6000 * msg.value / 7) >= balanceOf[stor5]:
                                    if balanceOf[stor5] + (6000 * msg.value / 7) >= 6000 * msg.value / 7:
                                        balanceOf[stor5] += 6000 * msg.value / 7
                                        emit TokensBought(msg.value, totalEthers, 2000 * msg.value, 6000 * msg.value / 7, totalSupply, 2000, msg.sender);
                                        emit Transfer((2000 * msg.value), 0, msg.sender);
                                        emit Transfer((6000 * msg.value / 7), 0, multisigAddress);
                                        call multisigAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
    else:
        if block.timestamp < 416677 * 3600:
            require 1800 * msg.value > 0
            if totalSupply + (1800 * msg.value) >= totalSupply:
                if totalSupply + (1800 * msg.value) >= 1800 * msg.value:
                    totalSupply += 1800 * msg.value
                    if totalSupply + (5400 * msg.value / 7) >= totalSupply:
                        if totalSupply + (5400 * msg.value / 7) >= 5400 * msg.value / 7:
                            totalSupply += 5400 * msg.value / 7
                            if balanceOf[address(msg.sender)] + (1800 * msg.value) >= balanceOf[address(msg.sender)]:
                                if balanceOf[address(msg.sender)] + (1800 * msg.value) >= 1800 * msg.value:
                                    balanceOf[address(msg.sender)] += 1800 * msg.value
                                    if balanceOf[stor5] + (5400 * msg.value / 7) >= balanceOf[stor5]:
                                        if balanceOf[stor5] + (5400 * msg.value / 7) >= 5400 * msg.value / 7:
                                            balanceOf[stor5] += 5400 * msg.value / 7
                                            emit TokensBought(msg.value, totalEthers, 1800 * msg.value, 5400 * msg.value / 7, totalSupply, 1800, msg.sender);
                                            emit Transfer((1800 * msg.value), 0, msg.sender);
                                            emit Transfer((5400 * msg.value / 7), 0, multisigAddress);
                                            call multisigAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
        else:
            if block.timestamp < 416749 * 3600:
                require 1700 * msg.value > 0
                if totalSupply + (1700 * msg.value) >= totalSupply:
                    if totalSupply + (1700 * msg.value) >= 1700 * msg.value:
                        totalSupply += 1700 * msg.value
                        if totalSupply + (5100 * msg.value / 7) >= totalSupply:
                            if totalSupply + (5100 * msg.value / 7) >= 5100 * msg.value / 7:
                                totalSupply += 5100 * msg.value / 7
                                if balanceOf[address(msg.sender)] + (1700 * msg.value) >= balanceOf[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)] + (1700 * msg.value) >= 1700 * msg.value:
                                        balanceOf[address(msg.sender)] += 1700 * msg.value
                                        if balanceOf[stor5] + (5100 * msg.value / 7) >= balanceOf[stor5]:
                                            if balanceOf[stor5] + (5100 * msg.value / 7) >= 5100 * msg.value / 7:
                                                balanceOf[stor5] += 5100 * msg.value / 7
                                                emit TokensBought(msg.value, totalEthers, 1700 * msg.value, 5100 * msg.value / 7, totalSupply, 1700, msg.sender);
                                                emit Transfer((1700 * msg.value), 0, msg.sender);
                                                emit Transfer((5100 * msg.value / 7), 0, multisigAddress);
                                                call multisigAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if ext_call.success:
            else:
                if block.timestamp < 416821 * 3600:
                    require 1600 * msg.value > 0
                    if totalSupply + (1600 * msg.value) >= totalSupply:
                        if totalSupply + (1600 * msg.value) >= 1600 * msg.value:
                            totalSupply += 1600 * msg.value
                            if totalSupply + (4800 * msg.value / 7) >= totalSupply:
                                if totalSupply + (4800 * msg.value / 7) >= 4800 * msg.value / 7:
                                    totalSupply += 4800 * msg.value / 7
                                    if balanceOf[address(msg.sender)] + (1600 * msg.value) >= balanceOf[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)] + (1600 * msg.value) >= 1600 * msg.value:
                                            balanceOf[address(msg.sender)] += 1600 * msg.value
                                            if balanceOf[stor5] + (4800 * msg.value / 7) >= balanceOf[stor5]:
                                                if balanceOf[stor5] + (4800 * msg.value / 7) >= 4800 * msg.value / 7:
                                                    balanceOf[stor5] += 4800 * msg.value / 7
                                                    emit TokensBought(msg.value, totalEthers, 1600 * msg.value, 4800 * msg.value / 7, totalSupply, 1600, msg.sender);
                                                    emit Transfer((1600 * msg.value), 0, msg.sender);
                                                    emit Transfer((4800 * msg.value / 7), 0, multisigAddress);
                                                    call multisigAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                else:
                    if block.timestamp < 416893 * 3600:
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
                                                if balanceOf[stor5] + (4500 * msg.value / 7) >= balanceOf[stor5]:
                                                    if balanceOf[stor5] + (4500 * msg.value / 7) >= 4500 * msg.value / 7:
                                                        balanceOf[stor5] += 4500 * msg.value / 7
                                                        emit TokensBought(msg.value, totalEthers, 1500 * msg.value, 4500 * msg.value / 7, totalSupply, 1500, msg.sender);
                                                        emit Transfer((1500 * msg.value), 0, msg.sender);
                                                        emit Transfer((4500 * msg.value / 7), 0, multisigAddress);
                                                        call multisigAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                    else:
                        if block.timestamp < 416965 * 3600:
                            require 1400 * msg.value > 0
                            if totalSupply + (1400 * msg.value) >= totalSupply:
                                if totalSupply + (1400 * msg.value) >= 1400 * msg.value:
                                    totalSupply += 1400 * msg.value
                                    if totalSupply + (4200 * msg.value / 7) >= totalSupply:
                                        if totalSupply + (4200 * msg.value / 7) >= 4200 * msg.value / 7:
                                            totalSupply += 4200 * msg.value / 7
                                            if balanceOf[address(msg.sender)] + (1400 * msg.value) >= balanceOf[address(msg.sender)]:
                                                if balanceOf[address(msg.sender)] + (1400 * msg.value) >= 1400 * msg.value:
                                                    balanceOf[address(msg.sender)] += 1400 * msg.value
                                                    if balanceOf[stor5] + (4200 * msg.value / 7) >= balanceOf[stor5]:
                                                        if balanceOf[stor5] + (4200 * msg.value / 7) >= 4200 * msg.value / 7:
                                                            balanceOf[stor5] += 4200 * msg.value / 7
                                                            emit TokensBought(msg.value, totalEthers, 1400 * msg.value, 4200 * msg.value / 7, totalSupply, 1400, msg.sender);
                                                            emit Transfer((1400 * msg.value), 0, msg.sender);
                                                            emit Transfer((4200 * msg.value / 7), 0, multisigAddress);
                                                            call multisigAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                        else:
                            require block.timestamp <= 416989 * 3600
                            require 1300 * msg.value > 0
                            if totalSupply + (1300 * msg.value) >= totalSupply:
                                if totalSupply + (1300 * msg.value) >= 1300 * msg.value:
                                    totalSupply += 1300 * msg.value
                                    if totalSupply + (3900 * msg.value / 7) >= totalSupply:
                                        if totalSupply + (3900 * msg.value / 7) >= 3900 * msg.value / 7:
                                            totalSupply += 3900 * msg.value / 7
                                            if balanceOf[address(msg.sender)] + (1300 * msg.value) >= balanceOf[address(msg.sender)]:
                                                if balanceOf[address(msg.sender)] + (1300 * msg.value) >= 1300 * msg.value:
                                                    balanceOf[address(msg.sender)] += 1300 * msg.value
                                                    if balanceOf[stor5] + (3900 * msg.value / 7) >= balanceOf[stor5]:
                                                        if balanceOf[stor5] + (3900 * msg.value / 7) >= 3900 * msg.value / 7:
                                                            balanceOf[stor5] += 3900 * msg.value / 7
                                                            emit TokensBought(msg.value, totalEthers, 1300 * msg.value, 3900 * msg.value / 7, totalSupply, 1300, msg.sender);
                                                            emit Transfer((1300 * msg.value), 0, msg.sender);
                                                            emit Transfer((3900 * msg.value / 7), 0, multisigAddress);
                                                            call multisigAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
    revert
}



}
