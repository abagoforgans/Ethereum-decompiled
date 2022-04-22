contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint8 stor8;

function _fallback() payable {
    stor1 = 100000 * 10^18
    stor2 = 0
    stor3 = 0x6571d516f9ba91b604ab915a5863562204182f87
    stor8 = 0
    stor0 = msg.sender
    return code.data[223 len 1952]
}



// =====================  Runtime code  =====================


const END_TIME = (420400 * 3600)

const BEGIN_TIME = (419656 * 3600)


address owner;
uint256 maxCap;
uint256 ethRaised;
address multisigAddress;
uint256 sub_dfcc3a00;
uint256 revenue;
uint256 expenses;
uint256 sub_4a130ddc;
uint8 crowdsaleState;

function maxCap() {
    return maxCap
}

function revenue() {
    return revenue
}

function multisig() {
    return multisigAddress
}

function sub_4a130ddc(?) {
    return sub_4a130ddc
}

function owner() {
    return owner
}

function sub_dfcc3a00(?) {
    return sub_dfcc3a00
}

function expenses() {
    return expenses
}

function crowdsaleState() {
    require crowdsaleState <= 2
    return crowdsaleState
}

function ethRaised() {
    return ethRaised
}

function setMultisigAddress(address arg1) {
    require msg.sender == owner
    multisigAddress = arg1
}

function _fallback() payable {
    require msg.value >= 10^14
    require crowdsaleState <= 2
    require crowdsaleState != 2
    if ethRaised < maxCap:
        if block.timestamp >= 420400 * 3600:
            crowdsaleState = 2
            emit CrowdsaleEnded(block.number);
            require crowdsaleState <= 2
            if crowdsaleState != 1:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                ethRaised += msg.value
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
        else:
            require crowdsaleState <= 2
            if block.timestamp < 419656 * 3600:
                require crowdsaleState == 1
                ethRaised += msg.value
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                if block.timestamp >= 420400 * 3600:
                    require crowdsaleState == 1
                    ethRaised += msg.value
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    if crowdsaleState == 1:
                        require crowdsaleState <= 2
                        require crowdsaleState == 1
                        ethRaised += msg.value
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        crowdsaleState = 1
                        emit CrowdsaleStarted(block.number);
                        require crowdsaleState <= 2
                        if crowdsaleState != 1:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            ethRaised += msg.value
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
    else:
        require crowdsaleState <= 2
        if crowdsaleState != 2:
            crowdsaleState = 2
            emit CrowdsaleEnded(block.number);
            require crowdsaleState <= 2
            if crowdsaleState != 1:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                ethRaised += msg.value
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
        else:
            if block.timestamp >= 420400 * 3600:
                crowdsaleState = 2
                emit CrowdsaleEnded(block.number);
                require crowdsaleState <= 2
                if crowdsaleState != 1:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    ethRaised += msg.value
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
            else:
                require crowdsaleState <= 2
                if block.timestamp < 419656 * 3600:
                    require crowdsaleState == 1
                    ethRaised += msg.value
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    if block.timestamp >= 420400 * 3600:
                        require crowdsaleState == 1
                        ethRaised += msg.value
                        call multisigAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if crowdsaleState == 1:
                            require crowdsaleState <= 2
                            require crowdsaleState == 1
                            ethRaised += msg.value
                            call multisigAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            crowdsaleState = 1
                            emit CrowdsaleStarted(block.number);
                            require crowdsaleState <= 2
                            if crowdsaleState != 1:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                ethRaised += msg.value
                                call multisigAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
