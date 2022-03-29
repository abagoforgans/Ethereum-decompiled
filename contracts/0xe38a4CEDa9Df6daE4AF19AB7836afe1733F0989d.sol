contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint8 stor3; offset 152
address stor3;
address stor4;
uint8 stor5; offset 152
address stor5;
address stor5;
uint8 stor6; offset 152
address stor6;
address stor7;

function _fallback() payable {
    stor0 = 414013 * 3600
    stor1 = 414009 * 3600
    Mask(152, 0, stor3.field_0) = 0xa88edaa9ead00a1d114e4820b0b0f2e3651ece
    uint8(stor3.field_152) = 0
    stor4 = 0x2cafdc32ac9ec55e915716bc43037bd2c689512e
    Mask(152, 0, stor5.field_0) = 0xce633b4789d1a16a0ad3aec58599b76d5d669e
    uint8(stor5.field_152) = 0
    Mask(152, 0, stor6.field_0) = 0xce633b4789d1a16a0ad3aec58599b76d5d669e
    uint8(stor6.field_152) = 0
    require not msg.value
    stor2 = stor0 + (672 * 24 * 3600)
    create contract with 0 wei
                    code: code.data[5282 len 3906], address(this.address), stor2
    require create.new_address
    stor7 = address(create.new_address)
    require ext_code.size(stor7)
    call stor7.createIlliquidToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(stor5.field_0), 8 * 10^9
    require ext_call.success
    require ext_code.size(stor7)
    call stor7.createToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(stor5.field_0), 2 * 10^9
    require ext_call.success
    require ext_code.size(stor7)
    call stor7.createToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(stor5.field_0), 13 * 10^9
    require ext_call.success
    require ext_code.size(stor7)
    call stor7.createToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(stor5.field_0), 17 * 10^9
    require ext_call.success
    return code.data[1632 len 3650]
}



// =====================  Runtime code  =====================


const PRICE_STAGE_TWO = 366000

const ALLOC_NEW_USERS = 17 * 10^9

const MAX_SUPPLY = 10^11

const STAGE_FOUR_TIME_END = (672 * 24 * 3600)

const ALLOC_LIQUID_TEAM = 13 * 10^9

const ALLOC_BOUNTIES = 2 * 10^9

const ALLOC_ILLIQUID_TEAM = 8 * 10^9

const STAGE_TWO_TIME_END = (72 * 24 * 3600)

const STAGE_ONE_TIME_END = 3600

const ALLOC_CROWDSALE = 6 * 10^10

const PRICE_STAGE_ONE = 400000

const PRICE_STAGE_FOUR = 300000

const BTCS_PORTION_MAX = 15 * 10^9

const PRICE_STAGE_THREE = 333000

const PRICE_BTCS = 400000

const STAGE_THREE_TIME_END = (336 * 24 * 3600)


uint256 publicStartTime;
uint256 privateStartTime;
uint256 publicEndTime;
address btcsAddress;
address multisigAddress;
address matchpoolAddress;
address ownerAddress;
address gupTokenAddress;
uint256 etherRaised;
uint256 gupSold;
uint256 btcsPortionTotal;
uint8 halted;

function publicEndTime() {
    return publicEndTime
}

function matchpoolAddress() {
    return matchpoolAddress
}

function btcsAddress() {
    return btcsAddress
}

function multisigAddress() {
    return multisigAddress
}

function publicStartTime() {
    return publicStartTime
}

function gupSold() {
    return gupSold
}

function privateStartTime() {
    return privateStartTime
}

function ownerAddress() {
    return ownerAddress
}

function gupToken() {
    return gupTokenAddress
}

function halted() {
    return bool(halted)
}

function etherRaised() {
    return etherRaised
}

function btcsPortionTotal() {
    return btcsPortionTotal
}

function toggleHalt(bool arg1) {
    require msg.sender == ownerAddress
    halted = uint8(arg1)
}

function drain() {
    require msg.sender == ownerAddress
    call ownerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getPriceRate() {
    if block.timestamp <= publicStartTime + 3600:
        return 400000
    if block.timestamp <= publicStartTime + (72 * 24 * 3600):
        return 366000
    if block.timestamp <= publicStartTime + (336 * 24 * 3600):
        return 333000
    if block.timestamp > publicStartTime + (672 * 24 * 3600):
        return 0
    return 300000
}

function preBuy() payable {
    require block.timestamp < publicStartTime
    require block.timestamp >= privateStartTime
    require msg.sender == btcsAddress
    require not halted
    if msg.value:
        require msg.value
        require 400000 * msg.value / msg.value == 400000
    require 400000 * msg.value == (10^18 * 400000 * msg.value / 10^18) + (400000 * msg.value % 10^18)
    require 400000 * msg.value / 10^18 <= -btcsPortionTotal + 15 * 10^9
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(gupTokenAddress)
    call gupTokenAddress.createToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, 400000 * msg.value / 10^18
    require ext_call.success
    require ext_call.return_data[0]
    gupSold += 400000 * msg.value / 10^18
    btcsPortionTotal += 400000 * msg.value / 10^18
    emit PreBuy((400000 * msg.value / 10^18));
}

function _fallback() payable {
    require block.timestamp >= publicStartTime
    require block.timestamp < publicEndTime
    require not halted
    if block.timestamp <= publicStartTime + 3600:
        if msg.value:
            require msg.value
            require 400000 * msg.value / msg.value == 400000
        require 400000 * msg.value == (10^18 * 400000 * msg.value / 10^18) + (400000 * msg.value % 10^18)
        require 400000 * msg.value / 10^18 <= -gupSold + 6 * 10^10
        call multisigAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(gupTokenAddress)
        call gupTokenAddress.createToken(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args msg.sender, 400000 * msg.value / 10^18
        require ext_call.success
        require ext_call.return_data[0]
        gupSold += 400000 * msg.value / 10^18
        emit Buy((400000 * msg.value / 10^18), msg.sender);
    else:
        if block.timestamp <= publicStartTime + (72 * 24 * 3600):
            if msg.value:
                require msg.value
                require 366000 * msg.value / msg.value == 366000
            require 366000 * msg.value == (10^18 * 366000 * msg.value / 10^18) + (366000 * msg.value % 10^18)
            require 366000 * msg.value / 10^18 <= -gupSold + 6 * 10^10
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(gupTokenAddress)
            call gupTokenAddress.createToken(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args msg.sender, 366000 * msg.value / 10^18
            require ext_call.success
            require ext_call.return_data[0]
            gupSold += 366000 * msg.value / 10^18
            emit Buy((366000 * msg.value / 10^18), msg.sender);
        else:
            if block.timestamp <= publicStartTime + (336 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 333000 * msg.value / msg.value == 333000
                require 333000 * msg.value == (10^18 * 333000 * msg.value / 10^18) + (333000 * msg.value % 10^18)
                require 333000 * msg.value / 10^18 <= -gupSold + 6 * 10^10
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(gupTokenAddress)
                call gupTokenAddress.createToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, 333000 * msg.value / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                gupSold += 333000 * msg.value / 10^18
                emit Buy((333000 * msg.value / 10^18), msg.sender);
            else:
                if block.timestamp > publicStartTime + (672 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require 0 <= -gupSold + 6 * 10^10
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(gupTokenAddress)
                    call gupTokenAddress.createToken(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args msg.sender, 0
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit Buy(0, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require 300000 * msg.value / msg.value == 300000
                    require 300000 * msg.value == (10^18 * 300000 * msg.value / 10^18) + (300000 * msg.value % 10^18)
                    require 300000 * msg.value / 10^18 <= -gupSold + 6 * 10^10
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(gupTokenAddress)
                    call gupTokenAddress.createToken(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args msg.sender, 300000 * msg.value / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    gupSold += 300000 * msg.value / 10^18
                    emit Buy((300000 * msg.value / 10^18), msg.sender);
}



}
