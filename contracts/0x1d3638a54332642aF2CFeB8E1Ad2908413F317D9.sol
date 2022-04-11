contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
address stor5;
address stor6;
address stor7;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 10
    stor0.length.field_8 = 'HLCOIN ICO' / 256
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
    stor2 = 417108 * 3600
    stor3 = 417852 * 3600
    if not msg.value:
        stor4 = msg.sender
        stor5 = code.data[10456 len 20]
        stor6 = code.data[10488 len 20]
        create contract with 0 wei
                        code: code.data[6306 len 4138], address(this.address), stor3 + (240 * 24 * 3600)
        if create.new_address:
            stor7 = address(create.new_address)
            if ext_code.size(stor7):
                call stor7.createToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args stor5, 6 * 10^11
                if ext_call.success:
                    if ext_code.size(stor7):
                        call stor7.createToken(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args stor5, 3 * 10^11
                        if ext_call.success:
                            return code.data[1338 len 4968]
    revert
}



// =====================  Runtime code  =====================


const sub_2bc41e32(?) = 100 * 10^18

const sub_3b92e34c(?) = 1000 * 10^18

const sub_3d6c1f29(?) = 6 * 10^11

const sub_45639233(?) = 8000 * 10^18

const sub_a211d6ee(?) = 4000 * 10^18

const sub_b6412635(?) = 500 * 10^18

const sub_c7cfb11b(?) = 100 * 10^6

const PRICE_STAGE_TWO = 110 * 10^6

const MAX_SUPPLY = 2 * 10^12

const HARD_CAP = 8000 * 10^18

const ALLOC_BOUNTIES = 3 * 10^11

const ALLOC_CROWDSALE = 8 * 10^11

const PRICE_STAGE_ONE = 120 * 10^6

const ALLOC_TEAM = 3 * 10^11

const PRICE_STAGE_FOUR = 102 * 10^6

const LOCKOUT_PERIOD = (240 * 24 * 3600)

const PRICE_STAGE_THREE = 105 * 10^6


array of uint256 sub_4a7caf60;
array of uint256 country;
uint256 publicStartTime;
uint256 publicEndTime;
address ownerAddress;
address sub_6a1a961eAddress;
address sub_4f3ec508Address;
address sub_6842d52cAddress;
uint256 etherRaised;
uint256 sub_a17ae583;
uint256 sub_deb6d38d;
mapping of uint256 etherBalanceOf;
uint8 stor12;

function etherBalanceOf(address arg1) {
    return etherBalanceOf[address(arg1)]
}

function publicEndTime() {
    return publicEndTime
}

function sub_4a7caf60(?) {
    return sub_4a7caf60[0 len sub_4a7caf60.length]
}

function sub_4f3ec508(?) {
    return sub_4f3ec508Address
}

function publicStartTime() {
    return publicStartTime
}

function sub_6842d52c(?) {
    return sub_6842d52cAddress
}

function sub_6a1a961e(?) {
    return sub_6a1a961eAddress
}

function ownerAddress() {
    return ownerAddress
}

function etherBalances(address arg1) {
    return etherBalanceOf[arg1]
}

function sub_a17ae583(?) {
    return sub_a17ae583
}

function halted() {
    return bool(stor12)
}

function etherRaised() {
    return etherRaised
}

function country() {
    return country[0 len country.length]
}

function sub_deb6d38d(?) {
    return sub_deb6d38d
}

function toggleHalt(bool arg1) {
    require msg.sender == ownerAddress
    stor12 = uint8(arg1)
}

function drain() {
    require msg.sender == ownerAddress
    call ownerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getPriceRate() {
    if etherRaised < 100 * 10^18:
        return 120 * 10^6
    if etherRaised < 500 * 10^18:
        return 110 * 10^6
    if etherRaised < 1000 * 10^18:
        return 105 * 10^6
    if etherRaised < 4000 * 10^18:
        return 102 * 10^6
    if etherRaised >= 8000 * 10^18:
        return 0
    return 100 * 10^6
}

function sub_b41b6697(?) {
    require block.timestamp > publicEndTime
    require msg.sender == ownerAddress
    require arg2 <= -sub_deb6d38d + 3 * 10^11
    require ext_code.size(sub_6842d52cAddress)
    call sub_6842d52cAddress.createToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    sub_deb6d38d += arg2
}

function _fallback() payable {
    require block.timestamp >= publicStartTime
    require block.timestamp < publicEndTime
    require not stor12
    require msg.value >= 10^16
    if etherRaised < 100 * 10^18:
        if msg.value:
            require msg.value
            require 120 * 10^6 * msg.value / msg.value == 120 * 10^6
        require 120 * 10^6 * msg.value == (10^18 * 120 * 10^6 * msg.value / 10^18) + (120 * 10^6 * msg.value % 10^18)
        require 120 * 10^6 * msg.value / 10^18 <= -sub_a17ae583 + 8 * 10^11
        if msg.value:
            require msg.value
            require 985 * msg.value / msg.value == 985
        require 985 * msg.value == (1000 * 985 * msg.value / 1000) + (985 * msg.value % 1000)
        call sub_6a1a961eAddress with:
           value 985 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if msg.value:
            require msg.value
            require 15 * msg.value / msg.value == 15
        require 15 * msg.value == (1000 * 15 * msg.value / 1000) + (15 * msg.value % 1000)
        call sub_4f3ec508Address with:
           value 15 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(sub_6842d52cAddress)
        call sub_6842d52cAddress.createToken(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, 120 * 10^6 * msg.value / 10^18
        require ext_call.success
        require ext_call.return_data[0]
        sub_a17ae583 += 120 * 10^6 * msg.value / 10^18
        etherRaised += msg.value
        etherBalanceOf[address(msg.sender)] += msg.value
        emit Buy((120 * 10^6 * msg.value / 10^18), msg.sender);
    else:
        if etherRaised < 500 * 10^18:
            if msg.value:
                require msg.value
                require 110 * 10^6 * msg.value / msg.value == 110 * 10^6
            require 110 * 10^6 * msg.value == (10^18 * 110 * 10^6 * msg.value / 10^18) + (110 * 10^6 * msg.value % 10^18)
            require 110 * 10^6 * msg.value / 10^18 <= -sub_a17ae583 + 8 * 10^11
            if msg.value:
                require msg.value
                require 985 * msg.value / msg.value == 985
            require 985 * msg.value == (1000 * 985 * msg.value / 1000) + (985 * msg.value % 1000)
            call sub_6a1a961eAddress with:
               value 985 * msg.value / 1000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if msg.value:
                require msg.value
                require 15 * msg.value / msg.value == 15
            require 15 * msg.value == (1000 * 15 * msg.value / 1000) + (15 * msg.value % 1000)
            call sub_4f3ec508Address with:
               value 15 * msg.value / 1000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(sub_6842d52cAddress)
            call sub_6842d52cAddress.createToken(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 110 * 10^6 * msg.value / 10^18
            require ext_call.success
            require ext_call.return_data[0]
            sub_a17ae583 += 110 * 10^6 * msg.value / 10^18
            etherRaised += msg.value
            etherBalanceOf[address(msg.sender)] += msg.value
            emit Buy((110 * 10^6 * msg.value / 10^18), msg.sender);
        else:
            if etherRaised < 1000 * 10^18:
                if msg.value:
                    require msg.value
                    require 105 * 10^6 * msg.value / msg.value == 105 * 10^6
                require 105 * 10^6 * msg.value == (10^18 * 105 * 10^6 * msg.value / 10^18) + (105 * 10^6 * msg.value % 10^18)
                require 105 * 10^6 * msg.value / 10^18 <= -sub_a17ae583 + 8 * 10^11
                if msg.value:
                    require msg.value
                    require 985 * msg.value / msg.value == 985
                require 985 * msg.value == (1000 * 985 * msg.value / 1000) + (985 * msg.value % 1000)
                call sub_6a1a961eAddress with:
                   value 985 * msg.value / 1000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if msg.value:
                    require msg.value
                    require 15 * msg.value / msg.value == 15
                require 15 * msg.value == (1000 * 15 * msg.value / 1000) + (15 * msg.value % 1000)
                call sub_4f3ec508Address with:
                   value 15 * msg.value / 1000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(sub_6842d52cAddress)
                call sub_6842d52cAddress.createToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 105 * 10^6 * msg.value / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                sub_a17ae583 += 105 * 10^6 * msg.value / 10^18
                etherRaised += msg.value
                etherBalanceOf[address(msg.sender)] += msg.value
                emit Buy((105 * 10^6 * msg.value / 10^18), msg.sender);
            else:
                if etherRaised < 4000 * 10^18:
                    if msg.value:
                        require msg.value
                        require 102 * 10^6 * msg.value / msg.value == 102 * 10^6
                    require 102 * 10^6 * msg.value == (10^18 * 102 * 10^6 * msg.value / 10^18) + (102 * 10^6 * msg.value % 10^18)
                    require 102 * 10^6 * msg.value / 10^18 <= -sub_a17ae583 + 8 * 10^11
                    if msg.value:
                        require msg.value
                        require 985 * msg.value / msg.value == 985
                    require 985 * msg.value == (1000 * 985 * msg.value / 1000) + (985 * msg.value % 1000)
                    call sub_6a1a961eAddress with:
                       value 985 * msg.value / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if msg.value:
                        require msg.value
                        require 15 * msg.value / msg.value == 15
                    require 15 * msg.value == (1000 * 15 * msg.value / 1000) + (15 * msg.value % 1000)
                    call sub_4f3ec508Address with:
                       value 15 * msg.value / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(sub_6842d52cAddress)
                    call sub_6842d52cAddress.createToken(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 102 * 10^6 * msg.value / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    sub_a17ae583 += 102 * 10^6 * msg.value / 10^18
                    etherRaised += msg.value
                    etherBalanceOf[address(msg.sender)] += msg.value
                    emit Buy((102 * 10^6 * msg.value / 10^18), msg.sender);
                else:
                    if etherRaised >= 8000 * 10^18:
                        if msg.value:
                            require msg.value
                            require not 0 / msg.value
                        require 0 <= -sub_a17ae583 + 8 * 10^11
                        if msg.value:
                            require msg.value
                            require 985 * msg.value / msg.value == 985
                        require 985 * msg.value == (1000 * 985 * msg.value / 1000) + (985 * msg.value % 1000)
                        call sub_6a1a961eAddress with:
                           value 985 * msg.value / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if msg.value:
                            require msg.value
                            require 15 * msg.value / msg.value == 15
                        require 15 * msg.value == (1000 * 15 * msg.value / 1000) + (15 * msg.value % 1000)
                        call sub_4f3ec508Address with:
                           value 15 * msg.value / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require ext_code.size(sub_6842d52cAddress)
                        call sub_6842d52cAddress.createToken(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        require ext_call.return_data[0]
                        etherRaised += msg.value
                        etherBalanceOf[address(msg.sender)] += msg.value
                        emit Buy(0, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 100 * 10^6 * msg.value / msg.value == 100 * 10^6
                        require 100 * 10^6 * msg.value == (10^18 * 100 * 10^6 * msg.value / 10^18) + (100 * 10^6 * msg.value % 10^18)
                        require 100 * 10^6 * msg.value / 10^18 <= -sub_a17ae583 + 8 * 10^11
                        if msg.value:
                            require msg.value
                            require 985 * msg.value / msg.value == 985
                        require 985 * msg.value == (1000 * 985 * msg.value / 1000) + (985 * msg.value % 1000)
                        call sub_6a1a961eAddress with:
                           value 985 * msg.value / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if msg.value:
                            require msg.value
                            require 15 * msg.value / msg.value == 15
                        require 15 * msg.value == (1000 * 15 * msg.value / 1000) + (15 * msg.value % 1000)
                        call sub_4f3ec508Address with:
                           value 15 * msg.value / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require ext_code.size(sub_6842d52cAddress)
                        call sub_6842d52cAddress.createToken(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 100 * 10^6 * msg.value / 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        sub_a17ae583 += 100 * 10^6 * msg.value / 10^18
                        etherRaised += msg.value
                        etherBalanceOf[address(msg.sender)] += msg.value
                        emit Buy((100 * 10^6 * msg.value / 10^18), msg.sender);
}



}
