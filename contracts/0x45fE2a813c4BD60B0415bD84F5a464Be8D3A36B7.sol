contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 stor6;
address proposedOwner;
uint8 finalized; offset 160
address opsAddress;
uint256 buyPriceEth;
uint256 sellPriceEth;
uint256 gasForPBTT;
uint256 pBTTForGas;
uint256 gasReserve;
uint256 minBalanceForAccounts;
uint256 totalTokenSold;
uint8 halts;

function sellPriceEth() {
    return sellPriceEth
}

function PBTTForGas() {
    return pBTTForGas
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function gasForPBTT() {
    return gasForPBTT
}

function decimals() {
    return decimals
}

function minBalanceForAccounts() {
    return minBalanceForAccounts
}

function buyPriceEth() {
    return buyPriceEth
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return address(owner)
}

function opsAddress() {
    return opsAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function halts() {
    require halts <= 1
    return halts
}

function finalized() {
    require finalized <= 1
    return finalized
}

function totalTokenSold() {
    return totalTokenSold
}

function proposedOwner() {
    return proposedOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function gasReserve() {
    return gasReserve
}

function isOwner(address arg1) {
    return (arg1 == address(owner))
}

function isOps(address arg1) {
    if not opsAddress:
        return bool(opsAddress)
    return (arg1 == opsAddress)
}

function getTokenRemaining() {
    if 10^9 < totalTokenSold:
        revert with 0, 'Require a >= b'
    return (-totalTokenSold + 10^9)
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function isOwnerOrOps(address arg1) {
    if arg1 == address(owner):
        return True
    if not opsAddress:
        return bool(opsAddress)
    return (arg1 == opsAddress)
}

function haltsTrades() {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'cRequire only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'cRequire only owner or ops'
    halts = 1
    return 1
}

function unhaltsTrades() {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'cRequire only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'cRequire only owner or ops'
    halts = 0
    return 1
}

function setPBTTForGas(uint256 arg1) {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'cRequire only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'cRequire only owner or ops'
    pBTTForGas = arg1
}

function setGasForPBTT(uint256 arg1) {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'cRequire only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'cRequire only owner or ops'
    gasForPBTT = arg1
}

function setGasReserve(uint256 arg1) {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'cRequire only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'cRequire only owner or ops'
    gasReserve = arg1
}

function setMinBalance(uint256 arg1) {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'cRequire only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'cRequire only owner or ops'
    minBalanceForAccounts = arg1
}

function completeOwnershipTransfer() {
    if proposedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require msg.sender == proposedOwner'
    uint256(stor6) = msg.sender or Mask(96, 160, uint256(stor6))
    proposedOwner = 0
    return 1
}

function setEtherPrices(uint256 arg1, uint256 arg2) {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'cRequire only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'cRequire only owner or ops'
    buyPriceEth = arg1
    sellPriceEth = arg2
}

function finalize() {
    if msg.sender == address(owner) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require owner to execute transation'
    require finalized <= 1
    if finalized:
        revert with 0, 'Require !finalized'
    finalized = 1
    emit Finalized()
    return 1
}

function withdrawFundToOwner() {
    if msg.sender == address(owner) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require owner to execute transation'
    call address(owner) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawFundToAddress(address arg1) {
    if msg.sender == address(owner) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require owner to execute transation'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setOpsAddress(address arg1) {
    if msg.sender == address(owner) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require owner to execute transation'
    if address(owner) == arg1:
        revert with 0, 'Require newOpsAddress != owner'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require newOpsAddress != address(this)'
    opsAddress = arg1
    return 1
}

function burn(uint256 arg1) {
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token amount to burn must be larger than 0'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You cannot burn token you dont have'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'Require a >= b'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 'Require a >= b'
    totalSupply -= arg1
    return 1
}

function reclaimTokens() {
    if msg.sender == address(owner) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require owner to execute transation'
    if not balanceOf[address(this.address)]:
        return 0
    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
        revert with 0, 'Require a >= b'
    balanceOf[address(this.address)] = 0
    if balanceOf[address(this.address)] + balanceOf[address(stor6)] < balanceOf[address(stor6)]:
        revert with 0, 'Require r >= a'
    balanceOf[address(stor6)] += balanceOf[address(this.address)]
    return 1
}

function initiateOwnershipTransfer(address arg1) {
    if msg.sender == address(owner) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require owner to execute transation'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require proposedOwner != address(0)'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require proposedOwner != address(this)'
    if address(owner) == arg1:
        revert with 0, 'Require proposedOwner != owner'
    proposedOwner = arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require halts <= 1
    if halts:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require smart contract is not in halted state'
    require finalized <= 1
    if finalized != 1:
        if arg2 != address(owner):
            if address(owner) != msg.sender:
                if not opsAddress:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Require is owner or ops allowed to initiate transfer'
                if opsAddress != msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Require is owner or ops allowed to initiate transfer'
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'Require a >= b'
    balanceOf[address(arg1)] -= arg3
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 'Require a >= b'
    allowance[address(arg1)][msg.sender] -= arg3
    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
        revert with 0, 'Require r >= a'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    if address(owner) != msg.sender:
        require finalized <= 1
        if finalized != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require smart contract is finalized'
        require halts <= 1
        if halts:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require smart contract is not halted'
        if buyPriceEth <= 0:
            revert with 0, 'buyPriceEth must be > 0'
        if msg.value < buyPriceEth:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer money must be enough for 1 token'
        if not msg.value:
            require buyPriceEth
            if 0 / buyPriceEth > balanceOf[address(stor6)]:
                revert with 0, 'Not enough token balance'
            if (0 / buyPriceEth) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'Require r >= a'
            balanceOf[msg.sender] += 0 / buyPriceEth
            if balanceOf[address(stor6)] < 0 / buyPriceEth:
                revert with 0, 'Require a >= b'
            balanceOf[address(stor6)] -= 0 / buyPriceEth
            emit Transfer((0 / buyPriceEth), address(owner), msg.sender);
            totalTokenSold += 0 / buyPriceEth
        else:
            if 1000 * msg.value / msg.value != 1000:
                revert with 0, 'Require r / a == b'
            require buyPriceEth
            if 1000 * msg.value / buyPriceEth > balanceOf[address(stor6)]:
                revert with 0, 'Not enough token balance'
            if (1000 * msg.value / buyPriceEth) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'Require r >= a'
            balanceOf[msg.sender] += 1000 * msg.value / buyPriceEth
            if balanceOf[address(stor6)] < 1000 * msg.value / buyPriceEth:
                revert with 0, 'Require a >= b'
            balanceOf[address(stor6)] -= 1000 * msg.value / buyPriceEth
            emit Transfer((1000 * msg.value / buyPriceEth), address(owner), msg.sender);
            totalTokenSold += 1000 * msg.value / buyPriceEth
}

function transfer(address arg1, uint256 arg2) {
    require halts <= 1
    if halts:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require smart contract is not in halted state'
    if arg2 < pBTTForGas:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token amount is not enough to transfer'
    if msg.sender == address(owner):
        require finalized <= 1
        if finalized != 1:
            if arg1 != address(owner):
                if address(owner) != msg.sender:
                    if not opsAddress:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Require is owner or ops allowed to initiate transfer'
                    if opsAddress != msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Require is owner or ops allowed to initiate transfer'
        if arg2 > balanceOf[address(stor6)]:
            return 0
        if arg2 > allowance[address(stor6)][msg.sender]:
            return 0
        if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
            return 0
        if balanceOf[address(stor6)] < arg2:
            revert with 0, 'Require a >= b'
        balanceOf[address(stor6)] -= arg2
        if allowance[address(stor6)][msg.sender] < arg2:
            revert with 0, 'Require a >= b'
        allowance[address(stor6)][msg.sender] -= arg2
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'Require r >= a'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, address(owner), arg1);
    else:
        if not opsAddress:
            if this.address == arg1:
                if sellPriceEth <= 0:
                    revert with 0, 'sellPriceEth must be > 0'
                if arg2 < pBTTForGas:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Sell token amount must be larger than PBTTForGas value'
                if arg2 > balanceOf[msg.sender]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token balance is not enough to sold'
                if eth.balance(msg.sender) < minBalanceForAccounts:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Seller balance must be enough to pay the transaction fee'
                if not arg2 / 1000:
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Require a >= b'
                    if eth.balance(this.address) < gasReserve:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Remaining contract balance is not enough for reserved'
                    if arg2 + balanceOf[address(stor6)] < balanceOf[address(stor6)]:
                        revert with 0, 'Require r >= a'
                    balanceOf[address(stor6)] += arg2
                    if balanceOf[msg.sender] < arg2:
                        revert with 0, 'Require a >= b'
                    balanceOf[msg.sender] -= arg2
                    call msg.sender with:
                         gas 2300 wei
                else:
                    if sellPriceEth * arg2 / 1000 / arg2 / 1000 != sellPriceEth:
                        revert with 0, 'Require r / a == b'
                    if eth.balance(this.address) < sellPriceEth * arg2 / 1000:
                        revert with 0, 'Require a >= b'
                    if eth.balance(this.address) - (sellPriceEth * arg2 / 1000) < gasReserve:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Remaining contract balance is not enough for reserved'
                    if arg2 + balanceOf[address(stor6)] < balanceOf[address(stor6)]:
                        revert with 0, 'Require r >= a'
                    balanceOf[address(stor6)] += arg2
                    if balanceOf[msg.sender] < arg2:
                        revert with 0, 'Require a >= b'
                    balanceOf[msg.sender] -= arg2
                    call msg.sender with:
                       value sellPriceEth * arg2 / 1000 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Transfer(arg2, msg.sender, address(owner));
            else:
                require finalized <= 1
                if finalized != 1:
                    if arg1 != address(owner):
                        if address(owner) != msg.sender:
                            if not opsAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'Require is owner or ops allowed to initiate transfer'
                            if opsAddress != msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'Require is owner or ops allowed to initiate transfer'
                if msg.sender == address(owner):
                    if arg2 > balanceOf[address(stor6)]:
                        return 0
                    if arg2 > allowance[address(stor6)][msg.sender]:
                        return 0
                    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                        return 0
                    if balanceOf[address(stor6)] < arg2:
                        revert with 0, 'Require a >= b'
                    balanceOf[address(stor6)] -= arg2
                    if allowance[address(stor6)][msg.sender] < arg2:
                        revert with 0, 'Require a >= b'
                    allowance[address(stor6)][msg.sender] -= arg2
                    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'Require r >= a'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, address(owner), arg1);
                else:
                    if not opsAddress:
                        if arg2 > balanceOf[msg.sender]:
                            return 0
                        if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                            return 0
                        if balanceOf[msg.sender] < arg2:
                            revert with 0, 'Require a >= b'
                        balanceOf[msg.sender] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'Require r >= a'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if opsAddress != msg.sender:
                            if arg2 > balanceOf[msg.sender]:
                                return 0
                            if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                                return 0
                            if balanceOf[msg.sender] < arg2:
                                revert with 0, 'Require a >= b'
                            balanceOf[msg.sender] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'Require r >= a'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 > balanceOf[address(stor6)]:
                                return 0
                            if arg2 > allowance[address(stor6)][msg.sender]:
                                return 0
                            if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                                return 0
                            if balanceOf[address(stor6)] < arg2:
                                revert with 0, 'Require a >= b'
                            balanceOf[address(stor6)] -= arg2
                            if allowance[address(stor6)][msg.sender] < arg2:
                                revert with 0, 'Require a >= b'
                            allowance[address(stor6)][msg.sender] -= arg2
                            if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'Require r >= a'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, address(owner), arg1);
        else:
            if msg.sender == opsAddress:
                require finalized <= 1
                if finalized != 1:
                    if arg1 != address(owner):
                        if address(owner) != msg.sender:
                            if not opsAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'Require is owner or ops allowed to initiate transfer'
                            if opsAddress != msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'Require is owner or ops allowed to initiate transfer'
                if msg.sender == address(owner):
                    if arg2 > balanceOf[address(stor6)]:
                        return 0
                    if arg2 > allowance[address(stor6)][msg.sender]:
                        return 0
                    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                        return 0
                    if balanceOf[address(stor6)] < arg2:
                        revert with 0, 'Require a >= b'
                    balanceOf[address(stor6)] -= arg2
                    if allowance[address(stor6)][msg.sender] < arg2:
                        revert with 0, 'Require a >= b'
                    allowance[address(stor6)][msg.sender] -= arg2
                    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'Require r >= a'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, address(owner), arg1);
                else:
                    if not opsAddress:
                        if arg2 > balanceOf[msg.sender]:
                            return 0
                        if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                            return 0
                        if balanceOf[msg.sender] < arg2:
                            revert with 0, 'Require a >= b'
                        balanceOf[msg.sender] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'Require r >= a'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if opsAddress != msg.sender:
                            if arg2 > balanceOf[msg.sender]:
                                return 0
                            if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                                return 0
                            if balanceOf[msg.sender] < arg2:
                                revert with 0, 'Require a >= b'
                            balanceOf[msg.sender] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'Require r >= a'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 > balanceOf[address(stor6)]:
                                return 0
                            if arg2 > allowance[address(stor6)][msg.sender]:
                                return 0
                            if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                                return 0
                            if balanceOf[address(stor6)] < arg2:
                                revert with 0, 'Require a >= b'
                            balanceOf[address(stor6)] -= arg2
                            if allowance[address(stor6)][msg.sender] < arg2:
                                revert with 0, 'Require a >= b'
                            allowance[address(stor6)][msg.sender] -= arg2
                            if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'Require r >= a'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, address(owner), arg1);
            else:
                if this.address == arg1:
                    if sellPriceEth <= 0:
                        revert with 0, 'sellPriceEth must be > 0'
                    if arg2 < pBTTForGas:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Sell token amount must be larger than PBTTForGas value'
                    if arg2 > balanceOf[msg.sender]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token balance is not enough to sold'
                    if eth.balance(msg.sender) < minBalanceForAccounts:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Seller balance must be enough to pay the transaction fee'
                    if not arg2 / 1000:
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Require a >= b'
                        if eth.balance(this.address) < gasReserve:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'Remaining contract balance is not enough for reserved'
                        if arg2 + balanceOf[address(stor6)] < balanceOf[address(stor6)]:
                            revert with 0, 'Require r >= a'
                        balanceOf[address(stor6)] += arg2
                        if balanceOf[msg.sender] < arg2:
                            revert with 0, 'Require a >= b'
                        balanceOf[msg.sender] -= arg2
                        call msg.sender with:
                             gas 2300 wei
                    else:
                        if sellPriceEth * arg2 / 1000 / arg2 / 1000 != sellPriceEth:
                            revert with 0, 'Require r / a == b'
                        if eth.balance(this.address) < sellPriceEth * arg2 / 1000:
                            revert with 0, 'Require a >= b'
                        if eth.balance(this.address) - (sellPriceEth * arg2 / 1000) < gasReserve:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'Remaining contract balance is not enough for reserved'
                        if arg2 + balanceOf[address(stor6)] < balanceOf[address(stor6)]:
                            revert with 0, 'Require r >= a'
                        balanceOf[address(stor6)] += arg2
                        if balanceOf[msg.sender] < arg2:
                            revert with 0, 'Require a >= b'
                        balanceOf[msg.sender] -= arg2
                        call msg.sender with:
                           value sellPriceEth * arg2 / 1000 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Transfer(arg2, msg.sender, address(owner));
                else:
                    require finalized <= 1
                    if finalized != 1:
                        if arg1 != address(owner):
                            if address(owner) != msg.sender:
                                if not opsAddress:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'Require is owner or ops allowed to initiate transfer'
                                if opsAddress != msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'Require is owner or ops allowed to initiate transfer'
                    if msg.sender == address(owner):
                        if arg2 > balanceOf[address(stor6)]:
                            return 0
                        if arg2 > allowance[address(stor6)][msg.sender]:
                            return 0
                        if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                            return 0
                        if balanceOf[address(stor6)] < arg2:
                            revert with 0, 'Require a >= b'
                        balanceOf[address(stor6)] -= arg2
                        if allowance[address(stor6)][msg.sender] < arg2:
                            revert with 0, 'Require a >= b'
                        allowance[address(stor6)][msg.sender] -= arg2
                        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'Require r >= a'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, address(owner), arg1);
                    else:
                        if not opsAddress:
                            if arg2 > balanceOf[msg.sender]:
                                return 0
                            if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                                return 0
                            if balanceOf[msg.sender] < arg2:
                                revert with 0, 'Require a >= b'
                            balanceOf[msg.sender] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'Require r >= a'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if opsAddress != msg.sender:
                                if arg2 > balanceOf[msg.sender]:
                                    return 0
                                if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                                    return 0
                                if balanceOf[msg.sender] < arg2:
                                    revert with 0, 'Require a >= b'
                                balanceOf[msg.sender] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'Require r >= a'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 > balanceOf[address(stor6)]:
                                    return 0
                                if arg2 > allowance[address(stor6)][msg.sender]:
                                    return 0
                                if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                                    return 0
                                if balanceOf[address(stor6)] < arg2:
                                    revert with 0, 'Require a >= b'
                                balanceOf[address(stor6)] -= arg2
                                if allowance[address(stor6)][msg.sender] < arg2:
                                    revert with 0, 'Require a >= b'
                                allowance[address(stor6)][msg.sender] -= arg2
                                if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                    revert with 0, 'Require r >= a'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, address(owner), arg1);
    return 1
}



}
