contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 522]




// =====================  Runtime code  =====================


address publisherAddress;
uint256 stor0;
uint256 sub_7a5be237;
uint256 price;
uint256 description;
address owner1;
uint256 stor4;
address owner2;
uint256 stor5;
uint256 share1;
uint256 share2;

function owner2() payable {
    return address(owner2)
}

function description() payable {
    return description
}

function owner1() payable {
    return address(owner1)
}

function sub_7a5be237(?) payable {
    return sub_7a5be237
}

function publisher() payable {
    return address(publisherAddress)
}

function price() payable {
    return price
}

function share1() payable {
    return share1
}

function share2() payable {
    return share2
}

function _fallback() payable {
  stop
}

function sub_f0054a13(?) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    sub_7a5be237 = arg2
    price = arg3
    description = arg4
    share1 = 0
    share2 = 0
}

function Subscribe(address arg1, uint256 arg2) payable {
    if share1 != 0:
        uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
        share2 = arg2
    else:
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
        share1 = arg2
}

function Trade(address arg1, address arg2, uint256 arg3) payable {
    if address(owner1) == arg1:
        if share2 > arg3:
            share1 += arg3
            share2 -= arg3
    else:
        if address(owner2) == arg1:
            if share1 > arg3:
                share1 -= arg3
                share2 += arg3
}



}
