contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint8 stor3;

function _fallback() payable {
    stor3 = 0
    require not msg.value
    stor0 = code.data[1059 len 20]
    stor1 = code.data[1091 len 20]
    stor2 = code.data[1111 len 32]
    return code.data[126 len 921]
}



// =====================  Runtime code  =====================


address oracleAddress;
address destinationAddress;
uint256 minimumAmount;
uint8 stor3;
uint256 stor3;
mapping of uint8 stor4;

function enabled() {
    return bool(uint8(stor3))
}

function oracleAddress() {
    return oracleAddress
}

function sub_ac20458d(?) {
    return bool(stor4[arg1])
}

function minimumAmount() {
    return minimumAmount
}

function destinationAddress() {
    return destinationAddress
}

function sub_9cc43a7d(?) {
    require oracleAddress == msg.sender
    stor4[address(arg1)] = 1
    emit 0xbd42d287: block.timestamp, arg1
}

function toggle() {
    if destinationAddress != msg.sender:
        require oracleAddress == msg.sender
    uint256(stor3) = not uint8(stor3) or Mask(248, 8, uint256(stor3))
    emit 0x8918c3e3: block.timestamp, bool(uint8(not uint8(stor3))), msg.sender
}

function _fallback() payable {
    require uint8(stor3)
    require stor4[address(msg.sender)]
    require msg.value >= minimumAmount
    call destinationAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x4435a8c4: msg.value, block.timestamp, msg.sender
}



}
