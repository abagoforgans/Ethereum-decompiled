contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = 1
    stor3 = 5 * 10^16
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[100 len 998]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint256 cafePayed;
uint256 cafeDelivered;
uint256 pricePerCafe;
address deviceOwner;
address deviceAddr;
uint256 stor5;

function DeviceAddr() payable {
    return address(deviceAddr)
}

function CafePayed() payable {
    return cafePayed
}

function PricePerCafe() payable {
    return pricePerCafe
}

function CafeDelivered() payable {
    return cafeDelivered
}

function DeviceOwner() payable {
    return deviceOwner
}

function locked() payable {
    return bool(stor0)
}

function RegisterDevice() payable {
    uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
}

function CollectMoney(uint256 arg1) payable {
    call deviceOwner with:
       value arg1 wei
         gas 0 wei
    require ext_call.success
}

function BookCafe() payable {
    require address(deviceAddr) == msg.sender
    cafeDelivered++
    if cafePayed - cafeDelivered < 1:
        stor0 = 1
}

function _fallback() payable {
    cafePayed += msg.value / pricePerCafe
    if cafePayed - cafeDelivered >= 1:
        stor0 = 0
    else:
        stor0 = 1
}



}
