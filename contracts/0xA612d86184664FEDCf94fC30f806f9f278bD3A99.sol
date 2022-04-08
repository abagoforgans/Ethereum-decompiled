contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 4242]




// =====================  Runtime code  =====================


address deployerAddress;
address sub_26e4ca82Address;
address sub_1090f78dAddress;
address tokenContractAddress;
address owner;
uint256 sub_cb23406f;
mapping of struct members;
uint8 stor7;

function members(address arg1) {
    return bool(members[arg1].field_0), 
           members[arg1].field_0,
           members[arg1].field_256,
           members[arg1].field_512,
           members[arg1].field_768,
           members[arg1].field_1024
}

function sub_1090f78d(?) {
    return sub_1090f78dAddress
}

function sub_26528250(?) {
    return members[address(arg1)].field_1024
}

function sub_26e4ca82(?) {
    return sub_26e4ca82Address
}

function getInvested(address arg1) {
    return members[address(arg1)].field_256
}

function tokenContract() {
    return tokenContractAddress
}

function owner() {
    return owner
}

function sub_a699621d(?) {
    return members[address(arg1)].field_768
}

function isRegistered(address arg1) {
    return bool(members[address(arg1)].field_0)
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
    return members[address(arg1)].field_512
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
    members[address(arg1)].field_0 = 1
    return 1
}

function constructor(address arg1, address arg2, address arg3) {
    if not deployerAddress:
        deployerAddress = msg.sender
        sub_26e4ca82Address = arg3
        sub_1090f78dAddress = arg2
        tokenContractAddress = arg1
}

function register(address arg1, address arg2) {
    require sub_26e4ca82Address == msg.sender
    require not members[address(arg1)].field_0
    require members[address(arg2)].field_0
    members[address(arg1)].field_0 = 1
    members[address(arg1)].field_8 = arg2
    members[address(arg1)].field_256 = 0
    return 1
}

function sub_5f08983e(?) {
    if sub_cb23406f < 150000:
        return 0
    if sub_cb23406f < 250000:
        return (50 * arg1 / 1000)
    if sub_cb23406f < 500000:
        return (75 * arg1 / 1000)
    if sub_cb23406f < 10^6:
        return (100 * arg1 / 1000)
    if sub_cb23406f < 2 * 10^6:
        return (150 * arg1 / 1000)
    if sub_cb23406f < 5 * 10^6:
        return (200 * arg1 / 1000)
    if sub_cb23406f >= 10 * 10^6:
        return (300 * arg1 / 1000)
    return (250 * arg1 / 1000)
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

function sub_8066bebe(?) {
    require members[address(arg1)].field_0
    if sub_cb23406f < 150000:
        return -members[address(arg1)].field_512
    if sub_cb23406f < 250000:
        return ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512)
    if sub_cb23406f < 500000:
        return ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512)
    if sub_cb23406f < 10^6:
        return ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512)
    if sub_cb23406f < 2 * 10^6:
        return ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512)
    if sub_cb23406f < 5 * 10^6:
        return ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512)
    if sub_cb23406f >= 10 * 10^6:
        return ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512)
    return ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512)
}

function sub_0d59c602(?) {
    require members[address(arg1)].field_0
    if sub_cb23406f >= 10 * 10^6:
        return ((175 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024)
    if sub_cb23406f >= 5 * 10^6:
        return ((150 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024)
    if sub_cb23406f >= 2 * 10^6:
        return ((140 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024)
    if sub_cb23406f >= 10^6:
        return ((130 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024)
    if sub_cb23406f >= 500000:
        return ((125 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024)
    if sub_cb23406f >= 250000:
        return ((120 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024)
    if sub_cb23406f >= 150000:
        return ((115 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024)
    if sub_cb23406f < 50000:
        return ((100 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024)
    return ((110 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024)
}

function refundTokens(address arg1) {
    require members[address(arg1)].field_0
    require members[address(arg1)].field_0
    if sub_cb23406f >= 10 * 10^6:
        if not (175 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
            return 0
        members[address(arg1)].field_1024 = 175 * members[address(arg1)].field_768 / 100 / 10
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), (175 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
        require ext_call.success
        require ext_call.return_data[0]
        emit TokensRefunded(((175 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
    else:
        if sub_cb23406f >= 5 * 10^6:
            if not (150 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                return 0
            members[address(arg1)].field_1024 = 150 * members[address(arg1)].field_768 / 100 / 10
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), (150 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
            require ext_call.success
            require ext_call.return_data[0]
            emit TokensRefunded(((150 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
        else:
            if sub_cb23406f >= 2 * 10^6:
                if not (140 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                    return 0
                members[address(arg1)].field_1024 = 140 * members[address(arg1)].field_768 / 100 / 10
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (140 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                require ext_call.success
                require ext_call.return_data[0]
                emit TokensRefunded(((140 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
            else:
                if sub_cb23406f >= 10^6:
                    if not (130 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                        return 0
                    members[address(arg1)].field_1024 = 130 * members[address(arg1)].field_768 / 100 / 10
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), (130 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokensRefunded(((130 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                else:
                    if sub_cb23406f >= 500000:
                        if not (125 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                            return 0
                        members[address(arg1)].field_1024 = 125 * members[address(arg1)].field_768 / 100 / 10
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), (125 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokensRefunded(((125 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                    else:
                        if sub_cb23406f >= 250000:
                            if not (120 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                                return 0
                            members[address(arg1)].field_1024 = 120 * members[address(arg1)].field_768 / 100 / 10
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), (120 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokensRefunded(((120 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                        else:
                            if sub_cb23406f >= 150000:
                                if not (115 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                                    return 0
                                members[address(arg1)].field_1024 = 115 * members[address(arg1)].field_768 / 100 / 10
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), (115 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokensRefunded(((115 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                            else:
                                if sub_cb23406f < 50000:
                                    if not (100 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                                        return 0
                                    members[address(arg1)].field_1024 = 100 * members[address(arg1)].field_768 / 100 / 10
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), (100 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit TokensRefunded(((100 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                                else:
                                    if not (110 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                                        return 0
                                    members[address(arg1)].field_1024 = 110 * members[address(arg1)].field_768 / 100 / 10
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), (110 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit TokensRefunded(((110 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
    return 1
}

function sub_f0419d10(?) {
    require members[address(arg1)].field_0
    require members[address(arg1)].field_0
    if sub_cb23406f < 150000:
        if not -members[address(arg1)].field_512:
            return 0
        if not eth.balance(this.address):
            return 0
        members[address(arg1)].field_512 = 0
        if sub_1090f78dAddress != arg1:
            call arg1 with:
               value -members[address(arg1)].field_512 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
            return 1
        if ext_code.size(sub_1090f78dAddress):
            call sub_1090f78dAddress.0xc7a49b8b with:
               value -members[address(arg1)].field_512 wei
                 gas gas_remaining - 9710 wei
            if ext_call.success:
                return 1
    else:
        if sub_cb23406f < 250000:
            if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                return 0
            if not eth.balance(this.address):
                return 0
            members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
            if sub_1090f78dAddress != arg1:
                call arg1 with:
                   value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                return 1
            if ext_code.size(sub_1090f78dAddress):
                call sub_1090f78dAddress.0xc7a49b8b with:
                   value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                     gas gas_remaining - 9710 wei
                if ext_call.success:
                    return 1
        else:
            if sub_cb23406f < 500000:
                if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                    return 0
                if not eth.balance(this.address):
                    return 0
                members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                if sub_1090f78dAddress != arg1:
                    call arg1 with:
                       value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                    return 1
                if ext_code.size(sub_1090f78dAddress):
                    call sub_1090f78dAddress.0xc7a49b8b with:
                       value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                         gas gas_remaining - 9710 wei
                    if ext_call.success:
                        return 1
            else:
                if sub_cb23406f < 10^6:
                    if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                        return 0
                    if not eth.balance(this.address):
                        return 0
                    members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                    if sub_1090f78dAddress != arg1:
                        call arg1 with:
                           value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                        return 1
                    if ext_code.size(sub_1090f78dAddress):
                        call sub_1090f78dAddress.0xc7a49b8b with:
                           value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                             gas gas_remaining - 9710 wei
                        if ext_call.success:
                            return 1
                else:
                    if sub_cb23406f < 2 * 10^6:
                        if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                            return 0
                        if not eth.balance(this.address):
                            return 0
                        members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                        if sub_1090f78dAddress != arg1:
                            call arg1 with:
                               value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                            return 1
                        if ext_code.size(sub_1090f78dAddress):
                            call sub_1090f78dAddress.0xc7a49b8b with:
                               value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                 gas gas_remaining - 9710 wei
                            if ext_call.success:
                                return 1
                    else:
                        if sub_cb23406f < 5 * 10^6:
                            if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                return 0
                            if not eth.balance(this.address):
                                return 0
                            members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                            if sub_1090f78dAddress != arg1:
                                call arg1 with:
                                   value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                return 1
                            if ext_code.size(sub_1090f78dAddress):
                                call sub_1090f78dAddress.0xc7a49b8b with:
                                   value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                     gas gas_remaining - 9710 wei
                                if ext_call.success:
                                    return 1
                        else:
                            if sub_cb23406f >= 10 * 10^6:
                                if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                    return 0
                                if not eth.balance(this.address):
                                    return 0
                                members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                if sub_1090f78dAddress != arg1:
                                    call arg1 with:
                                       value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                    return 0
                                if not eth.balance(this.address):
                                    return 0
                                members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                if sub_1090f78dAddress != arg1:
                                    call arg1 with:
                                       value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
    revert
}

function sub_3fe6ea3f(?) payable {
    require not stor7
    require members[address(arg1)].field_0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    stor7 = 1
    require ext_code.size(sub_1090f78dAddress)
    call sub_1090f78dAddress.0xe8b5e51f with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    if stor7:
        stor7 = 0
        sub_cb23406f += ext_call.return_data[0]
        members[address(arg1)].field_256 += msg.value
        members[address(arg1)].field_768 += ext_call.return_data[32]
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] < ext_call.return_data[0]:
            require members[address(arg1)].field_0
            require members[address(arg1)].field_0
            if sub_cb23406f >= 10 * 10^6:
                if (175 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                    members[address(arg1)].field_1024 = 175 * members[address(arg1)].field_768 / 100 / 10
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), (175 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokensRefunded(((175 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
            else:
                if sub_cb23406f >= 5 * 10^6:
                    if (150 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                        members[address(arg1)].field_1024 = 150 * members[address(arg1)].field_768 / 100 / 10
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), (150 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokensRefunded(((150 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                else:
                    if sub_cb23406f >= 2 * 10^6:
                        if (140 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                            members[address(arg1)].field_1024 = 140 * members[address(arg1)].field_768 / 100 / 10
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), (140 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokensRefunded(((140 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                    else:
                        if sub_cb23406f >= 10^6:
                            if (130 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                                members[address(arg1)].field_1024 = 130 * members[address(arg1)].field_768 / 100 / 10
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), (130 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokensRefunded(((130 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                        else:
                            if sub_cb23406f >= 500000:
                                if (125 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                                    members[address(arg1)].field_1024 = 125 * members[address(arg1)].field_768 / 100 / 10
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), (125 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit TokensRefunded(((125 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                            else:
                                if sub_cb23406f >= 250000:
                                    if (120 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                                        members[address(arg1)].field_1024 = 120 * members[address(arg1)].field_768 / 100 / 10
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), (120 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        emit TokensRefunded(((120 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                                else:
                                    if sub_cb23406f >= 150000:
                                        if (115 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                                            members[address(arg1)].field_1024 = 115 * members[address(arg1)].field_768 / 100 / 10
                                            require ext_code.size(tokenContractAddress)
                                            call tokenContractAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), (115 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            emit TokensRefunded(((115 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                                    else:
                                        if sub_cb23406f < 50000:
                                            if (100 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                                                members[address(arg1)].field_1024 = 100 * members[address(arg1)].field_768 / 100 / 10
                                                require ext_code.size(tokenContractAddress)
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), (100 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                emit TokensRefunded(((100 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                                        else:
                                            if (110 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                                                members[address(arg1)].field_1024 = 110 * members[address(arg1)].field_768 / 100 / 10
                                                require ext_code.size(tokenContractAddress)
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), (110 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                emit TokensRefunded(((110 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
        return 1
    sub_cb23406f += ext_call.return_data[0]
    members[address(arg1)].field_256 += msg.value
    members[address(arg1)].field_768 += ext_call.return_data[32]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require members[address(arg1)].field_0
    require members[address(arg1)].field_0
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        if sub_cb23406f < 150000:
            if not -members[address(arg1)].field_512:
                return 1
            if not eth.balance(this.address):
                return 1
            members[address(arg1)].field_512 = 0
            if sub_1090f78dAddress != arg1:
                call arg1 with:
                   value -members[address(arg1)].field_512 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                return 1
            if ext_code.size(sub_1090f78dAddress):
                call sub_1090f78dAddress.0xc7a49b8b with:
                   value -members[address(arg1)].field_512 wei
                     gas gas_remaining - 9710 wei
                if ext_call.success:
                    return 1
        else:
            if sub_cb23406f < 250000:
                if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                    return 1
                if not eth.balance(this.address):
                    return 1
                members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                if sub_1090f78dAddress != arg1:
                    call arg1 with:
                       value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                    return 1
                if ext_code.size(sub_1090f78dAddress):
                    call sub_1090f78dAddress.0xc7a49b8b with:
                       value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                         gas gas_remaining - 9710 wei
                    if ext_call.success:
                        return 1
            else:
                if sub_cb23406f < 500000:
                    if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                        return 1
                    if not eth.balance(this.address):
                        return 1
                    members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                    if sub_1090f78dAddress != arg1:
                        call arg1 with:
                           value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                        return 1
                    if ext_code.size(sub_1090f78dAddress):
                        call sub_1090f78dAddress.0xc7a49b8b with:
                           value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                             gas gas_remaining - 9710 wei
                        if ext_call.success:
                            return 1
                else:
                    if sub_cb23406f < 10^6:
                        if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                            return 1
                        if not eth.balance(this.address):
                            return 1
                        members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                        if sub_1090f78dAddress != arg1:
                            call arg1 with:
                               value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                            return 1
                        if ext_code.size(sub_1090f78dAddress):
                            call sub_1090f78dAddress.0xc7a49b8b with:
                               value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                 gas gas_remaining - 9710 wei
                            if ext_call.success:
                                return 1
                    else:
                        if sub_cb23406f < 2 * 10^6:
                            if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                return 1
                            if not eth.balance(this.address):
                                return 1
                            members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                            if sub_1090f78dAddress != arg1:
                                call arg1 with:
                                   value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                return 1
                            if ext_code.size(sub_1090f78dAddress):
                                call sub_1090f78dAddress.0xc7a49b8b with:
                                   value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                     gas gas_remaining - 9710 wei
                                if ext_call.success:
                                    return 1
                        else:
                            if sub_cb23406f < 5 * 10^6:
                                if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                    return 1
                                if not eth.balance(this.address):
                                    return 1
                                members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                if sub_1090f78dAddress != arg1:
                                    call arg1 with:
                                       value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if sub_cb23406f >= 10 * 10^6:
                                    if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                    if sub_1090f78dAddress != arg1:
                                        call arg1 with:
                                           value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                    if sub_1090f78dAddress != arg1:
                                        call arg1 with:
                                           value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
    else:
        if sub_cb23406f >= 10 * 10^6:
            if not (175 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                require members[address(arg1)].field_0
                require members[address(arg1)].field_0
                if sub_cb23406f < 150000:
                    if not -members[address(arg1)].field_512:
                        return 1
                    if not eth.balance(this.address):
                        return 1
                    members[address(arg1)].field_512 = 0
                    if sub_1090f78dAddress != arg1:
                        call arg1 with:
                           value -members[address(arg1)].field_512 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                        return 1
                    if ext_code.size(sub_1090f78dAddress):
                        call sub_1090f78dAddress.0xc7a49b8b with:
                           value -members[address(arg1)].field_512 wei
                             gas gas_remaining - 9710 wei
                        if ext_call.success:
                            return 1
                else:
                    if sub_cb23406f < 250000:
                        if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                            return 1
                        if not eth.balance(this.address):
                            return 1
                        members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                        if sub_1090f78dAddress != arg1:
                            call arg1 with:
                               value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                            return 1
                        if ext_code.size(sub_1090f78dAddress):
                            call sub_1090f78dAddress.0xc7a49b8b with:
                               value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                 gas gas_remaining - 9710 wei
                            if ext_call.success:
                                return 1
                    else:
                        if sub_cb23406f < 500000:
                            if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                return 1
                            if not eth.balance(this.address):
                                return 1
                            members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                            if sub_1090f78dAddress != arg1:
                                call arg1 with:
                                   value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                return 1
                            if ext_code.size(sub_1090f78dAddress):
                                call sub_1090f78dAddress.0xc7a49b8b with:
                                   value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                     gas gas_remaining - 9710 wei
                                if ext_call.success:
                                    return 1
                        else:
                            if sub_cb23406f < 10^6:
                                if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                    return 1
                                if not eth.balance(this.address):
                                    return 1
                                members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                if sub_1090f78dAddress != arg1:
                                    call arg1 with:
                                       value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if sub_cb23406f < 2 * 10^6:
                                    if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                    if sub_1090f78dAddress != arg1:
                                        call arg1 with:
                                           value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 5 * 10^6:
                                        if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                        if sub_1090f78dAddress != arg1:
                                            call arg1 with:
                                               value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f >= 10 * 10^6:
                                            if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                            if sub_1090f78dAddress != arg1:
                                                call arg1 with:
                                                   value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                            if sub_1090f78dAddress != arg1:
                                                call arg1 with:
                                                   value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
            else:
                members[address(arg1)].field_1024 = 175 * members[address(arg1)].field_768 / 100 / 10
                if ext_code.size(tokenContractAddress):
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), (175 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                    if ext_call.success:
                        require ext_call.return_data[0]
                        emit TokensRefunded(((175 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                        require members[address(arg1)].field_0
                        require members[address(arg1)].field_0
                        if sub_cb23406f < 150000:
                            if not -members[address(arg1)].field_512:
                                return 1
                            if not eth.balance(this.address):
                                return 1
                            members[address(arg1)].field_512 = 0
                            if sub_1090f78dAddress != arg1:
                                call arg1 with:
                                   value -members[address(arg1)].field_512 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                return 1
                            if ext_code.size(sub_1090f78dAddress):
                                call sub_1090f78dAddress.0xc7a49b8b with:
                                   value -members[address(arg1)].field_512 wei
                                     gas gas_remaining - 9710 wei
                                if ext_call.success:
                                    return 1
                        else:
                            if sub_cb23406f < 250000:
                                if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                    return 1
                                if not eth.balance(this.address):
                                    return 1
                                members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                if sub_1090f78dAddress != arg1:
                                    call arg1 with:
                                       value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if sub_cb23406f < 500000:
                                    if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                    if sub_1090f78dAddress != arg1:
                                        call arg1 with:
                                           value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 10^6:
                                        if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                        if sub_1090f78dAddress != arg1:
                                            call arg1 with:
                                               value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 2 * 10^6:
                                            if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                            if sub_1090f78dAddress != arg1:
                                                call arg1 with:
                                                   value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 5 * 10^6:
                                                if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                if sub_1090f78dAddress != arg1:
                                                    call arg1 with:
                                                       value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f >= 10 * 10^6:
                                                    if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
        else:
            if sub_cb23406f >= 5 * 10^6:
                if not (150 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                    require members[address(arg1)].field_0
                    require members[address(arg1)].field_0
                    if sub_cb23406f < 150000:
                        if not -members[address(arg1)].field_512:
                            return 1
                        if not eth.balance(this.address):
                            return 1
                        members[address(arg1)].field_512 = 0
                        if sub_1090f78dAddress != arg1:
                            call arg1 with:
                               value -members[address(arg1)].field_512 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                            return 1
                        if ext_code.size(sub_1090f78dAddress):
                            call sub_1090f78dAddress.0xc7a49b8b with:
                               value -members[address(arg1)].field_512 wei
                                 gas gas_remaining - 9710 wei
                            if ext_call.success:
                                return 1
                    else:
                        if sub_cb23406f < 250000:
                            if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                return 1
                            if not eth.balance(this.address):
                                return 1
                            members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                            if sub_1090f78dAddress != arg1:
                                call arg1 with:
                                   value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                return 1
                            if ext_code.size(sub_1090f78dAddress):
                                call sub_1090f78dAddress.0xc7a49b8b with:
                                   value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                     gas gas_remaining - 9710 wei
                                if ext_call.success:
                                    return 1
                        else:
                            if sub_cb23406f < 500000:
                                if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                    return 1
                                if not eth.balance(this.address):
                                    return 1
                                members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                if sub_1090f78dAddress != arg1:
                                    call arg1 with:
                                       value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if sub_cb23406f < 10^6:
                                    if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                    if sub_1090f78dAddress != arg1:
                                        call arg1 with:
                                           value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 2 * 10^6:
                                        if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                        if sub_1090f78dAddress != arg1:
                                            call arg1 with:
                                               value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 5 * 10^6:
                                            if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                            if sub_1090f78dAddress != arg1:
                                                call arg1 with:
                                                   value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f >= 10 * 10^6:
                                                if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                if sub_1090f78dAddress != arg1:
                                                    call arg1 with:
                                                       value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                if sub_1090f78dAddress != arg1:
                                                    call arg1 with:
                                                       value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                else:
                    members[address(arg1)].field_1024 = 150 * members[address(arg1)].field_768 / 100 / 10
                    if ext_code.size(tokenContractAddress):
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), (150 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                        if ext_call.success:
                            require ext_call.return_data[0]
                            emit TokensRefunded(((150 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                            require members[address(arg1)].field_0
                            require members[address(arg1)].field_0
                            if sub_cb23406f < 150000:
                                if not -members[address(arg1)].field_512:
                                    return 1
                                if not eth.balance(this.address):
                                    return 1
                                members[address(arg1)].field_512 = 0
                                if sub_1090f78dAddress != arg1:
                                    call arg1 with:
                                       value -members[address(arg1)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value -members[address(arg1)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if sub_cb23406f < 250000:
                                    if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                    if sub_1090f78dAddress != arg1:
                                        call arg1 with:
                                           value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 500000:
                                        if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                        if sub_1090f78dAddress != arg1:
                                            call arg1 with:
                                               value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 10^6:
                                            if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                            if sub_1090f78dAddress != arg1:
                                                call arg1 with:
                                                   value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 2 * 10^6:
                                                if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                                if sub_1090f78dAddress != arg1:
                                                    call arg1 with:
                                                       value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 5 * 10^6:
                                                    if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f >= 10 * 10^6:
                                                        if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
            else:
                if sub_cb23406f >= 2 * 10^6:
                    if not (140 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                        require members[address(arg1)].field_0
                        require members[address(arg1)].field_0
                        if sub_cb23406f < 150000:
                            if not -members[address(arg1)].field_512:
                                return 1
                            if not eth.balance(this.address):
                                return 1
                            members[address(arg1)].field_512 = 0
                            if sub_1090f78dAddress != arg1:
                                call arg1 with:
                                   value -members[address(arg1)].field_512 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                return 1
                            if ext_code.size(sub_1090f78dAddress):
                                call sub_1090f78dAddress.0xc7a49b8b with:
                                   value -members[address(arg1)].field_512 wei
                                     gas gas_remaining - 9710 wei
                                if ext_call.success:
                                    return 1
                        else:
                            if sub_cb23406f < 250000:
                                if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                    return 1
                                if not eth.balance(this.address):
                                    return 1
                                members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                if sub_1090f78dAddress != arg1:
                                    call arg1 with:
                                       value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if sub_cb23406f < 500000:
                                    if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                    if sub_1090f78dAddress != arg1:
                                        call arg1 with:
                                           value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 10^6:
                                        if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                        if sub_1090f78dAddress != arg1:
                                            call arg1 with:
                                               value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 2 * 10^6:
                                            if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                            if sub_1090f78dAddress != arg1:
                                                call arg1 with:
                                                   value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 5 * 10^6:
                                                if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                if sub_1090f78dAddress != arg1:
                                                    call arg1 with:
                                                       value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f >= 10 * 10^6:
                                                    if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                    else:
                        members[address(arg1)].field_1024 = 140 * members[address(arg1)].field_768 / 100 / 10
                        if ext_code.size(tokenContractAddress):
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), (140 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                            if ext_call.success:
                                require ext_call.return_data[0]
                                emit TokensRefunded(((140 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                                require members[address(arg1)].field_0
                                require members[address(arg1)].field_0
                                if sub_cb23406f < 150000:
                                    if not -members[address(arg1)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(arg1)].field_512 = 0
                                    if sub_1090f78dAddress != arg1:
                                        call arg1 with:
                                           value -members[address(arg1)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value -members[address(arg1)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 250000:
                                        if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                        if sub_1090f78dAddress != arg1:
                                            call arg1 with:
                                               value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 500000:
                                            if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                            if sub_1090f78dAddress != arg1:
                                                call arg1 with:
                                                   value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 10^6:
                                                if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                                if sub_1090f78dAddress != arg1:
                                                    call arg1 with:
                                                       value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 2 * 10^6:
                                                    if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 5 * 10^6:
                                                        if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f >= 10 * 10^6:
                                                            if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                            if sub_1090f78dAddress != arg1:
                                                                call arg1 with:
                                                                   value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                            if sub_1090f78dAddress != arg1:
                                                                call arg1 with:
                                                                   value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                else:
                    if sub_cb23406f >= 10^6:
                        if not (130 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                            require members[address(arg1)].field_0
                            require members[address(arg1)].field_0
                            if sub_cb23406f < 150000:
                                if not -members[address(arg1)].field_512:
                                    return 1
                                if not eth.balance(this.address):
                                    return 1
                                members[address(arg1)].field_512 = 0
                                if sub_1090f78dAddress != arg1:
                                    call arg1 with:
                                       value -members[address(arg1)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value -members[address(arg1)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if sub_cb23406f < 250000:
                                    if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                    if sub_1090f78dAddress != arg1:
                                        call arg1 with:
                                           value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 500000:
                                        if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                        if sub_1090f78dAddress != arg1:
                                            call arg1 with:
                                               value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 10^6:
                                            if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                            if sub_1090f78dAddress != arg1:
                                                call arg1 with:
                                                   value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 2 * 10^6:
                                                if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                                if sub_1090f78dAddress != arg1:
                                                    call arg1 with:
                                                       value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 5 * 10^6:
                                                    if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f >= 10 * 10^6:
                                                        if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                        else:
                            members[address(arg1)].field_1024 = 130 * members[address(arg1)].field_768 / 100 / 10
                            if ext_code.size(tokenContractAddress):
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), (130 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                                if ext_call.success:
                                    require ext_call.return_data[0]
                                    emit TokensRefunded(((130 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                                    require members[address(arg1)].field_0
                                    require members[address(arg1)].field_0
                                    if sub_cb23406f < 150000:
                                        if not -members[address(arg1)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(arg1)].field_512 = 0
                                        if sub_1090f78dAddress != arg1:
                                            call arg1 with:
                                               value -members[address(arg1)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value -members[address(arg1)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 250000:
                                            if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                            if sub_1090f78dAddress != arg1:
                                                call arg1 with:
                                                   value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 500000:
                                                if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                                if sub_1090f78dAddress != arg1:
                                                    call arg1 with:
                                                       value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 10^6:
                                                    if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 2 * 10^6:
                                                        if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 5 * 10^6:
                                                            if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                            if sub_1090f78dAddress != arg1:
                                                                call arg1 with:
                                                                   value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f >= 10 * 10^6:
                                                                if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                                if sub_1090f78dAddress != arg1:
                                                                    call arg1 with:
                                                                       value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                                if sub_1090f78dAddress != arg1:
                                                                    call arg1 with:
                                                                       value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                    else:
                        if sub_cb23406f >= 500000:
                            if not (125 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                                require members[address(arg1)].field_0
                                require members[address(arg1)].field_0
                                if sub_cb23406f < 150000:
                                    if not -members[address(arg1)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(arg1)].field_512 = 0
                                    if sub_1090f78dAddress != arg1:
                                        call arg1 with:
                                           value -members[address(arg1)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value -members[address(arg1)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 250000:
                                        if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                        if sub_1090f78dAddress != arg1:
                                            call arg1 with:
                                               value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 500000:
                                            if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                            if sub_1090f78dAddress != arg1:
                                                call arg1 with:
                                                   value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 10^6:
                                                if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                                if sub_1090f78dAddress != arg1:
                                                    call arg1 with:
                                                       value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 2 * 10^6:
                                                    if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 5 * 10^6:
                                                        if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f >= 10 * 10^6:
                                                            if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                            if sub_1090f78dAddress != arg1:
                                                                call arg1 with:
                                                                   value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                            if sub_1090f78dAddress != arg1:
                                                                call arg1 with:
                                                                   value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                            else:
                                members[address(arg1)].field_1024 = 125 * members[address(arg1)].field_768 / 100 / 10
                                if ext_code.size(tokenContractAddress):
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), (125 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                                    if ext_call.success:
                                        require ext_call.return_data[0]
                                        emit TokensRefunded(((125 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                                        require members[address(arg1)].field_0
                                        require members[address(arg1)].field_0
                                        if sub_cb23406f < 150000:
                                            if not -members[address(arg1)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(arg1)].field_512 = 0
                                            if sub_1090f78dAddress != arg1:
                                                call arg1 with:
                                                   value -members[address(arg1)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value -members[address(arg1)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 250000:
                                                if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                                if sub_1090f78dAddress != arg1:
                                                    call arg1 with:
                                                       value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 500000:
                                                    if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 10^6:
                                                        if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 2 * 10^6:
                                                            if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                                            if sub_1090f78dAddress != arg1:
                                                                call arg1 with:
                                                                   value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 5 * 10^6:
                                                                if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                                if sub_1090f78dAddress != arg1:
                                                                    call arg1 with:
                                                                       value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f >= 10 * 10^6:
                                                                    if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                                    if sub_1090f78dAddress != arg1:
                                                                        call arg1 with:
                                                                           value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                                    if sub_1090f78dAddress != arg1:
                                                                        call arg1 with:
                                                                           value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                        else:
                            if sub_cb23406f >= 250000:
                                if not (120 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                                    require members[address(arg1)].field_0
                                    require members[address(arg1)].field_0
                                    if sub_cb23406f < 150000:
                                        if not -members[address(arg1)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(arg1)].field_512 = 0
                                        if sub_1090f78dAddress != arg1:
                                            call arg1 with:
                                               value -members[address(arg1)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value -members[address(arg1)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 250000:
                                            if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                            if sub_1090f78dAddress != arg1:
                                                call arg1 with:
                                                   value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 500000:
                                                if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                                if sub_1090f78dAddress != arg1:
                                                    call arg1 with:
                                                       value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 10^6:
                                                    if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 2 * 10^6:
                                                        if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 5 * 10^6:
                                                            if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                            if sub_1090f78dAddress != arg1:
                                                                call arg1 with:
                                                                   value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f >= 10 * 10^6:
                                                                if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                                if sub_1090f78dAddress != arg1:
                                                                    call arg1 with:
                                                                       value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                                if sub_1090f78dAddress != arg1:
                                                                    call arg1 with:
                                                                       value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                else:
                                    members[address(arg1)].field_1024 = 120 * members[address(arg1)].field_768 / 100 / 10
                                    if ext_code.size(tokenContractAddress):
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), (120 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                                        if ext_call.success:
                                            require ext_call.return_data[0]
                                            emit TokensRefunded(((120 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                                            require members[address(arg1)].field_0
                                            require members[address(arg1)].field_0
                                            if sub_cb23406f < 150000:
                                                if not -members[address(arg1)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(arg1)].field_512 = 0
                                                if sub_1090f78dAddress != arg1:
                                                    call arg1 with:
                                                       value -members[address(arg1)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value -members[address(arg1)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 250000:
                                                    if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 500000:
                                                        if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 10^6:
                                                            if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                                            if sub_1090f78dAddress != arg1:
                                                                call arg1 with:
                                                                   value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 2 * 10^6:
                                                                if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                                                if sub_1090f78dAddress != arg1:
                                                                    call arg1 with:
                                                                       value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f < 5 * 10^6:
                                                                    if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                                    if sub_1090f78dAddress != arg1:
                                                                        call arg1 with:
                                                                           value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if sub_cb23406f >= 10 * 10^6:
                                                                        if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                                        if sub_1090f78dAddress != arg1:
                                                                            call arg1 with:
                                                                               value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                                                    else:
                                                                        if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                                        if sub_1090f78dAddress != arg1:
                                                                            call arg1 with:
                                                                               value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                            else:
                                if sub_cb23406f >= 150000:
                                    if not (115 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                                        require members[address(arg1)].field_0
                                        require members[address(arg1)].field_0
                                        if sub_cb23406f < 150000:
                                            if not -members[address(arg1)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(arg1)].field_512 = 0
                                            if sub_1090f78dAddress != arg1:
                                                call arg1 with:
                                                   value -members[address(arg1)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value -members[address(arg1)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 250000:
                                                if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                                if sub_1090f78dAddress != arg1:
                                                    call arg1 with:
                                                       value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 500000:
                                                    if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 10^6:
                                                        if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 2 * 10^6:
                                                            if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                                            if sub_1090f78dAddress != arg1:
                                                                call arg1 with:
                                                                   value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 5 * 10^6:
                                                                if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                                if sub_1090f78dAddress != arg1:
                                                                    call arg1 with:
                                                                       value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f >= 10 * 10^6:
                                                                    if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                                    if sub_1090f78dAddress != arg1:
                                                                        call arg1 with:
                                                                           value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                                    if sub_1090f78dAddress != arg1:
                                                                        call arg1 with:
                                                                           value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                    else:
                                        members[address(arg1)].field_1024 = 115 * members[address(arg1)].field_768 / 100 / 10
                                        if ext_code.size(tokenContractAddress):
                                            call tokenContractAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), (115 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                                            if ext_call.success:
                                                require ext_call.return_data[0]
                                                emit TokensRefunded(((115 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                                                require members[address(arg1)].field_0
                                                require members[address(arg1)].field_0
                                                if sub_cb23406f < 150000:
                                                    if not -members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 0
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value -members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value -members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 250000:
                                                        if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 500000:
                                                            if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                                            if sub_1090f78dAddress != arg1:
                                                                call arg1 with:
                                                                   value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 10^6:
                                                                if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                                                if sub_1090f78dAddress != arg1:
                                                                    call arg1 with:
                                                                       value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f < 2 * 10^6:
                                                                    if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                                                    if sub_1090f78dAddress != arg1:
                                                                        call arg1 with:
                                                                           value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if sub_cb23406f < 5 * 10^6:
                                                                        if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                                        if sub_1090f78dAddress != arg1:
                                                                            call arg1 with:
                                                                               value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                                                    else:
                                                                        if sub_cb23406f >= 10 * 10^6:
                                                                            if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                                return 1
                                                                            if not eth.balance(this.address):
                                                                                return 1
                                                                            members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                                            if sub_1090f78dAddress != arg1:
                                                                                call arg1 with:
                                                                                   value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
                                                                                emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                                return 1
                                                                            if ext_code.size(sub_1090f78dAddress):
                                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                   value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                     gas gas_remaining - 9710 wei
                                                                                if ext_call.success:
                                                                                    return 1
                                                                        else:
                                                                            if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                                return 1
                                                                            if not eth.balance(this.address):
                                                                                return 1
                                                                            members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                                            if sub_1090f78dAddress != arg1:
                                                                                call arg1 with:
                                                                                   value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
                                                                                emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                                return 1
                                                                            if ext_code.size(sub_1090f78dAddress):
                                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                   value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                     gas gas_remaining - 9710 wei
                                                                                if ext_call.success:
                                                                                    return 1
                                else:
                                    if sub_cb23406f < 50000:
                                        if not (100 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                                            require members[address(arg1)].field_0
                                            require members[address(arg1)].field_0
                                            if sub_cb23406f < 150000:
                                                if not -members[address(arg1)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(arg1)].field_512 = 0
                                                if sub_1090f78dAddress != arg1:
                                                    call arg1 with:
                                                       value -members[address(arg1)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value -members[address(arg1)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 250000:
                                                    if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 500000:
                                                        if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 10^6:
                                                            if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                                            if sub_1090f78dAddress != arg1:
                                                                call arg1 with:
                                                                   value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 2 * 10^6:
                                                                if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                                                if sub_1090f78dAddress != arg1:
                                                                    call arg1 with:
                                                                       value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f < 5 * 10^6:
                                                                    if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                                    if sub_1090f78dAddress != arg1:
                                                                        call arg1 with:
                                                                           value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if sub_cb23406f >= 10 * 10^6:
                                                                        if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                                        if sub_1090f78dAddress != arg1:
                                                                            call arg1 with:
                                                                               value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                                                    else:
                                                                        if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                                        if sub_1090f78dAddress != arg1:
                                                                            call arg1 with:
                                                                               value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                        else:
                                            members[address(arg1)].field_1024 = 100 * members[address(arg1)].field_768 / 100 / 10
                                            if ext_code.size(tokenContractAddress):
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), (100 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                                                if ext_call.success:
                                                    require ext_call.return_data[0]
                                                    emit TokensRefunded(((100 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                                                    require members[address(arg1)].field_0
                                                    require members[address(arg1)].field_0
                                                    if sub_cb23406f < 150000:
                                                        if not -members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 0
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value -members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value -members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 250000:
                                                            if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                                            if sub_1090f78dAddress != arg1:
                                                                call arg1 with:
                                                                   value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 500000:
                                                                if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                                                if sub_1090f78dAddress != arg1:
                                                                    call arg1 with:
                                                                       value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f < 10^6:
                                                                    if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                                                    if sub_1090f78dAddress != arg1:
                                                                        call arg1 with:
                                                                           value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if sub_cb23406f < 2 * 10^6:
                                                                        if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                                                        if sub_1090f78dAddress != arg1:
                                                                            call arg1 with:
                                                                               value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                                                    else:
                                                                        if sub_cb23406f < 5 * 10^6:
                                                                            if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                                return 1
                                                                            if not eth.balance(this.address):
                                                                                return 1
                                                                            members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                                            if sub_1090f78dAddress != arg1:
                                                                                call arg1 with:
                                                                                   value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
                                                                                emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                                return 1
                                                                            if ext_code.size(sub_1090f78dAddress):
                                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                   value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                     gas gas_remaining - 9710 wei
                                                                                if ext_call.success:
                                                                                    return 1
                                                                        else:
                                                                            if sub_cb23406f >= 10 * 10^6:
                                                                                if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                                    return 1
                                                                                if not eth.balance(this.address):
                                                                                    return 1
                                                                                members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                                                if sub_1090f78dAddress != arg1:
                                                                                    call arg1 with:
                                                                                       value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    require ext_call.success
                                                                                    emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                                    return 1
                                                                                if ext_code.size(sub_1090f78dAddress):
                                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                       value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                         gas gas_remaining - 9710 wei
                                                                                    if ext_call.success:
                                                                                        return 1
                                                                            else:
                                                                                if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                                    return 1
                                                                                if not eth.balance(this.address):
                                                                                    return 1
                                                                                members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                                                if sub_1090f78dAddress != arg1:
                                                                                    call arg1 with:
                                                                                       value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    require ext_call.success
                                                                                    emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                                    return 1
                                                                                if ext_code.size(sub_1090f78dAddress):
                                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                       value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                         gas gas_remaining - 9710 wei
                                                                                    if ext_call.success:
                                                                                        return 1
                                    else:
                                        if not (110 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024:
                                            require members[address(arg1)].field_0
                                            require members[address(arg1)].field_0
                                            if sub_cb23406f < 150000:
                                                if not -members[address(arg1)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(arg1)].field_512 = 0
                                                if sub_1090f78dAddress != arg1:
                                                    call arg1 with:
                                                       value -members[address(arg1)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value -members[address(arg1)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 250000:
                                                    if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                                    if sub_1090f78dAddress != arg1:
                                                        call arg1 with:
                                                           value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 500000:
                                                        if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 10^6:
                                                            if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                                            if sub_1090f78dAddress != arg1:
                                                                call arg1 with:
                                                                   value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 2 * 10^6:
                                                                if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                                                if sub_1090f78dAddress != arg1:
                                                                    call arg1 with:
                                                                       value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f < 5 * 10^6:
                                                                    if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                                    if sub_1090f78dAddress != arg1:
                                                                        call arg1 with:
                                                                           value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if sub_cb23406f >= 10 * 10^6:
                                                                        if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                                        if sub_1090f78dAddress != arg1:
                                                                            call arg1 with:
                                                                               value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                                                    else:
                                                                        if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                                        if sub_1090f78dAddress != arg1:
                                                                            call arg1 with:
                                                                               value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                        else:
                                            members[address(arg1)].field_1024 = 110 * members[address(arg1)].field_768 / 100 / 10
                                            if ext_code.size(tokenContractAddress):
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), (110 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024
                                                if ext_call.success:
                                                    require ext_call.return_data[0]
                                                    emit TokensRefunded(((110 * members[address(arg1)].field_768 / 100 / 10) - members[address(arg1)].field_1024), arg1);
                                                    require members[address(arg1)].field_0
                                                    require members[address(arg1)].field_0
                                                    if sub_cb23406f < 150000:
                                                        if not -members[address(arg1)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(arg1)].field_512 = 0
                                                        if sub_1090f78dAddress != arg1:
                                                            call arg1 with:
                                                               value -members[address(arg1)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: -members[address(arg1)].field_512, arg1
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value -members[address(arg1)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 250000:
                                                            if not (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(arg1)].field_512 = 50 * members[address(arg1)].field_256 / 1000
                                                            if sub_1090f78dAddress != arg1:
                                                                call arg1 with:
                                                                   value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (50 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 500000:
                                                                if not (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(arg1)].field_512 = 75 * members[address(arg1)].field_256 / 1000
                                                                if sub_1090f78dAddress != arg1:
                                                                    call arg1 with:
                                                                       value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (75 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f < 10^6:
                                                                    if not (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(arg1)].field_512 = 100 * members[address(arg1)].field_256 / 1000
                                                                    if sub_1090f78dAddress != arg1:
                                                                        call arg1 with:
                                                                           value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (100 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if sub_cb23406f < 2 * 10^6:
                                                                        if not (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(arg1)].field_512 = 150 * members[address(arg1)].field_256 / 1000
                                                                        if sub_1090f78dAddress != arg1:
                                                                            call arg1 with:
                                                                               value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (150 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                                                    else:
                                                                        if sub_cb23406f < 5 * 10^6:
                                                                            if not (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                                return 1
                                                                            if not eth.balance(this.address):
                                                                                return 1
                                                                            members[address(arg1)].field_512 = 200 * members[address(arg1)].field_256 / 1000
                                                                            if sub_1090f78dAddress != arg1:
                                                                                call arg1 with:
                                                                                   value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
                                                                                emit 0xcdaa3a5d: ((200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                                return 1
                                                                            if ext_code.size(sub_1090f78dAddress):
                                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                   value (200 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                     gas gas_remaining - 9710 wei
                                                                                if ext_call.success:
                                                                                    return 1
                                                                        else:
                                                                            if sub_cb23406f >= 10 * 10^6:
                                                                                if not (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                                    return 1
                                                                                if not eth.balance(this.address):
                                                                                    return 1
                                                                                members[address(arg1)].field_512 = 300 * members[address(arg1)].field_256 / 1000
                                                                                if sub_1090f78dAddress != arg1:
                                                                                    call arg1 with:
                                                                                       value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    require ext_call.success
                                                                                    emit 0xcdaa3a5d: ((300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                                    return 1
                                                                                if ext_code.size(sub_1090f78dAddress):
                                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                       value (300 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                         gas gas_remaining - 9710 wei
                                                                                    if ext_call.success:
                                                                                        return 1
                                                                            else:
                                                                                if not (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512:
                                                                                    return 1
                                                                                if not eth.balance(this.address):
                                                                                    return 1
                                                                                members[address(arg1)].field_512 = 250 * members[address(arg1)].field_256 / 1000
                                                                                if sub_1090f78dAddress != arg1:
                                                                                    call arg1 with:
                                                                                       value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    require ext_call.success
                                                                                    emit 0xcdaa3a5d: ((250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512), arg1
                                                                                    return 1
                                                                                if ext_code.size(sub_1090f78dAddress):
                                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                       value (250 * members[address(arg1)].field_256 / 1000) - members[address(arg1)].field_512 wei
                                                                                         gas gas_remaining - 9710 wei
                                                                                    if ext_call.success:
                                                                                        return 1
    revert
}

function invest() payable {
    require not stor7
    require members[address(msg.sender)].field_0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    stor7 = 1
    require ext_code.size(sub_1090f78dAddress)
    call sub_1090f78dAddress.0xe8b5e51f with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    if stor7:
        stor7 = 0
        sub_cb23406f += ext_call.return_data[0]
        members[address(msg.sender)].field_256 += msg.value
        members[address(msg.sender)].field_768 += ext_call.return_data[32]
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] < ext_call.return_data[0]:
            require members[address(msg.sender)].field_0
            require members[address(msg.sender)].field_0
            if sub_cb23406f >= 10 * 10^6:
                if (175 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                    members[address(msg.sender)].field_1024 = 175 * members[address(msg.sender)].field_768 / 100 / 10
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (175 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokensRefunded(((175 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
            else:
                if sub_cb23406f >= 5 * 10^6:
                    if (150 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                        members[address(msg.sender)].field_1024 = 150 * members[address(msg.sender)].field_768 / 100 / 10
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (150 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokensRefunded(((150 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                else:
                    if sub_cb23406f >= 2 * 10^6:
                        if (140 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                            members[address(msg.sender)].field_1024 = 140 * members[address(msg.sender)].field_768 / 100 / 10
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (140 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokensRefunded(((140 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                    else:
                        if sub_cb23406f >= 10^6:
                            if (130 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                                members[address(msg.sender)].field_1024 = 130 * members[address(msg.sender)].field_768 / 100 / 10
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (130 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                                require ext_call.success
                                require ext_call.return_data[0]
                                emit TokensRefunded(((130 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                        else:
                            if sub_cb23406f >= 500000:
                                if (125 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                                    members[address(msg.sender)].field_1024 = 125 * members[address(msg.sender)].field_768 / 100 / 10
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (125 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    emit TokensRefunded(((125 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                            else:
                                if sub_cb23406f >= 250000:
                                    if (120 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                                        members[address(msg.sender)].field_1024 = 120 * members[address(msg.sender)].field_768 / 100 / 10
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (120 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        emit TokensRefunded(((120 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                                else:
                                    if sub_cb23406f >= 150000:
                                        if (115 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                                            members[address(msg.sender)].field_1024 = 115 * members[address(msg.sender)].field_768 / 100 / 10
                                            require ext_code.size(tokenContractAddress)
                                            call tokenContractAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (115 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            emit TokensRefunded(((115 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                                    else:
                                        if sub_cb23406f < 50000:
                                            if (100 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                                                members[address(msg.sender)].field_1024 = 100 * members[address(msg.sender)].field_768 / 100 / 10
                                                require ext_code.size(tokenContractAddress)
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (100 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                emit TokensRefunded(((100 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                                        else:
                                            if (110 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                                                members[address(msg.sender)].field_1024 = 110 * members[address(msg.sender)].field_768 / 100 / 10
                                                require ext_code.size(tokenContractAddress)
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (110 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                emit TokensRefunded(((110 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
        return 1
    sub_cb23406f += ext_call.return_data[0]
    members[address(msg.sender)].field_256 += msg.value
    members[address(msg.sender)].field_768 += ext_call.return_data[32]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require members[address(msg.sender)].field_0
    require members[address(msg.sender)].field_0
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        if sub_cb23406f < 150000:
            if not -members[address(msg.sender)].field_512:
                return 1
            if not eth.balance(this.address):
                return 1
            members[address(msg.sender)].field_512 = 0
            if sub_1090f78dAddress != msg.sender:
                call msg.sender with:
                   value -members[address(msg.sender)].field_512 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                return 1
            if ext_code.size(sub_1090f78dAddress):
                call sub_1090f78dAddress.0xc7a49b8b with:
                   value -members[address(msg.sender)].field_512 wei
                     gas gas_remaining - 9710 wei
                if ext_call.success:
                    return 1
        else:
            if sub_cb23406f < 250000:
                if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                    return 1
                if not eth.balance(this.address):
                    return 1
                members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                if sub_1090f78dAddress != msg.sender:
                    call msg.sender with:
                       value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                    return 1
                if ext_code.size(sub_1090f78dAddress):
                    call sub_1090f78dAddress.0xc7a49b8b with:
                       value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                         gas gas_remaining - 9710 wei
                    if ext_call.success:
                        return 1
            else:
                if sub_cb23406f < 500000:
                    if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                        return 1
                    if not eth.balance(this.address):
                        return 1
                    members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                    if sub_1090f78dAddress != msg.sender:
                        call msg.sender with:
                           value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                        return 1
                    if ext_code.size(sub_1090f78dAddress):
                        call sub_1090f78dAddress.0xc7a49b8b with:
                           value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                             gas gas_remaining - 9710 wei
                        if ext_call.success:
                            return 1
                else:
                    if sub_cb23406f < 10^6:
                        if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                            return 1
                        if not eth.balance(this.address):
                            return 1
                        members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                        if sub_1090f78dAddress != msg.sender:
                            call msg.sender with:
                               value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                            return 1
                        if ext_code.size(sub_1090f78dAddress):
                            call sub_1090f78dAddress.0xc7a49b8b with:
                               value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                 gas gas_remaining - 9710 wei
                            if ext_call.success:
                                return 1
                    else:
                        if sub_cb23406f < 2 * 10^6:
                            if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                return 1
                            if not eth.balance(this.address):
                                return 1
                            members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                            if sub_1090f78dAddress != msg.sender:
                                call msg.sender with:
                                   value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                return 1
                            if ext_code.size(sub_1090f78dAddress):
                                call sub_1090f78dAddress.0xc7a49b8b with:
                                   value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                     gas gas_remaining - 9710 wei
                                if ext_call.success:
                                    return 1
                        else:
                            if sub_cb23406f < 5 * 10^6:
                                if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                    return 1
                                if not eth.balance(this.address):
                                    return 1
                                members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                if sub_1090f78dAddress != msg.sender:
                                    call msg.sender with:
                                       value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if sub_cb23406f >= 10 * 10^6:
                                    if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                    if sub_1090f78dAddress != msg.sender:
                                        call msg.sender with:
                                           value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                    if sub_1090f78dAddress != msg.sender:
                                        call msg.sender with:
                                           value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
    else:
        if sub_cb23406f >= 10 * 10^6:
            if not (175 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                require members[address(msg.sender)].field_0
                require members[address(msg.sender)].field_0
                if sub_cb23406f < 150000:
                    if not -members[address(msg.sender)].field_512:
                        return 1
                    if not eth.balance(this.address):
                        return 1
                    members[address(msg.sender)].field_512 = 0
                    if sub_1090f78dAddress != msg.sender:
                        call msg.sender with:
                           value -members[address(msg.sender)].field_512 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                        return 1
                    if ext_code.size(sub_1090f78dAddress):
                        call sub_1090f78dAddress.0xc7a49b8b with:
                           value -members[address(msg.sender)].field_512 wei
                             gas gas_remaining - 9710 wei
                        if ext_call.success:
                            return 1
                else:
                    if sub_cb23406f < 250000:
                        if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                            return 1
                        if not eth.balance(this.address):
                            return 1
                        members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                        if sub_1090f78dAddress != msg.sender:
                            call msg.sender with:
                               value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                            return 1
                        if ext_code.size(sub_1090f78dAddress):
                            call sub_1090f78dAddress.0xc7a49b8b with:
                               value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                 gas gas_remaining - 9710 wei
                            if ext_call.success:
                                return 1
                    else:
                        if sub_cb23406f < 500000:
                            if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                return 1
                            if not eth.balance(this.address):
                                return 1
                            members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                            if sub_1090f78dAddress != msg.sender:
                                call msg.sender with:
                                   value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                return 1
                            if ext_code.size(sub_1090f78dAddress):
                                call sub_1090f78dAddress.0xc7a49b8b with:
                                   value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                     gas gas_remaining - 9710 wei
                                if ext_call.success:
                                    return 1
                        else:
                            if sub_cb23406f < 10^6:
                                if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                    return 1
                                if not eth.balance(this.address):
                                    return 1
                                members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                if sub_1090f78dAddress != msg.sender:
                                    call msg.sender with:
                                       value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if sub_cb23406f < 2 * 10^6:
                                    if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                    if sub_1090f78dAddress != msg.sender:
                                        call msg.sender with:
                                           value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 5 * 10^6:
                                        if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                        if sub_1090f78dAddress != msg.sender:
                                            call msg.sender with:
                                               value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f >= 10 * 10^6:
                                            if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                            if sub_1090f78dAddress != msg.sender:
                                                call msg.sender with:
                                                   value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                            if sub_1090f78dAddress != msg.sender:
                                                call msg.sender with:
                                                   value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
            else:
                members[address(msg.sender)].field_1024 = 175 * members[address(msg.sender)].field_768 / 100 / 10
                if ext_code.size(tokenContractAddress):
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (175 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                    if ext_call.success:
                        require ext_call.return_data[0]
                        emit TokensRefunded(((175 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                        require members[address(msg.sender)].field_0
                        require members[address(msg.sender)].field_0
                        if sub_cb23406f < 150000:
                            if not -members[address(msg.sender)].field_512:
                                return 1
                            if not eth.balance(this.address):
                                return 1
                            members[address(msg.sender)].field_512 = 0
                            if sub_1090f78dAddress != msg.sender:
                                call msg.sender with:
                                   value -members[address(msg.sender)].field_512 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                return 1
                            if ext_code.size(sub_1090f78dAddress):
                                call sub_1090f78dAddress.0xc7a49b8b with:
                                   value -members[address(msg.sender)].field_512 wei
                                     gas gas_remaining - 9710 wei
                                if ext_call.success:
                                    return 1
                        else:
                            if sub_cb23406f < 250000:
                                if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                    return 1
                                if not eth.balance(this.address):
                                    return 1
                                members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                if sub_1090f78dAddress != msg.sender:
                                    call msg.sender with:
                                       value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if sub_cb23406f < 500000:
                                    if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                    if sub_1090f78dAddress != msg.sender:
                                        call msg.sender with:
                                           value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 10^6:
                                        if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                        if sub_1090f78dAddress != msg.sender:
                                            call msg.sender with:
                                               value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 2 * 10^6:
                                            if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                            if sub_1090f78dAddress != msg.sender:
                                                call msg.sender with:
                                                   value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 5 * 10^6:
                                                if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                if sub_1090f78dAddress != msg.sender:
                                                    call msg.sender with:
                                                       value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f >= 10 * 10^6:
                                                    if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
        else:
            if sub_cb23406f >= 5 * 10^6:
                if not (150 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                    require members[address(msg.sender)].field_0
                    require members[address(msg.sender)].field_0
                    if sub_cb23406f < 150000:
                        if not -members[address(msg.sender)].field_512:
                            return 1
                        if not eth.balance(this.address):
                            return 1
                        members[address(msg.sender)].field_512 = 0
                        if sub_1090f78dAddress != msg.sender:
                            call msg.sender with:
                               value -members[address(msg.sender)].field_512 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                            return 1
                        if ext_code.size(sub_1090f78dAddress):
                            call sub_1090f78dAddress.0xc7a49b8b with:
                               value -members[address(msg.sender)].field_512 wei
                                 gas gas_remaining - 9710 wei
                            if ext_call.success:
                                return 1
                    else:
                        if sub_cb23406f < 250000:
                            if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                return 1
                            if not eth.balance(this.address):
                                return 1
                            members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                            if sub_1090f78dAddress != msg.sender:
                                call msg.sender with:
                                   value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                return 1
                            if ext_code.size(sub_1090f78dAddress):
                                call sub_1090f78dAddress.0xc7a49b8b with:
                                   value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                     gas gas_remaining - 9710 wei
                                if ext_call.success:
                                    return 1
                        else:
                            if sub_cb23406f < 500000:
                                if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                    return 1
                                if not eth.balance(this.address):
                                    return 1
                                members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                if sub_1090f78dAddress != msg.sender:
                                    call msg.sender with:
                                       value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if sub_cb23406f < 10^6:
                                    if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                    if sub_1090f78dAddress != msg.sender:
                                        call msg.sender with:
                                           value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 2 * 10^6:
                                        if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                        if sub_1090f78dAddress != msg.sender:
                                            call msg.sender with:
                                               value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 5 * 10^6:
                                            if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                            if sub_1090f78dAddress != msg.sender:
                                                call msg.sender with:
                                                   value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f >= 10 * 10^6:
                                                if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                if sub_1090f78dAddress != msg.sender:
                                                    call msg.sender with:
                                                       value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                if sub_1090f78dAddress != msg.sender:
                                                    call msg.sender with:
                                                       value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                else:
                    members[address(msg.sender)].field_1024 = 150 * members[address(msg.sender)].field_768 / 100 / 10
                    if ext_code.size(tokenContractAddress):
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (150 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                        if ext_call.success:
                            require ext_call.return_data[0]
                            emit TokensRefunded(((150 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                            require members[address(msg.sender)].field_0
                            require members[address(msg.sender)].field_0
                            if sub_cb23406f < 150000:
                                if not -members[address(msg.sender)].field_512:
                                    return 1
                                if not eth.balance(this.address):
                                    return 1
                                members[address(msg.sender)].field_512 = 0
                                if sub_1090f78dAddress != msg.sender:
                                    call msg.sender with:
                                       value -members[address(msg.sender)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value -members[address(msg.sender)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if sub_cb23406f < 250000:
                                    if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                    if sub_1090f78dAddress != msg.sender:
                                        call msg.sender with:
                                           value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 500000:
                                        if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                        if sub_1090f78dAddress != msg.sender:
                                            call msg.sender with:
                                               value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 10^6:
                                            if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                            if sub_1090f78dAddress != msg.sender:
                                                call msg.sender with:
                                                   value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 2 * 10^6:
                                                if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                                if sub_1090f78dAddress != msg.sender:
                                                    call msg.sender with:
                                                       value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 5 * 10^6:
                                                    if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f >= 10 * 10^6:
                                                        if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
            else:
                if sub_cb23406f >= 2 * 10^6:
                    if not (140 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                        require members[address(msg.sender)].field_0
                        require members[address(msg.sender)].field_0
                        if sub_cb23406f < 150000:
                            if not -members[address(msg.sender)].field_512:
                                return 1
                            if not eth.balance(this.address):
                                return 1
                            members[address(msg.sender)].field_512 = 0
                            if sub_1090f78dAddress != msg.sender:
                                call msg.sender with:
                                   value -members[address(msg.sender)].field_512 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                return 1
                            if ext_code.size(sub_1090f78dAddress):
                                call sub_1090f78dAddress.0xc7a49b8b with:
                                   value -members[address(msg.sender)].field_512 wei
                                     gas gas_remaining - 9710 wei
                                if ext_call.success:
                                    return 1
                        else:
                            if sub_cb23406f < 250000:
                                if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                    return 1
                                if not eth.balance(this.address):
                                    return 1
                                members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                if sub_1090f78dAddress != msg.sender:
                                    call msg.sender with:
                                       value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if sub_cb23406f < 500000:
                                    if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                    if sub_1090f78dAddress != msg.sender:
                                        call msg.sender with:
                                           value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 10^6:
                                        if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                        if sub_1090f78dAddress != msg.sender:
                                            call msg.sender with:
                                               value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 2 * 10^6:
                                            if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                            if sub_1090f78dAddress != msg.sender:
                                                call msg.sender with:
                                                   value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 5 * 10^6:
                                                if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                if sub_1090f78dAddress != msg.sender:
                                                    call msg.sender with:
                                                       value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f >= 10 * 10^6:
                                                    if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                    else:
                        members[address(msg.sender)].field_1024 = 140 * members[address(msg.sender)].field_768 / 100 / 10
                        if ext_code.size(tokenContractAddress):
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (140 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                            if ext_call.success:
                                require ext_call.return_data[0]
                                emit TokensRefunded(((140 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                                require members[address(msg.sender)].field_0
                                require members[address(msg.sender)].field_0
                                if sub_cb23406f < 150000:
                                    if not -members[address(msg.sender)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(msg.sender)].field_512 = 0
                                    if sub_1090f78dAddress != msg.sender:
                                        call msg.sender with:
                                           value -members[address(msg.sender)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value -members[address(msg.sender)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 250000:
                                        if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                        if sub_1090f78dAddress != msg.sender:
                                            call msg.sender with:
                                               value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 500000:
                                            if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                            if sub_1090f78dAddress != msg.sender:
                                                call msg.sender with:
                                                   value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 10^6:
                                                if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                                if sub_1090f78dAddress != msg.sender:
                                                    call msg.sender with:
                                                       value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 2 * 10^6:
                                                    if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 5 * 10^6:
                                                        if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f >= 10 * 10^6:
                                                            if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                            if sub_1090f78dAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                            if sub_1090f78dAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                else:
                    if sub_cb23406f >= 10^6:
                        if not (130 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                            require members[address(msg.sender)].field_0
                            require members[address(msg.sender)].field_0
                            if sub_cb23406f < 150000:
                                if not -members[address(msg.sender)].field_512:
                                    return 1
                                if not eth.balance(this.address):
                                    return 1
                                members[address(msg.sender)].field_512 = 0
                                if sub_1090f78dAddress != msg.sender:
                                    call msg.sender with:
                                       value -members[address(msg.sender)].field_512 wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                    return 1
                                if ext_code.size(sub_1090f78dAddress):
                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                       value -members[address(msg.sender)].field_512 wei
                                         gas gas_remaining - 9710 wei
                                    if ext_call.success:
                                        return 1
                            else:
                                if sub_cb23406f < 250000:
                                    if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                    if sub_1090f78dAddress != msg.sender:
                                        call msg.sender with:
                                           value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 500000:
                                        if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                        if sub_1090f78dAddress != msg.sender:
                                            call msg.sender with:
                                               value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 10^6:
                                            if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                            if sub_1090f78dAddress != msg.sender:
                                                call msg.sender with:
                                                   value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 2 * 10^6:
                                                if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                                if sub_1090f78dAddress != msg.sender:
                                                    call msg.sender with:
                                                       value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 5 * 10^6:
                                                    if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f >= 10 * 10^6:
                                                        if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                        else:
                            members[address(msg.sender)].field_1024 = 130 * members[address(msg.sender)].field_768 / 100 / 10
                            if ext_code.size(tokenContractAddress):
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (130 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                                if ext_call.success:
                                    require ext_call.return_data[0]
                                    emit TokensRefunded(((130 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                                    require members[address(msg.sender)].field_0
                                    require members[address(msg.sender)].field_0
                                    if sub_cb23406f < 150000:
                                        if not -members[address(msg.sender)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(msg.sender)].field_512 = 0
                                        if sub_1090f78dAddress != msg.sender:
                                            call msg.sender with:
                                               value -members[address(msg.sender)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value -members[address(msg.sender)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 250000:
                                            if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                            if sub_1090f78dAddress != msg.sender:
                                                call msg.sender with:
                                                   value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 500000:
                                                if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                                if sub_1090f78dAddress != msg.sender:
                                                    call msg.sender with:
                                                       value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 10^6:
                                                    if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 2 * 10^6:
                                                        if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 5 * 10^6:
                                                            if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                            if sub_1090f78dAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f >= 10 * 10^6:
                                                                if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                                if sub_1090f78dAddress != msg.sender:
                                                                    call msg.sender with:
                                                                       value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                                if sub_1090f78dAddress != msg.sender:
                                                                    call msg.sender with:
                                                                       value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                    else:
                        if sub_cb23406f >= 500000:
                            if not (125 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                                require members[address(msg.sender)].field_0
                                require members[address(msg.sender)].field_0
                                if sub_cb23406f < 150000:
                                    if not -members[address(msg.sender)].field_512:
                                        return 1
                                    if not eth.balance(this.address):
                                        return 1
                                    members[address(msg.sender)].field_512 = 0
                                    if sub_1090f78dAddress != msg.sender:
                                        call msg.sender with:
                                           value -members[address(msg.sender)].field_512 wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                        return 1
                                    if ext_code.size(sub_1090f78dAddress):
                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                           value -members[address(msg.sender)].field_512 wei
                                             gas gas_remaining - 9710 wei
                                        if ext_call.success:
                                            return 1
                                else:
                                    if sub_cb23406f < 250000:
                                        if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                        if sub_1090f78dAddress != msg.sender:
                                            call msg.sender with:
                                               value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 500000:
                                            if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                            if sub_1090f78dAddress != msg.sender:
                                                call msg.sender with:
                                                   value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 10^6:
                                                if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                                if sub_1090f78dAddress != msg.sender:
                                                    call msg.sender with:
                                                       value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 2 * 10^6:
                                                    if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 5 * 10^6:
                                                        if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f >= 10 * 10^6:
                                                            if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                            if sub_1090f78dAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                            if sub_1090f78dAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                            else:
                                members[address(msg.sender)].field_1024 = 125 * members[address(msg.sender)].field_768 / 100 / 10
                                if ext_code.size(tokenContractAddress):
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (125 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                                    if ext_call.success:
                                        require ext_call.return_data[0]
                                        emit TokensRefunded(((125 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                                        require members[address(msg.sender)].field_0
                                        require members[address(msg.sender)].field_0
                                        if sub_cb23406f < 150000:
                                            if not -members[address(msg.sender)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(msg.sender)].field_512 = 0
                                            if sub_1090f78dAddress != msg.sender:
                                                call msg.sender with:
                                                   value -members[address(msg.sender)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value -members[address(msg.sender)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 250000:
                                                if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                                if sub_1090f78dAddress != msg.sender:
                                                    call msg.sender with:
                                                       value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 500000:
                                                    if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 10^6:
                                                        if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 2 * 10^6:
                                                            if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                                            if sub_1090f78dAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 5 * 10^6:
                                                                if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                                if sub_1090f78dAddress != msg.sender:
                                                                    call msg.sender with:
                                                                       value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f >= 10 * 10^6:
                                                                    if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                                    if sub_1090f78dAddress != msg.sender:
                                                                        call msg.sender with:
                                                                           value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                                    if sub_1090f78dAddress != msg.sender:
                                                                        call msg.sender with:
                                                                           value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                        else:
                            if sub_cb23406f >= 250000:
                                if not (120 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                                    require members[address(msg.sender)].field_0
                                    require members[address(msg.sender)].field_0
                                    if sub_cb23406f < 150000:
                                        if not -members[address(msg.sender)].field_512:
                                            return 1
                                        if not eth.balance(this.address):
                                            return 1
                                        members[address(msg.sender)].field_512 = 0
                                        if sub_1090f78dAddress != msg.sender:
                                            call msg.sender with:
                                               value -members[address(msg.sender)].field_512 wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                            return 1
                                        if ext_code.size(sub_1090f78dAddress):
                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                               value -members[address(msg.sender)].field_512 wei
                                                 gas gas_remaining - 9710 wei
                                            if ext_call.success:
                                                return 1
                                    else:
                                        if sub_cb23406f < 250000:
                                            if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                            if sub_1090f78dAddress != msg.sender:
                                                call msg.sender with:
                                                   value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 500000:
                                                if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                                if sub_1090f78dAddress != msg.sender:
                                                    call msg.sender with:
                                                       value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 10^6:
                                                    if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 2 * 10^6:
                                                        if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 5 * 10^6:
                                                            if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                            if sub_1090f78dAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f >= 10 * 10^6:
                                                                if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                                if sub_1090f78dAddress != msg.sender:
                                                                    call msg.sender with:
                                                                       value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                                if sub_1090f78dAddress != msg.sender:
                                                                    call msg.sender with:
                                                                       value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                else:
                                    members[address(msg.sender)].field_1024 = 120 * members[address(msg.sender)].field_768 / 100 / 10
                                    if ext_code.size(tokenContractAddress):
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (120 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                                        if ext_call.success:
                                            require ext_call.return_data[0]
                                            emit TokensRefunded(((120 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                                            require members[address(msg.sender)].field_0
                                            require members[address(msg.sender)].field_0
                                            if sub_cb23406f < 150000:
                                                if not -members[address(msg.sender)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(msg.sender)].field_512 = 0
                                                if sub_1090f78dAddress != msg.sender:
                                                    call msg.sender with:
                                                       value -members[address(msg.sender)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value -members[address(msg.sender)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 250000:
                                                    if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 500000:
                                                        if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 10^6:
                                                            if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                                            if sub_1090f78dAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 2 * 10^6:
                                                                if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                                                if sub_1090f78dAddress != msg.sender:
                                                                    call msg.sender with:
                                                                       value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f < 5 * 10^6:
                                                                    if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                                    if sub_1090f78dAddress != msg.sender:
                                                                        call msg.sender with:
                                                                           value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if sub_cb23406f >= 10 * 10^6:
                                                                        if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                                        if sub_1090f78dAddress != msg.sender:
                                                                            call msg.sender with:
                                                                               value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                                                    else:
                                                                        if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                                        if sub_1090f78dAddress != msg.sender:
                                                                            call msg.sender with:
                                                                               value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                            else:
                                if sub_cb23406f >= 150000:
                                    if not (115 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                                        require members[address(msg.sender)].field_0
                                        require members[address(msg.sender)].field_0
                                        if sub_cb23406f < 150000:
                                            if not -members[address(msg.sender)].field_512:
                                                return 1
                                            if not eth.balance(this.address):
                                                return 1
                                            members[address(msg.sender)].field_512 = 0
                                            if sub_1090f78dAddress != msg.sender:
                                                call msg.sender with:
                                                   value -members[address(msg.sender)].field_512 wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                                return 1
                                            if ext_code.size(sub_1090f78dAddress):
                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                   value -members[address(msg.sender)].field_512 wei
                                                     gas gas_remaining - 9710 wei
                                                if ext_call.success:
                                                    return 1
                                        else:
                                            if sub_cb23406f < 250000:
                                                if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                                if sub_1090f78dAddress != msg.sender:
                                                    call msg.sender with:
                                                       value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 500000:
                                                    if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 10^6:
                                                        if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 2 * 10^6:
                                                            if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                                            if sub_1090f78dAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 5 * 10^6:
                                                                if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                                if sub_1090f78dAddress != msg.sender:
                                                                    call msg.sender with:
                                                                       value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f >= 10 * 10^6:
                                                                    if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                                    if sub_1090f78dAddress != msg.sender:
                                                                        call msg.sender with:
                                                                           value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                                    if sub_1090f78dAddress != msg.sender:
                                                                        call msg.sender with:
                                                                           value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                    else:
                                        members[address(msg.sender)].field_1024 = 115 * members[address(msg.sender)].field_768 / 100 / 10
                                        if ext_code.size(tokenContractAddress):
                                            call tokenContractAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (115 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                                            if ext_call.success:
                                                require ext_call.return_data[0]
                                                emit TokensRefunded(((115 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                                                require members[address(msg.sender)].field_0
                                                require members[address(msg.sender)].field_0
                                                if sub_cb23406f < 150000:
                                                    if not -members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 0
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value -members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value -members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 250000:
                                                        if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 500000:
                                                            if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                                            if sub_1090f78dAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 10^6:
                                                                if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                                                if sub_1090f78dAddress != msg.sender:
                                                                    call msg.sender with:
                                                                       value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f < 2 * 10^6:
                                                                    if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                                                    if sub_1090f78dAddress != msg.sender:
                                                                        call msg.sender with:
                                                                           value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if sub_cb23406f < 5 * 10^6:
                                                                        if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                                        if sub_1090f78dAddress != msg.sender:
                                                                            call msg.sender with:
                                                                               value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                                                    else:
                                                                        if sub_cb23406f >= 10 * 10^6:
                                                                            if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                                return 1
                                                                            if not eth.balance(this.address):
                                                                                return 1
                                                                            members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                                            if sub_1090f78dAddress != msg.sender:
                                                                                call msg.sender with:
                                                                                   value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
                                                                                emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                                return 1
                                                                            if ext_code.size(sub_1090f78dAddress):
                                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                   value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                     gas gas_remaining - 9710 wei
                                                                                if ext_call.success:
                                                                                    return 1
                                                                        else:
                                                                            if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                                return 1
                                                                            if not eth.balance(this.address):
                                                                                return 1
                                                                            members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                                            if sub_1090f78dAddress != msg.sender:
                                                                                call msg.sender with:
                                                                                   value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
                                                                                emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                                return 1
                                                                            if ext_code.size(sub_1090f78dAddress):
                                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                   value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                     gas gas_remaining - 9710 wei
                                                                                if ext_call.success:
                                                                                    return 1
                                else:
                                    if sub_cb23406f < 50000:
                                        if not (100 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                                            require members[address(msg.sender)].field_0
                                            require members[address(msg.sender)].field_0
                                            if sub_cb23406f < 150000:
                                                if not -members[address(msg.sender)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(msg.sender)].field_512 = 0
                                                if sub_1090f78dAddress != msg.sender:
                                                    call msg.sender with:
                                                       value -members[address(msg.sender)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value -members[address(msg.sender)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 250000:
                                                    if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 500000:
                                                        if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 10^6:
                                                            if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                                            if sub_1090f78dAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 2 * 10^6:
                                                                if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                                                if sub_1090f78dAddress != msg.sender:
                                                                    call msg.sender with:
                                                                       value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f < 5 * 10^6:
                                                                    if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                                    if sub_1090f78dAddress != msg.sender:
                                                                        call msg.sender with:
                                                                           value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if sub_cb23406f >= 10 * 10^6:
                                                                        if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                                        if sub_1090f78dAddress != msg.sender:
                                                                            call msg.sender with:
                                                                               value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                                                    else:
                                                                        if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                                        if sub_1090f78dAddress != msg.sender:
                                                                            call msg.sender with:
                                                                               value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                        else:
                                            members[address(msg.sender)].field_1024 = 100 * members[address(msg.sender)].field_768 / 100 / 10
                                            if ext_code.size(tokenContractAddress):
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (100 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                                                if ext_call.success:
                                                    require ext_call.return_data[0]
                                                    emit TokensRefunded(((100 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                                                    require members[address(msg.sender)].field_0
                                                    require members[address(msg.sender)].field_0
                                                    if sub_cb23406f < 150000:
                                                        if not -members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 0
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value -members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value -members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 250000:
                                                            if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                                            if sub_1090f78dAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 500000:
                                                                if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                                                if sub_1090f78dAddress != msg.sender:
                                                                    call msg.sender with:
                                                                       value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f < 10^6:
                                                                    if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                                                    if sub_1090f78dAddress != msg.sender:
                                                                        call msg.sender with:
                                                                           value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if sub_cb23406f < 2 * 10^6:
                                                                        if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                                                        if sub_1090f78dAddress != msg.sender:
                                                                            call msg.sender with:
                                                                               value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                                                    else:
                                                                        if sub_cb23406f < 5 * 10^6:
                                                                            if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                                return 1
                                                                            if not eth.balance(this.address):
                                                                                return 1
                                                                            members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                                            if sub_1090f78dAddress != msg.sender:
                                                                                call msg.sender with:
                                                                                   value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
                                                                                emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                                return 1
                                                                            if ext_code.size(sub_1090f78dAddress):
                                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                   value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                     gas gas_remaining - 9710 wei
                                                                                if ext_call.success:
                                                                                    return 1
                                                                        else:
                                                                            if sub_cb23406f >= 10 * 10^6:
                                                                                if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                                    return 1
                                                                                if not eth.balance(this.address):
                                                                                    return 1
                                                                                members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                                                if sub_1090f78dAddress != msg.sender:
                                                                                    call msg.sender with:
                                                                                       value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    require ext_call.success
                                                                                    emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                                    return 1
                                                                                if ext_code.size(sub_1090f78dAddress):
                                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                       value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                         gas gas_remaining - 9710 wei
                                                                                    if ext_call.success:
                                                                                        return 1
                                                                            else:
                                                                                if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                                    return 1
                                                                                if not eth.balance(this.address):
                                                                                    return 1
                                                                                members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                                                if sub_1090f78dAddress != msg.sender:
                                                                                    call msg.sender with:
                                                                                       value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    require ext_call.success
                                                                                    emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                                    return 1
                                                                                if ext_code.size(sub_1090f78dAddress):
                                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                       value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                         gas gas_remaining - 9710 wei
                                                                                    if ext_call.success:
                                                                                        return 1
                                    else:
                                        if not (110 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024:
                                            require members[address(msg.sender)].field_0
                                            require members[address(msg.sender)].field_0
                                            if sub_cb23406f < 150000:
                                                if not -members[address(msg.sender)].field_512:
                                                    return 1
                                                if not eth.balance(this.address):
                                                    return 1
                                                members[address(msg.sender)].field_512 = 0
                                                if sub_1090f78dAddress != msg.sender:
                                                    call msg.sender with:
                                                       value -members[address(msg.sender)].field_512 wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                                    return 1
                                                if ext_code.size(sub_1090f78dAddress):
                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                       value -members[address(msg.sender)].field_512 wei
                                                         gas gas_remaining - 9710 wei
                                                    if ext_call.success:
                                                        return 1
                                            else:
                                                if sub_cb23406f < 250000:
                                                    if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                        return 1
                                                    if not eth.balance(this.address):
                                                        return 1
                                                    members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                                    if sub_1090f78dAddress != msg.sender:
                                                        call msg.sender with:
                                                           value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                        return 1
                                                    if ext_code.size(sub_1090f78dAddress):
                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                           value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                             gas gas_remaining - 9710 wei
                                                        if ext_call.success:
                                                            return 1
                                                else:
                                                    if sub_cb23406f < 500000:
                                                        if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 10^6:
                                                            if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                                            if sub_1090f78dAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 2 * 10^6:
                                                                if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                                                if sub_1090f78dAddress != msg.sender:
                                                                    call msg.sender with:
                                                                       value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f < 5 * 10^6:
                                                                    if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                                    if sub_1090f78dAddress != msg.sender:
                                                                        call msg.sender with:
                                                                           value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if sub_cb23406f >= 10 * 10^6:
                                                                        if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                                        if sub_1090f78dAddress != msg.sender:
                                                                            call msg.sender with:
                                                                               value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                                                    else:
                                                                        if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                                        if sub_1090f78dAddress != msg.sender:
                                                                            call msg.sender with:
                                                                               value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                        else:
                                            members[address(msg.sender)].field_1024 = 110 * members[address(msg.sender)].field_768 / 100 / 10
                                            if ext_code.size(tokenContractAddress):
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (110 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024
                                                if ext_call.success:
                                                    require ext_call.return_data[0]
                                                    emit TokensRefunded(((110 * members[address(msg.sender)].field_768 / 100 / 10) - members[address(msg.sender)].field_1024), msg.sender);
                                                    require members[address(msg.sender)].field_0
                                                    require members[address(msg.sender)].field_0
                                                    if sub_cb23406f < 150000:
                                                        if not -members[address(msg.sender)].field_512:
                                                            return 1
                                                        if not eth.balance(this.address):
                                                            return 1
                                                        members[address(msg.sender)].field_512 = 0
                                                        if sub_1090f78dAddress != msg.sender:
                                                            call msg.sender with:
                                                               value -members[address(msg.sender)].field_512 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit 0xcdaa3a5d: -members[address(msg.sender)].field_512, msg.sender
                                                            return 1
                                                        if ext_code.size(sub_1090f78dAddress):
                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                               value -members[address(msg.sender)].field_512 wei
                                                                 gas gas_remaining - 9710 wei
                                                            if ext_call.success:
                                                                return 1
                                                    else:
                                                        if sub_cb23406f < 250000:
                                                            if not (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                return 1
                                                            if not eth.balance(this.address):
                                                                return 1
                                                            members[address(msg.sender)].field_512 = 50 * members[address(msg.sender)].field_256 / 1000
                                                            if sub_1090f78dAddress != msg.sender:
                                                                call msg.sender with:
                                                                   value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit 0xcdaa3a5d: ((50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                return 1
                                                            if ext_code.size(sub_1090f78dAddress):
                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                   value (50 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                     gas gas_remaining - 9710 wei
                                                                if ext_call.success:
                                                                    return 1
                                                        else:
                                                            if sub_cb23406f < 500000:
                                                                if not (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                    return 1
                                                                if not eth.balance(this.address):
                                                                    return 1
                                                                members[address(msg.sender)].field_512 = 75 * members[address(msg.sender)].field_256 / 1000
                                                                if sub_1090f78dAddress != msg.sender:
                                                                    call msg.sender with:
                                                                       value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit 0xcdaa3a5d: ((75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                    return 1
                                                                if ext_code.size(sub_1090f78dAddress):
                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                       value (75 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                         gas gas_remaining - 9710 wei
                                                                    if ext_call.success:
                                                                        return 1
                                                            else:
                                                                if sub_cb23406f < 10^6:
                                                                    if not (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                        return 1
                                                                    if not eth.balance(this.address):
                                                                        return 1
                                                                    members[address(msg.sender)].field_512 = 100 * members[address(msg.sender)].field_256 / 1000
                                                                    if sub_1090f78dAddress != msg.sender:
                                                                        call msg.sender with:
                                                                           value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit 0xcdaa3a5d: ((100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                        return 1
                                                                    if ext_code.size(sub_1090f78dAddress):
                                                                        call sub_1090f78dAddress.0xc7a49b8b with:
                                                                           value (100 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                             gas gas_remaining - 9710 wei
                                                                        if ext_call.success:
                                                                            return 1
                                                                else:
                                                                    if sub_cb23406f < 2 * 10^6:
                                                                        if not (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                            return 1
                                                                        if not eth.balance(this.address):
                                                                            return 1
                                                                        members[address(msg.sender)].field_512 = 150 * members[address(msg.sender)].field_256 / 1000
                                                                        if sub_1090f78dAddress != msg.sender:
                                                                            call msg.sender with:
                                                                               value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit 0xcdaa3a5d: ((150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                            return 1
                                                                        if ext_code.size(sub_1090f78dAddress):
                                                                            call sub_1090f78dAddress.0xc7a49b8b with:
                                                                               value (150 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                 gas gas_remaining - 9710 wei
                                                                            if ext_call.success:
                                                                                return 1
                                                                    else:
                                                                        if sub_cb23406f < 5 * 10^6:
                                                                            if not (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                                return 1
                                                                            if not eth.balance(this.address):
                                                                                return 1
                                                                            members[address(msg.sender)].field_512 = 200 * members[address(msg.sender)].field_256 / 1000
                                                                            if sub_1090f78dAddress != msg.sender:
                                                                                call msg.sender with:
                                                                                   value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
                                                                                emit 0xcdaa3a5d: ((200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                                return 1
                                                                            if ext_code.size(sub_1090f78dAddress):
                                                                                call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                   value (200 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                     gas gas_remaining - 9710 wei
                                                                                if ext_call.success:
                                                                                    return 1
                                                                        else:
                                                                            if sub_cb23406f >= 10 * 10^6:
                                                                                if not (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                                    return 1
                                                                                if not eth.balance(this.address):
                                                                                    return 1
                                                                                members[address(msg.sender)].field_512 = 300 * members[address(msg.sender)].field_256 / 1000
                                                                                if sub_1090f78dAddress != msg.sender:
                                                                                    call msg.sender with:
                                                                                       value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    require ext_call.success
                                                                                    emit 0xcdaa3a5d: ((300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                                    return 1
                                                                                if ext_code.size(sub_1090f78dAddress):
                                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                       value (300 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                         gas gas_remaining - 9710 wei
                                                                                    if ext_call.success:
                                                                                        return 1
                                                                            else:
                                                                                if not (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512:
                                                                                    return 1
                                                                                if not eth.balance(this.address):
                                                                                    return 1
                                                                                members[address(msg.sender)].field_512 = 250 * members[address(msg.sender)].field_256 / 1000
                                                                                if sub_1090f78dAddress != msg.sender:
                                                                                    call msg.sender with:
                                                                                       value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    require ext_call.success
                                                                                    emit 0xcdaa3a5d: ((250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512), msg.sender
                                                                                    return 1
                                                                                if ext_code.size(sub_1090f78dAddress):
                                                                                    call sub_1090f78dAddress.0xc7a49b8b with:
                                                                                       value (250 * members[address(msg.sender)].field_256 / 1000) - members[address(msg.sender)].field_512 wei
                                                                                         gas gas_remaining - 9710 wei
                                                                                    if ext_call.success:
                                                                                        return 1
    revert
}



}
