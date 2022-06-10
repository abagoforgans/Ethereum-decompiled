contract main {




// =====================  Runtime code  =====================


array of uint256 name;
address owner;
address teamPerfitAddr;

function name() {
    return name[0 len name.length]
}

function owner() {
    return owner
}

function teamPerfitAddr() {
    return teamPerfitAddr
}

function status() {
    return teamPerfitAddr, owner
}

function setTeamPerfitAddr(address arg1) {
    require owner == msg.sender
    teamPerfitAddr = arg1
}

function _fallback() payable {
    if msg.value <= 0:
        revert with 0, 'zero value not allowed'
    call teamPerfitAddr with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit() payable {
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Forwarder Deposit failed - zero deposits not allowed'
    call teamPerfitAddr with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
