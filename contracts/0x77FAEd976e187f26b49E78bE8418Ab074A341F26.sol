contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
mapping of uint256 stor3;
address stor5;
address stor6;

function _fallback() payable {
    stor2 = 100 * 10^6
    stor5 = 0xf82d89f274e2c5fe9fd3202c5426abe47d2099cd
    stor6 = 0x1e408ce343f4a392b430dfc5e3e2fe3b6a9cc580
    require not msg.value
    stor0 = msg.sender
    stor3[stor6] = 55000000 * 10^18
    return code.data[179 len 4010]
}



// =====================  Runtime code  =====================


const name = 'Integrative Wallet Token'

const decimals = 18

const IWTfund = 55000000 * 10^18

const symbol = 'IWT'

const ENDDATE = (418501 * 3600)

const STARTDATE = (417829 * 3600)

const CAP = 63500 * 10^18


address owner;
address newOwner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address multisigAddress;
address iwtfundtokensAddress;
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

function iwtfundtokens() {
    return iwtfundtokensAddress
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
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
    if arg1 < 417829 * 3600:
        return 0
    if arg1 < 417853 * 3600:
        return 1200
    if arg1 < 418021 * 3600:
        return 1000
    if arg1 < 418189 * 3600:
        return 800
    if arg1 >= 418357 * 3600:
        if arg1 > 418501 * 3600:
            return 0
    return 600
}

function buyPrice() {
    if block.timestamp < 417829 * 3600:
        return 0
    if block.timestamp < 417853 * 3600:
        return 1200
    if block.timestamp < 418021 * 3600:
        return 1000
    if block.timestamp < 418189 * 3600:
        return 800
    if block.timestamp >= 418357 * 3600:
        if block.timestamp > 418501 * 3600:
            return 0
    return 600
}

function addPrecommitment(address arg1, uint256 arg2) {
    require owner == msg.sender
    require block.timestamp < 417829 * 3600
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
    if block.timestamp <= 418501 * 3600:
        require totalEthers == 63500 * 10^18
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
    if block.timestamp <= 418501 * 3600:
        require totalEthers == 63500 * 10^18
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
    require block.timestamp >= 417829 * 3600
    require block.timestamp <= 418501 * 3600
    require msg.value > 0
    require msg.value + totalEthers >= totalEthers
    require msg.value + totalEthers >= msg.value
    totalEthers += msg.value
    require msg.value + totalEthers <= 63500 * 10^18
    require block.timestamp >= 417829 * 3600
    if block.timestamp < 417853 * 3600:
        require 1200 * msg.value > 0
        if (1200 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
            if (1200 * msg.value) + balanceOf[address(arg1)] >= 1200 * msg.value:
                balanceOf[address(arg1)] += 1200 * msg.value
                emit TokensBought(msg.value, totalEthers, 1200 * msg.value, totalSupply, 1200, arg1);
                emit Transfer((1200 * msg.value), 0, arg1);
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    else:
        if block.timestamp < 418021 * 3600:
            require 1000 * msg.value > 0
            if (1000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                if (1000 * msg.value) + balanceOf[address(arg1)] >= 1000 * msg.value:
                    balanceOf[address(arg1)] += 1000 * msg.value
                    emit TokensBought(msg.value, totalEthers, 1000 * msg.value, totalSupply, 1000, arg1);
                    emit Transfer((1000 * msg.value), 0, arg1);
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
        else:
            if block.timestamp < 418189 * 3600:
                require 800 * msg.value > 0
                if (800 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                    if (800 * msg.value) + balanceOf[address(arg1)] >= 800 * msg.value:
                        balanceOf[address(arg1)] += 800 * msg.value
                        emit TokensBought(msg.value, totalEthers, 800 * msg.value, totalSupply, 800, arg1);
                        emit Transfer((800 * msg.value), 0, arg1);
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
            else:
                if block.timestamp >= 418357 * 3600:
                    require block.timestamp <= 418501 * 3600
                require 600 * msg.value > 0
                if (600 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                    if (600 * msg.value) + balanceOf[address(arg1)] >= 600 * msg.value:
                        balanceOf[address(arg1)] += 600 * msg.value
                        emit TokensBought(msg.value, totalEthers, 600 * msg.value, totalSupply, 600, arg1);
                        emit Transfer((600 * msg.value), 0, arg1);
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    revert
}

function _fallback() payable {
    require block.timestamp >= 417829 * 3600
    require block.timestamp <= 418501 * 3600
    require msg.value > 0
    require msg.value + totalEthers >= totalEthers
    require msg.value + totalEthers >= msg.value
    totalEthers += msg.value
    require msg.value + totalEthers <= 63500 * 10^18
    require block.timestamp >= 417829 * 3600
    if block.timestamp < 417853 * 3600:
        require 1200 * msg.value > 0
        if (1200 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
            if (1200 * msg.value) + balanceOf[address(msg.sender)] >= 1200 * msg.value:
                balanceOf[address(msg.sender)] += 1200 * msg.value
                emit TokensBought(msg.value, totalEthers, 1200 * msg.value, totalSupply, 1200, msg.sender);
                emit Transfer((1200 * msg.value), 0, msg.sender);
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    else:
        if block.timestamp < 418021 * 3600:
            require 1000 * msg.value > 0
            if (1000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                if (1000 * msg.value) + balanceOf[address(msg.sender)] >= 1000 * msg.value:
                    balanceOf[address(msg.sender)] += 1000 * msg.value
                    emit TokensBought(msg.value, totalEthers, 1000 * msg.value, totalSupply, 1000, msg.sender);
                    emit Transfer((1000 * msg.value), 0, msg.sender);
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
        else:
            if block.timestamp < 418189 * 3600:
                require 800 * msg.value > 0
                if (800 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                    if (800 * msg.value) + balanceOf[address(msg.sender)] >= 800 * msg.value:
                        balanceOf[address(msg.sender)] += 800 * msg.value
                        emit TokensBought(msg.value, totalEthers, 800 * msg.value, totalSupply, 800, msg.sender);
                        emit Transfer((800 * msg.value), 0, msg.sender);
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
            else:
                if block.timestamp >= 418357 * 3600:
                    require block.timestamp <= 418501 * 3600
                require 600 * msg.value > 0
                if (600 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                    if (600 * msg.value) + balanceOf[address(msg.sender)] >= 600 * msg.value:
                        balanceOf[address(msg.sender)] += 600 * msg.value
                        emit TokensBought(msg.value, totalEthers, 600 * msg.value, totalSupply, 600, msg.sender);
                        emit Transfer((600 * msg.value), 0, msg.sender);
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    revert
}



}
