contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 759]




// =====================  Runtime code  =====================


array of uint256 stor1;
array of address stor2;

function _fallback() payable {
    revert
}

function pixels(uint256 arg1) {
    require arg1 < 10^6
    return stor[3 * arg1], stor1[arg1], stor2[arg1]
}

function buyPixel(uint256 arg1, bytes32 arg2) payable {
    require msg.value > 0
    require arg1 < 10^6
    require msg.value > stor1[arg1]
    require stor2[arg1] != msg.sender
    if stor1[arg1] > 0:
        call stor2[arg1] with:
           value stor1[arg1] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require arg1 < 10^6
    stor[3 * arg1] = arg2
    stor1[arg1] = msg.value
    stor2[arg1] = msg.sender
    emit PixelBought(arg1, arg2, msg.value, msg.sender, stor2[arg1]);
    return 1
}



}
