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
uint256 stor13;
uint8 stor14;

function _fallback() payable {
    stor14 = 0
    require not msg.value
    mem[96 len -6502] = code.data[7721 len -6502]
    mem[64] = -6406
    stor8 = msg.sender
    stor2 = mem[256]
    stor3 = mem[288]
    stor4 = mem[288] + (672 * 24 * 3600)
    stor0.length = (2 * mem[mem[96] + 96]) + 1
    s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    while (stor0.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor1.length = (2 * mem[mem[128] + 96]) + 1
    s = 0
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor1[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor1.length + 31 / 32 > Mask(251, 0, mem[mem[128] + 96] + 31) >> 5:
        stor1[Mask(251, 0, mem[mem[128] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 1
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor5 = mem[172 len 20]
    stor13 = 10^18 * mem[320]
    stor6 = mem[204 len 20]
    stor7 = mem[236 len 20]
    create contract with 0 wei
                    code: code.data[4724 len 2997], address(this.address), stor4
    require create.new_address
    stor9 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).createIlliquidToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor7, 300 * 10^6
    require ext_call.success
    require ext_code.size(stor9)
    call stor9.createToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor7, 100 * 10^6
    require ext_call.success
    require ext_code.size(stor9)
    call stor9.createToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor7, 400 * 10^6
    require ext_call.success
    require ext_code.size(stor9)
    call stor9.createToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args stor7, 200 * 10^6
    require ext_call.success
    return code.data[1219 len 3505]
}



// =====================  Runtime code  =====================


const sub_13498110(?) = 10^9

const PRICE_STAGE_TWO = 625000

const ALLOC_NEW_USERS = 200 * 10^6

const MAX_SUPPLY = 15 * 10^9

const STAGE_FOUR_TIME_END = (672 * 24 * 3600)

const ALLOC_LIQUID_TEAM = 400 * 10^6

const ALLOC_BOUNTIES = 100 * 10^6

const ALLOC_ILLIQUID_TEAM = 300 * 10^6

const STAGE_TWO_TIME_END = (168 * 24 * 3600)

const STAGE_ONE_TIME_END = 3600

const ALLOC_CROWDSALE = 14 * 10^9

const PRICE_STAGE_ONE = 625000

const PRICE_STAGE_FOUR = 500000

const PRICE_STAGE_THREE = 555555

const STAGE_THREE_TIME_END = (336 * 24 * 3600)


array of uint256 sub_4a7caf60;
array of uint256 country;
uint256 privateStartTime;
uint256 publicStartTime;
uint256 publicEndTime;
address presaleAddress;
address stor6;
address ownerAddress;
address sub_3dbdddceAddress;
uint256 etherRaised;
uint256 sub_604eab7c;
uint256 sub_268f5d02;
uint256 sub_38044242;
uint8 sub_5794c5c9;
mapping of uint256 etherBalanceOf;
uint8 halted;

function presaleAddress() {
    return presaleAddress
}

function etherBalanceOf(address arg1) {
    return etherBalanceOf[address(arg1)]
}

function sub_268f5d02(?) {
    return sub_268f5d02
}

function publicEndTime() {
    return publicEndTime
}

function sub_38044242(?) {
    return sub_38044242
}

function sub_3dbdddce(?) {
    return sub_3dbdddceAddress
}

function sub_4a7caf60(?) {
    return sub_4a7caf60[0 len sub_4a7caf60.length]
}

function sub_5794c5c9(?) {
    return bool(sub_5794c5c9)
}

function publicStartTime() {
    return publicStartTime
}

function sub_604eab7c(?) {
    return sub_604eab7c
}

function privateStartTime() {
    return privateStartTime
}

function ownerAddress() {
    return ownerAddress
}

function etherBalances(address arg1) {
    return etherBalanceOf[arg1]
}

function halted() {
    return bool(halted)
}

function etherRaised() {
    return etherRaised
}

function country() {
    return country[0 len country.length]
}

function toggleHalt(bool arg1) {
    require ownerAddress == msg.sender
    halted = uint8(arg1)
}

function drain() {
    require ownerAddress == msg.sender
    call ownerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getPriceRate() {
    if block.timestamp <= publicStartTime + 3600:
        return 625000
    if block.timestamp <= publicStartTime + (168 * 24 * 3600):
        return 625000
    if block.timestamp <= publicStartTime + (336 * 24 * 3600):
        return 555555
    if block.timestamp > publicStartTime + (672 * 24 * 3600):
        return 0
    return 500000
}

function withdrawal() {
    require block.timestamp > publicEndTime
    require not halted
    if etherRaised >= sub_38044242:
        call stor6 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            halted = 1
            sub_5794c5c9 = 1
    else:
        etherBalanceOf[address(msg.sender)] = 0
        if etherBalanceOf[address(msg.sender)] > 0:
            call msg.sender with:
               value etherBalanceOf[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
}

function preBuy() payable {
    require block.timestamp < publicStartTime
    require block.timestamp >= privateStartTime
    require presaleAddress == msg.sender
    require not halted
    if msg.value:
        require 625000 * msg.value / msg.value == 625000
    require 625000 * msg.value == (10^18 * 625000 * msg.value / 10^18) + (625000 * msg.value % 10^18)
    require 625000 * msg.value / 10^18 <= -sub_268f5d02 + 10^9
    require ext_code.size(sub_3dbdddceAddress)
    call sub_3dbdddceAddress.createToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, 625000 * msg.value / 10^18
    require ext_call.success
    require ext_call.return_data[0]
    sub_604eab7c += 625000 * msg.value / 10^18
    etherRaised += msg.value
    etherBalanceOf[address(msg.sender)] += msg.value
    sub_268f5d02 += 625000 * msg.value / 10^18
    emit PreBuy((625000 * msg.value / 10^18));
}

function _fallback() payable {
    require block.timestamp >= publicStartTime
    require block.timestamp < publicEndTime
    require not halted
    if block.timestamp <= publicStartTime + 3600:
        if msg.value:
            require 625000 * msg.value / msg.value == 625000
        require 625000 * msg.value == (10^18 * 625000 * msg.value / 10^18) + (625000 * msg.value % 10^18)
        require 625000 * msg.value / 10^18 <= -sub_604eab7c + 14 * 10^9
        require ext_code.size(sub_3dbdddceAddress)
        call sub_3dbdddceAddress.createToken(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args msg.sender, 625000 * msg.value / 10^18
        require ext_call.success
        require ext_call.return_data[0]
        sub_604eab7c += 625000 * msg.value / 10^18
        etherRaised += msg.value
        etherBalanceOf[address(msg.sender)] += msg.value
        emit Buy((625000 * msg.value / 10^18), msg.sender);
    else:
        if block.timestamp <= publicStartTime + (168 * 24 * 3600):
            if msg.value:
                require 625000 * msg.value / msg.value == 625000
            require 625000 * msg.value == (10^18 * 625000 * msg.value / 10^18) + (625000 * msg.value % 10^18)
            require 625000 * msg.value / 10^18 <= -sub_604eab7c + 14 * 10^9
            require ext_code.size(sub_3dbdddceAddress)
            call sub_3dbdddceAddress.createToken(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args msg.sender, 625000 * msg.value / 10^18
            require ext_call.success
            require ext_call.return_data[0]
            sub_604eab7c += 625000 * msg.value / 10^18
            etherRaised += msg.value
            etherBalanceOf[address(msg.sender)] += msg.value
            emit Buy((625000 * msg.value / 10^18), msg.sender);
        else:
            if block.timestamp <= publicStartTime + (336 * 24 * 3600):
                if msg.value:
                    require 555555 * msg.value / msg.value == 555555
                require 555555 * msg.value == (10^18 * 555555 * msg.value / 10^18) + (555555 * msg.value % 10^18)
                require 555555 * msg.value / 10^18 <= -sub_604eab7c + 14 * 10^9
                require ext_code.size(sub_3dbdddceAddress)
                call sub_3dbdddceAddress.createToken(address rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, 555555 * msg.value / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                sub_604eab7c += 555555 * msg.value / 10^18
                etherRaised += msg.value
                etherBalanceOf[address(msg.sender)] += msg.value
                emit Buy((555555 * msg.value / 10^18), msg.sender);
            else:
                if block.timestamp > publicStartTime + (672 * 24 * 3600):
                    if msg.value:
                        require not 0 / msg.value
                    require 0 <= -sub_604eab7c + 14 * 10^9
                    require ext_code.size(sub_3dbdddceAddress)
                    call sub_3dbdddceAddress.createToken(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args msg.sender, 0
                    require ext_call.success
                    require ext_call.return_data[0]
                    etherRaised += msg.value
                    etherBalanceOf[address(msg.sender)] += msg.value
                    emit Buy(0, msg.sender);
                else:
                    if msg.value:
                        require 500000 * msg.value / msg.value == 500000
                    require 500000 * msg.value == (10^18 * 500000 * msg.value / 10^18) + (500000 * msg.value % 10^18)
                    require 500000 * msg.value / 10^18 <= -sub_604eab7c + 14 * 10^9
                    require ext_code.size(sub_3dbdddceAddress)
                    call sub_3dbdddceAddress.createToken(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args msg.sender, 500000 * msg.value / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    sub_604eab7c += 500000 * msg.value / 10^18
                    etherRaised += msg.value
                    etherBalanceOf[address(msg.sender)] += msg.value
                    emit Buy((500000 * msg.value / 10^18), msg.sender);
}



}
