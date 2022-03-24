contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 325]




// =====================  Runtime code  =====================


uint256 payed;
uint256 delivered;
uint256 pricePerCafe;
address owner;
uint256 stor3;

function payed() payable {
    return payed
}

function PricePerCafe() payable {
    return pricePerCafe
}

function Owner() payable {
    return address(owner)
}

function delivered() payable {
    return delivered
}

function CafeDelivered() payable {
    delivered++
}

function GetFreeCnt() payable {
    return (payed - delivered)
}

function _fallback() payable {
    payed += msg.value / pricePerCafe
}

function CafeMaker() payable {
    pricePerCafe = 10
    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
}

function CollectMoney(uint256 arg1) payable {
    call address(owner) with:
       value arg1 wei
         gas 0 wei
    require ext_call.success
}



}
