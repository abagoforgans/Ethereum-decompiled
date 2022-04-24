contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor4 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    require not msg.value
    require code.data[3106 len 32] > 0
    require code.data[3138 len 32] > 0
    stor0 = code.data[3054 len 20]
    stor1 = code.data[3086 len 20]
    stor2 = code.data[3106 len 32]
    stor3 = code.data[3138 len 32]
    return code.data[304 len 2738]
}



// =====================  Runtime code  =====================


const dust = 10^17


address adminAddress;
address treasuryAddress;
uint256 weiPerBtc;
uint256 etmPerBtc;
uint8 stor4;
mapping of uint256 records;
uint256 totalWei;
uint256 totalETM;
uint256 numDonations;

function weiPerBtc() {
    return weiPerBtc
}

function totalETM() {
    return totalETM
}

function records(address arg1) {
    return records[arg1]
}

function numDonations() {
    return numDonations
}

function treasury() {
    return treasuryAddress
}

function totalWei() {
    return totalWei
}

function isHalted() {
    return bool(stor4)
}

function EtmPerBtc() {
    return etmPerBtc
}

function admin() {
    return adminAddress
}

function kill() {
    require msg.sender == adminAddress
    selfdestruct(treasuryAddress)
}

function _fallback() payable {
    revert
}

function isActive() {
    return not bool(stor4)
}

function halt() {
    require msg.sender == adminAddress
    require not stor4
    stor4 = 1
    emit Halted()
}

function unhalt() {
    require msg.sender == adminAddress
    require stor4
    stor4 = 0
    emit Unhalted()
}

function adjustRate(uint256 arg1) {
    require msg.sender == adminAddress
    weiPerBtc = arg1
    emit RateChanged(arg1);
}

function donate(address arg1, address arg2, bytes4 arg3) payable {
    require not stor4
    require msg.value >= 10^17
    require Mask(32, 224, sha3(arg1 xor arg2)) == Mask(32, 224, arg3)
    call treasuryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require etmPerBtc
    require weiPerBtc / etmPerBtc
    require records[address(arg1)] + (msg.value / weiPerBtc / etmPerBtc) >= records[address(arg1)]
    records[address(arg1)] += msg.value / weiPerBtc / etmPerBtc
    require totalWei + msg.value >= totalWei
    totalWei += msg.value
    require totalETM + (msg.value / weiPerBtc / etmPerBtc) >= totalETM
    totalETM += msg.value / weiPerBtc / etmPerBtc
    require numDonations + 1 >= numDonations
    numDonations++
    emit Received(address(arg2), msg.value, weiPerBtc / etmPerBtc, arg1);
}



}
