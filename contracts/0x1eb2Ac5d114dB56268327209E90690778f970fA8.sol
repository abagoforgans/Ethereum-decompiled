contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint32 stor7;
address owner;
address proposedOwner;
uint8 finalized; offset 160
address opsAddress;
uint256 buyPriceEth;
uint256 sellPriceEth;
uint256 sub_9b9785b9;
uint256 sub_43ab50c2;
uint256 gasReserve;
uint256 minBalanceForAccounts;
uint8 halts;
uint8 exchanges; offset 8

function sellPriceEth() {
    return sellPriceEth
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function exchanges() {
    require exchanges <= 1
    return exchanges
}

function decimals() {
    return decimals
}

function sub_43ab50c2(?) {
    return sub_43ab50c2
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

function sub_9b9785b9(?) {
    return sub_9b9785b9
}

function halts() {
    require halts <= 1
    return halts
}

function finalized() {
    require finalized <= 1
    return finalized
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

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    emit TokenFallback(arg2, arg1);
}

function isOps(address arg1) {
    if not opsAddress:
        return not not opsAddress
    return (arg1 == opsAddress)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function isOwnerOrOps(address arg1) {
    if arg1 == address(owner):
        return True
    if not opsAddress:
        return not not opsAddress
    return (arg1 == opsAddress)
}

function getTotalTokenSold() {
    if 8000 * 10^18 < balanceOf[address(stor7)]:
        revert with 0, 'Require a >= b'
    return (-balanceOf[address(stor7)] + 8000 * 10^18 / 10^12)
}

function sub_79aef383(?) {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'Require only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'Require only owner or ops'
    sub_43ab50c2 = arg1
}

function sub_d4456e24(?) {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'Require only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'Require only owner or ops'
    sub_9b9785b9 = arg1
}

function haltsTrades() {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'Require only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'Require only owner or ops'
    halts = 1
    return 1
}

function unhaltsTrades() {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'Require only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'Require only owner or ops'
    halts = 0
    return 1
}

function completeOwnershipTransfer() {
    if proposedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require msg.sender == proposedOwner'
    address(owner) = msg.sender
    proposedOwner = 0
    return 1
}

function sub_3a9edfa8(?) {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'Require only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'Require only owner or ops'
    exchanges = 1
    return 1
}

function disableExchange() {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'Require only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'Require only owner or ops'
    exchanges = 0
    return 1
}

function setGasReserve(uint256 arg1) {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'Require only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'Require only owner or ops'
    gasReserve = arg1
}

function setMinBalance(uint256 arg1) {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'Require only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'Require only owner or ops'
    minBalanceForAccounts = arg1
}

function setEtherPrices(uint256 arg1, uint256 arg2) {
    if address(owner) != msg.sender:
        if not opsAddress:
            revert with 0, 'Require only owner or ops'
        if opsAddress != msg.sender:
            revert with 0, 'Require only owner or ops'
    buyPriceEth = arg1
    sellPriceEth = arg2
}

function finalize() {
    if msg.sender == address(owner) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require owner to execute transaction'
    require finalized <= 1
    if finalized:
        revert with 0, 'Require !finalized'
    finalized = 1
    emit Finalized()
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'Require r >= a'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function withdrawFundToOwner() {
    if msg.sender == address(owner) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require owner to execute transaction'
    call address(owner) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawFundToAddress(address arg1) {
    if msg.sender == address(owner) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require owner to execute transaction'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        if allowance[address(msg.sender)][address(arg1)] < arg2:
            revert with 0, 'Require a >= b'
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function setOpsAddress(address arg1) {
    if msg.sender == address(owner) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require owner to execute transaction'
    if arg1 == address(owner):
        revert with 0, 'Require newOpsAddress != owner'
    if arg1 == this.address:
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require owner to execute transaction'
    if not balanceOf[address(this.address)]:
        return 0
    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
        revert with 0, 'Require a >= b'
    balanceOf[address(this.address)] = 0
    if balanceOf[address(stor7)] + balanceOf[address(this.address)] < balanceOf[address(stor7)]:
        revert with 0, 'Require r >= a'
    balanceOf[address(stor7)] += balanceOf[address(this.address)]
    return 1
}

function initiateOwnershipTransfer(address arg1) {
    if msg.sender == address(owner) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require owner to execute transaction'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require proposedOwner != address(0)'
    if arg1 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require proposedOwner != address(this)'
    if arg1 == address(owner):
        revert with 0, 'Require proposedOwner != owner'
    proposedOwner = arg1
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'Sender`s balance is not enough'
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        revert with 0, 'Value is invalid'
    if not arg1:
        revert with 0, '_to address is invalid'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'Require a >= b'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'Require r >= a'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require halts <= 1
    if halts:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require smart contract is not in halted state'
    require finalized <= 1
    if finalized != 1:
        if arg2 != address(owner):
            if arg2 == opsAddress:
                revert with 0, 'Ops cannot recieve token'
            if address(owner) != msg.sender:
                if not opsAddress:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Require is owner or ops allowed to initiate transfer'
                if opsAddress != msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Require is owner or ops allowed to initiate transfer'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'Owner`s balance is not enough'
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'Sender`s allowance is not enough'
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        revert with 0, 'Token amount value is invalid'
    if not arg2:
        revert with 0, '_to address is invalid'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'Require a >= b'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'Require r >= a'
    balanceOf[address(arg2)] += arg3
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'Require a >= b'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = 0, arg3, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg2)
        call arg2.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, 0, arg3, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[128] = 64
    mem[160] = arg3
    mem[192 len ceil32(arg3)] = mem[128 len ceil32(arg3)]
    emit Transfer(arg3, Array(len=arg3, data=mem[192 len arg3]), arg1, arg2);
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
        if msg.sender == opsAddress:
            revert with 0, 'Operator cannot buy token'
        require exchanges <= 1
        if exchanges != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require smart contract enables exchange'
        if buyPriceEth <= 0:
            revert with 0, 'buyPriceEth must be > 0'
        if msg.value < buyPriceEth:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer money must be enough for 1 token'
        if not msg.value:
            require buyPriceEth
            if 0 / buyPriceEth <= 0:
                revert with 0, 'Buy token amount is invalid'
            if balanceOf[address(stor7)] < 0 / buyPriceEth:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Owner does not have enough tokens'
            if allowance[address(stor7)][stor9] < 0 / buyPriceEth:
                revert with 0, 'Ops does not have enough tokens'
            if balanceOf[address(msg.sender)] + (0 / buyPriceEth) < balanceOf[address(msg.sender)]:
                revert with 0, 'Require r >= a'
            balanceOf[address(msg.sender)] += 0 / buyPriceEth
            if balanceOf[address(stor7)] < 0 / buyPriceEth:
                revert with 0, 'Require a >= b'
            balanceOf[address(stor7)] -= 0 / buyPriceEth
            if allowance[address(stor7)][stor9] < 0 / buyPriceEth:
                revert with 0, 'Require a >= b'
            allowance[address(stor7)][stor9] -= 0 / buyPriceEth
            emit Transfer((0 / buyPriceEth), address(owner), msg.sender);
        else:
            require msg.value
            if 10^12 * msg.value / msg.value != 10^12:
                revert with 0, 'Require r / a == b'
            require buyPriceEth
            if 10^12 * msg.value / buyPriceEth <= 0:
                revert with 0, 'Buy token amount is invalid'
            if balanceOf[address(stor7)] < 10^12 * msg.value / buyPriceEth:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Owner does not have enough tokens'
            if allowance[address(stor7)][stor9] < 10^12 * msg.value / buyPriceEth:
                revert with 0, 'Ops does not have enough tokens'
            if balanceOf[address(msg.sender)] + (10^12 * msg.value / buyPriceEth) < balanceOf[address(msg.sender)]:
                revert with 0, 'Require r >= a'
            balanceOf[address(msg.sender)] += 10^12 * msg.value / buyPriceEth
            if balanceOf[address(stor7)] < 10^12 * msg.value / buyPriceEth:
                revert with 0, 'Require a >= b'
            balanceOf[address(stor7)] -= 10^12 * msg.value / buyPriceEth
            if allowance[address(stor7)][stor9] < 10^12 * msg.value / buyPriceEth:
                revert with 0, 'Require a >= b'
            allowance[address(stor7)][stor9] -= 10^12 * msg.value / buyPriceEth
            emit Transfer((10^12 * msg.value / buyPriceEth), address(owner), msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require halts <= 1
    if halts:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require smart contract is not in halted state'
    if arg2 < sub_43ab50c2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token amount is not enough to transfer'
    if msg.sender == address(owner):
        require finalized <= 1
        if finalized != 1:
            if arg1 != address(owner):
                if arg1 == opsAddress:
                    revert with 0, 'Ops cannot recieve token'
                if address(owner) != msg.sender:
                    if not opsAddress:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Require is owner or ops allowed to initiate transfer'
                    if opsAddress != msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Require is owner or ops allowed to initiate transfer'
        if balanceOf[address(stor7)] < arg2:
            revert with 0, 'Owner`s balance is not enough'
        if allowance[address(stor7)][address(msg.sender)] < arg2:
            revert with 0, 'Sender`s allowance is not enough'
        if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
            revert with 0, 'Token amount value is invalid'
        if not arg1:
            revert with 0, '_to address is invalid'
        if balanceOf[address(stor7)] < arg2:
            revert with 0, 'Require a >= b'
        balanceOf[address(stor7)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'Require r >= a'
        balanceOf[address(arg1)] += arg2
        if allowance[address(stor7)][address(msg.sender)] < arg2:
            revert with 0, 'Require a >= b'
        allowance[address(stor7)][address(msg.sender)] -= arg2
        emit Transfer(arg2, address(owner), arg1);
        if ext_code.size(arg1) > 0:
            mem[164] = 96
            mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
            mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(stor7), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
            require ext_code.size(arg1)
            call arg1.0xc0ee0b8a with:
                 gas gas_remaining wei
                args 0, uint32(stor7), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[128] = 64
        mem[160] = arg2
        mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
        emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), address(owner), arg1);
    else:
        if not opsAddress:
            if arg1 == this.address:
                require exchanges <= 1
                if exchanges != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require smart contract enables exchange'
                if sellPriceEth <= 0:
                    revert with 0, 'sellPriceEth must be > 0'
                if arg2 < sub_43ab50c2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Sell token amount must be larger than tokenForGas value'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token balance is not enough to sold'
                if eth.balance(msg.sender) < minBalanceForAccounts:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Seller balance must be enough to pay the transaction fee'
                if not arg2 / 10^12:
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Require a >= b'
                    if eth.balance(this.address) < gasReserve:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Remaining contract balance is not enough for reserved'
                    if balanceOf[address(stor7)] + arg2 < balanceOf[address(stor7)]:
                        revert with 0, 'Require r >= a'
                    balanceOf[address(stor7)] += arg2
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'Require a >= b'
                    balanceOf[address(msg.sender)] -= arg2
                    call msg.sender with:
                         gas 2300 wei
                else:
                    require arg2 / 10^12
                    if arg2 / 10^12 * sellPriceEth / arg2 / 10^12 != sellPriceEth:
                        revert with 0, 'Require r / a == b'
                    if eth.balance(this.address) < arg2 / 10^12 * sellPriceEth:
                        revert with 0, 'Require a >= b'
                    if eth.balance(this.address) - (arg2 / 10^12 * sellPriceEth) < gasReserve:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Remaining contract balance is not enough for reserved'
                    if balanceOf[address(stor7)] + arg2 < balanceOf[address(stor7)]:
                        revert with 0, 'Require r >= a'
                    balanceOf[address(stor7)] += arg2
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'Require a >= b'
                    balanceOf[address(msg.sender)] -= arg2
                    call msg.sender with:
                       value arg2 / 10^12 * sellPriceEth wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Transfer(arg2, msg.sender, address(owner));
            else:
                require finalized <= 1
                if finalized != 1:
                    if arg1 != address(owner):
                        if arg1 == opsAddress:
                            revert with 0, 'Ops cannot recieve token'
                        if address(owner) != msg.sender:
                            if not opsAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'Require is owner or ops allowed to initiate transfer'
                            if opsAddress != msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'Require is owner or ops allowed to initiate transfer'
                if msg.sender == address(owner):
                    if balanceOf[address(stor7)] < arg2:
                        revert with 0, 'Owner`s balance is not enough'
                    if allowance[address(stor7)][address(msg.sender)] < arg2:
                        revert with 0, 'Sender`s allowance is not enough'
                    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                        revert with 0, 'Token amount value is invalid'
                    if not arg1:
                        revert with 0, '_to address is invalid'
                    if balanceOf[address(stor7)] < arg2:
                        revert with 0, 'Require a >= b'
                    balanceOf[address(stor7)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'Require r >= a'
                    balanceOf[address(arg1)] += arg2
                    if allowance[address(stor7)][address(msg.sender)] < arg2:
                        revert with 0, 'Require a >= b'
                    allowance[address(stor7)][address(msg.sender)] -= arg2
                    emit Transfer(arg2, address(owner), arg1);
                    if ext_code.size(arg1) > 0:
                        mem[164] = 96
                        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
                        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(stor7), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
                        require ext_code.size(arg1)
                        call arg1.0xc0ee0b8a with:
                             gas gas_remaining wei
                            args 0, uint32(stor7), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[128] = 64
                    mem[160] = arg2
                    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
                    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), address(owner), arg1);
                else:
                    if not opsAddress:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'Sender`s balance is not enough'
                        if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                            revert with 0, 'Value is invalid'
                        if not arg1:
                            revert with 0, '_to address is invalid'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'Require a >= b'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'Require r >= a'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        if ext_code.size(arg1) > 0:
                            mem[164] = 96
                            mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
                            mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
                            require ext_code.size(arg1)
                            call arg1.0xc0ee0b8a with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[128] = 64
                        mem[160] = arg2
                        mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
                        emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
                    else:
                        if opsAddress != msg.sender:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'Sender`s balance is not enough'
                            if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                                revert with 0, 'Value is invalid'
                            if not arg1:
                                revert with 0, '_to address is invalid'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'Require a >= b'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'Require r >= a'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            if ext_code.size(arg1) > 0:
                                mem[164] = 96
                                mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
                                mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
                                require ext_code.size(arg1)
                                call arg1.0xc0ee0b8a with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[128] = 64
                            mem[160] = arg2
                            mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
                            emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
                        else:
                            if balanceOf[address(stor7)] < arg2:
                                revert with 0, 'Owner`s balance is not enough'
                            if allowance[address(stor7)][address(msg.sender)] < arg2:
                                revert with 0, 'Sender`s allowance is not enough'
                            if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                                revert with 0, 'Token amount value is invalid'
                            if not arg1:
                                revert with 0, '_to address is invalid'
                            if balanceOf[address(stor7)] < arg2:
                                revert with 0, 'Require a >= b'
                            balanceOf[address(stor7)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'Require r >= a'
                            balanceOf[address(arg1)] += arg2
                            if allowance[address(stor7)][address(msg.sender)] < arg2:
                                revert with 0, 'Require a >= b'
                            allowance[address(stor7)][address(msg.sender)] -= arg2
                            emit Transfer(arg2, address(owner), arg1);
                            if ext_code.size(arg1) > 0:
                                mem[164] = 96
                                mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
                                mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(stor7), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
                                require ext_code.size(arg1)
                                call arg1.0xc0ee0b8a with:
                                     gas gas_remaining wei
                                    args 0, uint32(stor7), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[128] = 64
                            mem[160] = arg2
                            mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
                            emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), address(owner), arg1);
        else:
            if msg.sender == opsAddress:
                require finalized <= 1
                if finalized != 1:
                    if arg1 != address(owner):
                        if arg1 == opsAddress:
                            revert with 0, 'Ops cannot recieve token'
                        if address(owner) != msg.sender:
                            if not opsAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'Require is owner or ops allowed to initiate transfer'
                            if opsAddress != msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'Require is owner or ops allowed to initiate transfer'
                if msg.sender == address(owner):
                    if balanceOf[address(stor7)] < arg2:
                        revert with 0, 'Owner`s balance is not enough'
                    if allowance[address(stor7)][address(msg.sender)] < arg2:
                        revert with 0, 'Sender`s allowance is not enough'
                    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                        revert with 0, 'Token amount value is invalid'
                    if not arg1:
                        revert with 0, '_to address is invalid'
                    if balanceOf[address(stor7)] < arg2:
                        revert with 0, 'Require a >= b'
                    balanceOf[address(stor7)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'Require r >= a'
                    balanceOf[address(arg1)] += arg2
                    if allowance[address(stor7)][address(msg.sender)] < arg2:
                        revert with 0, 'Require a >= b'
                    allowance[address(stor7)][address(msg.sender)] -= arg2
                    emit Transfer(arg2, address(owner), arg1);
                    if ext_code.size(arg1) > 0:
                        mem[164] = 96
                        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
                        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(stor7), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
                        require ext_code.size(arg1)
                        call arg1.0xc0ee0b8a with:
                             gas gas_remaining wei
                            args 0, uint32(stor7), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[128] = 64
                    mem[160] = arg2
                    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
                    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), address(owner), arg1);
                else:
                    if not opsAddress:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'Sender`s balance is not enough'
                        if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                            revert with 0, 'Value is invalid'
                        if not arg1:
                            revert with 0, '_to address is invalid'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'Require a >= b'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'Require r >= a'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        if ext_code.size(arg1) > 0:
                            mem[164] = 96
                            mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
                            mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
                            require ext_code.size(arg1)
                            call arg1.0xc0ee0b8a with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[128] = 64
                        mem[160] = arg2
                        mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
                        emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
                    else:
                        if opsAddress != msg.sender:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'Sender`s balance is not enough'
                            if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                                revert with 0, 'Value is invalid'
                            if not arg1:
                                revert with 0, '_to address is invalid'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'Require a >= b'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'Require r >= a'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            if ext_code.size(arg1) > 0:
                                mem[164] = 96
                                mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
                                mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
                                require ext_code.size(arg1)
                                call arg1.0xc0ee0b8a with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[128] = 64
                            mem[160] = arg2
                            mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
                            emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
                        else:
                            if balanceOf[address(stor7)] < arg2:
                                revert with 0, 'Owner`s balance is not enough'
                            if allowance[address(stor7)][address(msg.sender)] < arg2:
                                revert with 0, 'Sender`s allowance is not enough'
                            if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                                revert with 0, 'Token amount value is invalid'
                            if not arg1:
                                revert with 0, '_to address is invalid'
                            if balanceOf[address(stor7)] < arg2:
                                revert with 0, 'Require a >= b'
                            balanceOf[address(stor7)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'Require r >= a'
                            balanceOf[address(arg1)] += arg2
                            if allowance[address(stor7)][address(msg.sender)] < arg2:
                                revert with 0, 'Require a >= b'
                            allowance[address(stor7)][address(msg.sender)] -= arg2
                            emit Transfer(arg2, address(owner), arg1);
                            if ext_code.size(arg1) > 0:
                                mem[164] = 96
                                mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
                                mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(stor7), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
                                require ext_code.size(arg1)
                                call arg1.0xc0ee0b8a with:
                                     gas gas_remaining wei
                                    args 0, uint32(stor7), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[128] = 64
                            mem[160] = arg2
                            mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
                            emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), address(owner), arg1);
            else:
                if arg1 == this.address:
                    require exchanges <= 1
                    if exchanges != 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require smart contract enables exchange'
                    if sellPriceEth <= 0:
                        revert with 0, 'sellPriceEth must be > 0'
                    if arg2 < sub_43ab50c2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Sell token amount must be larger than tokenForGas value'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token balance is not enough to sold'
                    if eth.balance(msg.sender) < minBalanceForAccounts:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Seller balance must be enough to pay the transaction fee'
                    if not arg2 / 10^12:
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Require a >= b'
                        if eth.balance(this.address) < gasReserve:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'Remaining contract balance is not enough for reserved'
                        if balanceOf[address(stor7)] + arg2 < balanceOf[address(stor7)]:
                            revert with 0, 'Require r >= a'
                        balanceOf[address(stor7)] += arg2
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'Require a >= b'
                        balanceOf[address(msg.sender)] -= arg2
                        call msg.sender with:
                             gas 2300 wei
                    else:
                        require arg2 / 10^12
                        if arg2 / 10^12 * sellPriceEth / arg2 / 10^12 != sellPriceEth:
                            revert with 0, 'Require r / a == b'
                        if eth.balance(this.address) < arg2 / 10^12 * sellPriceEth:
                            revert with 0, 'Require a >= b'
                        if eth.balance(this.address) - (arg2 / 10^12 * sellPriceEth) < gasReserve:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'Remaining contract balance is not enough for reserved'
                        if balanceOf[address(stor7)] + arg2 < balanceOf[address(stor7)]:
                            revert with 0, 'Require r >= a'
                        balanceOf[address(stor7)] += arg2
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'Require a >= b'
                        balanceOf[address(msg.sender)] -= arg2
                        call msg.sender with:
                           value arg2 / 10^12 * sellPriceEth wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Transfer(arg2, msg.sender, address(owner));
                else:
                    require finalized <= 1
                    if finalized != 1:
                        if arg1 != address(owner):
                            if arg1 == opsAddress:
                                revert with 0, 'Ops cannot recieve token'
                            if address(owner) != msg.sender:
                                if not opsAddress:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'Require is owner or ops allowed to initiate transfer'
                                if opsAddress != msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'Require is owner or ops allowed to initiate transfer'
                    if msg.sender == address(owner):
                        if balanceOf[address(stor7)] < arg2:
                            revert with 0, 'Owner`s balance is not enough'
                        if allowance[address(stor7)][address(msg.sender)] < arg2:
                            revert with 0, 'Sender`s allowance is not enough'
                        if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                            revert with 0, 'Token amount value is invalid'
                        if not arg1:
                            revert with 0, '_to address is invalid'
                        if balanceOf[address(stor7)] < arg2:
                            revert with 0, 'Require a >= b'
                        balanceOf[address(stor7)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'Require r >= a'
                        balanceOf[address(arg1)] += arg2
                        if allowance[address(stor7)][address(msg.sender)] < arg2:
                            revert with 0, 'Require a >= b'
                        allowance[address(stor7)][address(msg.sender)] -= arg2
                        emit Transfer(arg2, address(owner), arg1);
                        if ext_code.size(arg1) > 0:
                            mem[164] = 96
                            mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
                            mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(stor7), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
                            require ext_code.size(arg1)
                            call arg1.0xc0ee0b8a with:
                                 gas gas_remaining wei
                                args 0, uint32(stor7), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[128] = 64
                        mem[160] = arg2
                        mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
                        emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), address(owner), arg1);
                    else:
                        if not opsAddress:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'Sender`s balance is not enough'
                            if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                                revert with 0, 'Value is invalid'
                            if not arg1:
                                revert with 0, '_to address is invalid'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'Require a >= b'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'Require r >= a'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            if ext_code.size(arg1) > 0:
                                mem[164] = 96
                                mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
                                mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
                                require ext_code.size(arg1)
                                call arg1.0xc0ee0b8a with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[128] = 64
                            mem[160] = arg2
                            mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
                            emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
                        else:
                            if opsAddress != msg.sender:
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'Sender`s balance is not enough'
                                if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                                    revert with 0, 'Value is invalid'
                                if not arg1:
                                    revert with 0, '_to address is invalid'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'Require a >= b'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'Require r >= a'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[164] = 96
                                    mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
                                    mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
                                    require ext_code.size(arg1)
                                    call arg1.0xc0ee0b8a with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                mem[128] = 64
                                mem[160] = arg2
                                mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
                                emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
                            else:
                                if balanceOf[address(stor7)] < arg2:
                                    revert with 0, 'Owner`s balance is not enough'
                                if allowance[address(stor7)][address(msg.sender)] < arg2:
                                    revert with 0, 'Sender`s allowance is not enough'
                                if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
                                    revert with 0, 'Token amount value is invalid'
                                if not arg1:
                                    revert with 0, '_to address is invalid'
                                if balanceOf[address(stor7)] < arg2:
                                    revert with 0, 'Require a >= b'
                                balanceOf[address(stor7)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'Require r >= a'
                                balanceOf[address(arg1)] += arg2
                                if allowance[address(stor7)][address(msg.sender)] < arg2:
                                    revert with 0, 'Require a >= b'
                                allowance[address(stor7)][address(msg.sender)] -= arg2
                                emit Transfer(arg2, address(owner), arg1);
                                if ext_code.size(arg1) > 0:
                                    mem[164] = 96
                                    mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
                                    mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(stor7), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
                                    require ext_code.size(arg1)
                                    call arg1.0xc0ee0b8a with:
                                         gas gas_remaining wei
                                        args 0, uint32(stor7), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                mem[128] = 64
                                mem[160] = arg2
                                mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
                                emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), address(owner), arg1);
    return 1
}



}
