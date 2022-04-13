contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 13
    stor0.length.field_8 = 'GEC Crowdsale' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 5
    stor1.length.field_8 = 'CHINA' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 417779 * 3600
    stor3 = 417780 * 3600
    stor4 = 418500 * 3600
    if not msg.value:
        stor8 = msg.sender
        stor5 = code.data[12397 len 20]
        stor6 = code.data[12429 len 20]
        stor7 = code.data[12461 len 20]
        create contract with 0 wei
                        code: code.data[7270 len 5115], address(this.address), stor4
        if create.new_address:
            stor9 = address(create.new_address)
            if ext_code.size(stor9):
                call stor9.createToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args stor6, 64 * 10^9
                if ext_call.success:
                    if ext_code.size(stor9):
                        call stor9.createToken(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args stor6, 32 * 10^9
                        if ext_call.success:
                            if ext_code.size(stor9):
                                call stor9.createToken(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args stor6, 32 * 10^9
                                if ext_call.success:
                                    if ext_code.size(stor9):
                                        call stor9.createToken(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args stor6, 48 * 10^9
                                        if ext_call.success:
                                            return code.data[1952 len 5318]
    revert
}



// =====================  Runtime code  =====================


const sub_5f0b2f6b(?) = 64 * 10^9

const sub_8c293b89(?) = 32 * 10^9

const sub_a945a5dc(?) = 32 * 10^9

const PRICE_STAGE_TWO = 1300000

const MAX_SUPPLY = 32 * 10^10

const ALLOC_BOUNTIES = 16 * 10^9

const STAGE_TWO_TIME_END = (480 * 24 * 3600)

const STAGE_ONE_TIME_END = (240 * 24 * 3600)

const ALLOC_CROWDSALE = 128 * 10^9

const PRICE_STAGE_ONE = 1600000

const PRICE_PRESALE = 1600000

const ALLOC_TEAM = 48 * 10^9

const PRICE_STAGE_THREE = 10^6

const STAGE_THREE_TIME_END = (720 * 24 * 3600)


array of uint256 sub_4a7caf60;
array of uint256 country;
uint256 privateStartTime;
uint256 publicStartTime;
uint256 publicEndTime;
address presaleAddress;
address sub_e3f34a39Address;
address sub_799ec7c9Address;
address ownerAddress;
address sub_1188aedaAddress;
uint256 totalEtherRaised;
uint256 sub_d16825c8;
uint256 sub_729c8c5e;
mapping of uint256 etherContributions;
uint8 stor14;

function sub_1188aeda(?) {
    return sub_1188aedaAddress
}

function presaleAddress() {
    return presaleAddress
}

function publicEndTime() {
    return publicEndTime
}

function etherContributions(address arg1) {
    return etherContributions[arg1]
}

function sub_4a7caf60(?) {
    return sub_4a7caf60[0 len sub_4a7caf60.length]
}

function publicStartTime() {
    return publicStartTime
}

function totalEtherRaised() {
    return totalEtherRaised
}

function sub_729c8c5e(?) {
    return sub_729c8c5e
}

function sub_799ec7c9(?) {
    return sub_799ec7c9Address
}

function privateStartTime() {
    return privateStartTime
}

function ownerAddress() {
    return ownerAddress
}

function halted() {
    return bool(stor14)
}

function sub_d16825c8(?) {
    return sub_d16825c8
}

function country() {
    return country[0 len country.length]
}

function sub_e3f34a39(?) {
    return sub_e3f34a39Address
}

function toggleHalt(bool arg1) {
    require msg.sender == ownerAddress
    stor14 = uint8(arg1)
}

function sub_e1261cb3(?) {
    require msg.sender == ownerAddress
    sub_e3f34a39Address = arg1
}

function drain() {
    require msg.sender == ownerAddress
    call ownerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_00943dd8(?) {
    require msg.sender == ownerAddress
    require ext_code.size(sub_1188aedaAddress)
    call sub_1188aedaAddress.makeLiquid() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function sub_3f58e24e(?) {
    require msg.sender == ownerAddress
    require arg2 <= -sub_729c8c5e + 16 * 10^9
    require ext_code.size(sub_1188aedaAddress)
    call sub_1188aedaAddress.createToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    sub_729c8c5e += arg2
}

function getPriceRate() {
    if block.timestamp <= publicStartTime:
        return 1600000
    if block.timestamp <= publicStartTime + (240 * 24 * 3600):
        return 1600000
    if block.timestamp <= publicStartTime + (480 * 24 * 3600):
        return 1300000
    if block.timestamp > publicStartTime + (720 * 24 * 3600):
        return 0
    return 10^6
}

function _fallback() payable {
    require block.timestamp >= privateStartTime
    require block.timestamp < publicEndTime
    require not stor14
    if presaleAddress != msg.sender:
        if block.timestamp >= privateStartTime:
            require block.timestamp >= publicStartTime
    if block.timestamp <= publicStartTime:
        if msg.value:
            require msg.value
            require 1600000 * msg.value / msg.value == 1600000
        require 1600000 * msg.value == (10^18 * 1600000 * msg.value / 10^18) + (1600000 * msg.value % 10^18)
        require 1600000 * msg.value / 10^18 <= -sub_d16825c8 + 128 * 10^9
        if msg.value:
            require msg.value
            require 15 * msg.value / msg.value == 15
        require 15 * msg.value == (1000 * 15 * msg.value / 1000) + (15 * msg.value % 1000)
        call sub_799ec7c9Address with:
           value 15 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if msg.value:
            require msg.value
            require 985 * msg.value / msg.value == 985
        require 985 * msg.value == (1000 * 985 * msg.value / 1000) + (985 * msg.value % 1000)
        call sub_e3f34a39Address with:
           value 985 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(sub_1188aedaAddress)
        call sub_1188aedaAddress.createIlliquidToken(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, 1600000 * msg.value / 10^18
        require ext_call.success
        require ext_call.return_data[0]
        sub_d16825c8 += 1600000 * msg.value / 10^18
        totalEtherRaised += msg.value
        etherContributions[address(msg.sender)] += msg.value
        emit Buy((1600000 * msg.value / 10^18), msg.sender);
    else:
        if block.timestamp <= publicStartTime + (240 * 24 * 3600):
            if msg.value:
                require msg.value
                require 1600000 * msg.value / msg.value == 1600000
            require 1600000 * msg.value == (10^18 * 1600000 * msg.value / 10^18) + (1600000 * msg.value % 10^18)
            require 1600000 * msg.value / 10^18 <= -sub_d16825c8 + 128 * 10^9
            if msg.value:
                require msg.value
                require 15 * msg.value / msg.value == 15
            require 15 * msg.value == (1000 * 15 * msg.value / 1000) + (15 * msg.value % 1000)
            call sub_799ec7c9Address with:
               value 15 * msg.value / 1000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if msg.value:
                require msg.value
                require 985 * msg.value / msg.value == 985
            require 985 * msg.value == (1000 * 985 * msg.value / 1000) + (985 * msg.value % 1000)
            call sub_e3f34a39Address with:
               value 985 * msg.value / 1000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(sub_1188aedaAddress)
            call sub_1188aedaAddress.createIlliquidToken(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1600000 * msg.value / 10^18
            require ext_call.success
            require ext_call.return_data[0]
            sub_d16825c8 += 1600000 * msg.value / 10^18
            totalEtherRaised += msg.value
            etherContributions[address(msg.sender)] += msg.value
            emit Buy((1600000 * msg.value / 10^18), msg.sender);
        else:
            if block.timestamp <= publicStartTime + (480 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 1300000 * msg.value / msg.value == 1300000
                require 1300000 * msg.value == (10^18 * 1300000 * msg.value / 10^18) + (1300000 * msg.value % 10^18)
                require 1300000 * msg.value / 10^18 <= -sub_d16825c8 + 128 * 10^9
                if msg.value:
                    require msg.value
                    require 15 * msg.value / msg.value == 15
                require 15 * msg.value == (1000 * 15 * msg.value / 1000) + (15 * msg.value % 1000)
                call sub_799ec7c9Address with:
                   value 15 * msg.value / 1000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if msg.value:
                    require msg.value
                    require 985 * msg.value / msg.value == 985
                require 985 * msg.value == (1000 * 985 * msg.value / 1000) + (985 * msg.value % 1000)
                call sub_e3f34a39Address with:
                   value 985 * msg.value / 1000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(sub_1188aedaAddress)
                call sub_1188aedaAddress.createIlliquidToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1300000 * msg.value / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                sub_d16825c8 += 1300000 * msg.value / 10^18
                totalEtherRaised += msg.value
                etherContributions[address(msg.sender)] += msg.value
                emit Buy((1300000 * msg.value / 10^18), msg.sender);
            else:
                if block.timestamp > publicStartTime + (720 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require 0 <= -sub_d16825c8 + 128 * 10^9
                    if msg.value:
                        require msg.value
                        require 15 * msg.value / msg.value == 15
                    require 15 * msg.value == (1000 * 15 * msg.value / 1000) + (15 * msg.value % 1000)
                    call sub_799ec7c9Address with:
                       value 15 * msg.value / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if msg.value:
                        require msg.value
                        require 985 * msg.value / msg.value == 985
                    require 985 * msg.value == (1000 * 985 * msg.value / 1000) + (985 * msg.value % 1000)
                    call sub_e3f34a39Address with:
                       value 985 * msg.value / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(sub_1188aedaAddress)
                    call sub_1188aedaAddress.createIlliquidToken(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    require ext_call.return_data[0]
                    totalEtherRaised += msg.value
                    etherContributions[address(msg.sender)] += msg.value
                    emit Buy(0, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require 10^6 * msg.value / msg.value == 10^6
                    require 10^6 * msg.value == (10^18 * 10^6 * msg.value / 10^18) + (10^6 * msg.value % 10^18)
                    require 10^6 * msg.value / 10^18 <= -sub_d16825c8 + 128 * 10^9
                    if msg.value:
                        require msg.value
                        require 15 * msg.value / msg.value == 15
                    require 15 * msg.value == (1000 * 15 * msg.value / 1000) + (15 * msg.value % 1000)
                    call sub_799ec7c9Address with:
                       value 15 * msg.value / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if msg.value:
                        require msg.value
                        require 985 * msg.value / msg.value == 985
                    require 985 * msg.value == (1000 * 985 * msg.value / 1000) + (985 * msg.value % 1000)
                    call sub_e3f34a39Address with:
                       value 985 * msg.value / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(sub_1188aedaAddress)
                    call sub_1188aedaAddress.createIlliquidToken(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 10^6 * msg.value / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    sub_d16825c8 += 10^6 * msg.value / 10^18
                    totalEtherRaised += msg.value
                    etherContributions[address(msg.sender)] += msg.value
                    emit Buy((10^6 * msg.value / 10^18), msg.sender);
}



}
