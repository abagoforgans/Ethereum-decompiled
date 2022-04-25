contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint8 stor4;

function _fallback() payable {
    stor4 = 0
    require not msg.value
    stor0 = code.data[1172 len 20]
    stor1 = code.data[1204 len 20]
    stor2 = code.data[1224 len 32]
    return code.data[126 len 1034]
}



// =====================  Runtime code  =====================


address oracleAddress;
address destinationAddress;
uint256 minimumAmount;
uint256 currentRaisedAmount;
uint8 stor4;
uint256 stor4;
mapping of uint8 stor5;

function enabled() {
    return bool(uint8(stor4))
}

function currentRaisedAmount() {
    return currentRaisedAmount
}

function oracleAddress() {
    return oracleAddress
}

function sub_ac20458d(?) {
    return bool(stor5[arg1])
}

function minimumAmount() {
    return minimumAmount
}

function destinationAddress() {
    return destinationAddress
}

function sub_56cc4b09(?) {
    require oracleAddress == msg.sender
    minimumAmount = arg1
}

function sub_9cc43a7d(?) {
    require oracleAddress == msg.sender
    stor5[address(arg1)] = 1
    emit 0xbd42d287: block.timestamp, arg1
}

function toggle() {
    if destinationAddress != msg.sender:
        require oracleAddress == msg.sender
    uint256(stor4) = not uint8(stor4) or Mask(248, 8, uint256(stor4))
    emit 0x8918c3e3: block.timestamp, bool(uint8(not uint8(stor4))), msg.sender
}

function _fallback() payable {
    require uint8(stor4)
    require stor5[address(msg.sender)]
    require msg.value >= minimumAmount
    call destinationAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    currentRaisedAmount += msg.value
    emit 0x4435a8c4: msg.value, block.timestamp, msg.sender
}



}
