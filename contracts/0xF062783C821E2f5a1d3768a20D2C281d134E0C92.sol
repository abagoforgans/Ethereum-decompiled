contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint8 stor3; offset 152
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
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint8 stor21;

function _fallback() payable {
    Mask(152, 0, stor3.field_0) = 0x3f69f85bb97e221795f4c2708ea004c73378fa
    uint8(stor3.field_152) = 0
    stor6 = 212
    stor7 = 5088
    stor9 = 4047500
    stor10 = 4083116
    stor11 = 4083116
    stor12 = 4118732
    stor13 = 4154348
    stor14 = 4189964
    stor15 = 4983692
    stor16 = 70000000 * 10^18
    stor17 = 10000000 * 10^18
    stor18 = 20000000 * 10^18
    stor19 = 0
    stor20 = 0
    stor21 = 0
    require not msg.value
    stor4 = msg.sender
    require stor18 + stor17 >= stor17
    stor0 = stor18 + stor17
    stor1[stor4] = stor18 + stor17
    return code.data[310 len 5808]
}



// =====================  Runtime code  =====================


const name = 'Game Player Coin'

const decimals = 18

const symbol = 'GPC'


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
uint256 preEndBlock;
uint256 phase1StartBlock;
uint256 phase1EndBlock;
uint256 phase2EndBlock;
uint256 phase3EndBlock;
uint256 endBlock;
uint256 crowdsaleTokenSupply;
uint256 bountyTokenSupply;
uint256 foundationTokenSupply;
uint256 tokenSold;
uint256 etherRaised;
uint8 halted;

function endBlock() {
    return endBlock
}

function phase1StartBlock() {
    return phase1StartBlock
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

function phase1EndBlock() {
    return phase1EndBlock
}

function day_blocks() {
    return day_blocks
}

function bountyTokenSupply() {
    return bountyTokenSupply
}

function phase2EndBlock() {
    return phase2EndBlock
}

function candidate() {
    return candidateAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function preEndBlock() {
    return preEndBlock
}

function phase3EndBlock() {
    return phase3EndBlock
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

function perAddressCap() {
    require (etherRaised / 100) + 1000 * 10^18 >= 1000 * 10^18
    return ((etherRaised / 100) + 1000 * 10^18)
}

function preCrowdsaleOn() {
    if block.number < startBlock:
        return block.number >= startBlock
    return block.number <= preEndBlock
}

function acceptFoundationTransfer() {
    require candidateAddress == msg.sender
    foundationAddress = candidateAddress
    candidateAddress = 0
}

function crowdsaleOn() {
    if block.number < phase1StartBlock:
        return block.number >= phase1StartBlock
    return block.number <= endBlock
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

function returnRate() {
    if block.number >= startBlock:
        if block.number <= preEndBlock:
            return 3000
    if block.number < phase1StartBlock:
        if block.number <= phase1EndBlock:
            if block.number <= phase2EndBlock:
                return 2000
        else:
            if block.number <= phase2EndBlock:
                return 2600
    else:
        if block.number <= phase1EndBlock:
            return 2800
        if block.number <= phase2EndBlock:
            return 2600
    ('gt', 'number', ('stor', ('name', 'phase2EndBlock', 13)))
    if block.number > phase3EndBlock:
        return 2000
    return 2400
}

function buyRecipient(address arg1) payable {
    require not halted
    require msg.value
    if block.number < startBlock:
        require block.number >= phase1StartBlock
        require block.number <= endBlock
    else:
        if block.number > preEndBlock:
            require block.number >= phase1StartBlock
            require block.number <= endBlock
    require (etherRaised / 100) + 1000 * 10^18 >= 1000 * 10^18
    require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
    require msg.value + stor8[address(arg1)] <= (etherRaised / 100) + 1000 * 10^18
    if block.number < startBlock:
        if block.number < phase1StartBlock:
            if block.number <= phase1EndBlock:
                if block.number <= phase2EndBlock:
                    if msg.value:
                        require msg.value
                        require 2000 * msg.value / msg.value == 2000
                    require (2000 * msg.value) + tokenSold >= tokenSold
                    require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                    require (2000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 2000 * msg.value
                    require (2000 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 2000 * msg.value
                    require msg.value + etherRaised >= etherRaised
                    etherRaised += msg.value
                    require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                    stor8[address(arg1)] += msg.value
                    require (2000 * msg.value) + tokenSold >= tokenSold
                    tokenSold += 2000 * msg.value
                    if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                        if block.number < preEndBlock:
                            preEndBlock = block.number
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Transfer((2000 * msg.value), this.address, arg1);
                else:
                    if block.number > phase3EndBlock:
                        if msg.value:
                            require msg.value
                            require 2000 * msg.value / msg.value == 2000
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 2000 * msg.value
                        require (2000 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2000 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                        stor8[address(arg1)] += msg.value
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2000 * msg.value
                        if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2000 * msg.value), this.address, arg1);
                    else:
                        if msg.value:
                            require msg.value
                            require 2400 * msg.value / msg.value == 2400
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2400 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 2400 * msg.value
                        require (2400 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2400 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                        stor8[address(arg1)] += msg.value
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2400 * msg.value
                        if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2400 * msg.value), this.address, arg1);
            else:
                if block.number <= phase2EndBlock:
                    if msg.value:
                        require msg.value
                        require 2600 * msg.value / msg.value == 2600
                    require (2600 * msg.value) + tokenSold >= tokenSold
                    require (2600 * msg.value) + tokenSold <= crowdsaleTokenSupply
                    require (2600 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 2600 * msg.value
                    require (2600 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 2600 * msg.value
                    require msg.value + etherRaised >= etherRaised
                    etherRaised += msg.value
                    require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                    stor8[address(arg1)] += msg.value
                    require (2600 * msg.value) + tokenSold >= tokenSold
                    tokenSold += 2600 * msg.value
                    if crowdsaleTokenSupply == (2600 * msg.value) + tokenSold:
                        if block.number < preEndBlock:
                            preEndBlock = block.number
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Transfer((2600 * msg.value), this.address, arg1);
                else:
                    if block.number > phase3EndBlock:
                        if msg.value:
                            require msg.value
                            require 2000 * msg.value / msg.value == 2000
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 2000 * msg.value
                        require (2000 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2000 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                        stor8[address(arg1)] += msg.value
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2000 * msg.value
                        if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2000 * msg.value), this.address, arg1);
                    else:
                        if msg.value:
                            require msg.value
                            require 2400 * msg.value / msg.value == 2400
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2400 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 2400 * msg.value
                        require (2400 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2400 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                        stor8[address(arg1)] += msg.value
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2400 * msg.value
                        if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2400 * msg.value), this.address, arg1);
        else:
            if block.number <= phase1EndBlock:
                if msg.value:
                    require msg.value
                    require 2800 * msg.value / msg.value == 2800
                require (2800 * msg.value) + tokenSold >= tokenSold
                require (2800 * msg.value) + tokenSold <= crowdsaleTokenSupply
                require (2800 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 2800 * msg.value
                require (2800 * msg.value) + totalSupply >= totalSupply
                totalSupply += 2800 * msg.value
                require msg.value + etherRaised >= etherRaised
                etherRaised += msg.value
                require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                stor8[address(arg1)] += msg.value
                require (2800 * msg.value) + tokenSold >= tokenSold
                tokenSold += 2800 * msg.value
                if crowdsaleTokenSupply == (2800 * msg.value) + tokenSold:
                    if block.number < preEndBlock:
                        preEndBlock = block.number
                    endBlock = block.number
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Transfer((2800 * msg.value), this.address, arg1);
            else:
                if block.number <= phase2EndBlock:
                    if msg.value:
                        require msg.value
                        require 2600 * msg.value / msg.value == 2600
                    require (2600 * msg.value) + tokenSold >= tokenSold
                    require (2600 * msg.value) + tokenSold <= crowdsaleTokenSupply
                    require (2600 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 2600 * msg.value
                    require (2600 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 2600 * msg.value
                    require msg.value + etherRaised >= etherRaised
                    etherRaised += msg.value
                    require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                    stor8[address(arg1)] += msg.value
                    require (2600 * msg.value) + tokenSold >= tokenSold
                    tokenSold += 2600 * msg.value
                    if crowdsaleTokenSupply == (2600 * msg.value) + tokenSold:
                        if block.number < preEndBlock:
                            preEndBlock = block.number
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Transfer((2600 * msg.value), this.address, arg1);
                else:
                    if block.number > phase3EndBlock:
                        if msg.value:
                            require msg.value
                            require 2000 * msg.value / msg.value == 2000
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 2000 * msg.value
                        require (2000 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2000 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                        stor8[address(arg1)] += msg.value
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2000 * msg.value
                        if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2000 * msg.value), this.address, arg1);
                    else:
                        if msg.value:
                            require msg.value
                            require 2400 * msg.value / msg.value == 2400
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2400 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 2400 * msg.value
                        require (2400 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2400 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                        stor8[address(arg1)] += msg.value
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2400 * msg.value
                        if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2400 * msg.value), this.address, arg1);
    else:
        if block.number <= preEndBlock:
            if msg.value:
                require msg.value
                require 3000 * msg.value / msg.value == 3000
            require (3000 * msg.value) + tokenSold >= tokenSold
            require (3000 * msg.value) + tokenSold <= crowdsaleTokenSupply
            require (3000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 3000 * msg.value
            require (3000 * msg.value) + totalSupply >= totalSupply
            totalSupply += 3000 * msg.value
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
            require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
            stor8[address(arg1)] += msg.value
            require (3000 * msg.value) + tokenSold >= tokenSold
            tokenSold += 3000 * msg.value
            if crowdsaleTokenSupply == (3000 * msg.value) + tokenSold:
                if block.number < preEndBlock:
                    preEndBlock = block.number
                endBlock = block.number
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer((3000 * msg.value), this.address, arg1);
        else:
            if block.number < phase1StartBlock:
                if block.number <= phase1EndBlock:
                    if block.number <= phase2EndBlock:
                        if msg.value:
                            require msg.value
                            require 2000 * msg.value / msg.value == 2000
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 2000 * msg.value
                        require (2000 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2000 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                        stor8[address(arg1)] += msg.value
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2000 * msg.value
                        if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2000 * msg.value), this.address, arg1);
                    else:
                        if block.number > phase3EndBlock:
                            if msg.value:
                                require msg.value
                                require 2000 * msg.value / msg.value == 2000
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 2000 * msg.value
                            require (2000 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2000 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                            stor8[address(arg1)] += msg.value
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2000 * msg.value
                            if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2000 * msg.value), this.address, arg1);
                        else:
                            if msg.value:
                                require msg.value
                                require 2400 * msg.value / msg.value == 2400
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2400 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 2400 * msg.value
                            require (2400 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2400 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                            stor8[address(arg1)] += msg.value
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2400 * msg.value
                            if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2400 * msg.value), this.address, arg1);
                else:
                    if block.number <= phase2EndBlock:
                        if msg.value:
                            require msg.value
                            require 2600 * msg.value / msg.value == 2600
                        require (2600 * msg.value) + tokenSold >= tokenSold
                        require (2600 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2600 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 2600 * msg.value
                        require (2600 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2600 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                        stor8[address(arg1)] += msg.value
                        require (2600 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2600 * msg.value
                        if crowdsaleTokenSupply == (2600 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2600 * msg.value), this.address, arg1);
                    else:
                        if block.number > phase3EndBlock:
                            if msg.value:
                                require msg.value
                                require 2000 * msg.value / msg.value == 2000
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 2000 * msg.value
                            require (2000 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2000 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                            stor8[address(arg1)] += msg.value
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2000 * msg.value
                            if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2000 * msg.value), this.address, arg1);
                        else:
                            if msg.value:
                                require msg.value
                                require 2400 * msg.value / msg.value == 2400
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2400 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 2400 * msg.value
                            require (2400 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2400 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                            stor8[address(arg1)] += msg.value
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2400 * msg.value
                            if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2400 * msg.value), this.address, arg1);
            else:
                if block.number <= phase1EndBlock:
                    if msg.value:
                        require msg.value
                        require 2800 * msg.value / msg.value == 2800
                    require (2800 * msg.value) + tokenSold >= tokenSold
                    require (2800 * msg.value) + tokenSold <= crowdsaleTokenSupply
                    require (2800 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 2800 * msg.value
                    require (2800 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 2800 * msg.value
                    require msg.value + etherRaised >= etherRaised
                    etherRaised += msg.value
                    require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                    stor8[address(arg1)] += msg.value
                    require (2800 * msg.value) + tokenSold >= tokenSold
                    tokenSold += 2800 * msg.value
                    if crowdsaleTokenSupply == (2800 * msg.value) + tokenSold:
                        if block.number < preEndBlock:
                            preEndBlock = block.number
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Transfer((2800 * msg.value), this.address, arg1);
                else:
                    if block.number <= phase2EndBlock:
                        if msg.value:
                            require msg.value
                            require 2600 * msg.value / msg.value == 2600
                        require (2600 * msg.value) + tokenSold >= tokenSold
                        require (2600 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2600 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 2600 * msg.value
                        require (2600 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2600 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                        stor8[address(arg1)] += msg.value
                        require (2600 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2600 * msg.value
                        if crowdsaleTokenSupply == (2600 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2600 * msg.value), this.address, arg1);
                    else:
                        if block.number > phase3EndBlock:
                            if msg.value:
                                require msg.value
                                require 2000 * msg.value / msg.value == 2000
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 2000 * msg.value
                            require (2000 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2000 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                            stor8[address(arg1)] += msg.value
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2000 * msg.value
                            if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2000 * msg.value), this.address, arg1);
                        else:
                            if msg.value:
                                require msg.value
                                require 2400 * msg.value / msg.value == 2400
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2400 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 2400 * msg.value
                            require (2400 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2400 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(arg1)] >= stor8[address(arg1)]
                            stor8[address(arg1)] += msg.value
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2400 * msg.value
                            if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2400 * msg.value), this.address, arg1);
}

function buy() payable {
    require not halted
    require msg.value
    if block.number < startBlock:
        require block.number >= phase1StartBlock
        require block.number <= endBlock
    else:
        if block.number > preEndBlock:
            require block.number >= phase1StartBlock
            require block.number <= endBlock
    require (etherRaised / 100) + 1000 * 10^18 >= 1000 * 10^18
    require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
    require msg.value + stor8[address(msg.sender)] <= (etherRaised / 100) + 1000 * 10^18
    if block.number < startBlock:
        if block.number < phase1StartBlock:
            if block.number <= phase1EndBlock:
                if block.number <= phase2EndBlock:
                    if msg.value:
                        require msg.value
                        require 2000 * msg.value / msg.value == 2000
                    require (2000 * msg.value) + tokenSold >= tokenSold
                    require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                    require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 2000 * msg.value
                    require (2000 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 2000 * msg.value
                    require msg.value + etherRaised >= etherRaised
                    etherRaised += msg.value
                    require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                    stor8[address(msg.sender)] += msg.value
                    require (2000 * msg.value) + tokenSold >= tokenSold
                    tokenSold += 2000 * msg.value
                    if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                        if block.number < preEndBlock:
                            preEndBlock = block.number
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Transfer((2000 * msg.value), this.address, msg.sender);
                else:
                    if block.number > phase3EndBlock:
                        if msg.value:
                            require msg.value
                            require 2000 * msg.value / msg.value == 2000
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2000 * msg.value
                        require (2000 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2000 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2000 * msg.value
                        if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2000 * msg.value), this.address, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 2400 * msg.value / msg.value == 2400
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2400 * msg.value
                        require (2400 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2400 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2400 * msg.value
                        if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2400 * msg.value), this.address, msg.sender);
            else:
                if block.number <= phase2EndBlock:
                    if msg.value:
                        require msg.value
                        require 2600 * msg.value / msg.value == 2600
                    require (2600 * msg.value) + tokenSold >= tokenSold
                    require (2600 * msg.value) + tokenSold <= crowdsaleTokenSupply
                    require (2600 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 2600 * msg.value
                    require (2600 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 2600 * msg.value
                    require msg.value + etherRaised >= etherRaised
                    etherRaised += msg.value
                    require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                    stor8[address(msg.sender)] += msg.value
                    require (2600 * msg.value) + tokenSold >= tokenSold
                    tokenSold += 2600 * msg.value
                    if crowdsaleTokenSupply == (2600 * msg.value) + tokenSold:
                        if block.number < preEndBlock:
                            preEndBlock = block.number
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Transfer((2600 * msg.value), this.address, msg.sender);
                else:
                    if block.number > phase3EndBlock:
                        if msg.value:
                            require msg.value
                            require 2000 * msg.value / msg.value == 2000
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2000 * msg.value
                        require (2000 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2000 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2000 * msg.value
                        if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2000 * msg.value), this.address, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 2400 * msg.value / msg.value == 2400
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2400 * msg.value
                        require (2400 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2400 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2400 * msg.value
                        if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2400 * msg.value), this.address, msg.sender);
        else:
            if block.number <= phase1EndBlock:
                if msg.value:
                    require msg.value
                    require 2800 * msg.value / msg.value == 2800
                require (2800 * msg.value) + tokenSold >= tokenSold
                require (2800 * msg.value) + tokenSold <= crowdsaleTokenSupply
                require (2800 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 2800 * msg.value
                require (2800 * msg.value) + totalSupply >= totalSupply
                totalSupply += 2800 * msg.value
                require msg.value + etherRaised >= etherRaised
                etherRaised += msg.value
                require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                stor8[address(msg.sender)] += msg.value
                require (2800 * msg.value) + tokenSold >= tokenSold
                tokenSold += 2800 * msg.value
                if crowdsaleTokenSupply == (2800 * msg.value) + tokenSold:
                    if block.number < preEndBlock:
                        preEndBlock = block.number
                    endBlock = block.number
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Transfer((2800 * msg.value), this.address, msg.sender);
            else:
                if block.number <= phase2EndBlock:
                    if msg.value:
                        require msg.value
                        require 2600 * msg.value / msg.value == 2600
                    require (2600 * msg.value) + tokenSold >= tokenSold
                    require (2600 * msg.value) + tokenSold <= crowdsaleTokenSupply
                    require (2600 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 2600 * msg.value
                    require (2600 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 2600 * msg.value
                    require msg.value + etherRaised >= etherRaised
                    etherRaised += msg.value
                    require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                    stor8[address(msg.sender)] += msg.value
                    require (2600 * msg.value) + tokenSold >= tokenSold
                    tokenSold += 2600 * msg.value
                    if crowdsaleTokenSupply == (2600 * msg.value) + tokenSold:
                        if block.number < preEndBlock:
                            preEndBlock = block.number
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Transfer((2600 * msg.value), this.address, msg.sender);
                else:
                    if block.number > phase3EndBlock:
                        if msg.value:
                            require msg.value
                            require 2000 * msg.value / msg.value == 2000
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2000 * msg.value
                        require (2000 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2000 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2000 * msg.value
                        if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2000 * msg.value), this.address, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 2400 * msg.value / msg.value == 2400
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2400 * msg.value
                        require (2400 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2400 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2400 * msg.value
                        if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2400 * msg.value), this.address, msg.sender);
    else:
        if block.number <= preEndBlock:
            if msg.value:
                require msg.value
                require 3000 * msg.value / msg.value == 3000
            require (3000 * msg.value) + tokenSold >= tokenSold
            require (3000 * msg.value) + tokenSold <= crowdsaleTokenSupply
            require (3000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 3000 * msg.value
            require (3000 * msg.value) + totalSupply >= totalSupply
            totalSupply += 3000 * msg.value
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] += msg.value
            require (3000 * msg.value) + tokenSold >= tokenSold
            tokenSold += 3000 * msg.value
            if crowdsaleTokenSupply == (3000 * msg.value) + tokenSold:
                if block.number < preEndBlock:
                    preEndBlock = block.number
                endBlock = block.number
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer((3000 * msg.value), this.address, msg.sender);
        else:
            if block.number < phase1StartBlock:
                if block.number <= phase1EndBlock:
                    if block.number <= phase2EndBlock:
                        if msg.value:
                            require msg.value
                            require 2000 * msg.value / msg.value == 2000
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2000 * msg.value
                        require (2000 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2000 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2000 * msg.value
                        if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2000 * msg.value), this.address, msg.sender);
                    else:
                        if block.number > phase3EndBlock:
                            if msg.value:
                                require msg.value
                                require 2000 * msg.value / msg.value == 2000
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2000 * msg.value
                            require (2000 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2000 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += msg.value
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2000 * msg.value
                            if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2000 * msg.value), this.address, msg.sender);
                        else:
                            if msg.value:
                                require msg.value
                                require 2400 * msg.value / msg.value == 2400
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2400 * msg.value
                            require (2400 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2400 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += msg.value
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2400 * msg.value
                            if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2400 * msg.value), this.address, msg.sender);
                else:
                    if block.number <= phase2EndBlock:
                        if msg.value:
                            require msg.value
                            require 2600 * msg.value / msg.value == 2600
                        require (2600 * msg.value) + tokenSold >= tokenSold
                        require (2600 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2600 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2600 * msg.value
                        require (2600 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2600 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2600 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2600 * msg.value
                        if crowdsaleTokenSupply == (2600 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2600 * msg.value), this.address, msg.sender);
                    else:
                        if block.number > phase3EndBlock:
                            if msg.value:
                                require msg.value
                                require 2000 * msg.value / msg.value == 2000
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2000 * msg.value
                            require (2000 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2000 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += msg.value
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2000 * msg.value
                            if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2000 * msg.value), this.address, msg.sender);
                        else:
                            if msg.value:
                                require msg.value
                                require 2400 * msg.value / msg.value == 2400
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2400 * msg.value
                            require (2400 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2400 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += msg.value
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2400 * msg.value
                            if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2400 * msg.value), this.address, msg.sender);
            else:
                if block.number <= phase1EndBlock:
                    if msg.value:
                        require msg.value
                        require 2800 * msg.value / msg.value == 2800
                    require (2800 * msg.value) + tokenSold >= tokenSold
                    require (2800 * msg.value) + tokenSold <= crowdsaleTokenSupply
                    require (2800 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 2800 * msg.value
                    require (2800 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 2800 * msg.value
                    require msg.value + etherRaised >= etherRaised
                    etherRaised += msg.value
                    require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                    stor8[address(msg.sender)] += msg.value
                    require (2800 * msg.value) + tokenSold >= tokenSold
                    tokenSold += 2800 * msg.value
                    if crowdsaleTokenSupply == (2800 * msg.value) + tokenSold:
                        if block.number < preEndBlock:
                            preEndBlock = block.number
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Transfer((2800 * msg.value), this.address, msg.sender);
                else:
                    if block.number <= phase2EndBlock:
                        if msg.value:
                            require msg.value
                            require 2600 * msg.value / msg.value == 2600
                        require (2600 * msg.value) + tokenSold >= tokenSold
                        require (2600 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2600 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2600 * msg.value
                        require (2600 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2600 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2600 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2600 * msg.value
                        if crowdsaleTokenSupply == (2600 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2600 * msg.value), this.address, msg.sender);
                    else:
                        if block.number > phase3EndBlock:
                            if msg.value:
                                require msg.value
                                require 2000 * msg.value / msg.value == 2000
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2000 * msg.value
                            require (2000 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2000 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += msg.value
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2000 * msg.value
                            if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2000 * msg.value), this.address, msg.sender);
                        else:
                            if msg.value:
                                require msg.value
                                require 2400 * msg.value / msg.value == 2400
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2400 * msg.value
                            require (2400 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2400 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += msg.value
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2400 * msg.value
                            if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2400 * msg.value), this.address, msg.sender);
}

function _fallback() payable {
    require not halted
    require msg.value
    if block.number < startBlock:
        require block.number >= phase1StartBlock
        require block.number <= endBlock
    else:
        if block.number > preEndBlock:
            require block.number >= phase1StartBlock
            require block.number <= endBlock
    require (etherRaised / 100) + 1000 * 10^18 >= 1000 * 10^18
    require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
    require msg.value + stor8[address(msg.sender)] <= (etherRaised / 100) + 1000 * 10^18
    if block.number < startBlock:
        if block.number < phase1StartBlock:
            if block.number <= phase1EndBlock:
                if block.number <= phase2EndBlock:
                    if msg.value:
                        require msg.value
                        require 2000 * msg.value / msg.value == 2000
                    require (2000 * msg.value) + tokenSold >= tokenSold
                    require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                    require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 2000 * msg.value
                    require (2000 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 2000 * msg.value
                    require msg.value + etherRaised >= etherRaised
                    etherRaised += msg.value
                    require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                    stor8[address(msg.sender)] += msg.value
                    require (2000 * msg.value) + tokenSold >= tokenSold
                    tokenSold += 2000 * msg.value
                    if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                        if block.number < preEndBlock:
                            preEndBlock = block.number
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Transfer((2000 * msg.value), this.address, msg.sender);
                else:
                    if block.number > phase3EndBlock:
                        if msg.value:
                            require msg.value
                            require 2000 * msg.value / msg.value == 2000
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2000 * msg.value
                        require (2000 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2000 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2000 * msg.value
                        if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2000 * msg.value), this.address, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 2400 * msg.value / msg.value == 2400
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2400 * msg.value
                        require (2400 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2400 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2400 * msg.value
                        if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2400 * msg.value), this.address, msg.sender);
            else:
                if block.number <= phase2EndBlock:
                    if msg.value:
                        require msg.value
                        require 2600 * msg.value / msg.value == 2600
                    require (2600 * msg.value) + tokenSold >= tokenSold
                    require (2600 * msg.value) + tokenSold <= crowdsaleTokenSupply
                    require (2600 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 2600 * msg.value
                    require (2600 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 2600 * msg.value
                    require msg.value + etherRaised >= etherRaised
                    etherRaised += msg.value
                    require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                    stor8[address(msg.sender)] += msg.value
                    require (2600 * msg.value) + tokenSold >= tokenSold
                    tokenSold += 2600 * msg.value
                    if crowdsaleTokenSupply == (2600 * msg.value) + tokenSold:
                        if block.number < preEndBlock:
                            preEndBlock = block.number
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Transfer((2600 * msg.value), this.address, msg.sender);
                else:
                    if block.number > phase3EndBlock:
                        if msg.value:
                            require msg.value
                            require 2000 * msg.value / msg.value == 2000
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2000 * msg.value
                        require (2000 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2000 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2000 * msg.value
                        if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2000 * msg.value), this.address, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 2400 * msg.value / msg.value == 2400
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2400 * msg.value
                        require (2400 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2400 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2400 * msg.value
                        if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2400 * msg.value), this.address, msg.sender);
        else:
            if block.number <= phase1EndBlock:
                if msg.value:
                    require msg.value
                    require 2800 * msg.value / msg.value == 2800
                require (2800 * msg.value) + tokenSold >= tokenSold
                require (2800 * msg.value) + tokenSold <= crowdsaleTokenSupply
                require (2800 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 2800 * msg.value
                require (2800 * msg.value) + totalSupply >= totalSupply
                totalSupply += 2800 * msg.value
                require msg.value + etherRaised >= etherRaised
                etherRaised += msg.value
                require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                stor8[address(msg.sender)] += msg.value
                require (2800 * msg.value) + tokenSold >= tokenSold
                tokenSold += 2800 * msg.value
                if crowdsaleTokenSupply == (2800 * msg.value) + tokenSold:
                    if block.number < preEndBlock:
                        preEndBlock = block.number
                    endBlock = block.number
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit Transfer((2800 * msg.value), this.address, msg.sender);
            else:
                if block.number <= phase2EndBlock:
                    if msg.value:
                        require msg.value
                        require 2600 * msg.value / msg.value == 2600
                    require (2600 * msg.value) + tokenSold >= tokenSold
                    require (2600 * msg.value) + tokenSold <= crowdsaleTokenSupply
                    require (2600 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 2600 * msg.value
                    require (2600 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 2600 * msg.value
                    require msg.value + etherRaised >= etherRaised
                    etherRaised += msg.value
                    require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                    stor8[address(msg.sender)] += msg.value
                    require (2600 * msg.value) + tokenSold >= tokenSold
                    tokenSold += 2600 * msg.value
                    if crowdsaleTokenSupply == (2600 * msg.value) + tokenSold:
                        if block.number < preEndBlock:
                            preEndBlock = block.number
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Transfer((2600 * msg.value), this.address, msg.sender);
                else:
                    if block.number > phase3EndBlock:
                        if msg.value:
                            require msg.value
                            require 2000 * msg.value / msg.value == 2000
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2000 * msg.value
                        require (2000 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2000 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2000 * msg.value
                        if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2000 * msg.value), this.address, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 2400 * msg.value / msg.value == 2400
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2400 * msg.value
                        require (2400 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2400 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2400 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2400 * msg.value
                        if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2400 * msg.value), this.address, msg.sender);
    else:
        if block.number <= preEndBlock:
            if msg.value:
                require msg.value
                require 3000 * msg.value / msg.value == 3000
            require (3000 * msg.value) + tokenSold >= tokenSold
            require (3000 * msg.value) + tokenSold <= crowdsaleTokenSupply
            require (3000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 3000 * msg.value
            require (3000 * msg.value) + totalSupply >= totalSupply
            totalSupply += 3000 * msg.value
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
            stor8[address(msg.sender)] += msg.value
            require (3000 * msg.value) + tokenSold >= tokenSold
            tokenSold += 3000 * msg.value
            if crowdsaleTokenSupply == (3000 * msg.value) + tokenSold:
                if block.number < preEndBlock:
                    preEndBlock = block.number
                endBlock = block.number
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer((3000 * msg.value), this.address, msg.sender);
        else:
            if block.number < phase1StartBlock:
                if block.number <= phase1EndBlock:
                    if block.number <= phase2EndBlock:
                        if msg.value:
                            require msg.value
                            require 2000 * msg.value / msg.value == 2000
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2000 * msg.value
                        require (2000 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2000 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2000 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2000 * msg.value
                        if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2000 * msg.value), this.address, msg.sender);
                    else:
                        if block.number > phase3EndBlock:
                            if msg.value:
                                require msg.value
                                require 2000 * msg.value / msg.value == 2000
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2000 * msg.value
                            require (2000 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2000 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += msg.value
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2000 * msg.value
                            if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2000 * msg.value), this.address, msg.sender);
                        else:
                            if msg.value:
                                require msg.value
                                require 2400 * msg.value / msg.value == 2400
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2400 * msg.value
                            require (2400 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2400 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += msg.value
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2400 * msg.value
                            if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2400 * msg.value), this.address, msg.sender);
                else:
                    if block.number <= phase2EndBlock:
                        if msg.value:
                            require msg.value
                            require 2600 * msg.value / msg.value == 2600
                        require (2600 * msg.value) + tokenSold >= tokenSold
                        require (2600 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2600 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2600 * msg.value
                        require (2600 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2600 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2600 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2600 * msg.value
                        if crowdsaleTokenSupply == (2600 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2600 * msg.value), this.address, msg.sender);
                    else:
                        if block.number > phase3EndBlock:
                            if msg.value:
                                require msg.value
                                require 2000 * msg.value / msg.value == 2000
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2000 * msg.value
                            require (2000 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2000 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += msg.value
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2000 * msg.value
                            if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2000 * msg.value), this.address, msg.sender);
                        else:
                            if msg.value:
                                require msg.value
                                require 2400 * msg.value / msg.value == 2400
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2400 * msg.value
                            require (2400 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2400 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += msg.value
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2400 * msg.value
                            if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2400 * msg.value), this.address, msg.sender);
            else:
                if block.number <= phase1EndBlock:
                    if msg.value:
                        require msg.value
                        require 2800 * msg.value / msg.value == 2800
                    require (2800 * msg.value) + tokenSold >= tokenSold
                    require (2800 * msg.value) + tokenSold <= crowdsaleTokenSupply
                    require (2800 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 2800 * msg.value
                    require (2800 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 2800 * msg.value
                    require msg.value + etherRaised >= etherRaised
                    etherRaised += msg.value
                    require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                    stor8[address(msg.sender)] += msg.value
                    require (2800 * msg.value) + tokenSold >= tokenSold
                    tokenSold += 2800 * msg.value
                    if crowdsaleTokenSupply == (2800 * msg.value) + tokenSold:
                        if block.number < preEndBlock:
                            preEndBlock = block.number
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Transfer((2800 * msg.value), this.address, msg.sender);
                else:
                    if block.number <= phase2EndBlock:
                        if msg.value:
                            require msg.value
                            require 2600 * msg.value / msg.value == 2600
                        require (2600 * msg.value) + tokenSold >= tokenSold
                        require (2600 * msg.value) + tokenSold <= crowdsaleTokenSupply
                        require (2600 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2600 * msg.value
                        require (2600 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 2600 * msg.value
                        require msg.value + etherRaised >= etherRaised
                        etherRaised += msg.value
                        require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] += msg.value
                        require (2600 * msg.value) + tokenSold >= tokenSold
                        tokenSold += 2600 * msg.value
                        if crowdsaleTokenSupply == (2600 * msg.value) + tokenSold:
                            if block.number < preEndBlock:
                                preEndBlock = block.number
                            endBlock = block.number
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit Transfer((2600 * msg.value), this.address, msg.sender);
                    else:
                        if block.number > phase3EndBlock:
                            if msg.value:
                                require msg.value
                                require 2000 * msg.value / msg.value == 2000
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            require (2000 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2000 * msg.value
                            require (2000 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2000 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += msg.value
                            require (2000 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2000 * msg.value
                            if crowdsaleTokenSupply == (2000 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2000 * msg.value), this.address, msg.sender);
                        else:
                            if msg.value:
                                require msg.value
                                require 2400 * msg.value / msg.value == 2400
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            require (2400 * msg.value) + tokenSold <= crowdsaleTokenSupply
                            require (2400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2400 * msg.value
                            require (2400 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 2400 * msg.value
                            require msg.value + etherRaised >= etherRaised
                            etherRaised += msg.value
                            require msg.value + stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += msg.value
                            require (2400 * msg.value) + tokenSold >= tokenSold
                            tokenSold += 2400 * msg.value
                            if crowdsaleTokenSupply == (2400 * msg.value) + tokenSold:
                                if block.number < preEndBlock:
                                    preEndBlock = block.number
                                endBlock = block.number
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit Transfer((2400 * msg.value), this.address, msg.sender);
}



}
