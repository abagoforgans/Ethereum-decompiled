contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint128 stor5; offset 160
uint256 stor5;

function _fallback() payable {
    stor0 = code.data[548 len 32]
    stor1 = code.data[580 len 32] or Mask(96, 160, stor1)
    stor2 = code.data[612 len 32]
    stor3 = code.data[644 len 32]
    stor4 = msg.sender or Mask(96, 160, stor4)
    uint256(stor5.field_0) = Mask(96, 0, stor5.field_160)
    return code.data[111 len 437]
}



// =====================  Runtime code  =====================


address token1Address;
address token2Address;
uint256 amount1;
uint256 amount2;
address creatorAddress;
address takerAddress;

function creator() payable {
    return creatorAddress
}

function amount2() payable {
    return amount2
}

function token2() payable {
    return token2Address
}

function taker() payable {
    return takerAddress
}

function token1() payable {
    return token1Address
}

function amount1() payable {
    return amount1
}

function _fallback() payable {
    revert 
}

function complete() payable {
    call token1Address.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args takerAddress, amount1
    require ext_call.success
    call token2Address.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args creatorAddress, amount2
    emit Completed()
}



}
