contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;

function _fallback() {
    stor1 = code.data[4750 len 20]
    stor0 = code.data[4782 len 20]
    stor2 = code.data[4802 len 32]
    stor3 = code.data[4802 len 32] + (1344 * 24 * 3600)
    create contract with 0 wei
                    code: code.data[2259 len 2479], address(this.address), code.data[4782 len 20], code.data[4802 len 32], code.data[4802 len 32] + (1344 * 24 * 3600)
    require create.new_address
    stor4 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x79c65068 with:
         gas gas_remaining - 50 wei
        args stor0, 632000 * 10^18
    require ext_call.success
    return code.data[352 len 1907]
}



// =====================  Runtime code  =====================


const PRICE_RATE_SECOND = 460

const PRICE_RATE_THIRD = 440

const PRICE_RATE_FIRST = 480

const FOUNDATION_TOKENS = 632000 * 10^18

const ETHER_CAP = 25000 * 10^18

const MAX_CONTRIBUTION_DURATION = (1344 * 24 * 3600)

const PRICE_RATE_FOURTH = 400


address FOUNDATION_WALLETAddress;
address DEV_WALLETAddress;
uint256 startTime;
uint256 endTime;
address folioTokenAddress;
uint256 etherRaised;
uint8 stor6;

function folioToken() {
    return folioTokenAddress
}

function FOUNDATION_WALLET() {
    return FOUNDATION_WALLETAddress
}

function DEV_WALLET() {
    return DEV_WALLETAddress
}

function endTime() {
    return endTime
}

function startTime() {
    return startTime
}

function halted() {
    return bool(stor6)
}

function etherRaised() {
    return etherRaised
}

function halt() {
    require FOUNDATION_WALLETAddress == msg.sender
    stor6 = 1
}

function unhalt() {
    require FOUNDATION_WALLETAddress == msg.sender
    stor6 = 0
}

function changeDevAddress(address arg1) {
    require FOUNDATION_WALLETAddress == msg.sender
    DEV_WALLETAddress = arg1
}

function changeFoundationAddress(address arg1) {
    require FOUNDATION_WALLETAddress == msg.sender
    FOUNDATION_WALLETAddress = arg1
}

function priceRate() {
    if startTime <= block.timestamp:
        if block.timestamp < startTime + (168 * 24 * 3600):
            return 480
    if startTime + (168 * 24 * 3600) <= block.timestamp:
        if block.timestamp < startTime + (336 * 24 * 3600):
            return 460
    if startTime + (336 * 24 * 3600) <= block.timestamp:
        if block.timestamp < startTime + (504 * 24 * 3600):
            return 440
    require startTime + (504 * 24 * 3600) <= block.timestamp
    require block.timestamp < endTime
    return 400
}

function buyRecipient(address arg1) payable {
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require not stor6
    require msg.value + etherRaised >= etherRaised
    require msg.value + etherRaised >= msg.value
    require msg.value + etherRaised <= 25000 * 10^18
    if startTime > block.timestamp:
        if startTime + (168 * 24 * 3600) > block.timestamp:
            if startTime + (336 * 24 * 3600) > block.timestamp:
                require startTime + (504 * 24 * 3600) <= block.timestamp
                require block.timestamp < endTime
                if msg.value:
                    require 400 * msg.value / msg.value == 400
                require ext_code.size(folioTokenAddress)
                call folioTokenAddress.0x79c65068 with:
                     gas gas_remaining - 50 wei
                    args address(arg1), 400 * msg.value
                require ext_call.success
                require msg.value + etherRaised >= etherRaised
                require msg.value + etherRaised >= msg.value
                etherRaised += msg.value
                call DEV_WALLETAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit TokensBought(msg.value, 400 * msg.value, arg1);
            else:
                if block.timestamp < startTime + (504 * 24 * 3600):
                    if msg.value:
                        require 440 * msg.value / msg.value == 440
                    require ext_code.size(folioTokenAddress)
                    call folioTokenAddress.0x79c65068 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), 440 * msg.value
                    require ext_call.success
                    require msg.value + etherRaised >= etherRaised
                    require msg.value + etherRaised >= msg.value
                    etherRaised += msg.value
                    call DEV_WALLETAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokensBought(msg.value, 440 * msg.value, arg1);
                else:
                    require startTime + (504 * 24 * 3600) <= block.timestamp
                    require block.timestamp < endTime
                    if msg.value:
                        require 400 * msg.value / msg.value == 400
                    require ext_code.size(folioTokenAddress)
                    call folioTokenAddress.0x79c65068 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), 400 * msg.value
                    require ext_call.success
                    require msg.value + etherRaised >= etherRaised
                    require msg.value + etherRaised >= msg.value
                    etherRaised += msg.value
                    call DEV_WALLETAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokensBought(msg.value, 400 * msg.value, arg1);
        else:
            if block.timestamp < startTime + (336 * 24 * 3600):
                if msg.value:
                    require 460 * msg.value / msg.value == 460
                require ext_code.size(folioTokenAddress)
                call folioTokenAddress.0x79c65068 with:
                     gas gas_remaining - 50 wei
                    args address(arg1), 460 * msg.value
                require ext_call.success
                require msg.value + etherRaised >= etherRaised
                require msg.value + etherRaised >= msg.value
                etherRaised += msg.value
                call DEV_WALLETAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit TokensBought(msg.value, 460 * msg.value, arg1);
            else:
                if startTime + (336 * 24 * 3600) > block.timestamp:
                    require startTime + (504 * 24 * 3600) <= block.timestamp
                    require block.timestamp < endTime
                    if msg.value:
                        require 400 * msg.value / msg.value == 400
                    require ext_code.size(folioTokenAddress)
                    call folioTokenAddress.0x79c65068 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), 400 * msg.value
                    require ext_call.success
                    require msg.value + etherRaised >= etherRaised
                    require msg.value + etherRaised >= msg.value
                    etherRaised += msg.value
                    call DEV_WALLETAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokensBought(msg.value, 400 * msg.value, arg1);
                else:
                    if block.timestamp < startTime + (504 * 24 * 3600):
                        if msg.value:
                            require 440 * msg.value / msg.value == 440
                        require ext_code.size(folioTokenAddress)
                        call folioTokenAddress.0x79c65068 with:
                             gas gas_remaining - 50 wei
                            args address(arg1), 440 * msg.value
                        require ext_call.success
                        require msg.value + etherRaised >= etherRaised
                        require msg.value + etherRaised >= msg.value
                        etherRaised += msg.value
                        call DEV_WALLETAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokensBought(msg.value, 440 * msg.value, arg1);
                    else:
                        require startTime + (504 * 24 * 3600) <= block.timestamp
                        require block.timestamp < endTime
                        if msg.value:
                            require 400 * msg.value / msg.value == 400
                        require ext_code.size(folioTokenAddress)
                        call folioTokenAddress.0x79c65068 with:
                             gas gas_remaining - 50 wei
                            args address(arg1), 400 * msg.value
                        require ext_call.success
                        require msg.value + etherRaised >= etherRaised
                        require msg.value + etherRaised >= msg.value
                        etherRaised += msg.value
                        call DEV_WALLETAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokensBought(msg.value, 400 * msg.value, arg1);
    else:
        if block.timestamp < startTime + (168 * 24 * 3600):
            if msg.value:
                require 480 * msg.value / msg.value == 480
            require ext_code.size(folioTokenAddress)
            call folioTokenAddress.0x79c65068 with:
                 gas gas_remaining - 50 wei
                args address(arg1), 480 * msg.value
            require ext_call.success
            require msg.value + etherRaised >= etherRaised
            require msg.value + etherRaised >= msg.value
            etherRaised += msg.value
            call DEV_WALLETAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit TokensBought(msg.value, 480 * msg.value, arg1);
        else:
            if startTime + (168 * 24 * 3600) > block.timestamp:
                if startTime + (336 * 24 * 3600) > block.timestamp:
                    require startTime + (504 * 24 * 3600) <= block.timestamp
                    require block.timestamp < endTime
                    if msg.value:
                        require 400 * msg.value / msg.value == 400
                    require ext_code.size(folioTokenAddress)
                    call folioTokenAddress.0x79c65068 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), 400 * msg.value
                    require ext_call.success
                    require msg.value + etherRaised >= etherRaised
                    require msg.value + etherRaised >= msg.value
                    etherRaised += msg.value
                    call DEV_WALLETAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokensBought(msg.value, 400 * msg.value, arg1);
                else:
                    if block.timestamp < startTime + (504 * 24 * 3600):
                        if msg.value:
                            require 440 * msg.value / msg.value == 440
                        require ext_code.size(folioTokenAddress)
                        call folioTokenAddress.0x79c65068 with:
                             gas gas_remaining - 50 wei
                            args address(arg1), 440 * msg.value
                        require ext_call.success
                        require msg.value + etherRaised >= etherRaised
                        require msg.value + etherRaised >= msg.value
                        etherRaised += msg.value
                        call DEV_WALLETAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokensBought(msg.value, 440 * msg.value, arg1);
                    else:
                        require startTime + (504 * 24 * 3600) <= block.timestamp
                        require block.timestamp < endTime
                        if msg.value:
                            require 400 * msg.value / msg.value == 400
                        require ext_code.size(folioTokenAddress)
                        call folioTokenAddress.0x79c65068 with:
                             gas gas_remaining - 50 wei
                            args address(arg1), 400 * msg.value
                        require ext_call.success
                        require msg.value + etherRaised >= etherRaised
                        require msg.value + etherRaised >= msg.value
                        etherRaised += msg.value
                        call DEV_WALLETAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokensBought(msg.value, 400 * msg.value, arg1);
            else:
                if block.timestamp < startTime + (336 * 24 * 3600):
                    if msg.value:
                        require 460 * msg.value / msg.value == 460
                    require ext_code.size(folioTokenAddress)
                    call folioTokenAddress.0x79c65068 with:
                         gas gas_remaining - 50 wei
                        args address(arg1), 460 * msg.value
                    require ext_call.success
                    require msg.value + etherRaised >= etherRaised
                    require msg.value + etherRaised >= msg.value
                    etherRaised += msg.value
                    call DEV_WALLETAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokensBought(msg.value, 460 * msg.value, arg1);
                else:
                    if startTime + (336 * 24 * 3600) > block.timestamp:
                        require startTime + (504 * 24 * 3600) <= block.timestamp
                        require block.timestamp < endTime
                        if msg.value:
                            require 400 * msg.value / msg.value == 400
                        require ext_code.size(folioTokenAddress)
                        call folioTokenAddress.0x79c65068 with:
                             gas gas_remaining - 50 wei
                            args address(arg1), 400 * msg.value
                        require ext_call.success
                        require msg.value + etherRaised >= etherRaised
                        require msg.value + etherRaised >= msg.value
                        etherRaised += msg.value
                        call DEV_WALLETAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokensBought(msg.value, 400 * msg.value, arg1);
                    else:
                        if block.timestamp < startTime + (504 * 24 * 3600):
                            if msg.value:
                                require 440 * msg.value / msg.value == 440
                            require ext_code.size(folioTokenAddress)
                            call folioTokenAddress.0x79c65068 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), 440 * msg.value
                            require ext_call.success
                            require msg.value + etherRaised >= etherRaised
                            require msg.value + etherRaised >= msg.value
                            etherRaised += msg.value
                            call DEV_WALLETAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit TokensBought(msg.value, 440 * msg.value, arg1);
                        else:
                            require startTime + (504 * 24 * 3600) <= block.timestamp
                            require block.timestamp < endTime
                            if msg.value:
                                require 400 * msg.value / msg.value == 400
                            require ext_code.size(folioTokenAddress)
                            call folioTokenAddress.0x79c65068 with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), 400 * msg.value
                            require ext_call.success
                            require msg.value + etherRaised >= etherRaised
                            require msg.value + etherRaised >= msg.value
                            etherRaised += msg.value
                            call DEV_WALLETAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit TokensBought(msg.value, 400 * msg.value, arg1);
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require not stor6
    require msg.value + etherRaised >= etherRaised
    require msg.value + etherRaised >= msg.value
    require msg.value + etherRaised <= 25000 * 10^18
    if startTime > block.timestamp:
        if startTime + (168 * 24 * 3600) > block.timestamp:
            if startTime + (336 * 24 * 3600) > block.timestamp:
                require startTime + (504 * 24 * 3600) <= block.timestamp
                require block.timestamp < endTime
                if msg.value:
                    require 400 * msg.value / msg.value == 400
                require ext_code.size(folioTokenAddress)
                call folioTokenAddress.0x79c65068 with:
                     gas gas_remaining - 50 wei
                    args msg.sender, 400 * msg.value
                require ext_call.success
                require msg.value + etherRaised >= etherRaised
                require msg.value + etherRaised >= msg.value
                etherRaised += msg.value
                call DEV_WALLETAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit TokensBought(msg.value, 400 * msg.value, msg.sender);
            else:
                if block.timestamp < startTime + (504 * 24 * 3600):
                    if msg.value:
                        require 440 * msg.value / msg.value == 440
                    require ext_code.size(folioTokenAddress)
                    call folioTokenAddress.0x79c65068 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, 440 * msg.value
                    require ext_call.success
                    require msg.value + etherRaised >= etherRaised
                    require msg.value + etherRaised >= msg.value
                    etherRaised += msg.value
                    call DEV_WALLETAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokensBought(msg.value, 440 * msg.value, msg.sender);
                else:
                    require startTime + (504 * 24 * 3600) <= block.timestamp
                    require block.timestamp < endTime
                    if msg.value:
                        require 400 * msg.value / msg.value == 400
                    require ext_code.size(folioTokenAddress)
                    call folioTokenAddress.0x79c65068 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, 400 * msg.value
                    require ext_call.success
                    require msg.value + etherRaised >= etherRaised
                    require msg.value + etherRaised >= msg.value
                    etherRaised += msg.value
                    call DEV_WALLETAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokensBought(msg.value, 400 * msg.value, msg.sender);
        else:
            if block.timestamp < startTime + (336 * 24 * 3600):
                if msg.value:
                    require 460 * msg.value / msg.value == 460
                require ext_code.size(folioTokenAddress)
                call folioTokenAddress.0x79c65068 with:
                     gas gas_remaining - 50 wei
                    args msg.sender, 460 * msg.value
                require ext_call.success
                require msg.value + etherRaised >= etherRaised
                require msg.value + etherRaised >= msg.value
                etherRaised += msg.value
                call DEV_WALLETAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit TokensBought(msg.value, 460 * msg.value, msg.sender);
            else:
                if startTime + (336 * 24 * 3600) > block.timestamp:
                    require startTime + (504 * 24 * 3600) <= block.timestamp
                    require block.timestamp < endTime
                    if msg.value:
                        require 400 * msg.value / msg.value == 400
                    require ext_code.size(folioTokenAddress)
                    call folioTokenAddress.0x79c65068 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, 400 * msg.value
                    require ext_call.success
                    require msg.value + etherRaised >= etherRaised
                    require msg.value + etherRaised >= msg.value
                    etherRaised += msg.value
                    call DEV_WALLETAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokensBought(msg.value, 400 * msg.value, msg.sender);
                else:
                    if block.timestamp < startTime + (504 * 24 * 3600):
                        if msg.value:
                            require 440 * msg.value / msg.value == 440
                        require ext_code.size(folioTokenAddress)
                        call folioTokenAddress.0x79c65068 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, 440 * msg.value
                        require ext_call.success
                        require msg.value + etherRaised >= etherRaised
                        require msg.value + etherRaised >= msg.value
                        etherRaised += msg.value
                        call DEV_WALLETAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokensBought(msg.value, 440 * msg.value, msg.sender);
                    else:
                        require startTime + (504 * 24 * 3600) <= block.timestamp
                        require block.timestamp < endTime
                        if msg.value:
                            require 400 * msg.value / msg.value == 400
                        require ext_code.size(folioTokenAddress)
                        call folioTokenAddress.0x79c65068 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, 400 * msg.value
                        require ext_call.success
                        require msg.value + etherRaised >= etherRaised
                        require msg.value + etherRaised >= msg.value
                        etherRaised += msg.value
                        call DEV_WALLETAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokensBought(msg.value, 400 * msg.value, msg.sender);
    else:
        if block.timestamp < startTime + (168 * 24 * 3600):
            if msg.value:
                require 480 * msg.value / msg.value == 480
            require ext_code.size(folioTokenAddress)
            call folioTokenAddress.0x79c65068 with:
                 gas gas_remaining - 50 wei
                args msg.sender, 480 * msg.value
            require ext_call.success
            require msg.value + etherRaised >= etherRaised
            require msg.value + etherRaised >= msg.value
            etherRaised += msg.value
            call DEV_WALLETAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit TokensBought(msg.value, 480 * msg.value, msg.sender);
        else:
            if startTime + (168 * 24 * 3600) > block.timestamp:
                if startTime + (336 * 24 * 3600) > block.timestamp:
                    require startTime + (504 * 24 * 3600) <= block.timestamp
                    require block.timestamp < endTime
                    if msg.value:
                        require 400 * msg.value / msg.value == 400
                    require ext_code.size(folioTokenAddress)
                    call folioTokenAddress.0x79c65068 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, 400 * msg.value
                    require ext_call.success
                    require msg.value + etherRaised >= etherRaised
                    require msg.value + etherRaised >= msg.value
                    etherRaised += msg.value
                    call DEV_WALLETAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokensBought(msg.value, 400 * msg.value, msg.sender);
                else:
                    if block.timestamp < startTime + (504 * 24 * 3600):
                        if msg.value:
                            require 440 * msg.value / msg.value == 440
                        require ext_code.size(folioTokenAddress)
                        call folioTokenAddress.0x79c65068 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, 440 * msg.value
                        require ext_call.success
                        require msg.value + etherRaised >= etherRaised
                        require msg.value + etherRaised >= msg.value
                        etherRaised += msg.value
                        call DEV_WALLETAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokensBought(msg.value, 440 * msg.value, msg.sender);
                    else:
                        require startTime + (504 * 24 * 3600) <= block.timestamp
                        require block.timestamp < endTime
                        if msg.value:
                            require 400 * msg.value / msg.value == 400
                        require ext_code.size(folioTokenAddress)
                        call folioTokenAddress.0x79c65068 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, 400 * msg.value
                        require ext_call.success
                        require msg.value + etherRaised >= etherRaised
                        require msg.value + etherRaised >= msg.value
                        etherRaised += msg.value
                        call DEV_WALLETAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokensBought(msg.value, 400 * msg.value, msg.sender);
            else:
                if block.timestamp < startTime + (336 * 24 * 3600):
                    if msg.value:
                        require 460 * msg.value / msg.value == 460
                    require ext_code.size(folioTokenAddress)
                    call folioTokenAddress.0x79c65068 with:
                         gas gas_remaining - 50 wei
                        args msg.sender, 460 * msg.value
                    require ext_call.success
                    require msg.value + etherRaised >= etherRaised
                    require msg.value + etherRaised >= msg.value
                    etherRaised += msg.value
                    call DEV_WALLETAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokensBought(msg.value, 460 * msg.value, msg.sender);
                else:
                    if startTime + (336 * 24 * 3600) > block.timestamp:
                        require startTime + (504 * 24 * 3600) <= block.timestamp
                        require block.timestamp < endTime
                        if msg.value:
                            require 400 * msg.value / msg.value == 400
                        require ext_code.size(folioTokenAddress)
                        call folioTokenAddress.0x79c65068 with:
                             gas gas_remaining - 50 wei
                            args msg.sender, 400 * msg.value
                        require ext_call.success
                        require msg.value + etherRaised >= etherRaised
                        require msg.value + etherRaised >= msg.value
                        etherRaised += msg.value
                        call DEV_WALLETAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit TokensBought(msg.value, 400 * msg.value, msg.sender);
                    else:
                        if block.timestamp < startTime + (504 * 24 * 3600):
                            if msg.value:
                                require 440 * msg.value / msg.value == 440
                            require ext_code.size(folioTokenAddress)
                            call folioTokenAddress.0x79c65068 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, 440 * msg.value
                            require ext_call.success
                            require msg.value + etherRaised >= etherRaised
                            require msg.value + etherRaised >= msg.value
                            etherRaised += msg.value
                            call DEV_WALLETAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit TokensBought(msg.value, 440 * msg.value, msg.sender);
                        else:
                            require startTime + (504 * 24 * 3600) <= block.timestamp
                            require block.timestamp < endTime
                            if msg.value:
                                require 400 * msg.value / msg.value == 400
                            require ext_code.size(folioTokenAddress)
                            call folioTokenAddress.0x79c65068 with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, 400 * msg.value
                            require ext_call.success
                            require msg.value + etherRaised >= etherRaised
                            require msg.value + etherRaised >= msg.value
                            etherRaised += msg.value
                            call DEV_WALLETAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit TokensBought(msg.value, 400 * msg.value, msg.sender);
}



}
