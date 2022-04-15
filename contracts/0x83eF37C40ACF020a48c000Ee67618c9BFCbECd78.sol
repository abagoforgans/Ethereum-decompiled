contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor9;
uint256 stor11;
uint8 stor12;
uint256 stor12; offset 32
uint256 stor12; offset 24
uint256 stor12; offset 16
uint256 stor12; offset 8

function _fallback() payable {
    stor4 = 1505802600
    uint8(stor12.field_0) = 0
    Mask(248, 0, stor12.field_8) = 0
    Mask(240, 0, stor12.field_16) = 0
    Mask(232, 0, stor12.field_24) = 0
    Mask(224, 0, stor12.field_32) = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[8314 len 20]
    stor4 = code.data[8238 len 32]
    stor11 = code.data[8270 len 32]
    stor1 = code.data[8314 len 20]
    stor9 = code.data[8334 len 32]
    stor2 = code.data[8378 len 20]
    stor3 = code.data[8410 len 20]
    return code.data[575 len 7663]
}



// =====================  Runtime code  =====================


const CAP = 134400000 * 10^18

const END = 1507703400


address owner;
address stor1;
address stor2;
address stor3;
uint256 START;
mapping of uint256 sub_ef98fcc9;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint256 totalEtherRaised;
uint256 sub_abdc2020;
uint256 sub_de78b109;
uint256 minContribution;
uint8 stor12;
uint8 stor12; offset 8
uint8 stor12; offset 16
uint8 stor12; offset 24
uint8 stor12; offset 32
uint256 stor12; offset 32
uint256 stor12; offset 24
uint256 stor12; offset 16
uint256 stor12; offset 8

function initialized() {
    return bool(uint8(stor12.field_0))
}

function totalEtherRaised() {
    return totalEtherRaised
}

function sub_7d6ffaea(?) {
    return bool(uint8(stor12.field_8))
}

function approvedUsers(address arg1) {
    return bool(stor6[arg1])
}

function owner() {
    return owner
}

function minContribution() {
    return minContribution
}

function sub_abdc2020(?) {
    return sub_abdc2020
}

function sub_b01394f4(?) {
    return bool(uint8(stor12.field_16))
}

function START() {
    return START
}

function isTerminated() {
    return bool(uint8(stor12.field_32))
}

function isGoalReached() {
    return bool(uint8(stor12.field_24))
}

function sub_de78b109(?) {
    return sub_de78b109
}

function sub_df925062(?) {
    return bool(stor7[arg1])
}

function sub_ef98fcc9(?) {
    return sub_ef98fcc9[arg1]
}

function terminateContract() {
    require msg.sender == owner
    if block.timestamp < 1508308200:
    if uint8(stor12.field_24):
    if sub_de78b109 >= 134400000 * 10^18:
        Mask(232, 0, stor12.field_24) = 1
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
        require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor3, ext_call.return_data[0]
        require ext_call.success
        Mask(224, 0, stor12.field_32) = 1
    if uint8(stor12.field_24):
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
    require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor3, ext_call.return_data[0]
    require ext_call.success
    Mask(224, 0, stor12.field_32) = 1
    selfdestruct(owner)
}

function payEther() payable {
  stop
}

function sub_34af81ab(?) {
    require msg.sender == owner
    stor7[address(arg1)] = 1
}

function sub_3a1211f7(?) {
    require msg.sender == owner
    stor7[address(arg1)] = 0
}

function pauseContract() {
    require msg.sender == owner
    Mask(240, 0, stor12.field_16) = 1
}

function resumeContract() {
    require msg.sender == owner
    Mask(240, 0, stor12.field_16) = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function sub_dbcd4689(?) {
    require msg.sender == owner
    require uint8(stor12.field_16)
    stor2 = arg1
}

function approveUser(address arg1) {
    if owner != msg.sender:
        require stor7[address(msg.sender)]
    stor6[address(arg1)] = 1
    emit 0xdd01bc09: address(arg1), bool(stor6[address(arg1)])
}

function tokensAvailable() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_9baa7680(?) payable {
    call stor2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require totalEtherRaised + arg1 >= totalEtherRaised
    require totalEtherRaised + arg1 >= arg1
}

function initialize() {
    require msg.sender == owner
    require not uint8(stor12.field_0)
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= 134400000 * 10^18
    uint8(stor12.field_0) = 1
}

function sub_380ef7ed(?) payable {
    require uint8(stor12.field_16)
    require msg.sender == owner
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
    require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
}

function approveUsers(address[] arg1) {
    if owner != msg.sender:
        mem[0] = msg.sender
        require stor7[address(msg.sender)]
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor6[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 160] = bool(stor6[mem[0]])
        emit 0xdd01bc09: mem[(32 * arg1.length) + 128], bool(stor6[mem[0]])
        idx = idx + 1
        continue 
}

function emergencyStop() {
    require msg.sender == owner
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
    require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor3, ext_call.return_data[0]
    require ext_call.success
    Mask(224, 0, stor12.field_32) = 1
    Mask(248, 0, stor12.field_8) = 1
}

function sub_84120cba(?) {
    require msg.sender == owner
    if block.timestamp >= 1507703400:
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
        require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor3, ext_call.return_data[0]
        require ext_call.success
        Mask(224, 0, stor12.field_32) = 1
}

function sub_9bc6898c(?) {
    if block.timestamp >= START:
        if block.timestamp <= 1507703400:
            return 1
    if block.timestamp >= 1507703400:
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
        require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor3, ext_call.return_data[0]
        require ext_call.success
        Mask(224, 0, stor12.field_32) = 1
        return 0
    else:
        return 0
}

function isActive() {
    if bool(uint8(stor12.field_0)) != 1:
        return (bool(uint8(stor12.field_0)) == 1)
    if block.timestamp < START:
        if block.timestamp >= 1507703400:
            call stor2 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
            require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor3, ext_call.return_data[0]
            require ext_call.success
            Mask(224, 0, stor12.field_32) = 1
            return 0
        else:
            return 0
    if block.timestamp > 1507703400:
        if block.timestamp >= 1507703400:
            call stor2 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
            require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor3, ext_call.return_data[0]
            require ext_call.success
            Mask(224, 0, stor12.field_32) = 1
            return 0
        else:
            return 0
    if not uint8(stor12.field_24):
        if sub_de78b109 >= 134400000 * 10^18:
            Mask(232, 0, stor12.field_24) = 1
            call stor2 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
            require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor3, ext_call.return_data[0]
            require ext_call.success
            Mask(224, 0, stor12.field_32) = 1
    return not bool(uint8(stor12.field_24))
}

function sub_cab18843(?) payable {
    require bool(uint8(stor12.field_0)) == 1
    if block.timestamp < START:
        require block.timestamp >= 1507703400
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
        require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor3, ext_call.return_data[0]
        require ext_call.success
        Mask(224, 0, stor12.field_32) = 1
        revert
    if block.timestamp > 1507703400:
        require block.timestamp >= 1507703400
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
        require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor3, ext_call.return_data[0]
        require ext_call.success
        Mask(224, 0, stor12.field_32) = 1
        revert
    if not uint8(stor12.field_24):
        if sub_de78b109 >= 134400000 * 10^18:
            Mask(232, 0, stor12.field_24) = 1
            call stor2 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
            require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor3, ext_call.return_data[0]
            require ext_call.success
            Mask(224, 0, stor12.field_32) = 1
    require not uint8(stor12.field_24)
    require msg.value > minContribution
    if msg.value < 150 * 10^18:
        if msg.value:
            require msg.value
            require msg.value * 100 * sub_abdc2020 / 90 / msg.value == 100 * sub_abdc2020 / 90
        require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 90) >= sub_de78b109
        require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 90) >= msg.value * 100 * sub_abdc2020 / 90
        if sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 90) <= 134400000 * 10^18:
            require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 90) >= sub_de78b109
            require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 90) >= msg.value * 100 * sub_abdc2020 / 90
            sub_de78b109 += msg.value * 100 * sub_abdc2020 / 90
            call stor2 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require totalEtherRaised + msg.value >= totalEtherRaised
            require totalEtherRaised + msg.value >= msg.value
            require sub_ef98fcc9[address(msg.sender)] + msg.value >= sub_ef98fcc9[address(msg.sender)]
            require sub_ef98fcc9[address(msg.sender)] + msg.value >= msg.value
            sub_ef98fcc9[address(msg.sender)] += msg.value
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * 100 * sub_abdc2020 / 90
            require ext_call.success
        else:
            require sub_de78b109 <= 134400000 * 10^18
            require 100 * sub_abdc2020 / 90
            require -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90 <= msg.value
            emit GoalReached(sub_de78b109);
            require 134400000 * 10^18 >= sub_de78b109
            require 134400000 * 10^18 >= -sub_de78b109 + 134400000 * 10^18
            sub_de78b109 = 134400000 * 10^18
            call stor2 with:
               value -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90) >= totalEtherRaised
            require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90
            require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90) >= sub_ef98fcc9[address(msg.sender)]
            require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90
            sub_ef98fcc9[address(msg.sender)] += -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, -sub_de78b109 + 134400000 * 10^18
            require ext_call.success
            if msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90) > 0:
                call msg.sender with:
                   value msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x6e7461ce: (msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90))
    else:
        if msg.value < 500 * 10^18:
            if msg.value:
                require msg.value
                require msg.value * 100 * sub_abdc2020 / 67 / msg.value == 100 * sub_abdc2020 / 67
            require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 67) >= sub_de78b109
            require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 67) >= msg.value * 100 * sub_abdc2020 / 67
            if sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 67) <= 134400000 * 10^18:
                require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 67) >= sub_de78b109
                require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 67) >= msg.value * 100 * sub_abdc2020 / 67
                sub_de78b109 += msg.value * 100 * sub_abdc2020 / 67
                call stor2 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require totalEtherRaised + msg.value >= totalEtherRaised
                require totalEtherRaised + msg.value >= msg.value
                require sub_ef98fcc9[address(msg.sender)] + msg.value >= sub_ef98fcc9[address(msg.sender)]
                require sub_ef98fcc9[address(msg.sender)] + msg.value >= msg.value
                sub_ef98fcc9[address(msg.sender)] += msg.value
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * 100 * sub_abdc2020 / 67
                require ext_call.success
            else:
                require sub_de78b109 <= 134400000 * 10^18
                require 100 * sub_abdc2020 / 67
                require -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67 <= msg.value
                emit GoalReached(sub_de78b109);
                require 134400000 * 10^18 >= sub_de78b109
                require 134400000 * 10^18 >= -sub_de78b109 + 134400000 * 10^18
                sub_de78b109 = 134400000 * 10^18
                call stor2 with:
                   value -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67) >= totalEtherRaised
                require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67
                require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67) >= sub_ef98fcc9[address(msg.sender)]
                require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67
                sub_ef98fcc9[address(msg.sender)] += -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -sub_de78b109 + 134400000 * 10^18
                require ext_call.success
                if msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67) > 0:
                    call msg.sender with:
                       value msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x6e7461ce: (msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67))
        else:
            if msg.value < 1000 * 10^18:
                if msg.value:
                    require msg.value
                    require msg.value * 100 * sub_abdc2020 / 65 / msg.value == 100 * sub_abdc2020 / 65
                require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 65) >= sub_de78b109
                require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 65) >= msg.value * 100 * sub_abdc2020 / 65
                if sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 65) <= 134400000 * 10^18:
                    require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 65) >= sub_de78b109
                    require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 65) >= msg.value * 100 * sub_abdc2020 / 65
                    sub_de78b109 += msg.value * 100 * sub_abdc2020 / 65
                    call stor2 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require totalEtherRaised + msg.value >= totalEtherRaised
                    require totalEtherRaised + msg.value >= msg.value
                    require sub_ef98fcc9[address(msg.sender)] + msg.value >= sub_ef98fcc9[address(msg.sender)]
                    require sub_ef98fcc9[address(msg.sender)] + msg.value >= msg.value
                    sub_ef98fcc9[address(msg.sender)] += msg.value
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * 100 * sub_abdc2020 / 65
                    require ext_call.success
                else:
                    require sub_de78b109 <= 134400000 * 10^18
                    require 100 * sub_abdc2020 / 65
                    require -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65 <= msg.value
                    emit GoalReached(sub_de78b109);
                    require 134400000 * 10^18 >= sub_de78b109
                    require 134400000 * 10^18 >= -sub_de78b109 + 134400000 * 10^18
                    sub_de78b109 = 134400000 * 10^18
                    call stor2 with:
                       value -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65) >= totalEtherRaised
                    require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65
                    require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65) >= sub_ef98fcc9[address(msg.sender)]
                    require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65
                    sub_ef98fcc9[address(msg.sender)] += -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, -sub_de78b109 + 134400000 * 10^18
                    require ext_call.success
                    if msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65) > 0:
                        call msg.sender with:
                           value msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0x6e7461ce: (msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65))
            else:
                if msg.value >= 5000 * 10^18:
                    if msg.value:
                        require msg.value
                        require msg.value * 100 * sub_abdc2020 / 60 / msg.value == 100 * sub_abdc2020 / 60
                    require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 60) >= sub_de78b109
                    require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 60) >= msg.value * 100 * sub_abdc2020 / 60
                    if sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 60) <= 134400000 * 10^18:
                        require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 60) >= sub_de78b109
                        require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 60) >= msg.value * 100 * sub_abdc2020 / 60
                        sub_de78b109 += msg.value * 100 * sub_abdc2020 / 60
                        call stor2 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require totalEtherRaised + msg.value >= totalEtherRaised
                        require totalEtherRaised + msg.value >= msg.value
                        require sub_ef98fcc9[address(msg.sender)] + msg.value >= sub_ef98fcc9[address(msg.sender)]
                        require sub_ef98fcc9[address(msg.sender)] + msg.value >= msg.value
                        sub_ef98fcc9[address(msg.sender)] += msg.value
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 100 * sub_abdc2020 / 60
                        require ext_call.success
                    else:
                        require sub_de78b109 <= 134400000 * 10^18
                        require 100 * sub_abdc2020 / 60
                        require -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60 <= msg.value
                        emit GoalReached(sub_de78b109);
                        require 134400000 * 10^18 >= sub_de78b109
                        require 134400000 * 10^18 >= -sub_de78b109 + 134400000 * 10^18
                        sub_de78b109 = 134400000 * 10^18
                        call stor2 with:
                           value -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60) >= totalEtherRaised
                        require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60
                        require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60) >= sub_ef98fcc9[address(msg.sender)]
                        require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60
                        sub_ef98fcc9[address(msg.sender)] += -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -sub_de78b109 + 134400000 * 10^18
                        require ext_call.success
                        if msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60) > 0:
                            call msg.sender with:
                               value msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit 0x6e7461ce: (msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60))
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * 100 * sub_abdc2020 / 62 / msg.value == 100 * sub_abdc2020 / 62
                    require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 62) >= sub_de78b109
                    require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 62) >= msg.value * 100 * sub_abdc2020 / 62
                    if sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 62) <= 134400000 * 10^18:
                        require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 62) >= sub_de78b109
                        require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 62) >= msg.value * 100 * sub_abdc2020 / 62
                        sub_de78b109 += msg.value * 100 * sub_abdc2020 / 62
                        call stor2 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require totalEtherRaised + msg.value >= totalEtherRaised
                        require totalEtherRaised + msg.value >= msg.value
                        require sub_ef98fcc9[address(msg.sender)] + msg.value >= sub_ef98fcc9[address(msg.sender)]
                        require sub_ef98fcc9[address(msg.sender)] + msg.value >= msg.value
                        sub_ef98fcc9[address(msg.sender)] += msg.value
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 100 * sub_abdc2020 / 62
                        require ext_call.success
                    else:
                        require sub_de78b109 <= 134400000 * 10^18
                        require 100 * sub_abdc2020 / 62
                        require -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62 <= msg.value
                        emit GoalReached(sub_de78b109);
                        require 134400000 * 10^18 >= sub_de78b109
                        require 134400000 * 10^18 >= -sub_de78b109 + 134400000 * 10^18
                        sub_de78b109 = 134400000 * 10^18
                        call stor2 with:
                           value -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62) >= totalEtherRaised
                        require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62
                        require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62) >= sub_ef98fcc9[address(msg.sender)]
                        require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62
                        sub_ef98fcc9[address(msg.sender)] += -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -sub_de78b109 + 134400000 * 10^18
                        require ext_call.success
                        if msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62) > 0:
                            call msg.sender with:
                               value msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit 0x6e7461ce: (msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62))
}

function _fallback() payable {
    require bool(uint8(stor12.field_0)) == 1
    if block.timestamp < START:
        require block.timestamp >= 1507703400
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
        require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor3, ext_call.return_data[0]
        require ext_call.success
        Mask(224, 0, stor12.field_32) = 1
        revert
    if block.timestamp > 1507703400:
        require block.timestamp >= 1507703400
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
        require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor3, ext_call.return_data[0]
        require ext_call.success
        Mask(224, 0, stor12.field_32) = 1
        revert
    if not uint8(stor12.field_24):
        if sub_de78b109 >= 134400000 * 10^18:
            Mask(232, 0, stor12.field_24) = 1
            call stor2 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
            require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor3, ext_call.return_data[0]
            require ext_call.success
            Mask(224, 0, stor12.field_32) = 1
    require not uint8(stor12.field_24)
    require not uint8(stor12.field_8)
    require not uint8(stor12.field_16)
    require msg.value >= minContribution
    if not stor6[address(msg.sender)]:
        require msg.sender == owner
    require bool(uint8(stor12.field_0)) == 1
    if block.timestamp < START:
        require block.timestamp >= 1507703400
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
        require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor3, ext_call.return_data[0]
        require ext_call.success
        Mask(224, 0, stor12.field_32) = 1
        revert
    if block.timestamp > 1507703400:
        require block.timestamp >= 1507703400
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
        require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor3, ext_call.return_data[0]
        require ext_call.success
        Mask(224, 0, stor12.field_32) = 1
        revert
    if not uint8(stor12.field_24):
        if sub_de78b109 >= 134400000 * 10^18:
            Mask(232, 0, stor12.field_24) = 1
            call stor2 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require totalEtherRaised + eth.balance(this.address) >= totalEtherRaised
            require totalEtherRaised + eth.balance(this.address) >= eth.balance(this.address)
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor3, ext_call.return_data[0]
            require ext_call.success
            Mask(224, 0, stor12.field_32) = 1
    require not uint8(stor12.field_24)
    require msg.value > minContribution
    if msg.value < 150 * 10^18:
        if msg.value:
            require msg.value
            require msg.value * 100 * sub_abdc2020 / 90 / msg.value == 100 * sub_abdc2020 / 90
        require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 90) >= sub_de78b109
        require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 90) >= msg.value * 100 * sub_abdc2020 / 90
        if sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 90) <= 134400000 * 10^18:
            require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 90) >= sub_de78b109
            require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 90) >= msg.value * 100 * sub_abdc2020 / 90
            sub_de78b109 += msg.value * 100 * sub_abdc2020 / 90
            call stor2 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require totalEtherRaised + msg.value >= totalEtherRaised
            require totalEtherRaised + msg.value >= msg.value
            require sub_ef98fcc9[address(msg.sender)] + msg.value >= sub_ef98fcc9[address(msg.sender)]
            require sub_ef98fcc9[address(msg.sender)] + msg.value >= msg.value
            sub_ef98fcc9[address(msg.sender)] += msg.value
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * 100 * sub_abdc2020 / 90
            require ext_call.success
        else:
            require sub_de78b109 <= 134400000 * 10^18
            require 100 * sub_abdc2020 / 90
            require -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90 <= msg.value
            emit GoalReached(sub_de78b109);
            require 134400000 * 10^18 >= sub_de78b109
            require 134400000 * 10^18 >= -sub_de78b109 + 134400000 * 10^18
            sub_de78b109 = 134400000 * 10^18
            call stor2 with:
               value -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90) >= totalEtherRaised
            require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90
            require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90) >= sub_ef98fcc9[address(msg.sender)]
            require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90
            sub_ef98fcc9[address(msg.sender)] += -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, -sub_de78b109 + 134400000 * 10^18
            require ext_call.success
            if msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90) > 0:
                call msg.sender with:
                   value msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x6e7461ce: (msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 90))
    else:
        if msg.value < 500 * 10^18:
            if msg.value:
                require msg.value
                require msg.value * 100 * sub_abdc2020 / 67 / msg.value == 100 * sub_abdc2020 / 67
            require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 67) >= sub_de78b109
            require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 67) >= msg.value * 100 * sub_abdc2020 / 67
            if sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 67) <= 134400000 * 10^18:
                require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 67) >= sub_de78b109
                require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 67) >= msg.value * 100 * sub_abdc2020 / 67
                sub_de78b109 += msg.value * 100 * sub_abdc2020 / 67
                call stor2 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require totalEtherRaised + msg.value >= totalEtherRaised
                require totalEtherRaised + msg.value >= msg.value
                require sub_ef98fcc9[address(msg.sender)] + msg.value >= sub_ef98fcc9[address(msg.sender)]
                require sub_ef98fcc9[address(msg.sender)] + msg.value >= msg.value
                sub_ef98fcc9[address(msg.sender)] += msg.value
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * 100 * sub_abdc2020 / 67
                require ext_call.success
            else:
                require sub_de78b109 <= 134400000 * 10^18
                require 100 * sub_abdc2020 / 67
                require -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67 <= msg.value
                emit GoalReached(sub_de78b109);
                require 134400000 * 10^18 >= sub_de78b109
                require 134400000 * 10^18 >= -sub_de78b109 + 134400000 * 10^18
                sub_de78b109 = 134400000 * 10^18
                call stor2 with:
                   value -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67) >= totalEtherRaised
                require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67
                require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67) >= sub_ef98fcc9[address(msg.sender)]
                require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67
                sub_ef98fcc9[address(msg.sender)] += -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -sub_de78b109 + 134400000 * 10^18
                require ext_call.success
                if msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67) > 0:
                    call msg.sender with:
                       value msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x6e7461ce: (msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 67))
        else:
            if msg.value < 1000 * 10^18:
                if msg.value:
                    require msg.value
                    require msg.value * 100 * sub_abdc2020 / 65 / msg.value == 100 * sub_abdc2020 / 65
                require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 65) >= sub_de78b109
                require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 65) >= msg.value * 100 * sub_abdc2020 / 65
                if sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 65) <= 134400000 * 10^18:
                    require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 65) >= sub_de78b109
                    require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 65) >= msg.value * 100 * sub_abdc2020 / 65
                    sub_de78b109 += msg.value * 100 * sub_abdc2020 / 65
                    call stor2 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require totalEtherRaised + msg.value >= totalEtherRaised
                    require totalEtherRaised + msg.value >= msg.value
                    require sub_ef98fcc9[address(msg.sender)] + msg.value >= sub_ef98fcc9[address(msg.sender)]
                    require sub_ef98fcc9[address(msg.sender)] + msg.value >= msg.value
                    sub_ef98fcc9[address(msg.sender)] += msg.value
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * 100 * sub_abdc2020 / 65
                    require ext_call.success
                else:
                    require sub_de78b109 <= 134400000 * 10^18
                    require 100 * sub_abdc2020 / 65
                    require -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65 <= msg.value
                    emit GoalReached(sub_de78b109);
                    require 134400000 * 10^18 >= sub_de78b109
                    require 134400000 * 10^18 >= -sub_de78b109 + 134400000 * 10^18
                    sub_de78b109 = 134400000 * 10^18
                    call stor2 with:
                       value -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65) >= totalEtherRaised
                    require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65
                    require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65) >= sub_ef98fcc9[address(msg.sender)]
                    require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65
                    sub_ef98fcc9[address(msg.sender)] += -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, -sub_de78b109 + 134400000 * 10^18
                    require ext_call.success
                    if msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65) > 0:
                        call msg.sender with:
                           value msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0x6e7461ce: (msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 65))
            else:
                if msg.value >= 5000 * 10^18:
                    if msg.value:
                        require msg.value
                        require msg.value * 100 * sub_abdc2020 / 60 / msg.value == 100 * sub_abdc2020 / 60
                    require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 60) >= sub_de78b109
                    require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 60) >= msg.value * 100 * sub_abdc2020 / 60
                    if sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 60) <= 134400000 * 10^18:
                        require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 60) >= sub_de78b109
                        require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 60) >= msg.value * 100 * sub_abdc2020 / 60
                        sub_de78b109 += msg.value * 100 * sub_abdc2020 / 60
                        call stor2 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require totalEtherRaised + msg.value >= totalEtherRaised
                        require totalEtherRaised + msg.value >= msg.value
                        require sub_ef98fcc9[address(msg.sender)] + msg.value >= sub_ef98fcc9[address(msg.sender)]
                        require sub_ef98fcc9[address(msg.sender)] + msg.value >= msg.value
                        sub_ef98fcc9[address(msg.sender)] += msg.value
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 100 * sub_abdc2020 / 60
                        require ext_call.success
                    else:
                        require sub_de78b109 <= 134400000 * 10^18
                        require 100 * sub_abdc2020 / 60
                        require -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60 <= msg.value
                        emit GoalReached(sub_de78b109);
                        require 134400000 * 10^18 >= sub_de78b109
                        require 134400000 * 10^18 >= -sub_de78b109 + 134400000 * 10^18
                        sub_de78b109 = 134400000 * 10^18
                        call stor2 with:
                           value -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60) >= totalEtherRaised
                        require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60
                        require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60) >= sub_ef98fcc9[address(msg.sender)]
                        require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60
                        sub_ef98fcc9[address(msg.sender)] += -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -sub_de78b109 + 134400000 * 10^18
                        require ext_call.success
                        if msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60) > 0:
                            call msg.sender with:
                               value msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit 0x6e7461ce: (msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 60))
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * 100 * sub_abdc2020 / 62 / msg.value == 100 * sub_abdc2020 / 62
                    require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 62) >= sub_de78b109
                    require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 62) >= msg.value * 100 * sub_abdc2020 / 62
                    if sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 62) <= 134400000 * 10^18:
                        require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 62) >= sub_de78b109
                        require sub_de78b109 + (msg.value * 100 * sub_abdc2020 / 62) >= msg.value * 100 * sub_abdc2020 / 62
                        sub_de78b109 += msg.value * 100 * sub_abdc2020 / 62
                        call stor2 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require totalEtherRaised + msg.value >= totalEtherRaised
                        require totalEtherRaised + msg.value >= msg.value
                        require sub_ef98fcc9[address(msg.sender)] + msg.value >= sub_ef98fcc9[address(msg.sender)]
                        require sub_ef98fcc9[address(msg.sender)] + msg.value >= msg.value
                        sub_ef98fcc9[address(msg.sender)] += msg.value
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * 100 * sub_abdc2020 / 62
                        require ext_call.success
                    else:
                        require sub_de78b109 <= 134400000 * 10^18
                        require 100 * sub_abdc2020 / 62
                        require -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62 <= msg.value
                        emit GoalReached(sub_de78b109);
                        require 134400000 * 10^18 >= sub_de78b109
                        require 134400000 * 10^18 >= -sub_de78b109 + 134400000 * 10^18
                        sub_de78b109 = 134400000 * 10^18
                        call stor2 with:
                           value -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62) >= totalEtherRaised
                        require totalEtherRaised + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62
                        require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62) >= sub_ef98fcc9[address(msg.sender)]
                        require sub_ef98fcc9[address(msg.sender)] + (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62) >= -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62
                        sub_ef98fcc9[address(msg.sender)] += -sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -sub_de78b109 + 134400000 * 10^18
                        require ext_call.success
                        if msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62) > 0:
                            call msg.sender with:
                               value msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit 0x6e7461ce: (msg.value - (-sub_de78b109 + 134400000 * 10^18 / 100 * sub_abdc2020 / 62))
}



}
