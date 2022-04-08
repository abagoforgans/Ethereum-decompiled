contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 5030]




// =====================  Runtime code  =====================


#
#  - sub_3fe6ea3f(?)
#
address deployerAddress;
address sub_26e4ca82Address;
address sub_1090f78dAddress;
address tokenContractAddress;
address owner;
uint256 sub_cb23406f;
mapping of struct members;
uint8 stor7;

function members(address arg1) {
    return bool(uint8(members[arg1].field_0)), 
           members[arg1].field_0,
           uint256(members[arg1].field_256),
           uint256(members[arg1].field_512),
           uint256(members[arg1].field_768),
           uint256(members[arg1].field_1024)
}

function sub_1090f78d(?) {
    return sub_1090f78dAddress
}

function sub_26528250(?) {
    return uint256(members[address(arg1)].field_1024)
}

function sub_26e4ca82(?) {
    return sub_26e4ca82Address
}

function getInvested(address arg1) {
    return uint256(members[address(arg1)].field_256)
}

function tokenContract() {
    return tokenContractAddress
}

function owner() {
    return owner
}

function sub_98b3c82f(?) {
    require uint8(members[address(arg1)].field_0)
    require arg2 < 3
    return uint256(members[address(arg1)][arg2].field_1280)
}

function sub_a699621d(?) {
    return uint256(members[address(arg1)].field_768)
}

function isRegistered(address arg1) {
    return bool(uint8(members[address(arg1)].field_0))
}

function sub_cb23406f(?) {
    return sub_cb23406f
}

function getInviter(address arg1) {
    return members[address(arg1)].field_8
}

function deployer() {
    return deployerAddress
}

function sub_f0aa1735(?) {
    return uint256(members[address(arg1)].field_512)
}

function _fallback() payable {
    require sub_1090f78dAddress == msg.sender
    require stor7
    if msg.value:
        stor7 = 0
}

function assignOwner(address arg1) {
    require deployerAddress == msg.sender
    if owner:
        return 0
    owner = arg1
    uint8(members[address(arg1)].field_0) = 1
    return 1
}

function constructor(address arg1, address arg2, address arg3) {
    if not deployerAddress:
        deployerAddress = msg.sender
        sub_26e4ca82Address = arg3
        sub_1090f78dAddress = arg2
        tokenContractAddress = arg1
    uint8(members[address(arg2)].field_0) = 1
}

function sub_df61d728(?) {
    if sub_cb23406f >= 10 * 10^6:
        return 180, 90, 30
    if sub_cb23406f >= 5 * 10^6:
        return 150, 75, 25
    if sub_cb23406f >= 2 * 10^6:
        return 120, 60, 20
    if sub_cb23406f >= 10^6:
        return 90, 45, 15
    if sub_cb23406f < 500000:
        return 0
    return 60, 30, 10
}

function register(address arg1, address arg2) {
    require sub_26e4ca82Address == msg.sender
    require not uint8(members[address(arg1)].field_0)
    require uint8(members[address(arg2)].field_0)
    uint8(members[address(arg1)].field_0) = 1
    members[address(arg1)].field_8 = arg2
    members[address(arg1)].field_256 % 1 = 0
    return 1
}

function sub_95cb7e1e(?) {
    if sub_cb23406f >= 10 * 10^6:
        return (175 * arg1 / 100)
    if sub_cb23406f >= 5 * 10^6:
        return (150 * arg1 / 100)
    if sub_cb23406f >= 2 * 10^6:
        return (140 * arg1 / 100)
    if sub_cb23406f >= 10^6:
        return (130 * arg1 / 100)
    if sub_cb23406f >= 500000:
        return (125 * arg1 / 100)
    if sub_cb23406f >= 250000:
        return (120 * arg1 / 100)
    if sub_cb23406f >= 150000:
        return (115 * arg1 / 100)
    if sub_cb23406f < 50000:
        return (100 * arg1 / 100)
    return (110 * arg1 / 100)
}

function sub_6d7c4de1(?) {
    if sub_cb23406f >= 10 * 10^6:
        mem[192] = 180
        mem[224] = 90
        mem[256] = 30
    else:
        if sub_cb23406f >= 5 * 10^6:
            mem[192] = 150
            mem[224] = 75
            mem[256] = 25
        else:
            if sub_cb23406f >= 2 * 10^6:
                mem[192] = 120
                mem[224] = 60
                mem[256] = 20
            else:
                if sub_cb23406f >= 10^6:
                    mem[192] = 90
                    mem[224] = 45
                    mem[256] = 15
                else:
                    if sub_cb23406f < 500000:
                        mem[192] = 0
                        mem[224] = 0
                        mem[256] = 0
                    else:
                        mem[192] = 60
                        mem[224] = 30
                        mem[256] = 10
    require arg1 < 3
    mem[288] = mem[(32 * uint8(arg1)) + 223 len 1]
    return memory
      from 288
       len 32
}

function sub_0d59c602(?) {
    require uint8(members[address(arg1)].field_0)
    if sub_cb23406f >= 10 * 10^6:
        return ((175 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024))
    if sub_cb23406f >= 5 * 10^6:
        return ((150 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024))
    if sub_cb23406f >= 2 * 10^6:
        return ((140 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024))
    if sub_cb23406f >= 10^6:
        return ((130 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024))
    if sub_cb23406f >= 500000:
        return ((125 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024))
    if sub_cb23406f >= 250000:
        return ((120 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024))
    if sub_cb23406f >= 150000:
        return ((115 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024))
    if sub_cb23406f < 50000:
        return ((100 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024))
    return ((110 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024))
}

function sub_8066bebe(?) {
    require uint8(members[address(arg1)].field_0)
    if sub_cb23406f >= 10 * 10^6:
        mem[288] = 180
        mem[320] = 90
        mem[352] = 30
    else:
        if sub_cb23406f >= 5 * 10^6:
            mem[288] = 150
            mem[320] = 75
            mem[352] = 25
        else:
            if sub_cb23406f >= 2 * 10^6:
                mem[288] = 120
                mem[320] = 60
                mem[352] = 20
            else:
                if sub_cb23406f >= 10^6:
                    mem[288] = 90
                    mem[320] = 45
                    mem[352] = 15
                else:
                    if sub_cb23406f < 500000:
                        mem[288] = 0
                        mem[320] = 0
                        mem[352] = 0
                    else:
                        mem[288] = 60
                        mem[320] = 30
                        mem[352] = 10
    idx = 0
    s = 0
    while uint8(idx) < 3:
        idx = idx + 1
        s = s + (uint256(members[address(arg1)][uint8(idx)].field_1280) * mem[(32 * uint8(idx)) + 319 len 1] / 1000)
        continue 
    return ((s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(arg1)].field_512))
}

function sub_f0419d10(?) {
    require uint8(members[address(arg1)].field_0)
    require uint8(members[address(arg1)].field_0)
    if sub_cb23406f >= 10 * 10^6:
        mem[288] = 180
        mem[320] = 90
        mem[352] = 30
    else:
        if sub_cb23406f >= 5 * 10^6:
            mem[288] = 150
            mem[320] = 75
            mem[352] = 25
        else:
            if sub_cb23406f >= 2 * 10^6:
                mem[288] = 120
                mem[320] = 60
                mem[352] = 20
            else:
                if sub_cb23406f >= 10^6:
                    mem[288] = 90
                    mem[320] = 45
                    mem[352] = 15
                else:
                    if sub_cb23406f < 500000:
                        mem[288] = 0
                        mem[320] = 0
                        mem[352] = 0
                    else:
                        mem[288] = 60
                        mem[320] = 30
                        mem[352] = 10
    idx = 0
    s = 0
    while uint8(idx) < 3:
        idx = idx + 1
        s = s + (uint256(members[address(arg1)][uint8(idx)].field_1280) * mem[(32 * uint8(idx)) + 319 len 1] / 1000)
        continue 
    if not (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(arg1)].field_512):
        return 0
    if not eth.balance(this.address):
        return 0
    uint256(members[address(arg1)].field_512) = s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
    if sub_1090f78dAddress != arg1:
        call arg1 with:
           value (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(arg1)].field_512) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0xcdaa3a5d: ((s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(arg1)].field_512)), arg1
        return 1
    if ext_code.size(sub_1090f78dAddress):
        call sub_1090f78dAddress.0xc7a49b8b with:
           value (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(arg1)].field_512) wei
             gas gas_remaining - 9710 wei
        if ext_call.success:
            return 1
    revert
}

function refundTokens(address arg1) {
    require uint8(members[address(arg1)].field_0)
    require uint8(members[address(arg1)].field_0)
    if sub_cb23406f >= 10 * 10^6:
        if not (175 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024):
            return 0
        uint256(members[address(arg1)].field_1024) = 175 * uint256(members[address(arg1)].field_768) / 100 / 10
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), (175 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)
        require ext_call.success
        require ext_call.return_data[0]
        emit TokensRefunded(((175 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)), arg1);
    else:
        if sub_cb23406f >= 5 * 10^6:
            if not (150 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024):
                return 0
            uint256(members[address(arg1)].field_1024) = 150 * uint256(members[address(arg1)].field_768) / 100 / 10
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), (150 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)
            require ext_call.success
            require ext_call.return_data[0]
            emit TokensRefunded(((150 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)), arg1);
        else:
            if sub_cb23406f >= 2 * 10^6:
                if not (140 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024):
                    return 0
                uint256(members[address(arg1)].field_1024) = 140 * uint256(members[address(arg1)].field_768) / 100 / 10
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (140 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)
                require ext_call.success
                require ext_call.return_data[0]
                emit TokensRefunded(((140 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)), arg1);
            else:
                if sub_cb23406f >= 10^6:
                    if not (130 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024):
                        return 0
                    uint256(members[address(arg1)].field_1024) = 130 * uint256(members[address(arg1)].field_768) / 100 / 10
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), (130 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokensRefunded(((130 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)), arg1);
                else:
                    if sub_cb23406f >= 500000:
                        if not (125 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024):
                            return 0
                        uint256(members[address(arg1)].field_1024) = 125 * uint256(members[address(arg1)].field_768) / 100 / 10
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), (125 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokensRefunded(((125 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)), arg1);
                    else:
                        if sub_cb23406f >= 250000:
                            if not (120 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024):
                                return 0
                            uint256(members[address(arg1)].field_1024) = 120 * uint256(members[address(arg1)].field_768) / 100 / 10
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), (120 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokensRefunded(((120 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)), arg1);
                        else:
                            if sub_cb23406f >= 150000:
                                if not (115 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024):
                                    return 0
                                uint256(members[address(arg1)].field_1024) = 115 * uint256(members[address(arg1)].field_768) / 100 / 10
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), (115 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokensRefunded(((115 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)), arg1);
                            else:
                                if sub_cb23406f < 50000:
                                    if not (100 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024):
                                        return 0
                                    uint256(members[address(arg1)].field_1024) = 100 * uint256(members[address(arg1)].field_768) / 100 / 10
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), (100 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit TokensRefunded(((100 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)), arg1);
                                else:
                                    if not (110 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024):
                                        return 0
                                    uint256(members[address(arg1)].field_1024) = 110 * uint256(members[address(arg1)].field_768) / 100 / 10
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), (110 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit TokensRefunded(((110 * uint256(members[address(arg1)].field_768) / 100 / 10) - uint256(members[address(arg1)].field_1024)), arg1);
    return 1
}

function invest() payable {
    mem[64] = 96
    require not stor7
    require uint8(members[address(msg.sender)].field_0)
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    stor7 = 1
    mem[160] = 0
    require ext_code.size(sub_1090f78dAddress)
    call sub_1090f78dAddress.0xe8b5e51f with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    if stor7:
        stor7 = 0
        sub_cb23406f += ext_call.return_data[0]
        uint256(members[address(msg.sender)].field_256) += msg.value
        uint256(members[address(msg.sender)].field_768) += ext_call.return_data[32]
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] < ext_call.return_data[0]:
            require uint8(members[address(msg.sender)].field_0)
            require uint8(members[address(msg.sender)].field_0)
            if sub_cb23406f >= 10 * 10^6:
                if (175 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                    uint256(members[address(msg.sender)].field_1024) = 175 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (175 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokensRefunded(((175 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
            else:
                if sub_cb23406f >= 5 * 10^6:
                    if (150 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                        uint256(members[address(msg.sender)].field_1024) = 150 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (150 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokensRefunded(((150 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                else:
                    if sub_cb23406f >= 2 * 10^6:
                        if (140 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                            uint256(members[address(msg.sender)].field_1024) = 140 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (140 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokensRefunded(((140 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                    else:
                        if sub_cb23406f >= 10^6:
                            if (130 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                                uint256(members[address(msg.sender)].field_1024) = 130 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (130 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokensRefunded(((130 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                        else:
                            if sub_cb23406f >= 500000:
                                if (125 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                                    uint256(members[address(msg.sender)].field_1024) = 125 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (125 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit TokensRefunded(((125 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                            else:
                                if sub_cb23406f >= 250000:
                                    if (120 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                                        uint256(members[address(msg.sender)].field_1024) = 120 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (120 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        emit TokensRefunded(((120 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                                else:
                                    if sub_cb23406f >= 150000:
                                        if (115 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                                            uint256(members[address(msg.sender)].field_1024) = 115 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                                            require ext_code.size(tokenContractAddress)
                                            call tokenContractAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (115 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            emit TokensRefunded(((115 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                                    else:
                                        if sub_cb23406f < 50000:
                                            if (100 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                                                uint256(members[address(msg.sender)].field_1024) = 100 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                                                require ext_code.size(tokenContractAddress)
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (100 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                emit TokensRefunded(((100 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                                        else:
                                            if (110 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                                                uint256(members[address(msg.sender)].field_1024) = 110 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                                                require ext_code.size(tokenContractAddress)
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (110 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                emit TokensRefunded(((110 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
        mem[0] = msg.sender
        mem[32] = 6
        s = 0
        idx = 0
        s = stor[sha3(mem[0 len 64])]
        while uint8(idx) < 3:
            require uint8(idx) < 3
            if address(s):
                uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                mem[0] = address(s)
                mem[32] = 6
                s = sha3(address(s), 6)
                idx = idx + 1
                s = members[address(s)].field_8
                continue 
            uint256(members[stor2][uint8(idx)].field_1280) += msg.value
            mem[0] = sub_1090f78dAddress
            mem[32] = 6
            s = sha3(sub_1090f78dAddress, 6)
            idx = idx + 1
            s = members[stor2].field_8
            continue 
    else:
        sub_cb23406f += ext_call.return_data[0]
        uint256(members[address(msg.sender)].field_256) += msg.value
        uint256(members[address(msg.sender)].field_768) += ext_call.return_data[32]
        mem[128] = 0
        mem[100] = this.address
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            mem[0] = msg.sender
            mem[32] = 6
            s = 0
            idx = 0
            s = stor[sha3(mem[0 len 64])]
            while uint8(idx) < 3:
                require uint8(idx) < 3
                if address(s):
                    uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                    require uint8(members[address(s)].field_0)
                    mem[0] = address(s)
                    _3732 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3732] = 0
                    u = _3732
                    t = 3
                    while t - 1:
                        mem[u + 32] = 0
                        u = u + 32
                        t = t - 1
                        continue 
                    require uint8(members[address(s)].field_0)
                    mem[0] = address(s)
                    mem[32] = 6
                    _3882 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3882] = 0
                    u = _3882
                    t = 3
                    while t - 1:
                        mem[u + 32] = 0
                        u = u + 32
                        t = t - 1
                        continue 
                    if sub_cb23406f >= 10 * 10^6:
                        _3920 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3920] = 180
                        mem[_3920 + 32] = 90
                        mem[_3920 + 64] = 30
                        t = 0
                        u = 0
                        while uint8(t) < 3:
                            t = t + 1
                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3920 + 31 len 1] / 1000)
                            continue 
                    else:
                        if sub_cb23406f >= 5 * 10^6:
                            _3958 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3958] = 150
                            mem[_3958 + 32] = 75
                            mem[_3958 + 64] = 25
                            t = 0
                            u = 0
                            while uint8(t) < 3:
                                t = t + 1
                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3958 + 31 len 1] / 1000)
                                continue 
                        else:
                            if sub_cb23406f >= 2 * 10^6:
                                _3996 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3996] = 120
                                mem[_3996 + 32] = 60
                                mem[_3996 + 64] = 20
                                t = 0
                                u = 0
                                while uint8(t) < 3:
                                    t = t + 1
                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3996 + 31 len 1] / 1000)
                                    continue 
                            else:
                                if sub_cb23406f >= 10^6:
                                    _4034 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4034] = 90
                                    mem[_4034 + 32] = 45
                                    mem[_4034 + 64] = 15
                                    t = 0
                                    u = 0
                                    while uint8(t) < 3:
                                        t = t + 1
                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4034 + 31 len 1] / 1000)
                                        continue 
                                else:
                                    if sub_cb23406f < 500000:
                                        _4072 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4072] = 0
                                        mem[_4072 + 32] = 0
                                        mem[_4072 + 64] = 0
                                        t = 0
                                        u = 0
                                        while uint8(t) < 3:
                                            t = t + 1
                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4072 + 31 len 1] / 1000)
                                            continue 
                                    else:
                                        _4073 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4073] = 60
                                        mem[_4073 + 32] = 30
                                        mem[_4073 + 64] = 10
                                        t = 0
                                        u = 0
                                        while uint8(t) < 3:
                                            t = t + 1
                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4073 + 31 len 1] / 1000)
                                            continue 
                    if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                        if eth.balance(this.address):
                            uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                            if sub_1090f78dAddress != address(s):
                                call address(s) with:
                                   value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                            else:
                                mem[mem[64] + 32] = 0
                                require ext_code.size(sub_1090f78dAddress)
                                call sub_1090f78dAddress.0xc7a49b8b with:
                                   value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                     gas gas_remaining - 9710 wei
                                mem[mem[64]] = ext_call.return_data[0]
                                require ext_call.success
                    mem[0] = address(s)
                    mem[32] = 6
                    s = sha3(address(s), 6)
                    idx = idx + 1
                    s = members[address(s)].field_8
                    continue 
                uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                require uint8(members[stor2].field_0)
                mem[0] = sub_1090f78dAddress
                _3787 = mem[64]
                mem[64] = mem[64] + 96
                mem[_3787] = 0
                t = _3787
                s = 3
                while s - 1:
                    mem[t + 32] = 0
                    t = t + 32
                    s = s - 1
                    continue 
                require uint8(members[stor2].field_0)
                mem[0] = sub_1090f78dAddress
                mem[32] = 6
                _3883 = mem[64]
                mem[64] = mem[64] + 96
                mem[_3883] = 0
                t = _3883
                s = 3
                while s - 1:
                    mem[t + 32] = 0
                    t = t + 32
                    s = s - 1
                    continue 
                if sub_cb23406f >= 10 * 10^6:
                    _3921 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3921] = 180
                    mem[_3921 + 32] = 90
                    mem[_3921 + 64] = 30
                    s = 0
                    t = 0
                    while uint8(s) < 3:
                        s = s + 1
                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3921 + 31 len 1] / 1000)
                        continue 
                else:
                    if sub_cb23406f >= 5 * 10^6:
                        _3959 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3959] = 150
                        mem[_3959 + 32] = 75
                        mem[_3959 + 64] = 25
                        s = 0
                        t = 0
                        while uint8(s) < 3:
                            s = s + 1
                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3959 + 31 len 1] / 1000)
                            continue 
                    else:
                        if sub_cb23406f >= 2 * 10^6:
                            _3997 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3997] = 120
                            mem[_3997 + 32] = 60
                            mem[_3997 + 64] = 20
                            s = 0
                            t = 0
                            while uint8(s) < 3:
                                s = s + 1
                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3997 + 31 len 1] / 1000)
                                continue 
                        else:
                            if sub_cb23406f >= 10^6:
                                _4035 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4035] = 90
                                mem[_4035 + 32] = 45
                                mem[_4035 + 64] = 15
                                s = 0
                                t = 0
                                while uint8(s) < 3:
                                    s = s + 1
                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4035 + 31 len 1] / 1000)
                                    continue 
                            else:
                                if sub_cb23406f < 500000:
                                    _4074 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4074] = 0
                                    mem[_4074 + 32] = 0
                                    mem[_4074 + 64] = 0
                                    s = 0
                                    t = 0
                                    while uint8(s) < 3:
                                        s = s + 1
                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4074 + 31 len 1] / 1000)
                                        continue 
                                else:
                                    _4075 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4075] = 60
                                    mem[_4075 + 32] = 30
                                    mem[_4075 + 64] = 10
                                    s = 0
                                    t = 0
                                    while uint8(s) < 3:
                                        s = s + 1
                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4075 + 31 len 1] / 1000)
                                        continue 
                if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                    if eth.balance(this.address):
                        uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                        if sub_1090f78dAddress != sub_1090f78dAddress:
                            call sub_1090f78dAddress with:
                               value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                            emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                        else:
                            mem[mem[64] + 32] = 0
                            require ext_code.size(sub_1090f78dAddress)
                            call sub_1090f78dAddress.0xc7a49b8b with:
                               value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                 gas gas_remaining - 9710 wei
                            mem[mem[64]] = ext_call.return_data[0]
                            require ext_call.success
                mem[0] = sub_1090f78dAddress
                mem[32] = 6
                s = sha3(sub_1090f78dAddress, 6)
                idx = idx + 1
                s = members[stor2].field_8
                continue 
        else:
            require uint8(members[address(msg.sender)].field_0)
            require uint8(members[address(msg.sender)].field_0)
            if sub_cb23406f >= 10 * 10^6:
                if not (175 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                    mem[0] = msg.sender
                    mem[32] = 6
                    s = 0
                    idx = 0
                    s = stor[sha3(mem[0 len 64])]
                    while uint8(idx) < 3:
                        require uint8(idx) < 3
                        if address(s):
                            uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                            require uint8(members[address(s)].field_0)
                            mem[0] = address(s)
                            _3786 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3786] = 0
                            u = _3786
                            t = 3
                            while t - 1:
                                mem[u + 32] = 0
                                u = u + 32
                                t = t - 1
                                continue 
                            require uint8(members[address(s)].field_0)
                            mem[0] = address(s)
                            mem[32] = 6
                            _3918 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3918] = 0
                            u = _3918
                            t = 3
                            while t - 1:
                                mem[u + 32] = 0
                                u = u + 32
                                t = t - 1
                                continue 
                            if sub_cb23406f >= 10 * 10^6:
                                _3956 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3956] = 180
                                mem[_3956 + 32] = 90
                                mem[_3956 + 64] = 30
                                t = 0
                                u = 0
                                while uint8(t) < 3:
                                    t = t + 1
                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3956 + 31 len 1] / 1000)
                                    continue 
                            else:
                                if sub_cb23406f >= 5 * 10^6:
                                    _3994 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3994] = 150
                                    mem[_3994 + 32] = 75
                                    mem[_3994 + 64] = 25
                                    t = 0
                                    u = 0
                                    while uint8(t) < 3:
                                        t = t + 1
                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3994 + 31 len 1] / 1000)
                                        continue 
                                else:
                                    if sub_cb23406f >= 2 * 10^6:
                                        _4032 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4032] = 120
                                        mem[_4032 + 32] = 60
                                        mem[_4032 + 64] = 20
                                        t = 0
                                        u = 0
                                        while uint8(t) < 3:
                                            t = t + 1
                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4032 + 31 len 1] / 1000)
                                            continue 
                                    else:
                                        if sub_cb23406f >= 10^6:
                                            _4070 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4070] = 90
                                            mem[_4070 + 32] = 45
                                            mem[_4070 + 64] = 15
                                            t = 0
                                            u = 0
                                            while uint8(t) < 3:
                                                t = t + 1
                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4070 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f < 500000:
                                                _4144 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4144] = 0
                                                mem[_4144 + 32] = 0
                                                mem[_4144 + 64] = 0
                                                t = 0
                                                u = 0
                                                while uint8(t) < 3:
                                                    t = t + 1
                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4144 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                _4145 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4145] = 60
                                                mem[_4145 + 32] = 30
                                                mem[_4145 + 64] = 10
                                                t = 0
                                                u = 0
                                                while uint8(t) < 3:
                                                    t = t + 1
                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4145 + 31 len 1] / 1000)
                                                    continue 
                            if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                if eth.balance(this.address):
                                    uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                    if sub_1090f78dAddress != address(s):
                                        call address(s) with:
                                           value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                        emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                    else:
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(sub_1090f78dAddress)
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                             gas gas_remaining - 9710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                            mem[0] = address(s)
                            mem[32] = 6
                            s = sha3(address(s), 6)
                            idx = idx + 1
                            s = members[address(s)].field_8
                            continue 
                        uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                        require uint8(members[stor2].field_0)
                        mem[0] = sub_1090f78dAddress
                        _3805 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3805] = 0
                        t = _3805
                        s = 3
                        while s - 1:
                            mem[t + 32] = 0
                            t = t + 32
                            s = s - 1
                            continue 
                        require uint8(members[stor2].field_0)
                        mem[0] = sub_1090f78dAddress
                        mem[32] = 6
                        _3919 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3919] = 0
                        t = _3919
                        s = 3
                        while s - 1:
                            mem[t + 32] = 0
                            t = t + 32
                            s = s - 1
                            continue 
                        if sub_cb23406f >= 10 * 10^6:
                            _3957 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3957] = 180
                            mem[_3957 + 32] = 90
                            mem[_3957 + 64] = 30
                            s = 0
                            t = 0
                            while uint8(s) < 3:
                                s = s + 1
                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3957 + 31 len 1] / 1000)
                                continue 
                        else:
                            if sub_cb23406f >= 5 * 10^6:
                                _3995 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3995] = 150
                                mem[_3995 + 32] = 75
                                mem[_3995 + 64] = 25
                                s = 0
                                t = 0
                                while uint8(s) < 3:
                                    s = s + 1
                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3995 + 31 len 1] / 1000)
                                    continue 
                            else:
                                if sub_cb23406f >= 2 * 10^6:
                                    _4033 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4033] = 120
                                    mem[_4033 + 32] = 60
                                    mem[_4033 + 64] = 20
                                    s = 0
                                    t = 0
                                    while uint8(s) < 3:
                                        s = s + 1
                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4033 + 31 len 1] / 1000)
                                        continue 
                                else:
                                    if sub_cb23406f >= 10^6:
                                        _4071 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4071] = 90
                                        mem[_4071 + 32] = 45
                                        mem[_4071 + 64] = 15
                                        s = 0
                                        t = 0
                                        while uint8(s) < 3:
                                            s = s + 1
                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4071 + 31 len 1] / 1000)
                                            continue 
                                    else:
                                        if sub_cb23406f < 500000:
                                            _4146 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4146] = 0
                                            mem[_4146 + 32] = 0
                                            mem[_4146 + 64] = 0
                                            s = 0
                                            t = 0
                                            while uint8(s) < 3:
                                                s = s + 1
                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4146 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            _4147 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4147] = 60
                                            mem[_4147 + 32] = 30
                                            mem[_4147 + 64] = 10
                                            s = 0
                                            t = 0
                                            while uint8(s) < 3:
                                                s = s + 1
                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4147 + 31 len 1] / 1000)
                                                continue 
                        if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                            if eth.balance(this.address):
                                uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                if sub_1090f78dAddress != sub_1090f78dAddress:
                                    call sub_1090f78dAddress with:
                                       value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                    emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                else:
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(sub_1090f78dAddress)
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                         gas gas_remaining - 9710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                        mem[0] = sub_1090f78dAddress
                        mem[32] = 6
                        s = sha3(sub_1090f78dAddress, 6)
                        idx = idx + 1
                        s = members[stor2].field_8
                        continue 
                else:
                    uint256(members[address(msg.sender)].field_1024) = 175 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                    mem[100] = msg.sender
                    mem[132] = (175 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (175 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                    require ext_call.success
                    require ext_call.return_data[0]
                    mem[96] = (175 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                    emit TokensRefunded(((175 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                    mem[0] = msg.sender
                    mem[32] = 6
                    s = 0
                    idx = 0
                    s = stor[sha3(mem[0 len 64])]
                    while uint8(idx) < 3:
                        require uint8(idx) < 3
                        if address(s):
                            uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                            require uint8(members[address(s)].field_0)
                            mem[0] = address(s)
                            _3783 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3783] = 0
                            u = _3783
                            t = 3
                            while t - 1:
                                mem[u + 32] = 0
                                u = u + 32
                                t = t - 1
                                continue 
                            require uint8(members[address(s)].field_0)
                            mem[0] = address(s)
                            mem[32] = 6
                            _3916 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3916] = 0
                            u = _3916
                            t = 3
                            while t - 1:
                                mem[u + 32] = 0
                                u = u + 32
                                t = t - 1
                                continue 
                            if sub_cb23406f >= 10 * 10^6:
                                _3954 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3954] = 180
                                mem[_3954 + 32] = 90
                                mem[_3954 + 64] = 30
                                t = 0
                                u = 0
                                while uint8(t) < 3:
                                    t = t + 1
                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3954 + 31 len 1] / 1000)
                                    continue 
                            else:
                                if sub_cb23406f >= 5 * 10^6:
                                    _3992 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3992] = 150
                                    mem[_3992 + 32] = 75
                                    mem[_3992 + 64] = 25
                                    t = 0
                                    u = 0
                                    while uint8(t) < 3:
                                        t = t + 1
                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3992 + 31 len 1] / 1000)
                                        continue 
                                else:
                                    if sub_cb23406f >= 2 * 10^6:
                                        _4030 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4030] = 120
                                        mem[_4030 + 32] = 60
                                        mem[_4030 + 64] = 20
                                        t = 0
                                        u = 0
                                        while uint8(t) < 3:
                                            t = t + 1
                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4030 + 31 len 1] / 1000)
                                            continue 
                                    else:
                                        if sub_cb23406f >= 10^6:
                                            _4068 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4068] = 90
                                            mem[_4068 + 32] = 45
                                            mem[_4068 + 64] = 15
                                            t = 0
                                            u = 0
                                            while uint8(t) < 3:
                                                t = t + 1
                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4068 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f < 500000:
                                                _4140 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4140] = 0
                                                mem[_4140 + 32] = 0
                                                mem[_4140 + 64] = 0
                                                t = 0
                                                u = 0
                                                while uint8(t) < 3:
                                                    t = t + 1
                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4140 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                _4141 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4141] = 60
                                                mem[_4141 + 32] = 30
                                                mem[_4141 + 64] = 10
                                                t = 0
                                                u = 0
                                                while uint8(t) < 3:
                                                    t = t + 1
                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4141 + 31 len 1] / 1000)
                                                    continue 
                            if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                if eth.balance(this.address):
                                    uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                    if sub_1090f78dAddress != address(s):
                                        call address(s) with:
                                           value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                        emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                    else:
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(sub_1090f78dAddress)
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                             gas gas_remaining - 9710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                            mem[0] = address(s)
                            mem[32] = 6
                            s = sha3(address(s), 6)
                            idx = idx + 1
                            s = members[address(s)].field_8
                            continue 
                        uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                        require uint8(members[stor2].field_0)
                        mem[0] = sub_1090f78dAddress
                        _3804 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3804] = 0
                        t = _3804
                        s = 3
                        while s - 1:
                            mem[t + 32] = 0
                            t = t + 32
                            s = s - 1
                            continue 
                        require uint8(members[stor2].field_0)
                        mem[0] = sub_1090f78dAddress
                        mem[32] = 6
                        _3917 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3917] = 0
                        t = _3917
                        s = 3
                        while s - 1:
                            mem[t + 32] = 0
                            t = t + 32
                            s = s - 1
                            continue 
                        if sub_cb23406f >= 10 * 10^6:
                            _3955 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3955] = 180
                            mem[_3955 + 32] = 90
                            mem[_3955 + 64] = 30
                            s = 0
                            t = 0
                            while uint8(s) < 3:
                                s = s + 1
                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3955 + 31 len 1] / 1000)
                                continue 
                        else:
                            if sub_cb23406f >= 5 * 10^6:
                                _3993 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3993] = 150
                                mem[_3993 + 32] = 75
                                mem[_3993 + 64] = 25
                                s = 0
                                t = 0
                                while uint8(s) < 3:
                                    s = s + 1
                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3993 + 31 len 1] / 1000)
                                    continue 
                            else:
                                if sub_cb23406f >= 2 * 10^6:
                                    _4031 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4031] = 120
                                    mem[_4031 + 32] = 60
                                    mem[_4031 + 64] = 20
                                    s = 0
                                    t = 0
                                    while uint8(s) < 3:
                                        s = s + 1
                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4031 + 31 len 1] / 1000)
                                        continue 
                                else:
                                    if sub_cb23406f >= 10^6:
                                        _4069 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4069] = 90
                                        mem[_4069 + 32] = 45
                                        mem[_4069 + 64] = 15
                                        s = 0
                                        t = 0
                                        while uint8(s) < 3:
                                            s = s + 1
                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4069 + 31 len 1] / 1000)
                                            continue 
                                    else:
                                        if sub_cb23406f < 500000:
                                            _4142 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4142] = 0
                                            mem[_4142 + 32] = 0
                                            mem[_4142 + 64] = 0
                                            s = 0
                                            t = 0
                                            while uint8(s) < 3:
                                                s = s + 1
                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4142 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            _4143 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4143] = 60
                                            mem[_4143 + 32] = 30
                                            mem[_4143 + 64] = 10
                                            s = 0
                                            t = 0
                                            while uint8(s) < 3:
                                                s = s + 1
                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4143 + 31 len 1] / 1000)
                                                continue 
                        if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                            if eth.balance(this.address):
                                uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                if sub_1090f78dAddress != sub_1090f78dAddress:
                                    call sub_1090f78dAddress with:
                                       value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                    emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                else:
                                    mem[mem[64] + 32] = 0
                                    require ext_code.size(sub_1090f78dAddress)
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                         gas gas_remaining - 9710 wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    require ext_call.success
                        mem[0] = sub_1090f78dAddress
                        mem[32] = 6
                        s = sha3(sub_1090f78dAddress, 6)
                        idx = idx + 1
                        s = members[stor2].field_8
                        continue 
            else:
                if sub_cb23406f >= 5 * 10^6:
                    if not (150 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                        mem[0] = msg.sender
                        mem[32] = 6
                        s = 0
                        idx = 0
                        s = stor[sha3(mem[0 len 64])]
                        while uint8(idx) < 3:
                            require uint8(idx) < 3
                            if address(s):
                                uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                require uint8(members[address(s)].field_0)
                                mem[0] = address(s)
                                _3780 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3780] = 0
                                u = _3780
                                t = 3
                                while t - 1:
                                    mem[u + 32] = 0
                                    u = u + 32
                                    t = t - 1
                                    continue 
                                require uint8(members[address(s)].field_0)
                                mem[0] = address(s)
                                mem[32] = 6
                                _3914 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3914] = 0
                                u = _3914
                                t = 3
                                while t - 1:
                                    mem[u + 32] = 0
                                    u = u + 32
                                    t = t - 1
                                    continue 
                                if sub_cb23406f >= 10 * 10^6:
                                    _3952 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3952] = 180
                                    mem[_3952 + 32] = 90
                                    mem[_3952 + 64] = 30
                                    t = 0
                                    u = 0
                                    while uint8(t) < 3:
                                        t = t + 1
                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3952 + 31 len 1] / 1000)
                                        continue 
                                else:
                                    if sub_cb23406f >= 5 * 10^6:
                                        _3990 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3990] = 150
                                        mem[_3990 + 32] = 75
                                        mem[_3990 + 64] = 25
                                        t = 0
                                        u = 0
                                        while uint8(t) < 3:
                                            t = t + 1
                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3990 + 31 len 1] / 1000)
                                            continue 
                                    else:
                                        if sub_cb23406f >= 2 * 10^6:
                                            _4028 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4028] = 120
                                            mem[_4028 + 32] = 60
                                            mem[_4028 + 64] = 20
                                            t = 0
                                            u = 0
                                            while uint8(t) < 3:
                                                t = t + 1
                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4028 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f >= 10^6:
                                                _4066 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4066] = 90
                                                mem[_4066 + 32] = 45
                                                mem[_4066 + 64] = 15
                                                t = 0
                                                u = 0
                                                while uint8(t) < 3:
                                                    t = t + 1
                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4066 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f < 500000:
                                                    _4136 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4136] = 0
                                                    mem[_4136 + 32] = 0
                                                    mem[_4136 + 64] = 0
                                                    t = 0
                                                    u = 0
                                                    while uint8(t) < 3:
                                                        t = t + 1
                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4136 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    _4137 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4137] = 60
                                                    mem[_4137 + 32] = 30
                                                    mem[_4137 + 64] = 10
                                                    t = 0
                                                    u = 0
                                                    while uint8(t) < 3:
                                                        t = t + 1
                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4137 + 31 len 1] / 1000)
                                                        continue 
                                if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                    if eth.balance(this.address):
                                        uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                        if sub_1090f78dAddress != address(s):
                                            call address(s) with:
                                               value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                            emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                        else:
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(sub_1090f78dAddress)
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                 gas gas_remaining - 9710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                mem[0] = address(s)
                                mem[32] = 6
                                s = sha3(address(s), 6)
                                idx = idx + 1
                                s = members[address(s)].field_8
                                continue 
                            uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                            require uint8(members[stor2].field_0)
                            mem[0] = sub_1090f78dAddress
                            _3803 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3803] = 0
                            t = _3803
                            s = 3
                            while s - 1:
                                mem[t + 32] = 0
                                t = t + 32
                                s = s - 1
                                continue 
                            require uint8(members[stor2].field_0)
                            mem[0] = sub_1090f78dAddress
                            mem[32] = 6
                            _3915 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3915] = 0
                            t = _3915
                            s = 3
                            while s - 1:
                                mem[t + 32] = 0
                                t = t + 32
                                s = s - 1
                                continue 
                            if sub_cb23406f >= 10 * 10^6:
                                _3953 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3953] = 180
                                mem[_3953 + 32] = 90
                                mem[_3953 + 64] = 30
                                s = 0
                                t = 0
                                while uint8(s) < 3:
                                    s = s + 1
                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3953 + 31 len 1] / 1000)
                                    continue 
                            else:
                                if sub_cb23406f >= 5 * 10^6:
                                    _3991 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3991] = 150
                                    mem[_3991 + 32] = 75
                                    mem[_3991 + 64] = 25
                                    s = 0
                                    t = 0
                                    while uint8(s) < 3:
                                        s = s + 1
                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3991 + 31 len 1] / 1000)
                                        continue 
                                else:
                                    if sub_cb23406f >= 2 * 10^6:
                                        _4029 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4029] = 120
                                        mem[_4029 + 32] = 60
                                        mem[_4029 + 64] = 20
                                        s = 0
                                        t = 0
                                        while uint8(s) < 3:
                                            s = s + 1
                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4029 + 31 len 1] / 1000)
                                            continue 
                                    else:
                                        if sub_cb23406f >= 10^6:
                                            _4067 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4067] = 90
                                            mem[_4067 + 32] = 45
                                            mem[_4067 + 64] = 15
                                            s = 0
                                            t = 0
                                            while uint8(s) < 3:
                                                s = s + 1
                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4067 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f < 500000:
                                                _4138 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4138] = 0
                                                mem[_4138 + 32] = 0
                                                mem[_4138 + 64] = 0
                                                s = 0
                                                t = 0
                                                while uint8(s) < 3:
                                                    s = s + 1
                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4138 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                _4139 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4139] = 60
                                                mem[_4139 + 32] = 30
                                                mem[_4139 + 64] = 10
                                                s = 0
                                                t = 0
                                                while uint8(s) < 3:
                                                    s = s + 1
                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4139 + 31 len 1] / 1000)
                                                    continue 
                            if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                if eth.balance(this.address):
                                    uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                    if sub_1090f78dAddress != sub_1090f78dAddress:
                                        call sub_1090f78dAddress with:
                                           value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                        emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                    else:
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(sub_1090f78dAddress)
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                             gas gas_remaining - 9710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                            mem[0] = sub_1090f78dAddress
                            mem[32] = 6
                            s = sha3(sub_1090f78dAddress, 6)
                            idx = idx + 1
                            s = members[stor2].field_8
                            continue 
                    else:
                        uint256(members[address(msg.sender)].field_1024) = 150 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                        mem[100] = msg.sender
                        mem[132] = (150 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (150 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                        require ext_call.success
                        require ext_call.return_data[0]
                        mem[96] = (150 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                        emit TokensRefunded(((150 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                        mem[0] = msg.sender
                        mem[32] = 6
                        s = 0
                        idx = 0
                        s = stor[sha3(mem[0 len 64])]
                        while uint8(idx) < 3:
                            require uint8(idx) < 3
                            if address(s):
                                uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                require uint8(members[address(s)].field_0)
                                mem[0] = address(s)
                                _3777 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3777] = 0
                                u = _3777
                                t = 3
                                while t - 1:
                                    mem[u + 32] = 0
                                    u = u + 32
                                    t = t - 1
                                    continue 
                                require uint8(members[address(s)].field_0)
                                mem[0] = address(s)
                                mem[32] = 6
                                _3912 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3912] = 0
                                u = _3912
                                t = 3
                                while t - 1:
                                    mem[u + 32] = 0
                                    u = u + 32
                                    t = t - 1
                                    continue 
                                if sub_cb23406f >= 10 * 10^6:
                                    _3950 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3950] = 180
                                    mem[_3950 + 32] = 90
                                    mem[_3950 + 64] = 30
                                    t = 0
                                    u = 0
                                    while uint8(t) < 3:
                                        t = t + 1
                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3950 + 31 len 1] / 1000)
                                        continue 
                                else:
                                    if sub_cb23406f >= 5 * 10^6:
                                        _3988 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3988] = 150
                                        mem[_3988 + 32] = 75
                                        mem[_3988 + 64] = 25
                                        t = 0
                                        u = 0
                                        while uint8(t) < 3:
                                            t = t + 1
                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3988 + 31 len 1] / 1000)
                                            continue 
                                    else:
                                        if sub_cb23406f >= 2 * 10^6:
                                            _4026 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4026] = 120
                                            mem[_4026 + 32] = 60
                                            mem[_4026 + 64] = 20
                                            t = 0
                                            u = 0
                                            while uint8(t) < 3:
                                                t = t + 1
                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4026 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f >= 10^6:
                                                _4064 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4064] = 90
                                                mem[_4064 + 32] = 45
                                                mem[_4064 + 64] = 15
                                                t = 0
                                                u = 0
                                                while uint8(t) < 3:
                                                    t = t + 1
                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4064 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f < 500000:
                                                    _4132 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4132] = 0
                                                    mem[_4132 + 32] = 0
                                                    mem[_4132 + 64] = 0
                                                    t = 0
                                                    u = 0
                                                    while uint8(t) < 3:
                                                        t = t + 1
                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4132 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    _4133 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4133] = 60
                                                    mem[_4133 + 32] = 30
                                                    mem[_4133 + 64] = 10
                                                    t = 0
                                                    u = 0
                                                    while uint8(t) < 3:
                                                        t = t + 1
                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4133 + 31 len 1] / 1000)
                                                        continue 
                                if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                    if eth.balance(this.address):
                                        uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                        if sub_1090f78dAddress != address(s):
                                            call address(s) with:
                                               value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                            emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                        else:
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(sub_1090f78dAddress)
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                 gas gas_remaining - 9710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                mem[0] = address(s)
                                mem[32] = 6
                                s = sha3(address(s), 6)
                                idx = idx + 1
                                s = members[address(s)].field_8
                                continue 
                            uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                            require uint8(members[stor2].field_0)
                            mem[0] = sub_1090f78dAddress
                            _3802 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3802] = 0
                            t = _3802
                            s = 3
                            while s - 1:
                                mem[t + 32] = 0
                                t = t + 32
                                s = s - 1
                                continue 
                            require uint8(members[stor2].field_0)
                            mem[0] = sub_1090f78dAddress
                            mem[32] = 6
                            _3913 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3913] = 0
                            t = _3913
                            s = 3
                            while s - 1:
                                mem[t + 32] = 0
                                t = t + 32
                                s = s - 1
                                continue 
                            if sub_cb23406f >= 10 * 10^6:
                                _3951 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3951] = 180
                                mem[_3951 + 32] = 90
                                mem[_3951 + 64] = 30
                                s = 0
                                t = 0
                                while uint8(s) < 3:
                                    s = s + 1
                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3951 + 31 len 1] / 1000)
                                    continue 
                            else:
                                if sub_cb23406f >= 5 * 10^6:
                                    _3989 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3989] = 150
                                    mem[_3989 + 32] = 75
                                    mem[_3989 + 64] = 25
                                    s = 0
                                    t = 0
                                    while uint8(s) < 3:
                                        s = s + 1
                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3989 + 31 len 1] / 1000)
                                        continue 
                                else:
                                    if sub_cb23406f >= 2 * 10^6:
                                        _4027 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4027] = 120
                                        mem[_4027 + 32] = 60
                                        mem[_4027 + 64] = 20
                                        s = 0
                                        t = 0
                                        while uint8(s) < 3:
                                            s = s + 1
                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4027 + 31 len 1] / 1000)
                                            continue 
                                    else:
                                        if sub_cb23406f >= 10^6:
                                            _4065 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4065] = 90
                                            mem[_4065 + 32] = 45
                                            mem[_4065 + 64] = 15
                                            s = 0
                                            t = 0
                                            while uint8(s) < 3:
                                                s = s + 1
                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4065 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f < 500000:
                                                _4134 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4134] = 0
                                                mem[_4134 + 32] = 0
                                                mem[_4134 + 64] = 0
                                                s = 0
                                                t = 0
                                                while uint8(s) < 3:
                                                    s = s + 1
                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4134 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                _4135 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4135] = 60
                                                mem[_4135 + 32] = 30
                                                mem[_4135 + 64] = 10
                                                s = 0
                                                t = 0
                                                while uint8(s) < 3:
                                                    s = s + 1
                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4135 + 31 len 1] / 1000)
                                                    continue 
                            if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                if eth.balance(this.address):
                                    uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                    if sub_1090f78dAddress != sub_1090f78dAddress:
                                        call sub_1090f78dAddress with:
                                           value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                        emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                    else:
                                        mem[mem[64] + 32] = 0
                                        require ext_code.size(sub_1090f78dAddress)
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                             gas gas_remaining - 9710 wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        require ext_call.success
                            mem[0] = sub_1090f78dAddress
                            mem[32] = 6
                            s = sha3(sub_1090f78dAddress, 6)
                            idx = idx + 1
                            s = members[stor2].field_8
                            continue 
                else:
                    if sub_cb23406f >= 2 * 10^6:
                        if not (140 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                            mem[0] = msg.sender
                            mem[32] = 6
                            s = 0
                            idx = 0
                            s = stor[sha3(mem[0 len 64])]
                            while uint8(idx) < 3:
                                require uint8(idx) < 3
                                if address(s):
                                    uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                    require uint8(members[address(s)].field_0)
                                    mem[0] = address(s)
                                    _3774 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3774] = 0
                                    u = _3774
                                    t = 3
                                    while t - 1:
                                        mem[u + 32] = 0
                                        u = u + 32
                                        t = t - 1
                                        continue 
                                    require uint8(members[address(s)].field_0)
                                    mem[0] = address(s)
                                    mem[32] = 6
                                    _3910 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3910] = 0
                                    u = _3910
                                    t = 3
                                    while t - 1:
                                        mem[u + 32] = 0
                                        u = u + 32
                                        t = t - 1
                                        continue 
                                    if sub_cb23406f >= 10 * 10^6:
                                        _3948 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3948] = 180
                                        mem[_3948 + 32] = 90
                                        mem[_3948 + 64] = 30
                                        t = 0
                                        u = 0
                                        while uint8(t) < 3:
                                            t = t + 1
                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3948 + 31 len 1] / 1000)
                                            continue 
                                    else:
                                        if sub_cb23406f >= 5 * 10^6:
                                            _3986 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3986] = 150
                                            mem[_3986 + 32] = 75
                                            mem[_3986 + 64] = 25
                                            t = 0
                                            u = 0
                                            while uint8(t) < 3:
                                                t = t + 1
                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3986 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f >= 2 * 10^6:
                                                _4024 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4024] = 120
                                                mem[_4024 + 32] = 60
                                                mem[_4024 + 64] = 20
                                                t = 0
                                                u = 0
                                                while uint8(t) < 3:
                                                    t = t + 1
                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4024 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f >= 10^6:
                                                    _4062 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4062] = 90
                                                    mem[_4062 + 32] = 45
                                                    mem[_4062 + 64] = 15
                                                    t = 0
                                                    u = 0
                                                    while uint8(t) < 3:
                                                        t = t + 1
                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4062 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f < 500000:
                                                        _4128 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4128] = 0
                                                        mem[_4128 + 32] = 0
                                                        mem[_4128 + 64] = 0
                                                        t = 0
                                                        u = 0
                                                        while uint8(t) < 3:
                                                            t = t + 1
                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4128 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        _4129 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4129] = 60
                                                        mem[_4129 + 32] = 30
                                                        mem[_4129 + 64] = 10
                                                        t = 0
                                                        u = 0
                                                        while uint8(t) < 3:
                                                            t = t + 1
                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4129 + 31 len 1] / 1000)
                                                            continue 
                                    if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                        if eth.balance(this.address):
                                            uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                            if sub_1090f78dAddress != address(s):
                                                call address(s) with:
                                                   value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                                emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                            else:
                                                mem[mem[64] + 32] = 0
                                                require ext_code.size(sub_1090f78dAddress)
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                     gas gas_remaining - 9710 wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                require ext_call.success
                                    mem[0] = address(s)
                                    mem[32] = 6
                                    s = sha3(address(s), 6)
                                    idx = idx + 1
                                    s = members[address(s)].field_8
                                    continue 
                                uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                                require uint8(members[stor2].field_0)
                                mem[0] = sub_1090f78dAddress
                                _3801 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3801] = 0
                                t = _3801
                                s = 3
                                while s - 1:
                                    mem[t + 32] = 0
                                    t = t + 32
                                    s = s - 1
                                    continue 
                                require uint8(members[stor2].field_0)
                                mem[0] = sub_1090f78dAddress
                                mem[32] = 6
                                _3911 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3911] = 0
                                t = _3911
                                s = 3
                                while s - 1:
                                    mem[t + 32] = 0
                                    t = t + 32
                                    s = s - 1
                                    continue 
                                if sub_cb23406f >= 10 * 10^6:
                                    _3949 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3949] = 180
                                    mem[_3949 + 32] = 90
                                    mem[_3949 + 64] = 30
                                    s = 0
                                    t = 0
                                    while uint8(s) < 3:
                                        s = s + 1
                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3949 + 31 len 1] / 1000)
                                        continue 
                                else:
                                    if sub_cb23406f >= 5 * 10^6:
                                        _3987 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3987] = 150
                                        mem[_3987 + 32] = 75
                                        mem[_3987 + 64] = 25
                                        s = 0
                                        t = 0
                                        while uint8(s) < 3:
                                            s = s + 1
                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3987 + 31 len 1] / 1000)
                                            continue 
                                    else:
                                        if sub_cb23406f >= 2 * 10^6:
                                            _4025 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4025] = 120
                                            mem[_4025 + 32] = 60
                                            mem[_4025 + 64] = 20
                                            s = 0
                                            t = 0
                                            while uint8(s) < 3:
                                                s = s + 1
                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4025 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f >= 10^6:
                                                _4063 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4063] = 90
                                                mem[_4063 + 32] = 45
                                                mem[_4063 + 64] = 15
                                                s = 0
                                                t = 0
                                                while uint8(s) < 3:
                                                    s = s + 1
                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4063 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f < 500000:
                                                    _4130 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4130] = 0
                                                    mem[_4130 + 32] = 0
                                                    mem[_4130 + 64] = 0
                                                    s = 0
                                                    t = 0
                                                    while uint8(s) < 3:
                                                        s = s + 1
                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4130 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    _4131 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4131] = 60
                                                    mem[_4131 + 32] = 30
                                                    mem[_4131 + 64] = 10
                                                    s = 0
                                                    t = 0
                                                    while uint8(s) < 3:
                                                        s = s + 1
                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4131 + 31 len 1] / 1000)
                                                        continue 
                                if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                    if eth.balance(this.address):
                                        uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                        if sub_1090f78dAddress != sub_1090f78dAddress:
                                            call sub_1090f78dAddress with:
                                               value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                            emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                        else:
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(sub_1090f78dAddress)
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                 gas gas_remaining - 9710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                mem[0] = sub_1090f78dAddress
                                mem[32] = 6
                                s = sha3(sub_1090f78dAddress, 6)
                                idx = idx + 1
                                s = members[stor2].field_8
                                continue 
                        else:
                            uint256(members[address(msg.sender)].field_1024) = 140 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                            mem[100] = msg.sender
                            mem[132] = (140 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (140 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                            require ext_call.success
                            require ext_call.return_data[0]
                            mem[96] = (140 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                            emit TokensRefunded(((140 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                            mem[0] = msg.sender
                            mem[32] = 6
                            s = 0
                            idx = 0
                            s = stor[sha3(mem[0 len 64])]
                            while uint8(idx) < 3:
                                require uint8(idx) < 3
                                if address(s):
                                    uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                    require uint8(members[address(s)].field_0)
                                    mem[0] = address(s)
                                    _3771 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3771] = 0
                                    u = _3771
                                    t = 3
                                    while t - 1:
                                        mem[u + 32] = 0
                                        u = u + 32
                                        t = t - 1
                                        continue 
                                    require uint8(members[address(s)].field_0)
                                    mem[0] = address(s)
                                    mem[32] = 6
                                    _3908 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3908] = 0
                                    u = _3908
                                    t = 3
                                    while t - 1:
                                        mem[u + 32] = 0
                                        u = u + 32
                                        t = t - 1
                                        continue 
                                    if sub_cb23406f >= 10 * 10^6:
                                        _3946 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3946] = 180
                                        mem[_3946 + 32] = 90
                                        mem[_3946 + 64] = 30
                                        t = 0
                                        u = 0
                                        while uint8(t) < 3:
                                            t = t + 1
                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3946 + 31 len 1] / 1000)
                                            continue 
                                    else:
                                        if sub_cb23406f >= 5 * 10^6:
                                            _3984 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3984] = 150
                                            mem[_3984 + 32] = 75
                                            mem[_3984 + 64] = 25
                                            t = 0
                                            u = 0
                                            while uint8(t) < 3:
                                                t = t + 1
                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3984 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f >= 2 * 10^6:
                                                _4022 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4022] = 120
                                                mem[_4022 + 32] = 60
                                                mem[_4022 + 64] = 20
                                                t = 0
                                                u = 0
                                                while uint8(t) < 3:
                                                    t = t + 1
                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4022 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f >= 10^6:
                                                    _4060 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4060] = 90
                                                    mem[_4060 + 32] = 45
                                                    mem[_4060 + 64] = 15
                                                    t = 0
                                                    u = 0
                                                    while uint8(t) < 3:
                                                        t = t + 1
                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4060 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f < 500000:
                                                        _4124 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4124] = 0
                                                        mem[_4124 + 32] = 0
                                                        mem[_4124 + 64] = 0
                                                        t = 0
                                                        u = 0
                                                        while uint8(t) < 3:
                                                            t = t + 1
                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4124 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        _4125 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4125] = 60
                                                        mem[_4125 + 32] = 30
                                                        mem[_4125 + 64] = 10
                                                        t = 0
                                                        u = 0
                                                        while uint8(t) < 3:
                                                            t = t + 1
                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4125 + 31 len 1] / 1000)
                                                            continue 
                                    if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                        if eth.balance(this.address):
                                            uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                            if sub_1090f78dAddress != address(s):
                                                call address(s) with:
                                                   value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                                emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                            else:
                                                mem[mem[64] + 32] = 0
                                                require ext_code.size(sub_1090f78dAddress)
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                     gas gas_remaining - 9710 wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                require ext_call.success
                                    mem[0] = address(s)
                                    mem[32] = 6
                                    s = sha3(address(s), 6)
                                    idx = idx + 1
                                    s = members[address(s)].field_8
                                    continue 
                                uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                                require uint8(members[stor2].field_0)
                                mem[0] = sub_1090f78dAddress
                                _3800 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3800] = 0
                                t = _3800
                                s = 3
                                while s - 1:
                                    mem[t + 32] = 0
                                    t = t + 32
                                    s = s - 1
                                    continue 
                                require uint8(members[stor2].field_0)
                                mem[0] = sub_1090f78dAddress
                                mem[32] = 6
                                _3909 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3909] = 0
                                t = _3909
                                s = 3
                                while s - 1:
                                    mem[t + 32] = 0
                                    t = t + 32
                                    s = s - 1
                                    continue 
                                if sub_cb23406f >= 10 * 10^6:
                                    _3947 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3947] = 180
                                    mem[_3947 + 32] = 90
                                    mem[_3947 + 64] = 30
                                    s = 0
                                    t = 0
                                    while uint8(s) < 3:
                                        s = s + 1
                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3947 + 31 len 1] / 1000)
                                        continue 
                                else:
                                    if sub_cb23406f >= 5 * 10^6:
                                        _3985 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3985] = 150
                                        mem[_3985 + 32] = 75
                                        mem[_3985 + 64] = 25
                                        s = 0
                                        t = 0
                                        while uint8(s) < 3:
                                            s = s + 1
                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3985 + 31 len 1] / 1000)
                                            continue 
                                    else:
                                        if sub_cb23406f >= 2 * 10^6:
                                            _4023 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4023] = 120
                                            mem[_4023 + 32] = 60
                                            mem[_4023 + 64] = 20
                                            s = 0
                                            t = 0
                                            while uint8(s) < 3:
                                                s = s + 1
                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4023 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f >= 10^6:
                                                _4061 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4061] = 90
                                                mem[_4061 + 32] = 45
                                                mem[_4061 + 64] = 15
                                                s = 0
                                                t = 0
                                                while uint8(s) < 3:
                                                    s = s + 1
                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4061 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f < 500000:
                                                    _4126 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4126] = 0
                                                    mem[_4126 + 32] = 0
                                                    mem[_4126 + 64] = 0
                                                    s = 0
                                                    t = 0
                                                    while uint8(s) < 3:
                                                        s = s + 1
                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4126 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    _4127 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4127] = 60
                                                    mem[_4127 + 32] = 30
                                                    mem[_4127 + 64] = 10
                                                    s = 0
                                                    t = 0
                                                    while uint8(s) < 3:
                                                        s = s + 1
                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4127 + 31 len 1] / 1000)
                                                        continue 
                                if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                    if eth.balance(this.address):
                                        uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                        if sub_1090f78dAddress != sub_1090f78dAddress:
                                            call sub_1090f78dAddress with:
                                               value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                            emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                        else:
                                            mem[mem[64] + 32] = 0
                                            require ext_code.size(sub_1090f78dAddress)
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                 gas gas_remaining - 9710 wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                mem[0] = sub_1090f78dAddress
                                mem[32] = 6
                                s = sha3(sub_1090f78dAddress, 6)
                                idx = idx + 1
                                s = members[stor2].field_8
                                continue 
                    else:
                        if sub_cb23406f >= 10^6:
                            if not (130 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                                mem[0] = msg.sender
                                mem[32] = 6
                                s = 0
                                idx = 0
                                s = stor[sha3(mem[0 len 64])]
                                while uint8(idx) < 3:
                                    require uint8(idx) < 3
                                    if address(s):
                                        uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                        require uint8(members[address(s)].field_0)
                                        mem[0] = address(s)
                                        _3768 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3768] = 0
                                        u = _3768
                                        t = 3
                                        while t - 1:
                                            mem[u + 32] = 0
                                            u = u + 32
                                            t = t - 1
                                            continue 
                                        require uint8(members[address(s)].field_0)
                                        mem[0] = address(s)
                                        mem[32] = 6
                                        _3906 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3906] = 0
                                        u = _3906
                                        t = 3
                                        while t - 1:
                                            mem[u + 32] = 0
                                            u = u + 32
                                            t = t - 1
                                            continue 
                                        if sub_cb23406f >= 10 * 10^6:
                                            _3944 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3944] = 180
                                            mem[_3944 + 32] = 90
                                            mem[_3944 + 64] = 30
                                            t = 0
                                            u = 0
                                            while uint8(t) < 3:
                                                t = t + 1
                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3944 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f >= 5 * 10^6:
                                                _3982 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3982] = 150
                                                mem[_3982 + 32] = 75
                                                mem[_3982 + 64] = 25
                                                t = 0
                                                u = 0
                                                while uint8(t) < 3:
                                                    t = t + 1
                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3982 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f >= 2 * 10^6:
                                                    _4020 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4020] = 120
                                                    mem[_4020 + 32] = 60
                                                    mem[_4020 + 64] = 20
                                                    t = 0
                                                    u = 0
                                                    while uint8(t) < 3:
                                                        t = t + 1
                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4020 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f >= 10^6:
                                                        _4058 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4058] = 90
                                                        mem[_4058 + 32] = 45
                                                        mem[_4058 + 64] = 15
                                                        t = 0
                                                        u = 0
                                                        while uint8(t) < 3:
                                                            t = t + 1
                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4058 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f < 500000:
                                                            _4120 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4120] = 0
                                                            mem[_4120 + 32] = 0
                                                            mem[_4120 + 64] = 0
                                                            t = 0
                                                            u = 0
                                                            while uint8(t) < 3:
                                                                t = t + 1
                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4120 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            _4121 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4121] = 60
                                                            mem[_4121 + 32] = 30
                                                            mem[_4121 + 64] = 10
                                                            t = 0
                                                            u = 0
                                                            while uint8(t) < 3:
                                                                t = t + 1
                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4121 + 31 len 1] / 1000)
                                                                continue 
                                        if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                            if eth.balance(this.address):
                                                uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                if sub_1090f78dAddress != address(s):
                                                    call address(s) with:
                                                       value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                                    emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                                else:
                                                    mem[mem[64] + 32] = 0
                                                    require ext_code.size(sub_1090f78dAddress)
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                         gas gas_remaining - 9710 wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    require ext_call.success
                                        mem[0] = address(s)
                                        mem[32] = 6
                                        s = sha3(address(s), 6)
                                        idx = idx + 1
                                        s = members[address(s)].field_8
                                        continue 
                                    uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                                    require uint8(members[stor2].field_0)
                                    mem[0] = sub_1090f78dAddress
                                    _3799 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3799] = 0
                                    t = _3799
                                    s = 3
                                    while s - 1:
                                        mem[t + 32] = 0
                                        t = t + 32
                                        s = s - 1
                                        continue 
                                    require uint8(members[stor2].field_0)
                                    mem[0] = sub_1090f78dAddress
                                    mem[32] = 6
                                    _3907 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3907] = 0
                                    t = _3907
                                    s = 3
                                    while s - 1:
                                        mem[t + 32] = 0
                                        t = t + 32
                                        s = s - 1
                                        continue 
                                    if sub_cb23406f >= 10 * 10^6:
                                        _3945 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3945] = 180
                                        mem[_3945 + 32] = 90
                                        mem[_3945 + 64] = 30
                                        s = 0
                                        t = 0
                                        while uint8(s) < 3:
                                            s = s + 1
                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3945 + 31 len 1] / 1000)
                                            continue 
                                    else:
                                        if sub_cb23406f >= 5 * 10^6:
                                            _3983 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3983] = 150
                                            mem[_3983 + 32] = 75
                                            mem[_3983 + 64] = 25
                                            s = 0
                                            t = 0
                                            while uint8(s) < 3:
                                                s = s + 1
                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3983 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f >= 2 * 10^6:
                                                _4021 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4021] = 120
                                                mem[_4021 + 32] = 60
                                                mem[_4021 + 64] = 20
                                                s = 0
                                                t = 0
                                                while uint8(s) < 3:
                                                    s = s + 1
                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4021 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f >= 10^6:
                                                    _4059 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4059] = 90
                                                    mem[_4059 + 32] = 45
                                                    mem[_4059 + 64] = 15
                                                    s = 0
                                                    t = 0
                                                    while uint8(s) < 3:
                                                        s = s + 1
                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4059 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f < 500000:
                                                        _4122 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4122] = 0
                                                        mem[_4122 + 32] = 0
                                                        mem[_4122 + 64] = 0
                                                        s = 0
                                                        t = 0
                                                        while uint8(s) < 3:
                                                            s = s + 1
                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4122 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        _4123 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4123] = 60
                                                        mem[_4123 + 32] = 30
                                                        mem[_4123 + 64] = 10
                                                        s = 0
                                                        t = 0
                                                        while uint8(s) < 3:
                                                            s = s + 1
                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4123 + 31 len 1] / 1000)
                                                            continue 
                                    if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                        if eth.balance(this.address):
                                            uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                            if sub_1090f78dAddress != sub_1090f78dAddress:
                                                call sub_1090f78dAddress with:
                                                   value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                                emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                            else:
                                                mem[mem[64] + 32] = 0
                                                require ext_code.size(sub_1090f78dAddress)
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                     gas gas_remaining - 9710 wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                require ext_call.success
                                    mem[0] = sub_1090f78dAddress
                                    mem[32] = 6
                                    s = sha3(sub_1090f78dAddress, 6)
                                    idx = idx + 1
                                    s = members[stor2].field_8
                                    continue 
                            else:
                                uint256(members[address(msg.sender)].field_1024) = 130 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                                mem[100] = msg.sender
                                mem[132] = (130 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (130 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                require ext_call.success
                                require ext_call.return_data[0]
                                mem[96] = (130 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                emit TokensRefunded(((130 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                                mem[0] = msg.sender
                                mem[32] = 6
                                s = 0
                                idx = 0
                                s = stor[sha3(mem[0 len 64])]
                                while uint8(idx) < 3:
                                    require uint8(idx) < 3
                                    if address(s):
                                        uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                        require uint8(members[address(s)].field_0)
                                        mem[0] = address(s)
                                        _3765 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3765] = 0
                                        u = _3765
                                        t = 3
                                        while t - 1:
                                            mem[u + 32] = 0
                                            u = u + 32
                                            t = t - 1
                                            continue 
                                        require uint8(members[address(s)].field_0)
                                        mem[0] = address(s)
                                        mem[32] = 6
                                        _3904 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3904] = 0
                                        u = _3904
                                        t = 3
                                        while t - 1:
                                            mem[u + 32] = 0
                                            u = u + 32
                                            t = t - 1
                                            continue 
                                        if sub_cb23406f >= 10 * 10^6:
                                            _3942 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3942] = 180
                                            mem[_3942 + 32] = 90
                                            mem[_3942 + 64] = 30
                                            t = 0
                                            u = 0
                                            while uint8(t) < 3:
                                                t = t + 1
                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3942 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f >= 5 * 10^6:
                                                _3980 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3980] = 150
                                                mem[_3980 + 32] = 75
                                                mem[_3980 + 64] = 25
                                                t = 0
                                                u = 0
                                                while uint8(t) < 3:
                                                    t = t + 1
                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3980 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f >= 2 * 10^6:
                                                    _4018 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4018] = 120
                                                    mem[_4018 + 32] = 60
                                                    mem[_4018 + 64] = 20
                                                    t = 0
                                                    u = 0
                                                    while uint8(t) < 3:
                                                        t = t + 1
                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4018 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f >= 10^6:
                                                        _4056 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4056] = 90
                                                        mem[_4056 + 32] = 45
                                                        mem[_4056 + 64] = 15
                                                        t = 0
                                                        u = 0
                                                        while uint8(t) < 3:
                                                            t = t + 1
                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4056 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f < 500000:
                                                            _4116 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4116] = 0
                                                            mem[_4116 + 32] = 0
                                                            mem[_4116 + 64] = 0
                                                            t = 0
                                                            u = 0
                                                            while uint8(t) < 3:
                                                                t = t + 1
                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4116 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            _4117 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4117] = 60
                                                            mem[_4117 + 32] = 30
                                                            mem[_4117 + 64] = 10
                                                            t = 0
                                                            u = 0
                                                            while uint8(t) < 3:
                                                                t = t + 1
                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4117 + 31 len 1] / 1000)
                                                                continue 
                                        if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                            if eth.balance(this.address):
                                                uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                if sub_1090f78dAddress != address(s):
                                                    call address(s) with:
                                                       value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                                    emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                                else:
                                                    mem[mem[64] + 32] = 0
                                                    require ext_code.size(sub_1090f78dAddress)
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                         gas gas_remaining - 9710 wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    require ext_call.success
                                        mem[0] = address(s)
                                        mem[32] = 6
                                        s = sha3(address(s), 6)
                                        idx = idx + 1
                                        s = members[address(s)].field_8
                                        continue 
                                    uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                                    require uint8(members[stor2].field_0)
                                    mem[0] = sub_1090f78dAddress
                                    _3798 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3798] = 0
                                    t = _3798
                                    s = 3
                                    while s - 1:
                                        mem[t + 32] = 0
                                        t = t + 32
                                        s = s - 1
                                        continue 
                                    require uint8(members[stor2].field_0)
                                    mem[0] = sub_1090f78dAddress
                                    mem[32] = 6
                                    _3905 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3905] = 0
                                    t = _3905
                                    s = 3
                                    while s - 1:
                                        mem[t + 32] = 0
                                        t = t + 32
                                        s = s - 1
                                        continue 
                                    if sub_cb23406f >= 10 * 10^6:
                                        _3943 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3943] = 180
                                        mem[_3943 + 32] = 90
                                        mem[_3943 + 64] = 30
                                        s = 0
                                        t = 0
                                        while uint8(s) < 3:
                                            s = s + 1
                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3943 + 31 len 1] / 1000)
                                            continue 
                                    else:
                                        if sub_cb23406f >= 5 * 10^6:
                                            _3981 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3981] = 150
                                            mem[_3981 + 32] = 75
                                            mem[_3981 + 64] = 25
                                            s = 0
                                            t = 0
                                            while uint8(s) < 3:
                                                s = s + 1
                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3981 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f >= 2 * 10^6:
                                                _4019 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4019] = 120
                                                mem[_4019 + 32] = 60
                                                mem[_4019 + 64] = 20
                                                s = 0
                                                t = 0
                                                while uint8(s) < 3:
                                                    s = s + 1
                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4019 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f >= 10^6:
                                                    _4057 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4057] = 90
                                                    mem[_4057 + 32] = 45
                                                    mem[_4057 + 64] = 15
                                                    s = 0
                                                    t = 0
                                                    while uint8(s) < 3:
                                                        s = s + 1
                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4057 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f < 500000:
                                                        _4118 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4118] = 0
                                                        mem[_4118 + 32] = 0
                                                        mem[_4118 + 64] = 0
                                                        s = 0
                                                        t = 0
                                                        while uint8(s) < 3:
                                                            s = s + 1
                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4118 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        _4119 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4119] = 60
                                                        mem[_4119 + 32] = 30
                                                        mem[_4119 + 64] = 10
                                                        s = 0
                                                        t = 0
                                                        while uint8(s) < 3:
                                                            s = s + 1
                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4119 + 31 len 1] / 1000)
                                                            continue 
                                    if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                        if eth.balance(this.address):
                                            uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                            if sub_1090f78dAddress != sub_1090f78dAddress:
                                                call sub_1090f78dAddress with:
                                                   value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                                emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                            else:
                                                mem[mem[64] + 32] = 0
                                                require ext_code.size(sub_1090f78dAddress)
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                     gas gas_remaining - 9710 wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                require ext_call.success
                                    mem[0] = sub_1090f78dAddress
                                    mem[32] = 6
                                    s = sha3(sub_1090f78dAddress, 6)
                                    idx = idx + 1
                                    s = members[stor2].field_8
                                    continue 
                        else:
                            if sub_cb23406f >= 500000:
                                if not (125 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                                    mem[0] = msg.sender
                                    mem[32] = 6
                                    s = 0
                                    idx = 0
                                    s = stor[sha3(mem[0 len 64])]
                                    while uint8(idx) < 3:
                                        require uint8(idx) < 3
                                        if address(s):
                                            uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                            require uint8(members[address(s)].field_0)
                                            mem[0] = address(s)
                                            _3762 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3762] = 0
                                            u = _3762
                                            t = 3
                                            while t - 1:
                                                mem[u + 32] = 0
                                                u = u + 32
                                                t = t - 1
                                                continue 
                                            require uint8(members[address(s)].field_0)
                                            mem[0] = address(s)
                                            mem[32] = 6
                                            _3902 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3902] = 0
                                            u = _3902
                                            t = 3
                                            while t - 1:
                                                mem[u + 32] = 0
                                                u = u + 32
                                                t = t - 1
                                                continue 
                                            if sub_cb23406f >= 10 * 10^6:
                                                _3940 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3940] = 180
                                                mem[_3940 + 32] = 90
                                                mem[_3940 + 64] = 30
                                                t = 0
                                                u = 0
                                                while uint8(t) < 3:
                                                    t = t + 1
                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3940 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f >= 5 * 10^6:
                                                    _3978 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3978] = 150
                                                    mem[_3978 + 32] = 75
                                                    mem[_3978 + 64] = 25
                                                    t = 0
                                                    u = 0
                                                    while uint8(t) < 3:
                                                        t = t + 1
                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3978 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f >= 2 * 10^6:
                                                        _4016 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4016] = 120
                                                        mem[_4016 + 32] = 60
                                                        mem[_4016 + 64] = 20
                                                        t = 0
                                                        u = 0
                                                        while uint8(t) < 3:
                                                            t = t + 1
                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4016 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f >= 10^6:
                                                            _4054 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4054] = 90
                                                            mem[_4054 + 32] = 45
                                                            mem[_4054 + 64] = 15
                                                            t = 0
                                                            u = 0
                                                            while uint8(t) < 3:
                                                                t = t + 1
                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4054 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f < 500000:
                                                                _4112 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4112] = 0
                                                                mem[_4112 + 32] = 0
                                                                mem[_4112 + 64] = 0
                                                                t = 0
                                                                u = 0
                                                                while uint8(t) < 3:
                                                                    t = t + 1
                                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4112 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                _4113 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4113] = 60
                                                                mem[_4113 + 32] = 30
                                                                mem[_4113 + 64] = 10
                                                                t = 0
                                                                u = 0
                                                                while uint8(t) < 3:
                                                                    t = t + 1
                                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4113 + 31 len 1] / 1000)
                                                                    continue 
                                            if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                                if eth.balance(this.address):
                                                    uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                    if sub_1090f78dAddress != address(s):
                                                        call address(s) with:
                                                           value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                                        emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                                    else:
                                                        mem[mem[64] + 32] = 0
                                                        require ext_code.size(sub_1090f78dAddress)
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                             gas gas_remaining - 9710 wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        require ext_call.success
                                            mem[0] = address(s)
                                            mem[32] = 6
                                            s = sha3(address(s), 6)
                                            idx = idx + 1
                                            s = members[address(s)].field_8
                                            continue 
                                        uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                                        require uint8(members[stor2].field_0)
                                        mem[0] = sub_1090f78dAddress
                                        _3797 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3797] = 0
                                        t = _3797
                                        s = 3
                                        while s - 1:
                                            mem[t + 32] = 0
                                            t = t + 32
                                            s = s - 1
                                            continue 
                                        require uint8(members[stor2].field_0)
                                        mem[0] = sub_1090f78dAddress
                                        mem[32] = 6
                                        _3903 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3903] = 0
                                        t = _3903
                                        s = 3
                                        while s - 1:
                                            mem[t + 32] = 0
                                            t = t + 32
                                            s = s - 1
                                            continue 
                                        if sub_cb23406f >= 10 * 10^6:
                                            _3941 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3941] = 180
                                            mem[_3941 + 32] = 90
                                            mem[_3941 + 64] = 30
                                            s = 0
                                            t = 0
                                            while uint8(s) < 3:
                                                s = s + 1
                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3941 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f >= 5 * 10^6:
                                                _3979 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3979] = 150
                                                mem[_3979 + 32] = 75
                                                mem[_3979 + 64] = 25
                                                s = 0
                                                t = 0
                                                while uint8(s) < 3:
                                                    s = s + 1
                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3979 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f >= 2 * 10^6:
                                                    _4017 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4017] = 120
                                                    mem[_4017 + 32] = 60
                                                    mem[_4017 + 64] = 20
                                                    s = 0
                                                    t = 0
                                                    while uint8(s) < 3:
                                                        s = s + 1
                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4017 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f >= 10^6:
                                                        _4055 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4055] = 90
                                                        mem[_4055 + 32] = 45
                                                        mem[_4055 + 64] = 15
                                                        s = 0
                                                        t = 0
                                                        while uint8(s) < 3:
                                                            s = s + 1
                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4055 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f < 500000:
                                                            _4114 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4114] = 0
                                                            mem[_4114 + 32] = 0
                                                            mem[_4114 + 64] = 0
                                                            s = 0
                                                            t = 0
                                                            while uint8(s) < 3:
                                                                s = s + 1
                                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4114 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            _4115 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4115] = 60
                                                            mem[_4115 + 32] = 30
                                                            mem[_4115 + 64] = 10
                                                            s = 0
                                                            t = 0
                                                            while uint8(s) < 3:
                                                                s = s + 1
                                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4115 + 31 len 1] / 1000)
                                                                continue 
                                        if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                            if eth.balance(this.address):
                                                uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                if sub_1090f78dAddress != sub_1090f78dAddress:
                                                    call sub_1090f78dAddress with:
                                                       value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                                    emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                                else:
                                                    mem[mem[64] + 32] = 0
                                                    require ext_code.size(sub_1090f78dAddress)
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                         gas gas_remaining - 9710 wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    require ext_call.success
                                        mem[0] = sub_1090f78dAddress
                                        mem[32] = 6
                                        s = sha3(sub_1090f78dAddress, 6)
                                        idx = idx + 1
                                        s = members[stor2].field_8
                                        continue 
                                else:
                                    uint256(members[address(msg.sender)].field_1024) = 125 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                                    mem[100] = msg.sender
                                    mem[132] = (125 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (125 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    mem[96] = (125 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                    emit TokensRefunded(((125 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                                    mem[0] = msg.sender
                                    mem[32] = 6
                                    s = 0
                                    idx = 0
                                    s = stor[sha3(mem[0 len 64])]
                                    while uint8(idx) < 3:
                                        require uint8(idx) < 3
                                        if address(s):
                                            uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                            require uint8(members[address(s)].field_0)
                                            mem[0] = address(s)
                                            _3759 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3759] = 0
                                            u = _3759
                                            t = 3
                                            while t - 1:
                                                mem[u + 32] = 0
                                                u = u + 32
                                                t = t - 1
                                                continue 
                                            require uint8(members[address(s)].field_0)
                                            mem[0] = address(s)
                                            mem[32] = 6
                                            _3900 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3900] = 0
                                            u = _3900
                                            t = 3
                                            while t - 1:
                                                mem[u + 32] = 0
                                                u = u + 32
                                                t = t - 1
                                                continue 
                                            if sub_cb23406f >= 10 * 10^6:
                                                _3938 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3938] = 180
                                                mem[_3938 + 32] = 90
                                                mem[_3938 + 64] = 30
                                                t = 0
                                                u = 0
                                                while uint8(t) < 3:
                                                    t = t + 1
                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3938 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f >= 5 * 10^6:
                                                    _3976 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3976] = 150
                                                    mem[_3976 + 32] = 75
                                                    mem[_3976 + 64] = 25
                                                    t = 0
                                                    u = 0
                                                    while uint8(t) < 3:
                                                        t = t + 1
                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3976 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f >= 2 * 10^6:
                                                        _4014 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4014] = 120
                                                        mem[_4014 + 32] = 60
                                                        mem[_4014 + 64] = 20
                                                        t = 0
                                                        u = 0
                                                        while uint8(t) < 3:
                                                            t = t + 1
                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4014 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f >= 10^6:
                                                            _4052 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4052] = 90
                                                            mem[_4052 + 32] = 45
                                                            mem[_4052 + 64] = 15
                                                            t = 0
                                                            u = 0
                                                            while uint8(t) < 3:
                                                                t = t + 1
                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4052 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f < 500000:
                                                                _4108 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4108] = 0
                                                                mem[_4108 + 32] = 0
                                                                mem[_4108 + 64] = 0
                                                                t = 0
                                                                u = 0
                                                                while uint8(t) < 3:
                                                                    t = t + 1
                                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4108 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                _4109 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4109] = 60
                                                                mem[_4109 + 32] = 30
                                                                mem[_4109 + 64] = 10
                                                                t = 0
                                                                u = 0
                                                                while uint8(t) < 3:
                                                                    t = t + 1
                                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4109 + 31 len 1] / 1000)
                                                                    continue 
                                            if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                                if eth.balance(this.address):
                                                    uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                    if sub_1090f78dAddress != address(s):
                                                        call address(s) with:
                                                           value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                                        emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                                    else:
                                                        mem[mem[64] + 32] = 0
                                                        require ext_code.size(sub_1090f78dAddress)
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                             gas gas_remaining - 9710 wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        require ext_call.success
                                            mem[0] = address(s)
                                            mem[32] = 6
                                            s = sha3(address(s), 6)
                                            idx = idx + 1
                                            s = members[address(s)].field_8
                                            continue 
                                        uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                                        require uint8(members[stor2].field_0)
                                        mem[0] = sub_1090f78dAddress
                                        _3796 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3796] = 0
                                        t = _3796
                                        s = 3
                                        while s - 1:
                                            mem[t + 32] = 0
                                            t = t + 32
                                            s = s - 1
                                            continue 
                                        require uint8(members[stor2].field_0)
                                        mem[0] = sub_1090f78dAddress
                                        mem[32] = 6
                                        _3901 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3901] = 0
                                        t = _3901
                                        s = 3
                                        while s - 1:
                                            mem[t + 32] = 0
                                            t = t + 32
                                            s = s - 1
                                            continue 
                                        if sub_cb23406f >= 10 * 10^6:
                                            _3939 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3939] = 180
                                            mem[_3939 + 32] = 90
                                            mem[_3939 + 64] = 30
                                            s = 0
                                            t = 0
                                            while uint8(s) < 3:
                                                s = s + 1
                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3939 + 31 len 1] / 1000)
                                                continue 
                                        else:
                                            if sub_cb23406f >= 5 * 10^6:
                                                _3977 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3977] = 150
                                                mem[_3977 + 32] = 75
                                                mem[_3977 + 64] = 25
                                                s = 0
                                                t = 0
                                                while uint8(s) < 3:
                                                    s = s + 1
                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3977 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f >= 2 * 10^6:
                                                    _4015 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4015] = 120
                                                    mem[_4015 + 32] = 60
                                                    mem[_4015 + 64] = 20
                                                    s = 0
                                                    t = 0
                                                    while uint8(s) < 3:
                                                        s = s + 1
                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4015 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f >= 10^6:
                                                        _4053 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4053] = 90
                                                        mem[_4053 + 32] = 45
                                                        mem[_4053 + 64] = 15
                                                        s = 0
                                                        t = 0
                                                        while uint8(s) < 3:
                                                            s = s + 1
                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4053 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f < 500000:
                                                            _4110 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4110] = 0
                                                            mem[_4110 + 32] = 0
                                                            mem[_4110 + 64] = 0
                                                            s = 0
                                                            t = 0
                                                            while uint8(s) < 3:
                                                                s = s + 1
                                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4110 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            _4111 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4111] = 60
                                                            mem[_4111 + 32] = 30
                                                            mem[_4111 + 64] = 10
                                                            s = 0
                                                            t = 0
                                                            while uint8(s) < 3:
                                                                s = s + 1
                                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4111 + 31 len 1] / 1000)
                                                                continue 
                                        if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                            if eth.balance(this.address):
                                                uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                if sub_1090f78dAddress != sub_1090f78dAddress:
                                                    call sub_1090f78dAddress with:
                                                       value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                                    emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                                else:
                                                    mem[mem[64] + 32] = 0
                                                    require ext_code.size(sub_1090f78dAddress)
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                         gas gas_remaining - 9710 wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    require ext_call.success
                                        mem[0] = sub_1090f78dAddress
                                        mem[32] = 6
                                        s = sha3(sub_1090f78dAddress, 6)
                                        idx = idx + 1
                                        s = members[stor2].field_8
                                        continue 
                            else:
                                if sub_cb23406f >= 250000:
                                    if not (120 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                                        mem[0] = msg.sender
                                        mem[32] = 6
                                        s = 0
                                        idx = 0
                                        s = stor[sha3(mem[0 len 64])]
                                        while uint8(idx) < 3:
                                            require uint8(idx) < 3
                                            if address(s):
                                                uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                                require uint8(members[address(s)].field_0)
                                                mem[0] = address(s)
                                                _3756 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3756] = 0
                                                u = _3756
                                                t = 3
                                                while t - 1:
                                                    mem[u + 32] = 0
                                                    u = u + 32
                                                    t = t - 1
                                                    continue 
                                                require uint8(members[address(s)].field_0)
                                                mem[0] = address(s)
                                                mem[32] = 6
                                                _3898 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3898] = 0
                                                u = _3898
                                                t = 3
                                                while t - 1:
                                                    mem[u + 32] = 0
                                                    u = u + 32
                                                    t = t - 1
                                                    continue 
                                                if sub_cb23406f >= 10 * 10^6:
                                                    _3936 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3936] = 180
                                                    mem[_3936 + 32] = 90
                                                    mem[_3936 + 64] = 30
                                                    t = 0
                                                    u = 0
                                                    while uint8(t) < 3:
                                                        t = t + 1
                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3936 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f >= 5 * 10^6:
                                                        _3974 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3974] = 150
                                                        mem[_3974 + 32] = 75
                                                        mem[_3974 + 64] = 25
                                                        t = 0
                                                        u = 0
                                                        while uint8(t) < 3:
                                                            t = t + 1
                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3974 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f >= 2 * 10^6:
                                                            _4012 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4012] = 120
                                                            mem[_4012 + 32] = 60
                                                            mem[_4012 + 64] = 20
                                                            t = 0
                                                            u = 0
                                                            while uint8(t) < 3:
                                                                t = t + 1
                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4012 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f >= 10^6:
                                                                _4050 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4050] = 90
                                                                mem[_4050 + 32] = 45
                                                                mem[_4050 + 64] = 15
                                                                t = 0
                                                                u = 0
                                                                while uint8(t) < 3:
                                                                    t = t + 1
                                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4050 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                if sub_cb23406f < 500000:
                                                                    _4104 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4104] = 0
                                                                    mem[_4104 + 32] = 0
                                                                    mem[_4104 + 64] = 0
                                                                    t = 0
                                                                    u = 0
                                                                    while uint8(t) < 3:
                                                                        t = t + 1
                                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4104 + 31 len 1] / 1000)
                                                                        continue 
                                                                else:
                                                                    _4105 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4105] = 60
                                                                    mem[_4105 + 32] = 30
                                                                    mem[_4105 + 64] = 10
                                                                    t = 0
                                                                    u = 0
                                                                    while uint8(t) < 3:
                                                                        t = t + 1
                                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4105 + 31 len 1] / 1000)
                                                                        continue 
                                                if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                                    if eth.balance(this.address):
                                                        uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                        if sub_1090f78dAddress != address(s):
                                                            call address(s) with:
                                                               value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                                            emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                                        else:
                                                            mem[mem[64] + 32] = 0
                                                            require ext_code.size(sub_1090f78dAddress)
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                 gas gas_remaining - 9710 wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            require ext_call.success
                                                mem[0] = address(s)
                                                mem[32] = 6
                                                s = sha3(address(s), 6)
                                                idx = idx + 1
                                                s = members[address(s)].field_8
                                                continue 
                                            uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                                            require uint8(members[stor2].field_0)
                                            mem[0] = sub_1090f78dAddress
                                            _3795 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3795] = 0
                                            t = _3795
                                            s = 3
                                            while s - 1:
                                                mem[t + 32] = 0
                                                t = t + 32
                                                s = s - 1
                                                continue 
                                            require uint8(members[stor2].field_0)
                                            mem[0] = sub_1090f78dAddress
                                            mem[32] = 6
                                            _3899 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3899] = 0
                                            t = _3899
                                            s = 3
                                            while s - 1:
                                                mem[t + 32] = 0
                                                t = t + 32
                                                s = s - 1
                                                continue 
                                            if sub_cb23406f >= 10 * 10^6:
                                                _3937 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3937] = 180
                                                mem[_3937 + 32] = 90
                                                mem[_3937 + 64] = 30
                                                s = 0
                                                t = 0
                                                while uint8(s) < 3:
                                                    s = s + 1
                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3937 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f >= 5 * 10^6:
                                                    _3975 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3975] = 150
                                                    mem[_3975 + 32] = 75
                                                    mem[_3975 + 64] = 25
                                                    s = 0
                                                    t = 0
                                                    while uint8(s) < 3:
                                                        s = s + 1
                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3975 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f >= 2 * 10^6:
                                                        _4013 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4013] = 120
                                                        mem[_4013 + 32] = 60
                                                        mem[_4013 + 64] = 20
                                                        s = 0
                                                        t = 0
                                                        while uint8(s) < 3:
                                                            s = s + 1
                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4013 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f >= 10^6:
                                                            _4051 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4051] = 90
                                                            mem[_4051 + 32] = 45
                                                            mem[_4051 + 64] = 15
                                                            s = 0
                                                            t = 0
                                                            while uint8(s) < 3:
                                                                s = s + 1
                                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4051 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f < 500000:
                                                                _4106 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4106] = 0
                                                                mem[_4106 + 32] = 0
                                                                mem[_4106 + 64] = 0
                                                                s = 0
                                                                t = 0
                                                                while uint8(s) < 3:
                                                                    s = s + 1
                                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4106 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                _4107 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4107] = 60
                                                                mem[_4107 + 32] = 30
                                                                mem[_4107 + 64] = 10
                                                                s = 0
                                                                t = 0
                                                                while uint8(s) < 3:
                                                                    s = s + 1
                                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4107 + 31 len 1] / 1000)
                                                                    continue 
                                            if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                                if eth.balance(this.address):
                                                    uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                    if sub_1090f78dAddress != sub_1090f78dAddress:
                                                        call sub_1090f78dAddress with:
                                                           value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                                        emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                                    else:
                                                        mem[mem[64] + 32] = 0
                                                        require ext_code.size(sub_1090f78dAddress)
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                             gas gas_remaining - 9710 wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        require ext_call.success
                                            mem[0] = sub_1090f78dAddress
                                            mem[32] = 6
                                            s = sha3(sub_1090f78dAddress, 6)
                                            idx = idx + 1
                                            s = members[stor2].field_8
                                            continue 
                                    else:
                                        uint256(members[address(msg.sender)].field_1024) = 120 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                                        mem[100] = msg.sender
                                        mem[132] = (120 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (120 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        mem[96] = (120 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                        emit TokensRefunded(((120 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                                        mem[0] = msg.sender
                                        mem[32] = 6
                                        s = 0
                                        idx = 0
                                        s = stor[sha3(mem[0 len 64])]
                                        while uint8(idx) < 3:
                                            require uint8(idx) < 3
                                            if address(s):
                                                uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                                require uint8(members[address(s)].field_0)
                                                mem[0] = address(s)
                                                _3753 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3753] = 0
                                                u = _3753
                                                t = 3
                                                while t - 1:
                                                    mem[u + 32] = 0
                                                    u = u + 32
                                                    t = t - 1
                                                    continue 
                                                require uint8(members[address(s)].field_0)
                                                mem[0] = address(s)
                                                mem[32] = 6
                                                _3896 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3896] = 0
                                                u = _3896
                                                t = 3
                                                while t - 1:
                                                    mem[u + 32] = 0
                                                    u = u + 32
                                                    t = t - 1
                                                    continue 
                                                if sub_cb23406f >= 10 * 10^6:
                                                    _3934 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3934] = 180
                                                    mem[_3934 + 32] = 90
                                                    mem[_3934 + 64] = 30
                                                    t = 0
                                                    u = 0
                                                    while uint8(t) < 3:
                                                        t = t + 1
                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3934 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f >= 5 * 10^6:
                                                        _3972 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3972] = 150
                                                        mem[_3972 + 32] = 75
                                                        mem[_3972 + 64] = 25
                                                        t = 0
                                                        u = 0
                                                        while uint8(t) < 3:
                                                            t = t + 1
                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3972 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f >= 2 * 10^6:
                                                            _4010 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4010] = 120
                                                            mem[_4010 + 32] = 60
                                                            mem[_4010 + 64] = 20
                                                            t = 0
                                                            u = 0
                                                            while uint8(t) < 3:
                                                                t = t + 1
                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4010 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f >= 10^6:
                                                                _4048 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4048] = 90
                                                                mem[_4048 + 32] = 45
                                                                mem[_4048 + 64] = 15
                                                                t = 0
                                                                u = 0
                                                                while uint8(t) < 3:
                                                                    t = t + 1
                                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4048 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                if sub_cb23406f < 500000:
                                                                    _4100 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4100] = 0
                                                                    mem[_4100 + 32] = 0
                                                                    mem[_4100 + 64] = 0
                                                                    t = 0
                                                                    u = 0
                                                                    while uint8(t) < 3:
                                                                        t = t + 1
                                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4100 + 31 len 1] / 1000)
                                                                        continue 
                                                                else:
                                                                    _4101 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4101] = 60
                                                                    mem[_4101 + 32] = 30
                                                                    mem[_4101 + 64] = 10
                                                                    t = 0
                                                                    u = 0
                                                                    while uint8(t) < 3:
                                                                        t = t + 1
                                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4101 + 31 len 1] / 1000)
                                                                        continue 
                                                if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                                    if eth.balance(this.address):
                                                        uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                        if sub_1090f78dAddress != address(s):
                                                            call address(s) with:
                                                               value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                                            emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                                        else:
                                                            mem[mem[64] + 32] = 0
                                                            require ext_code.size(sub_1090f78dAddress)
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                 gas gas_remaining - 9710 wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            require ext_call.success
                                                mem[0] = address(s)
                                                mem[32] = 6
                                                s = sha3(address(s), 6)
                                                idx = idx + 1
                                                s = members[address(s)].field_8
                                                continue 
                                            uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                                            require uint8(members[stor2].field_0)
                                            mem[0] = sub_1090f78dAddress
                                            _3794 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3794] = 0
                                            t = _3794
                                            s = 3
                                            while s - 1:
                                                mem[t + 32] = 0
                                                t = t + 32
                                                s = s - 1
                                                continue 
                                            require uint8(members[stor2].field_0)
                                            mem[0] = sub_1090f78dAddress
                                            mem[32] = 6
                                            _3897 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3897] = 0
                                            t = _3897
                                            s = 3
                                            while s - 1:
                                                mem[t + 32] = 0
                                                t = t + 32
                                                s = s - 1
                                                continue 
                                            if sub_cb23406f >= 10 * 10^6:
                                                _3935 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3935] = 180
                                                mem[_3935 + 32] = 90
                                                mem[_3935 + 64] = 30
                                                s = 0
                                                t = 0
                                                while uint8(s) < 3:
                                                    s = s + 1
                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3935 + 31 len 1] / 1000)
                                                    continue 
                                            else:
                                                if sub_cb23406f >= 5 * 10^6:
                                                    _3973 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3973] = 150
                                                    mem[_3973 + 32] = 75
                                                    mem[_3973 + 64] = 25
                                                    s = 0
                                                    t = 0
                                                    while uint8(s) < 3:
                                                        s = s + 1
                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3973 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f >= 2 * 10^6:
                                                        _4011 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4011] = 120
                                                        mem[_4011 + 32] = 60
                                                        mem[_4011 + 64] = 20
                                                        s = 0
                                                        t = 0
                                                        while uint8(s) < 3:
                                                            s = s + 1
                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4011 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f >= 10^6:
                                                            _4049 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4049] = 90
                                                            mem[_4049 + 32] = 45
                                                            mem[_4049 + 64] = 15
                                                            s = 0
                                                            t = 0
                                                            while uint8(s) < 3:
                                                                s = s + 1
                                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4049 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f < 500000:
                                                                _4102 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4102] = 0
                                                                mem[_4102 + 32] = 0
                                                                mem[_4102 + 64] = 0
                                                                s = 0
                                                                t = 0
                                                                while uint8(s) < 3:
                                                                    s = s + 1
                                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4102 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                _4103 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4103] = 60
                                                                mem[_4103 + 32] = 30
                                                                mem[_4103 + 64] = 10
                                                                s = 0
                                                                t = 0
                                                                while uint8(s) < 3:
                                                                    s = s + 1
                                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4103 + 31 len 1] / 1000)
                                                                    continue 
                                            if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                                if eth.balance(this.address):
                                                    uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                    if sub_1090f78dAddress != sub_1090f78dAddress:
                                                        call sub_1090f78dAddress with:
                                                           value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                                        emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                                    else:
                                                        mem[mem[64] + 32] = 0
                                                        require ext_code.size(sub_1090f78dAddress)
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                             gas gas_remaining - 9710 wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        require ext_call.success
                                            mem[0] = sub_1090f78dAddress
                                            mem[32] = 6
                                            s = sha3(sub_1090f78dAddress, 6)
                                            idx = idx + 1
                                            s = members[stor2].field_8
                                            continue 
                                else:
                                    if sub_cb23406f >= 150000:
                                        if not (115 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                                            mem[0] = msg.sender
                                            mem[32] = 6
                                            s = 0
                                            idx = 0
                                            s = stor[sha3(mem[0 len 64])]
                                            while uint8(idx) < 3:
                                                require uint8(idx) < 3
                                                if address(s):
                                                    uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                                    require uint8(members[address(s)].field_0)
                                                    mem[0] = address(s)
                                                    _3750 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3750] = 0
                                                    u = _3750
                                                    t = 3
                                                    while t - 1:
                                                        mem[u + 32] = 0
                                                        u = u + 32
                                                        t = t - 1
                                                        continue 
                                                    require uint8(members[address(s)].field_0)
                                                    mem[0] = address(s)
                                                    mem[32] = 6
                                                    _3894 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3894] = 0
                                                    u = _3894
                                                    t = 3
                                                    while t - 1:
                                                        mem[u + 32] = 0
                                                        u = u + 32
                                                        t = t - 1
                                                        continue 
                                                    if sub_cb23406f >= 10 * 10^6:
                                                        _3932 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3932] = 180
                                                        mem[_3932 + 32] = 90
                                                        mem[_3932 + 64] = 30
                                                        t = 0
                                                        u = 0
                                                        while uint8(t) < 3:
                                                            t = t + 1
                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3932 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f >= 5 * 10^6:
                                                            _3970 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_3970] = 150
                                                            mem[_3970 + 32] = 75
                                                            mem[_3970 + 64] = 25
                                                            t = 0
                                                            u = 0
                                                            while uint8(t) < 3:
                                                                t = t + 1
                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3970 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f >= 2 * 10^6:
                                                                _4008 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4008] = 120
                                                                mem[_4008 + 32] = 60
                                                                mem[_4008 + 64] = 20
                                                                t = 0
                                                                u = 0
                                                                while uint8(t) < 3:
                                                                    t = t + 1
                                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4008 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                if sub_cb23406f >= 10^6:
                                                                    _4046 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4046] = 90
                                                                    mem[_4046 + 32] = 45
                                                                    mem[_4046 + 64] = 15
                                                                    t = 0
                                                                    u = 0
                                                                    while uint8(t) < 3:
                                                                        t = t + 1
                                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4046 + 31 len 1] / 1000)
                                                                        continue 
                                                                else:
                                                                    if sub_cb23406f < 500000:
                                                                        _4096 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4096] = 0
                                                                        mem[_4096 + 32] = 0
                                                                        mem[_4096 + 64] = 0
                                                                        t = 0
                                                                        u = 0
                                                                        while uint8(t) < 3:
                                                                            t = t + 1
                                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4096 + 31 len 1] / 1000)
                                                                            continue 
                                                                    else:
                                                                        _4097 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4097] = 60
                                                                        mem[_4097 + 32] = 30
                                                                        mem[_4097 + 64] = 10
                                                                        t = 0
                                                                        u = 0
                                                                        while uint8(t) < 3:
                                                                            t = t + 1
                                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4097 + 31 len 1] / 1000)
                                                                            continue 
                                                    if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                                        if eth.balance(this.address):
                                                            uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                            if sub_1090f78dAddress != address(s):
                                                                call address(s) with:
                                                                   value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                                                emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                                            else:
                                                                mem[mem[64] + 32] = 0
                                                                require ext_code.size(sub_1090f78dAddress)
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                     gas gas_remaining - 9710 wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                require ext_call.success
                                                    mem[0] = address(s)
                                                    mem[32] = 6
                                                    s = sha3(address(s), 6)
                                                    idx = idx + 1
                                                    s = members[address(s)].field_8
                                                    continue 
                                                uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                                                require uint8(members[stor2].field_0)
                                                mem[0] = sub_1090f78dAddress
                                                _3793 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3793] = 0
                                                t = _3793
                                                s = 3
                                                while s - 1:
                                                    mem[t + 32] = 0
                                                    t = t + 32
                                                    s = s - 1
                                                    continue 
                                                require uint8(members[stor2].field_0)
                                                mem[0] = sub_1090f78dAddress
                                                mem[32] = 6
                                                _3895 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3895] = 0
                                                t = _3895
                                                s = 3
                                                while s - 1:
                                                    mem[t + 32] = 0
                                                    t = t + 32
                                                    s = s - 1
                                                    continue 
                                                if sub_cb23406f >= 10 * 10^6:
                                                    _3933 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3933] = 180
                                                    mem[_3933 + 32] = 90
                                                    mem[_3933 + 64] = 30
                                                    s = 0
                                                    t = 0
                                                    while uint8(s) < 3:
                                                        s = s + 1
                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3933 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f >= 5 * 10^6:
                                                        _3971 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3971] = 150
                                                        mem[_3971 + 32] = 75
                                                        mem[_3971 + 64] = 25
                                                        s = 0
                                                        t = 0
                                                        while uint8(s) < 3:
                                                            s = s + 1
                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3971 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f >= 2 * 10^6:
                                                            _4009 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4009] = 120
                                                            mem[_4009 + 32] = 60
                                                            mem[_4009 + 64] = 20
                                                            s = 0
                                                            t = 0
                                                            while uint8(s) < 3:
                                                                s = s + 1
                                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4009 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f >= 10^6:
                                                                _4047 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4047] = 90
                                                                mem[_4047 + 32] = 45
                                                                mem[_4047 + 64] = 15
                                                                s = 0
                                                                t = 0
                                                                while uint8(s) < 3:
                                                                    s = s + 1
                                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4047 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                if sub_cb23406f < 500000:
                                                                    _4098 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4098] = 0
                                                                    mem[_4098 + 32] = 0
                                                                    mem[_4098 + 64] = 0
                                                                    s = 0
                                                                    t = 0
                                                                    while uint8(s) < 3:
                                                                        s = s + 1
                                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4098 + 31 len 1] / 1000)
                                                                        continue 
                                                                else:
                                                                    _4099 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4099] = 60
                                                                    mem[_4099 + 32] = 30
                                                                    mem[_4099 + 64] = 10
                                                                    s = 0
                                                                    t = 0
                                                                    while uint8(s) < 3:
                                                                        s = s + 1
                                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4099 + 31 len 1] / 1000)
                                                                        continue 
                                                if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                                    if eth.balance(this.address):
                                                        uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                        if sub_1090f78dAddress != sub_1090f78dAddress:
                                                            call sub_1090f78dAddress with:
                                                               value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                                            emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                                        else:
                                                            mem[mem[64] + 32] = 0
                                                            require ext_code.size(sub_1090f78dAddress)
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                                 gas gas_remaining - 9710 wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            require ext_call.success
                                                mem[0] = sub_1090f78dAddress
                                                mem[32] = 6
                                                s = sha3(sub_1090f78dAddress, 6)
                                                idx = idx + 1
                                                s = members[stor2].field_8
                                                continue 
                                        else:
                                            uint256(members[address(msg.sender)].field_1024) = 115 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                                            mem[100] = msg.sender
                                            mem[132] = (115 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                            require ext_code.size(tokenContractAddress)
                                            call tokenContractAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (115 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            mem[96] = (115 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                            emit TokensRefunded(((115 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                                            mem[0] = msg.sender
                                            mem[32] = 6
                                            s = 0
                                            idx = 0
                                            s = stor[sha3(mem[0 len 64])]
                                            while uint8(idx) < 3:
                                                require uint8(idx) < 3
                                                if address(s):
                                                    uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                                    require uint8(members[address(s)].field_0)
                                                    mem[0] = address(s)
                                                    _3747 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3747] = 0
                                                    u = _3747
                                                    t = 3
                                                    while t - 1:
                                                        mem[u + 32] = 0
                                                        u = u + 32
                                                        t = t - 1
                                                        continue 
                                                    require uint8(members[address(s)].field_0)
                                                    mem[0] = address(s)
                                                    mem[32] = 6
                                                    _3892 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3892] = 0
                                                    u = _3892
                                                    t = 3
                                                    while t - 1:
                                                        mem[u + 32] = 0
                                                        u = u + 32
                                                        t = t - 1
                                                        continue 
                                                    if sub_cb23406f >= 10 * 10^6:
                                                        _3930 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3930] = 180
                                                        mem[_3930 + 32] = 90
                                                        mem[_3930 + 64] = 30
                                                        t = 0
                                                        u = 0
                                                        while uint8(t) < 3:
                                                            t = t + 1
                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3930 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f >= 5 * 10^6:
                                                            _3968 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_3968] = 150
                                                            mem[_3968 + 32] = 75
                                                            mem[_3968 + 64] = 25
                                                            t = 0
                                                            u = 0
                                                            while uint8(t) < 3:
                                                                t = t + 1
                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3968 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f >= 2 * 10^6:
                                                                _4006 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4006] = 120
                                                                mem[_4006 + 32] = 60
                                                                mem[_4006 + 64] = 20
                                                                t = 0
                                                                u = 0
                                                                while uint8(t) < 3:
                                                                    t = t + 1
                                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4006 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                if sub_cb23406f >= 10^6:
                                                                    _4044 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4044] = 90
                                                                    mem[_4044 + 32] = 45
                                                                    mem[_4044 + 64] = 15
                                                                    t = 0
                                                                    u = 0
                                                                    while uint8(t) < 3:
                                                                        t = t + 1
                                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4044 + 31 len 1] / 1000)
                                                                        continue 
                                                                else:
                                                                    if sub_cb23406f < 500000:
                                                                        _4092 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4092] = 0
                                                                        mem[_4092 + 32] = 0
                                                                        mem[_4092 + 64] = 0
                                                                        t = 0
                                                                        u = 0
                                                                        while uint8(t) < 3:
                                                                            t = t + 1
                                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4092 + 31 len 1] / 1000)
                                                                            continue 
                                                                    else:
                                                                        _4093 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4093] = 60
                                                                        mem[_4093 + 32] = 30
                                                                        mem[_4093 + 64] = 10
                                                                        t = 0
                                                                        u = 0
                                                                        while uint8(t) < 3:
                                                                            t = t + 1
                                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4093 + 31 len 1] / 1000)
                                                                            continue 
                                                    if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                                        if eth.balance(this.address):
                                                            uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                            if sub_1090f78dAddress != address(s):
                                                                call address(s) with:
                                                                   value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                                                emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                                            else:
                                                                mem[mem[64] + 32] = 0
                                                                require ext_code.size(sub_1090f78dAddress)
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                     gas gas_remaining - 9710 wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                require ext_call.success
                                                    mem[0] = address(s)
                                                    mem[32] = 6
                                                    s = sha3(address(s), 6)
                                                    idx = idx + 1
                                                    s = members[address(s)].field_8
                                                    continue 
                                                uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                                                require uint8(members[stor2].field_0)
                                                mem[0] = sub_1090f78dAddress
                                                _3792 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3792] = 0
                                                t = _3792
                                                s = 3
                                                while s - 1:
                                                    mem[t + 32] = 0
                                                    t = t + 32
                                                    s = s - 1
                                                    continue 
                                                require uint8(members[stor2].field_0)
                                                mem[0] = sub_1090f78dAddress
                                                mem[32] = 6
                                                _3893 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3893] = 0
                                                t = _3893
                                                s = 3
                                                while s - 1:
                                                    mem[t + 32] = 0
                                                    t = t + 32
                                                    s = s - 1
                                                    continue 
                                                if sub_cb23406f >= 10 * 10^6:
                                                    _3931 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3931] = 180
                                                    mem[_3931 + 32] = 90
                                                    mem[_3931 + 64] = 30
                                                    s = 0
                                                    t = 0
                                                    while uint8(s) < 3:
                                                        s = s + 1
                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3931 + 31 len 1] / 1000)
                                                        continue 
                                                else:
                                                    if sub_cb23406f >= 5 * 10^6:
                                                        _3969 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3969] = 150
                                                        mem[_3969 + 32] = 75
                                                        mem[_3969 + 64] = 25
                                                        s = 0
                                                        t = 0
                                                        while uint8(s) < 3:
                                                            s = s + 1
                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3969 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f >= 2 * 10^6:
                                                            _4007 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4007] = 120
                                                            mem[_4007 + 32] = 60
                                                            mem[_4007 + 64] = 20
                                                            s = 0
                                                            t = 0
                                                            while uint8(s) < 3:
                                                                s = s + 1
                                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4007 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f >= 10^6:
                                                                _4045 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4045] = 90
                                                                mem[_4045 + 32] = 45
                                                                mem[_4045 + 64] = 15
                                                                s = 0
                                                                t = 0
                                                                while uint8(s) < 3:
                                                                    s = s + 1
                                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4045 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                if sub_cb23406f < 500000:
                                                                    _4094 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4094] = 0
                                                                    mem[_4094 + 32] = 0
                                                                    mem[_4094 + 64] = 0
                                                                    s = 0
                                                                    t = 0
                                                                    while uint8(s) < 3:
                                                                        s = s + 1
                                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4094 + 31 len 1] / 1000)
                                                                        continue 
                                                                else:
                                                                    _4095 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4095] = 60
                                                                    mem[_4095 + 32] = 30
                                                                    mem[_4095 + 64] = 10
                                                                    s = 0
                                                                    t = 0
                                                                    while uint8(s) < 3:
                                                                        s = s + 1
                                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4095 + 31 len 1] / 1000)
                                                                        continue 
                                                if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                                    if eth.balance(this.address):
                                                        uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                        if sub_1090f78dAddress != sub_1090f78dAddress:
                                                            call sub_1090f78dAddress with:
                                                               value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                                            emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                                        else:
                                                            mem[mem[64] + 32] = 0
                                                            require ext_code.size(sub_1090f78dAddress)
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                                 gas gas_remaining - 9710 wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            require ext_call.success
                                                mem[0] = sub_1090f78dAddress
                                                mem[32] = 6
                                                s = sha3(sub_1090f78dAddress, 6)
                                                idx = idx + 1
                                                s = members[stor2].field_8
                                                continue 
                                    else:
                                        if sub_cb23406f < 50000:
                                            if not (100 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                                                mem[0] = msg.sender
                                                mem[32] = 6
                                                s = 0
                                                idx = 0
                                                s = stor[sha3(mem[0 len 64])]
                                                while uint8(idx) < 3:
                                                    require uint8(idx) < 3
                                                    if address(s):
                                                        uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                                        require uint8(members[address(s)].field_0)
                                                        mem[0] = address(s)
                                                        _3738 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3738] = 0
                                                        u = _3738
                                                        t = 3
                                                        while t - 1:
                                                            mem[u + 32] = 0
                                                            u = u + 32
                                                            t = t - 1
                                                            continue 
                                                        require uint8(members[address(s)].field_0)
                                                        mem[0] = address(s)
                                                        mem[32] = 6
                                                        _3886 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3886] = 0
                                                        u = _3886
                                                        t = 3
                                                        while t - 1:
                                                            mem[u + 32] = 0
                                                            u = u + 32
                                                            t = t - 1
                                                            continue 
                                                        if sub_cb23406f >= 10 * 10^6:
                                                            _3924 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_3924] = 180
                                                            mem[_3924 + 32] = 90
                                                            mem[_3924 + 64] = 30
                                                            t = 0
                                                            u = 0
                                                            while uint8(t) < 3:
                                                                t = t + 1
                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3924 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f >= 5 * 10^6:
                                                                _3962 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_3962] = 150
                                                                mem[_3962 + 32] = 75
                                                                mem[_3962 + 64] = 25
                                                                t = 0
                                                                u = 0
                                                                while uint8(t) < 3:
                                                                    t = t + 1
                                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3962 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                if sub_cb23406f >= 2 * 10^6:
                                                                    _4000 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4000] = 120
                                                                    mem[_4000 + 32] = 60
                                                                    mem[_4000 + 64] = 20
                                                                    t = 0
                                                                    u = 0
                                                                    while uint8(t) < 3:
                                                                        t = t + 1
                                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4000 + 31 len 1] / 1000)
                                                                        continue 
                                                                else:
                                                                    if sub_cb23406f >= 10^6:
                                                                        _4038 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4038] = 90
                                                                        mem[_4038 + 32] = 45
                                                                        mem[_4038 + 64] = 15
                                                                        t = 0
                                                                        u = 0
                                                                        while uint8(t) < 3:
                                                                            t = t + 1
                                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4038 + 31 len 1] / 1000)
                                                                            continue 
                                                                    else:
                                                                        if sub_cb23406f < 500000:
                                                                            _4080 = mem[64]
                                                                            mem[64] = mem[64] + 96
                                                                            mem[_4080] = 0
                                                                            mem[_4080 + 32] = 0
                                                                            mem[_4080 + 64] = 0
                                                                            t = 0
                                                                            u = 0
                                                                            while uint8(t) < 3:
                                                                                t = t + 1
                                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4080 + 31 len 1] / 1000)
                                                                                continue 
                                                                        else:
                                                                            _4081 = mem[64]
                                                                            mem[64] = mem[64] + 96
                                                                            mem[_4081] = 60
                                                                            mem[_4081 + 32] = 30
                                                                            mem[_4081 + 64] = 10
                                                                            t = 0
                                                                            u = 0
                                                                            while uint8(t) < 3:
                                                                                t = t + 1
                                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4081 + 31 len 1] / 1000)
                                                                                continue 
                                                        if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                                            if eth.balance(this.address):
                                                                uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                                if sub_1090f78dAddress != address(s):
                                                                    call address(s) with:
                                                                       value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                                                    emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                                                else:
                                                                    mem[mem[64] + 32] = 0
                                                                    require ext_code.size(sub_1090f78dAddress)
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                         gas gas_remaining - 9710 wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    require ext_call.success
                                                        mem[0] = address(s)
                                                        mem[32] = 6
                                                        s = sha3(address(s), 6)
                                                        idx = idx + 1
                                                        s = members[address(s)].field_8
                                                        continue 
                                                    uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                                                    require uint8(members[stor2].field_0)
                                                    mem[0] = sub_1090f78dAddress
                                                    _3789 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3789] = 0
                                                    t = _3789
                                                    s = 3
                                                    while s - 1:
                                                        mem[t + 32] = 0
                                                        t = t + 32
                                                        s = s - 1
                                                        continue 
                                                    require uint8(members[stor2].field_0)
                                                    mem[0] = sub_1090f78dAddress
                                                    mem[32] = 6
                                                    _3887 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3887] = 0
                                                    t = _3887
                                                    s = 3
                                                    while s - 1:
                                                        mem[t + 32] = 0
                                                        t = t + 32
                                                        s = s - 1
                                                        continue 
                                                    if sub_cb23406f >= 10 * 10^6:
                                                        _3925 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3925] = 180
                                                        mem[_3925 + 32] = 90
                                                        mem[_3925 + 64] = 30
                                                        s = 0
                                                        t = 0
                                                        while uint8(s) < 3:
                                                            s = s + 1
                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3925 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f >= 5 * 10^6:
                                                            _3963 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_3963] = 150
                                                            mem[_3963 + 32] = 75
                                                            mem[_3963 + 64] = 25
                                                            s = 0
                                                            t = 0
                                                            while uint8(s) < 3:
                                                                s = s + 1
                                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3963 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f >= 2 * 10^6:
                                                                _4001 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4001] = 120
                                                                mem[_4001 + 32] = 60
                                                                mem[_4001 + 64] = 20
                                                                s = 0
                                                                t = 0
                                                                while uint8(s) < 3:
                                                                    s = s + 1
                                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4001 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                if sub_cb23406f >= 10^6:
                                                                    _4039 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4039] = 90
                                                                    mem[_4039 + 32] = 45
                                                                    mem[_4039 + 64] = 15
                                                                    s = 0
                                                                    t = 0
                                                                    while uint8(s) < 3:
                                                                        s = s + 1
                                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4039 + 31 len 1] / 1000)
                                                                        continue 
                                                                else:
                                                                    if sub_cb23406f < 500000:
                                                                        _4082 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4082] = 0
                                                                        mem[_4082 + 32] = 0
                                                                        mem[_4082 + 64] = 0
                                                                        s = 0
                                                                        t = 0
                                                                        while uint8(s) < 3:
                                                                            s = s + 1
                                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4082 + 31 len 1] / 1000)
                                                                            continue 
                                                                    else:
                                                                        _4083 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4083] = 60
                                                                        mem[_4083 + 32] = 30
                                                                        mem[_4083 + 64] = 10
                                                                        s = 0
                                                                        t = 0
                                                                        while uint8(s) < 3:
                                                                            s = s + 1
                                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4083 + 31 len 1] / 1000)
                                                                            continue 
                                                    if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                                        if eth.balance(this.address):
                                                            uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                            if sub_1090f78dAddress != sub_1090f78dAddress:
                                                                call sub_1090f78dAddress with:
                                                                   value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                                                emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                                            else:
                                                                mem[mem[64] + 32] = 0
                                                                require ext_code.size(sub_1090f78dAddress)
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                                     gas gas_remaining - 9710 wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                require ext_call.success
                                                    mem[0] = sub_1090f78dAddress
                                                    mem[32] = 6
                                                    s = sha3(sub_1090f78dAddress, 6)
                                                    idx = idx + 1
                                                    s = members[stor2].field_8
                                                    continue 
                                            else:
                                                uint256(members[address(msg.sender)].field_1024) = 100 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                                                mem[100] = msg.sender
                                                mem[132] = (100 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                                require ext_code.size(tokenContractAddress)
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (100 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[96] = (100 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                                emit TokensRefunded(((100 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                                                mem[0] = msg.sender
                                                mem[32] = 6
                                                s = 0
                                                idx = 0
                                                s = stor[sha3(mem[0 len 64])]
                                                while uint8(idx) < 3:
                                                    require uint8(idx) < 3
                                                    if address(s):
                                                        uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                                        require uint8(members[address(s)].field_0)
                                                        mem[0] = address(s)
                                                        _3735 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3735] = 0
                                                        u = _3735
                                                        t = 3
                                                        while t - 1:
                                                            mem[u + 32] = 0
                                                            u = u + 32
                                                            t = t - 1
                                                            continue 
                                                        require uint8(members[address(s)].field_0)
                                                        mem[0] = address(s)
                                                        mem[32] = 6
                                                        _3884 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3884] = 0
                                                        u = _3884
                                                        t = 3
                                                        while t - 1:
                                                            mem[u + 32] = 0
                                                            u = u + 32
                                                            t = t - 1
                                                            continue 
                                                        if sub_cb23406f >= 10 * 10^6:
                                                            _3922 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_3922] = 180
                                                            mem[_3922 + 32] = 90
                                                            mem[_3922 + 64] = 30
                                                            t = 0
                                                            u = 0
                                                            while uint8(t) < 3:
                                                                t = t + 1
                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3922 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f >= 5 * 10^6:
                                                                _3960 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_3960] = 150
                                                                mem[_3960 + 32] = 75
                                                                mem[_3960 + 64] = 25
                                                                t = 0
                                                                u = 0
                                                                while uint8(t) < 3:
                                                                    t = t + 1
                                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3960 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                if sub_cb23406f >= 2 * 10^6:
                                                                    _3998 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_3998] = 120
                                                                    mem[_3998 + 32] = 60
                                                                    mem[_3998 + 64] = 20
                                                                    t = 0
                                                                    u = 0
                                                                    while uint8(t) < 3:
                                                                        t = t + 1
                                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3998 + 31 len 1] / 1000)
                                                                        continue 
                                                                else:
                                                                    if sub_cb23406f >= 10^6:
                                                                        _4036 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4036] = 90
                                                                        mem[_4036 + 32] = 45
                                                                        mem[_4036 + 64] = 15
                                                                        t = 0
                                                                        u = 0
                                                                        while uint8(t) < 3:
                                                                            t = t + 1
                                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4036 + 31 len 1] / 1000)
                                                                            continue 
                                                                    else:
                                                                        if sub_cb23406f < 500000:
                                                                            _4076 = mem[64]
                                                                            mem[64] = mem[64] + 96
                                                                            mem[_4076] = 0
                                                                            mem[_4076 + 32] = 0
                                                                            mem[_4076 + 64] = 0
                                                                            t = 0
                                                                            u = 0
                                                                            while uint8(t) < 3:
                                                                                t = t + 1
                                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4076 + 31 len 1] / 1000)
                                                                                continue 
                                                                        else:
                                                                            _4077 = mem[64]
                                                                            mem[64] = mem[64] + 96
                                                                            mem[_4077] = 60
                                                                            mem[_4077 + 32] = 30
                                                                            mem[_4077 + 64] = 10
                                                                            t = 0
                                                                            u = 0
                                                                            while uint8(t) < 3:
                                                                                t = t + 1
                                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4077 + 31 len 1] / 1000)
                                                                                continue 
                                                        if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                                            if eth.balance(this.address):
                                                                uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                                if sub_1090f78dAddress != address(s):
                                                                    call address(s) with:
                                                                       value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                                                    emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                                                else:
                                                                    mem[mem[64] + 32] = 0
                                                                    require ext_code.size(sub_1090f78dAddress)
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                         gas gas_remaining - 9710 wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    require ext_call.success
                                                        mem[0] = address(s)
                                                        mem[32] = 6
                                                        s = sha3(address(s), 6)
                                                        idx = idx + 1
                                                        s = members[address(s)].field_8
                                                        continue 
                                                    uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                                                    require uint8(members[stor2].field_0)
                                                    mem[0] = sub_1090f78dAddress
                                                    _3788 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3788] = 0
                                                    t = _3788
                                                    s = 3
                                                    while s - 1:
                                                        mem[t + 32] = 0
                                                        t = t + 32
                                                        s = s - 1
                                                        continue 
                                                    require uint8(members[stor2].field_0)
                                                    mem[0] = sub_1090f78dAddress
                                                    mem[32] = 6
                                                    _3885 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3885] = 0
                                                    t = _3885
                                                    s = 3
                                                    while s - 1:
                                                        mem[t + 32] = 0
                                                        t = t + 32
                                                        s = s - 1
                                                        continue 
                                                    if sub_cb23406f >= 10 * 10^6:
                                                        _3923 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3923] = 180
                                                        mem[_3923 + 32] = 90
                                                        mem[_3923 + 64] = 30
                                                        s = 0
                                                        t = 0
                                                        while uint8(s) < 3:
                                                            s = s + 1
                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3923 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f >= 5 * 10^6:
                                                            _3961 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_3961] = 150
                                                            mem[_3961 + 32] = 75
                                                            mem[_3961 + 64] = 25
                                                            s = 0
                                                            t = 0
                                                            while uint8(s) < 3:
                                                                s = s + 1
                                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3961 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f >= 2 * 10^6:
                                                                _3999 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_3999] = 120
                                                                mem[_3999 + 32] = 60
                                                                mem[_3999 + 64] = 20
                                                                s = 0
                                                                t = 0
                                                                while uint8(s) < 3:
                                                                    s = s + 1
                                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3999 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                if sub_cb23406f >= 10^6:
                                                                    _4037 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4037] = 90
                                                                    mem[_4037 + 32] = 45
                                                                    mem[_4037 + 64] = 15
                                                                    s = 0
                                                                    t = 0
                                                                    while uint8(s) < 3:
                                                                        s = s + 1
                                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4037 + 31 len 1] / 1000)
                                                                        continue 
                                                                else:
                                                                    if sub_cb23406f < 500000:
                                                                        _4078 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4078] = 0
                                                                        mem[_4078 + 32] = 0
                                                                        mem[_4078 + 64] = 0
                                                                        s = 0
                                                                        t = 0
                                                                        while uint8(s) < 3:
                                                                            s = s + 1
                                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4078 + 31 len 1] / 1000)
                                                                            continue 
                                                                    else:
                                                                        _4079 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4079] = 60
                                                                        mem[_4079 + 32] = 30
                                                                        mem[_4079 + 64] = 10
                                                                        s = 0
                                                                        t = 0
                                                                        while uint8(s) < 3:
                                                                            s = s + 1
                                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4079 + 31 len 1] / 1000)
                                                                            continue 
                                                    if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                                        if eth.balance(this.address):
                                                            uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                            if sub_1090f78dAddress != sub_1090f78dAddress:
                                                                call sub_1090f78dAddress with:
                                                                   value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                                                emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                                            else:
                                                                mem[mem[64] + 32] = 0
                                                                require ext_code.size(sub_1090f78dAddress)
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                                     gas gas_remaining - 9710 wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                require ext_call.success
                                                    mem[0] = sub_1090f78dAddress
                                                    mem[32] = 6
                                                    s = sha3(sub_1090f78dAddress, 6)
                                                    idx = idx + 1
                                                    s = members[stor2].field_8
                                                    continue 
                                        else:
                                            if not (110 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024):
                                                mem[0] = msg.sender
                                                mem[32] = 6
                                                s = 0
                                                idx = 0
                                                s = stor[sha3(mem[0 len 64])]
                                                while uint8(idx) < 3:
                                                    require uint8(idx) < 3
                                                    if address(s):
                                                        uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                                        require uint8(members[address(s)].field_0)
                                                        mem[0] = address(s)
                                                        _3744 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3744] = 0
                                                        u = _3744
                                                        t = 3
                                                        while t - 1:
                                                            mem[u + 32] = 0
                                                            u = u + 32
                                                            t = t - 1
                                                            continue 
                                                        require uint8(members[address(s)].field_0)
                                                        mem[0] = address(s)
                                                        mem[32] = 6
                                                        _3890 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3890] = 0
                                                        u = _3890
                                                        t = 3
                                                        while t - 1:
                                                            mem[u + 32] = 0
                                                            u = u + 32
                                                            t = t - 1
                                                            continue 
                                                        if sub_cb23406f >= 10 * 10^6:
                                                            _3928 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_3928] = 180
                                                            mem[_3928 + 32] = 90
                                                            mem[_3928 + 64] = 30
                                                            t = 0
                                                            u = 0
                                                            while uint8(t) < 3:
                                                                t = t + 1
                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3928 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f >= 5 * 10^6:
                                                                _3966 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_3966] = 150
                                                                mem[_3966 + 32] = 75
                                                                mem[_3966 + 64] = 25
                                                                t = 0
                                                                u = 0
                                                                while uint8(t) < 3:
                                                                    t = t + 1
                                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3966 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                if sub_cb23406f >= 2 * 10^6:
                                                                    _4004 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4004] = 120
                                                                    mem[_4004 + 32] = 60
                                                                    mem[_4004 + 64] = 20
                                                                    t = 0
                                                                    u = 0
                                                                    while uint8(t) < 3:
                                                                        t = t + 1
                                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4004 + 31 len 1] / 1000)
                                                                        continue 
                                                                else:
                                                                    if sub_cb23406f >= 10^6:
                                                                        _4042 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4042] = 90
                                                                        mem[_4042 + 32] = 45
                                                                        mem[_4042 + 64] = 15
                                                                        t = 0
                                                                        u = 0
                                                                        while uint8(t) < 3:
                                                                            t = t + 1
                                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4042 + 31 len 1] / 1000)
                                                                            continue 
                                                                    else:
                                                                        if sub_cb23406f < 500000:
                                                                            _4088 = mem[64]
                                                                            mem[64] = mem[64] + 96
                                                                            mem[_4088] = 0
                                                                            mem[_4088 + 32] = 0
                                                                            mem[_4088 + 64] = 0
                                                                            t = 0
                                                                            u = 0
                                                                            while uint8(t) < 3:
                                                                                t = t + 1
                                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4088 + 31 len 1] / 1000)
                                                                                continue 
                                                                        else:
                                                                            _4089 = mem[64]
                                                                            mem[64] = mem[64] + 96
                                                                            mem[_4089] = 60
                                                                            mem[_4089 + 32] = 30
                                                                            mem[_4089 + 64] = 10
                                                                            t = 0
                                                                            u = 0
                                                                            while uint8(t) < 3:
                                                                                t = t + 1
                                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4089 + 31 len 1] / 1000)
                                                                                continue 
                                                        if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                                            if eth.balance(this.address):
                                                                uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                                if sub_1090f78dAddress != address(s):
                                                                    call address(s) with:
                                                                       value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                                                    emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                                                else:
                                                                    mem[mem[64] + 32] = 0
                                                                    require ext_code.size(sub_1090f78dAddress)
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                         gas gas_remaining - 9710 wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    require ext_call.success
                                                        mem[0] = address(s)
                                                        mem[32] = 6
                                                        s = sha3(address(s), 6)
                                                        idx = idx + 1
                                                        s = members[address(s)].field_8
                                                        continue 
                                                    uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                                                    require uint8(members[stor2].field_0)
                                                    mem[0] = sub_1090f78dAddress
                                                    _3791 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3791] = 0
                                                    t = _3791
                                                    s = 3
                                                    while s - 1:
                                                        mem[t + 32] = 0
                                                        t = t + 32
                                                        s = s - 1
                                                        continue 
                                                    require uint8(members[stor2].field_0)
                                                    mem[0] = sub_1090f78dAddress
                                                    mem[32] = 6
                                                    _3891 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3891] = 0
                                                    t = _3891
                                                    s = 3
                                                    while s - 1:
                                                        mem[t + 32] = 0
                                                        t = t + 32
                                                        s = s - 1
                                                        continue 
                                                    if sub_cb23406f >= 10 * 10^6:
                                                        _3929 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3929] = 180
                                                        mem[_3929 + 32] = 90
                                                        mem[_3929 + 64] = 30
                                                        s = 0
                                                        t = 0
                                                        while uint8(s) < 3:
                                                            s = s + 1
                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3929 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f >= 5 * 10^6:
                                                            _3967 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_3967] = 150
                                                            mem[_3967 + 32] = 75
                                                            mem[_3967 + 64] = 25
                                                            s = 0
                                                            t = 0
                                                            while uint8(s) < 3:
                                                                s = s + 1
                                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3967 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f >= 2 * 10^6:
                                                                _4005 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4005] = 120
                                                                mem[_4005 + 32] = 60
                                                                mem[_4005 + 64] = 20
                                                                s = 0
                                                                t = 0
                                                                while uint8(s) < 3:
                                                                    s = s + 1
                                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4005 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                if sub_cb23406f >= 10^6:
                                                                    _4043 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4043] = 90
                                                                    mem[_4043 + 32] = 45
                                                                    mem[_4043 + 64] = 15
                                                                    s = 0
                                                                    t = 0
                                                                    while uint8(s) < 3:
                                                                        s = s + 1
                                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4043 + 31 len 1] / 1000)
                                                                        continue 
                                                                else:
                                                                    if sub_cb23406f < 500000:
                                                                        _4090 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4090] = 0
                                                                        mem[_4090 + 32] = 0
                                                                        mem[_4090 + 64] = 0
                                                                        s = 0
                                                                        t = 0
                                                                        while uint8(s) < 3:
                                                                            s = s + 1
                                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4090 + 31 len 1] / 1000)
                                                                            continue 
                                                                    else:
                                                                        _4091 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4091] = 60
                                                                        mem[_4091 + 32] = 30
                                                                        mem[_4091 + 64] = 10
                                                                        s = 0
                                                                        t = 0
                                                                        while uint8(s) < 3:
                                                                            s = s + 1
                                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4091 + 31 len 1] / 1000)
                                                                            continue 
                                                    if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                                        if eth.balance(this.address):
                                                            uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                            if sub_1090f78dAddress != sub_1090f78dAddress:
                                                                call sub_1090f78dAddress with:
                                                                   value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                                                emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                                            else:
                                                                mem[mem[64] + 32] = 0
                                                                require ext_code.size(sub_1090f78dAddress)
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                                     gas gas_remaining - 9710 wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                require ext_call.success
                                                    mem[0] = sub_1090f78dAddress
                                                    mem[32] = 6
                                                    s = sha3(sub_1090f78dAddress, 6)
                                                    idx = idx + 1
                                                    s = members[stor2].field_8
                                                    continue 
                                            else:
                                                uint256(members[address(msg.sender)].field_1024) = 110 * uint256(members[address(msg.sender)].field_768) / 100 / 10
                                                mem[100] = msg.sender
                                                mem[132] = (110 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                                require ext_code.size(tokenContractAddress)
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (110 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                mem[96] = (110 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)
                                                emit TokensRefunded(((110 * uint256(members[address(msg.sender)].field_768) / 100 / 10) - uint256(members[address(msg.sender)].field_1024)), msg.sender);
                                                mem[0] = msg.sender
                                                mem[32] = 6
                                                s = 0
                                                idx = 0
                                                s = stor[sha3(mem[0 len 64])]
                                                while uint8(idx) < 3:
                                                    require uint8(idx) < 3
                                                    if address(s):
                                                        uint256(members[address(s)][uint8(idx)].field_1280) += msg.value
                                                        require uint8(members[address(s)].field_0)
                                                        mem[0] = address(s)
                                                        _3741 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3741] = 0
                                                        u = _3741
                                                        t = 3
                                                        while t - 1:
                                                            mem[u + 32] = 0
                                                            u = u + 32
                                                            t = t - 1
                                                            continue 
                                                        require uint8(members[address(s)].field_0)
                                                        mem[0] = address(s)
                                                        mem[32] = 6
                                                        _3888 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3888] = 0
                                                        u = _3888
                                                        t = 3
                                                        while t - 1:
                                                            mem[u + 32] = 0
                                                            u = u + 32
                                                            t = t - 1
                                                            continue 
                                                        if sub_cb23406f >= 10 * 10^6:
                                                            _3926 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_3926] = 180
                                                            mem[_3926 + 32] = 90
                                                            mem[_3926 + 64] = 30
                                                            t = 0
                                                            u = 0
                                                            while uint8(t) < 3:
                                                                t = t + 1
                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3926 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f >= 5 * 10^6:
                                                                _3964 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_3964] = 150
                                                                mem[_3964 + 32] = 75
                                                                mem[_3964 + 64] = 25
                                                                t = 0
                                                                u = 0
                                                                while uint8(t) < 3:
                                                                    t = t + 1
                                                                    u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _3964 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                if sub_cb23406f >= 2 * 10^6:
                                                                    _4002 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4002] = 120
                                                                    mem[_4002 + 32] = 60
                                                                    mem[_4002 + 64] = 20
                                                                    t = 0
                                                                    u = 0
                                                                    while uint8(t) < 3:
                                                                        t = t + 1
                                                                        u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4002 + 31 len 1] / 1000)
                                                                        continue 
                                                                else:
                                                                    if sub_cb23406f >= 10^6:
                                                                        _4040 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4040] = 90
                                                                        mem[_4040 + 32] = 45
                                                                        mem[_4040 + 64] = 15
                                                                        t = 0
                                                                        u = 0
                                                                        while uint8(t) < 3:
                                                                            t = t + 1
                                                                            u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4040 + 31 len 1] / 1000)
                                                                            continue 
                                                                    else:
                                                                        if sub_cb23406f < 500000:
                                                                            _4084 = mem[64]
                                                                            mem[64] = mem[64] + 96
                                                                            mem[_4084] = 0
                                                                            mem[_4084 + 32] = 0
                                                                            mem[_4084 + 64] = 0
                                                                            t = 0
                                                                            u = 0
                                                                            while uint8(t) < 3:
                                                                                t = t + 1
                                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4084 + 31 len 1] / 1000)
                                                                                continue 
                                                                        else:
                                                                            _4085 = mem[64]
                                                                            mem[64] = mem[64] + 96
                                                                            mem[_4085] = 60
                                                                            mem[_4085 + 32] = 30
                                                                            mem[_4085 + 64] = 10
                                                                            t = 0
                                                                            u = 0
                                                                            while uint8(t) < 3:
                                                                                t = t + 1
                                                                                u = u + (uint256(members[address(s)][uint8(t)].field_1280) * mem[(32 * uint8(t)) + _4085 + 31 len 1] / 1000)
                                                                                continue 
                                                        if (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512):
                                                            if eth.balance(this.address):
                                                                uint256(members[address(s)].field_512) = u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                                if sub_1090f78dAddress != address(s):
                                                                    call address(s) with:
                                                                       value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    mem[mem[64]] = (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)
                                                                    emit 0xcdaa3a5d: ((u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512)), address(s)
                                                                else:
                                                                    mem[mem[64] + 32] = 0
                                                                    require ext_code.size(sub_1090f78dAddress)
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (u * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[address(s)].field_512) wei
                                                                         gas gas_remaining - 9710 wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    require ext_call.success
                                                        mem[0] = address(s)
                                                        mem[32] = 6
                                                        s = sha3(address(s), 6)
                                                        idx = idx + 1
                                                        s = members[address(s)].field_8
                                                        continue 
                                                    uint256(members[stor2][uint8(idx)].field_1280) += msg.value
                                                    require uint8(members[stor2].field_0)
                                                    mem[0] = sub_1090f78dAddress
                                                    _3790 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3790] = 0
                                                    t = _3790
                                                    s = 3
                                                    while s - 1:
                                                        mem[t + 32] = 0
                                                        t = t + 32
                                                        s = s - 1
                                                        continue 
                                                    require uint8(members[stor2].field_0)
                                                    mem[0] = sub_1090f78dAddress
                                                    mem[32] = 6
                                                    _3889 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_3889] = 0
                                                    t = _3889
                                                    s = 3
                                                    while s - 1:
                                                        mem[t + 32] = 0
                                                        t = t + 32
                                                        s = s - 1
                                                        continue 
                                                    if sub_cb23406f >= 10 * 10^6:
                                                        _3927 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_3927] = 180
                                                        mem[_3927 + 32] = 90
                                                        mem[_3927 + 64] = 30
                                                        s = 0
                                                        t = 0
                                                        while uint8(s) < 3:
                                                            s = s + 1
                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3927 + 31 len 1] / 1000)
                                                            continue 
                                                    else:
                                                        if sub_cb23406f >= 5 * 10^6:
                                                            _3965 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_3965] = 150
                                                            mem[_3965 + 32] = 75
                                                            mem[_3965 + 64] = 25
                                                            s = 0
                                                            t = 0
                                                            while uint8(s) < 3:
                                                                s = s + 1
                                                                t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _3965 + 31 len 1] / 1000)
                                                                continue 
                                                        else:
                                                            if sub_cb23406f >= 2 * 10^6:
                                                                _4003 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_4003] = 120
                                                                mem[_4003 + 32] = 60
                                                                mem[_4003 + 64] = 20
                                                                s = 0
                                                                t = 0
                                                                while uint8(s) < 3:
                                                                    s = s + 1
                                                                    t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4003 + 31 len 1] / 1000)
                                                                    continue 
                                                            else:
                                                                if sub_cb23406f >= 10^6:
                                                                    _4041 = mem[64]
                                                                    mem[64] = mem[64] + 96
                                                                    mem[_4041] = 90
                                                                    mem[_4041 + 32] = 45
                                                                    mem[_4041 + 64] = 15
                                                                    s = 0
                                                                    t = 0
                                                                    while uint8(s) < 3:
                                                                        s = s + 1
                                                                        t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4041 + 31 len 1] / 1000)
                                                                        continue 
                                                                else:
                                                                    if sub_cb23406f < 500000:
                                                                        _4086 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4086] = 0
                                                                        mem[_4086 + 32] = 0
                                                                        mem[_4086 + 64] = 0
                                                                        s = 0
                                                                        t = 0
                                                                        while uint8(s) < 3:
                                                                            s = s + 1
                                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4086 + 31 len 1] / 1000)
                                                                            continue 
                                                                    else:
                                                                        _4087 = mem[64]
                                                                        mem[64] = mem[64] + 96
                                                                        mem[_4087] = 60
                                                                        mem[_4087 + 32] = 30
                                                                        mem[_4087 + 64] = 10
                                                                        s = 0
                                                                        t = 0
                                                                        while uint8(s) < 3:
                                                                            s = s + 1
                                                                            t = t + (uint256(members[stor2][uint8(s)].field_1280) * mem[(32 * uint8(s)) + _4087 + 31 len 1] / 1000)
                                                                            continue 
                                                    if (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512):
                                                        if eth.balance(this.address):
                                                            uint256(members[stor2].field_512) = t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
                                                            if sub_1090f78dAddress != sub_1090f78dAddress:
                                                                call sub_1090f78dAddress with:
                                                                   value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                mem[mem[64]] = (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)
                                                                emit 0xcdaa3a5d: ((t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512)), sub_1090f78dAddress
                                                            else:
                                                                mem[mem[64] + 32] = 0
                                                                require ext_code.size(sub_1090f78dAddress)
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - uint256(members[stor2].field_512) wei
                                                                     gas gas_remaining - 9710 wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                require ext_call.success
                                                    mem[0] = sub_1090f78dAddress
                                                    mem[32] = 6
                                                    s = sha3(sub_1090f78dAddress, 6)
                                                    idx = idx + 1
                                                    s = members[stor2].field_8
                                                    continue 
    return 1
}



}
