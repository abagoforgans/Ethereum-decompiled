contract main {


// =======================  Init code  ======================


uint8 stor1; offset 160

function _fallback() payable {
    stor1 = 0
    require not msg.value
    return code.data[46 len 582]
}



// =====================  Runtime code  =====================


address stor0;
uint8 stor1; offset 160
address stor1;
uint256 stor2;

function _fallback() payable {
  stop
}

function SetGiftTime(uint256 arg1) {
    if stor0 == msg.sender:
        stor2 = arg1
}

function CloseGift() {
    if stor0 == msg.sender:
        if address(stor1.field_0):
            uint8(stor1.field_160) = 1
}

function GetGift() payable {
    if address(stor1.field_0) == msg.sender:
        if block.timestamp > stor2:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function PutGift(address arg1) payable {
    if uint8(stor1.field_160):
        if not stor0:
            stor0 = msg.sender
            address(stor1.field_0) = arg1
            stor2 = block.timestamp
    else:
        if msg.value > 10^18:
            stor0 = msg.sender
            address(stor1.field_0) = arg1
            stor2 = block.timestamp
        else:
            if not stor0:
                stor0 = msg.sender
                address(stor1.field_0) = arg1
                stor2 = block.timestamp
}



}
