contract main {


// =======================  Init code  ======================


function _fallback() {
    mem[96 len -925] = code.data[1157 len -925]
    mem[64] = -829
    delegate 0x863df6bfa4469f3ead0be8f9f2aae51c91a907b4 with:
       funct (Mask(32, 224, sha3('initWallet(address[],uint256,uin', 't256)')) >> 224)
         gas gas_remaining - 10000 wei
        args code.data[-(32 * mem[mem[96] + 96] + 4) + 232 len 32 * mem[mem[96] + 96] + 4]
    return code.data[232 len 925]
}



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
         gas gas_remaining - 50 wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function hasConfirmed(bytes32 arg1, address arg2) {
    delegate 0x863df6bfa4469f3ead0be8f9f2aae51c91a907b4 with:
       funct call.data[0 len 4]
         gas gas_remaining - 50 wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
    if calldata.size <= 0:
    delegate 0x863df6bfa4469f3ead0be8f9f2aae51c91a907b4 with:
       funct call.data[0 len 4]
         gas gas_remaining - 50 wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
}



}
