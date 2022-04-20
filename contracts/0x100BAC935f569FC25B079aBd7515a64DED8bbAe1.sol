contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    require code.data[707 len 32] > 0
    stor0 = code.data[707 len 32]
    return code.data[74 len 633]
}



// =====================  Runtime code  =====================


const isPricingStrategy = 1

const isSane(address arg1) = 1

const isPresalePurchase(address arg1) = 0


uint256 oneTokenInWei;

function oneTokenInWei() {
    return oneTokenInWei
}

function _fallback() payable {
    revert
}

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) {
    require ext_code.size(0x75d21f597dbdfc2d26fd58fd9afb02c902eaa8b1)
    delegate 0x75d21f597dbdfc2d26fd58fd9afb02c902eaa8b1.0x1d3b9edf with:
         gas gas_remaining - 710 wei
        args arg1, 10^arg5
    require delegate.return_code
    require oneTokenInWei
    return (delegate.return_data[0] / oneTokenInWei)
}



}
