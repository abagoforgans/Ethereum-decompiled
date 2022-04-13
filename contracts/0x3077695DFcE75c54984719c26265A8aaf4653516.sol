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
address stor10;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 13
    stor0.length.field_8 = 'T8C Crowdsale' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'SINGAPORE' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 1504825740
    stor3 = 1504829340
    stor4 = 1506038940
    if not msg.value:
        stor9 = msg.sender
        stor5 = code.data[11160 len 20]
        stor6 = code.data[11192 len 20]
        stor7 = code.data[11224 len 20]
        stor8 = code.data[11256 len 20]
        create contract with 0 wei
                        code: code.data[6079 len 5069], address(this.address), stor4
        if create.new_address:
            stor10 = address(create.new_address)
            if ext_code.size(stor10):
                call stor10.createToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args stor7, 5 * 10^10
                if ext_call.success:
                    return code.data[1223 len 4856]
    revert
}



// =====================  Runtime code  =====================


const PRICE_STAGE_TWO = 1325000

const MAX_SUPPLY = 15 * 10^10

const STAGE_FOUR_TIME_END = (336 * 24 * 3600)

const STAGE_TWO_TIME_END = (168 * 24 * 3600)

const STAGE_ONE_TIME_END = (72 * 24 * 3600)

const ALLOC_CROWDSALE = 10^11

const PRICE_STAGE_ONE = 1375000

const PRICE_PRESALE = 1500000

const ALLOC_TEAM = 5 * 10^10

const PRICE_STAGE_FOUR = 1250000

const PRICE_STAGE_THREE = 1287500

const STAGE_THREE_TIME_END = (264 * 24 * 3600)


array of uint256 sub_4a7caf60;
array of uint256 country;
uint256 privateStartTime;
uint256 publicStartTime;
uint256 publicEndTime;
address multiSigAddress;
address presaleAddress;
address sub_90f0611fAddress;
address sub_799ec7c9Address;
address ownerAddress;
address sub_bf7581e2Address;
uint256 totalEtherRaised;
uint256 sub_82b91399;
mapping of uint256 etherContributions;
uint8 halted;

function presaleAddress() {
    return presaleAddress
}

function multiSigAddress() {
    return multiSigAddress
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

function sub_799ec7c9(?) {
    return sub_799ec7c9Address
}

function sub_82b91399(?) {
    return sub_82b91399
}

function privateStartTime() {
    return privateStartTime
}

function ownerAddress() {
    return ownerAddress
}

function sub_90f0611f(?) {
    return sub_90f0611fAddress
}

function halted() {
    return bool(halted)
}

function sub_bf7581e2(?) {
    return sub_bf7581e2Address
}

function country() {
    return country[0 len country.length]
}

function sub_e1261cb3(?) {
    require msg.sender == ownerAddress
    multiSigAddress = arg1
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

function sub_00943dd8(?) {
    require msg.sender == ownerAddress
    require ext_code.size(sub_bf7581e2Address)
    call sub_bf7581e2Address.makeLiquid() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function getPriceRate() {
    if block.timestamp <= publicStartTime:
        return 1500000
    if block.timestamp <= publicStartTime + (72 * 24 * 3600):
        return 1375000
    if block.timestamp <= publicStartTime + (168 * 24 * 3600):
        return 1325000
    if block.timestamp <= publicStartTime + (264 * 24 * 3600):
        return 1287500
    if block.timestamp > publicStartTime + (336 * 24 * 3600):
        return 0
    return 1250000
}

function _fallback() payable {
    require block.timestamp >= privateStartTime
    require block.timestamp < publicEndTime
    require not halted
    if presaleAddress != msg.sender:
        if block.timestamp >= privateStartTime:
            require block.timestamp >= publicStartTime
    if block.timestamp <= publicStartTime:
        if msg.value:
            require msg.value
            require 1500000 * msg.value / msg.value == 1500000
        require 1500000 * msg.value == (10^18 * 1500000 * msg.value / 10^18) + (1500000 * msg.value % 10^18)
        require 1500000 * msg.value / 10^18 <= -sub_82b91399 + 10^11
        if msg.value:
            require msg.value
            require 20 * msg.value / msg.value == 20
        require 20 * msg.value == (1000 * 20 * msg.value / 1000) + (20 * msg.value % 1000)
        call sub_799ec7c9Address with:
           value 20 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if msg.value:
            require msg.value
            require 980 * msg.value / msg.value == 980
        require 980 * msg.value == (1000 * 980 * msg.value / 1000) + (980 * msg.value % 1000)
        call multiSigAddress with:
           value 980 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(sub_bf7581e2Address)
        call sub_bf7581e2Address.createIlliquidToken(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, 1500000 * msg.value / 10^18
        require ext_call.success
        require ext_call.return_data[0]
        sub_82b91399 += 1500000 * msg.value / 10^18
        totalEtherRaised += msg.value
        etherContributions[address(msg.sender)] += msg.value
        emit Buy((1500000 * msg.value / 10^18), msg.sender);
    else:
        if block.timestamp <= publicStartTime + (72 * 24 * 3600):
            if msg.value:
                require msg.value
                require 1375000 * msg.value / msg.value == 1375000
            require 1375000 * msg.value == (10^18 * 1375000 * msg.value / 10^18) + (1375000 * msg.value % 10^18)
            require 1375000 * msg.value / 10^18 <= -sub_82b91399 + 10^11
            if msg.value:
                require msg.value
                require 20 * msg.value / msg.value == 20
            require 20 * msg.value == (1000 * 20 * msg.value / 1000) + (20 * msg.value % 1000)
            call sub_799ec7c9Address with:
               value 20 * msg.value / 1000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if msg.value:
                require msg.value
                require 980 * msg.value / msg.value == 980
            require 980 * msg.value == (1000 * 980 * msg.value / 1000) + (980 * msg.value % 1000)
            call multiSigAddress with:
               value 980 * msg.value / 1000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(sub_bf7581e2Address)
            call sub_bf7581e2Address.createIlliquidToken(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1375000 * msg.value / 10^18
            require ext_call.success
            require ext_call.return_data[0]
            sub_82b91399 += 1375000 * msg.value / 10^18
            totalEtherRaised += msg.value
            etherContributions[address(msg.sender)] += msg.value
            emit Buy((1375000 * msg.value / 10^18), msg.sender);
        else:
            if block.timestamp <= publicStartTime + (168 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 1325000 * msg.value / msg.value == 1325000
                require 1325000 * msg.value == (10^18 * 1325000 * msg.value / 10^18) + (1325000 * msg.value % 10^18)
                require 1325000 * msg.value / 10^18 <= -sub_82b91399 + 10^11
                if msg.value:
                    require msg.value
                    require 20 * msg.value / msg.value == 20
                require 20 * msg.value == (1000 * 20 * msg.value / 1000) + (20 * msg.value % 1000)
                call sub_799ec7c9Address with:
                   value 20 * msg.value / 1000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if msg.value:
                    require msg.value
                    require 980 * msg.value / msg.value == 980
                require 980 * msg.value == (1000 * 980 * msg.value / 1000) + (980 * msg.value % 1000)
                call multiSigAddress with:
                   value 980 * msg.value / 1000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(sub_bf7581e2Address)
                call sub_bf7581e2Address.createIlliquidToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1325000 * msg.value / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                sub_82b91399 += 1325000 * msg.value / 10^18
                totalEtherRaised += msg.value
                etherContributions[address(msg.sender)] += msg.value
                emit Buy((1325000 * msg.value / 10^18), msg.sender);
            else:
                if block.timestamp <= publicStartTime + (264 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 1287500 * msg.value / msg.value == 1287500
                    require 1287500 * msg.value == (10^18 * 1287500 * msg.value / 10^18) + (1287500 * msg.value % 10^18)
                    require 1287500 * msg.value / 10^18 <= -sub_82b91399 + 10^11
                    if msg.value:
                        require msg.value
                        require 20 * msg.value / msg.value == 20
                    require 20 * msg.value == (1000 * 20 * msg.value / 1000) + (20 * msg.value % 1000)
                    call sub_799ec7c9Address with:
                       value 20 * msg.value / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if msg.value:
                        require msg.value
                        require 980 * msg.value / msg.value == 980
                    require 980 * msg.value == (1000 * 980 * msg.value / 1000) + (980 * msg.value % 1000)
                    call multiSigAddress with:
                       value 980 * msg.value / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(sub_bf7581e2Address)
                    call sub_bf7581e2Address.createIlliquidToken(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 1287500 * msg.value / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    sub_82b91399 += 1287500 * msg.value / 10^18
                    totalEtherRaised += msg.value
                    etherContributions[address(msg.sender)] += msg.value
                    emit Buy((1287500 * msg.value / 10^18), msg.sender);
                else:
                    if block.timestamp > publicStartTime + (336 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require not 0 / msg.value
                        require 0 <= -sub_82b91399 + 10^11
                        if msg.value:
                            require msg.value
                            require 20 * msg.value / msg.value == 20
                        require 20 * msg.value == (1000 * 20 * msg.value / 1000) + (20 * msg.value % 1000)
                        call sub_799ec7c9Address with:
                           value 20 * msg.value / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if msg.value:
                            require msg.value
                            require 980 * msg.value / msg.value == 980
                        require 980 * msg.value == (1000 * 980 * msg.value / 1000) + (980 * msg.value % 1000)
                        call multiSigAddress with:
                           value 980 * msg.value / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require ext_code.size(sub_bf7581e2Address)
                        call sub_bf7581e2Address.createIlliquidToken(address rg1, uint256 rg2) with:
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
                            require 1250000 * msg.value / msg.value == 1250000
                        require 1250000 * msg.value == (10^18 * 1250000 * msg.value / 10^18) + (1250000 * msg.value % 10^18)
                        require 1250000 * msg.value / 10^18 <= -sub_82b91399 + 10^11
                        if msg.value:
                            require msg.value
                            require 20 * msg.value / msg.value == 20
                        require 20 * msg.value == (1000 * 20 * msg.value / 1000) + (20 * msg.value % 1000)
                        call sub_799ec7c9Address with:
                           value 20 * msg.value / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if msg.value:
                            require msg.value
                            require 980 * msg.value / msg.value == 980
                        require 980 * msg.value == (1000 * 980 * msg.value / 1000) + (980 * msg.value % 1000)
                        call multiSigAddress with:
                           value 980 * msg.value / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require ext_code.size(sub_bf7581e2Address)
                        call sub_bf7581e2Address.createIlliquidToken(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 1250000 * msg.value / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        sub_82b91399 += 1250000 * msg.value / 10^18
                        totalEtherRaised += msg.value
                        etherContributions[address(msg.sender)] += msg.value
                        emit Buy((1250000 * msg.value / 10^18), msg.sender);
}



}
