contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 5 * 10^13
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[46 len 273]
}



// =====================  Runtime code  =====================


uint256 payed;
uint256 delivered;
uint256 pricePerCafe;
address owner;

function payed() payable {
    return payed
}

function PricePerCafe() payable {
    return pricePerCafe
}

function Owner() payable {
    return owner
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

function CollectMoney(uint256 arg1) payable {
    call owner with:
       value arg1 wei
         gas 0 wei
    require ext_call.success
}



}
