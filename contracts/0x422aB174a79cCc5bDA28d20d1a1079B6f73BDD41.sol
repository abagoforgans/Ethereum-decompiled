contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
address stor4;
uint256 stor6;
uint256 stor7;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint8 stor15;

function _fallback() payable {
    stor3 = 0x871d9225c237049c2fb82a32647511128741a616
    stor6 = 212
    stor7 = 5088
    stor9 = 4047500
    stor10 = 4200140
    stor11 = 800 * 10^18
    stor12 = 200 * 10^18
    stor13 = 0
    stor14 = 0
    stor15 = 0
    require not msg.value
    stor4 = msg.sender
    stor0 = stor12
    stor1[address(msg.sender)] = stor12
    return code.data[201 len 5274]
}



// =====================  Runtime code  =====================


const name = 'Profit 1000 Token'

const decimals = 18

const symbol = '1000'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address multisigAddress;
address foundationAddress;
address candidateAddress;
uint256 hour_blocks;
uint256 day_blocks;
mapping of uint256 stor8;
uint256 startBlock;
uint256 endBlock;
uint256 crowdsaleTokenSupply;
uint256 foundationTokenSupply;
uint256 tokenSold;
uint256 etherRaised;
uint8 halted;

function endBlock() {
    return endBlock
}

function totalSupply() {
    return totalSupply
}

function crowdsaleTokenSold() {
    return tokenSold
}

function foundation() {
    return foundationAddress
}

function crowdsaleTokenSupply() {
    return crowdsaleTokenSupply
}

function presaleEtherRaised() {
    return etherRaised
}

function multisig() {
    return multisigAddress
}

function startBlock() {
    return startBlock
}

function day_blocks() {
    return day_blocks
}

function candidate() {
    return candidateAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getTokenSold() {
    return tokenSold
}

function hour_blocks() {
    return hour_blocks
}

function halted() {
    return bool(halted)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getEtherRaised() {
    return etherRaised
}

function foundationTokenSupply() {
    return foundationTokenSupply
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function halt() {
    require foundationAddress == msg.sender
    halted = 1
    emit Halt()
}

function unhalt() {
    require foundationAddress == msg.sender
    halted = 0
    emit Unhalt()
}

function isContract(address arg1) {
    if ext_code.size(arg1) <= 0:
        return 0
    return 1
}

function cancelFoundationTransfer() {
    require foundationAddress == msg.sender
    candidateAddress = 0
}

function proposeFoundationTransfer(address arg1) {
    require foundationAddress == msg.sender
    candidateAddress = arg1
}

function setMultisig(address arg1) {
    require foundationAddress == msg.sender
    require arg1
    multisigAddress = arg1
}

function crowdsaleOn() {
    if block.number < startBlock:
        return block.number >= startBlock
    return block.number <= endBlock
}

function returnRate() {
    if block.number < startBlock:
        return 0
    if block.number > endBlock:
        return 0
    return 4
}

function perAddressCap() {
    require (etherRaised / 100) + 1000 * 10^18 >= 1000 * 10^18
    return ((etherRaised / 100) + 1000 * 10^18)
}

function acceptFoundationTransfer() {
    require candidateAddress == msg.sender
    foundationAddress = candidateAddress
    candidateAddress = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function burn(uint256 arg1) {
    require foundationAddress == msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if ext_code.size(arg1) <= 0:
    else:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if ext_code.size(arg1) <= 0:
    else:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function buyRecipient(address arg1) payable {
    require not halted
    require msg.value
    require block.number >= startBlock
    require block.number <= endBlock
    require (etherRaised / 100) + 1000 * 10^18 >= 1000 * 10^18
    require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
    require msg.value + stor8[address(arg1)] <= (etherRaised / 100) + 1000 * 10^18
    if block.number < startBlock:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require tokenSold >= tokenSold
        require tokenSold <= crowdsaleTokenSupply
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require totalSupply >= totalSupply
        require msg.value + etherRaised >= etherRaised
        etherRaised += msg.value
        require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
        stor8[address(arg1)] += msg.value
        require tokenSold >= tokenSold
        if crowdsaleTokenSupply == tokenSold:
            endBlock = block.number
        call multisigAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer(0, this.address, arg1);
    else:
        if block.number > endBlock:
            if msg.value:
                require msg.value
                require not 0 / msg.value
            require tokenSold >= tokenSold
            require tokenSold <= crowdsaleTokenSupply
            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            require totalSupply >= totalSupply
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
            require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
            stor8[address(arg1)] += msg.value
            require tokenSold >= tokenSold
            if crowdsaleTokenSupply == tokenSold:
                endBlock = block.number
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer(0, this.address, arg1);
        else:
            if msg.value:
                require msg.value
                require 4 * msg.value / msg.value == 4
            require (4 * msg.value) + tokenSold >= tokenSold
            require (4 * msg.value) + tokenSold <= crowdsaleTokenSupply
            require (4 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 4 * msg.value
            require (4 * msg.value) + totalSupply >= totalSupply
            totalSupply += 4 * msg.value
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
            require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
            stor8[address(arg1)] += msg.value
            require (4 * msg.value) + tokenSold >= tokenSold
            tokenSold += 4 * msg.value
            if crowdsaleTokenSupply == (4 * msg.value) + tokenSold:
                endBlock = block.number
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer((4 * msg.value), this.address, arg1);
}

function buy() payable {
    require not halted
    require msg.value
    require block.number >= startBlock
    require block.number <= endBlock
    require (etherRaised / 100) + 1000 * 10^18 >= 1000 * 10^18
    require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
    require msg.value + stor8[address(msg.sender)] <= (etherRaised / 100) + 1000 * 10^18
    if block.number < startBlock:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require tokenSold >= tokenSold
        require tokenSold <= crowdsaleTokenSupply
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require totalSupply >= totalSupply
        require msg.value + etherRaised >= etherRaised
        etherRaised += msg.value
        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
        stor8[address(msg.sender)] += msg.value
        require tokenSold >= tokenSold
        if crowdsaleTokenSupply == tokenSold:
            endBlock = block.number
        call multisigAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer(0, this.address, msg.sender);
    else:
        if block.number > endBlock:
            if msg.value:
                require msg.value
                require not 0 / msg.value
            require tokenSold >= tokenSold
            require tokenSold <= crowdsaleTokenSupply
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require totalSupply >= totalSupply
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] += msg.value
            require tokenSold >= tokenSold
            if crowdsaleTokenSupply == tokenSold:
                endBlock = block.number
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer(0, this.address, msg.sender);
        else:
            if msg.value:
                require msg.value
                require 4 * msg.value / msg.value == 4
            require (4 * msg.value) + tokenSold >= tokenSold
            require (4 * msg.value) + tokenSold <= crowdsaleTokenSupply
            require (4 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 4 * msg.value
            require (4 * msg.value) + totalSupply >= totalSupply
            totalSupply += 4 * msg.value
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] += msg.value
            require (4 * msg.value) + tokenSold >= tokenSold
            tokenSold += 4 * msg.value
            if crowdsaleTokenSupply == (4 * msg.value) + tokenSold:
                endBlock = block.number
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer((4 * msg.value), this.address, msg.sender);
}

function _fallback() payable {
    require not halted
    require msg.value
    require block.number >= startBlock
    require block.number <= endBlock
    require (etherRaised / 100) + 1000 * 10^18 >= 1000 * 10^18
    require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
    require msg.value + stor8[address(msg.sender)] <= (etherRaised / 100) + 1000 * 10^18
    if block.number < startBlock:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require tokenSold >= tokenSold
        require tokenSold <= crowdsaleTokenSupply
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require totalSupply >= totalSupply
        require msg.value + etherRaised >= etherRaised
        etherRaised += msg.value
        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
        stor8[address(msg.sender)] += msg.value
        require tokenSold >= tokenSold
        if crowdsaleTokenSupply == tokenSold:
            endBlock = block.number
        call multisigAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer(0, this.address, msg.sender);
    else:
        if block.number > endBlock:
            if msg.value:
                require msg.value
                require not 0 / msg.value
            require tokenSold >= tokenSold
            require tokenSold <= crowdsaleTokenSupply
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require totalSupply >= totalSupply
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] += msg.value
            require tokenSold >= tokenSold
            if crowdsaleTokenSupply == tokenSold:
                endBlock = block.number
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer(0, this.address, msg.sender);
        else:
            if msg.value:
                require msg.value
                require 4 * msg.value / msg.value == 4
            require (4 * msg.value) + tokenSold >= tokenSold
            require (4 * msg.value) + tokenSold <= crowdsaleTokenSupply
            require (4 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 4 * msg.value
            require (4 * msg.value) + totalSupply >= totalSupply
            totalSupply += 4 * msg.value
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] += msg.value
            require (4 * msg.value) + tokenSold >= tokenSold
            tokenSold += 4 * msg.value
            if crowdsaleTokenSupply == (4 * msg.value) + tokenSold:
                endBlock = block.number
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer((4 * msg.value), this.address, msg.sender);
}



}
