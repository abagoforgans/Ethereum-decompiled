contract main {


// =======================  Init code  ======================


const _fallback = code.data[225 len 1134]




// =====================  Runtime code  =====================


uint256 m_required;
uint256 m_numOwners;
uint256 m_dailyLimit;
uint256 m_spentToday;
uint256 m_lastDay;
array of address owner;

function m_numOwners() {
    return m_numOwners
}

function m_lastDay() {
    return m_lastDay
}

function m_spentToday() {
    return m_spentToday
}

function m_required() {
    return m_required
}

function getOwner(uint256 arg1) {
    require arg1 + 1 < 256
    return owner[arg1]
}

function m_dailyLimit() {
    return m_dailyLimit
}

function isOwner(address arg1) {
    delegate 0x863df6bfa4469f3ead0be8f9f2aae51c91a907b4 with:
       funct call.data[0 len 4]
         gas gas_remaining - 25710 wei
        args call.data[4 len calldata.size - 4]
    return bool(delegate.return_code)
}

function hasConfirmed(bytes32 arg1, address arg2) {
    delegate 0x863df6bfa4469f3ead0be8f9f2aae51c91a907b4 with:
       funct call.data[0 len 4]
         gas gas_remaining - 25710 wei
        args call.data[4 len calldata.size - 4]
    return bool(delegate.return_code)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
    else:
        if calldata.size > 0:
            delegate 0x863df6bfa4469f3ead0be8f9f2aae51c91a907b4 with:
               funct call.data[0 len 4]
                 gas gas_remaining - 25710 wei
                args call.data[4 len calldata.size - 4]
}



}
