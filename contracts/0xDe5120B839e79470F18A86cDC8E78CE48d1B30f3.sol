contract main {




// =====================  Runtime code  =====================


address owner;
address donationAddress;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;

function getDonationAddress() {
    require msg.sender == owner
    return donationAddress
}

function owner() {
    return owner
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDonationAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require msg.sender
    donationAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call donationAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EventWithdraw(donationAddress, eth.balance(this.address));
}

function _fallback() payable {
    require msg.sender
    require this.address != msg.sender
    if stor5 != msg.value:
        if stor6 != msg.value:
            if stor7 != msg.value:
                if stor8 != msg.value:
                    if stor9 != msg.value:
                        if stor10 != msg.value:
                            if stor11 != msg.value:
                                if stor12 != msg.value:
                                    if stor13 != msg.value:
                                        if stor14 != msg.value:
                                            if stor15 != msg.value:
                                                if stor16 != msg.value:
                                                    if stor17 != msg.value:
                                                        if stor18 != msg.value:
                                                            if stor19 != msg.value:
                                                                if stor20 != msg.value:
                                                                    if stor21 != msg.value:
                                                                        if stor22 != msg.value:
                                                                            if stor23 != msg.value:
                                                                                if stor24 != msg.value:
                                                                                    if stor25 != msg.value:
                                                                                        if stor26 != msg.value:
                                                                                            if stor27 != msg.value:
                                                                                                if stor28 != msg.value:
                                                                                                    if stor29 != msg.value:
                                                                                                        if stor30 != msg.value:
                                                                                                            if stor31 != msg.value:
                                                                                                                if stor32 != msg.value:
                                                                                                                    if stor33 != msg.value:
                                                                                                                        require msg.value == stor34
    emit 0xdd6c6913: msg.sender, msg.value
}



}
