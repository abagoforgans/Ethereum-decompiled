contract main {


// =======================  Init code  ======================


array of uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 storB10E;
uint256 storC257;

function _fallback() payable {
    stor4 = msg.sender or Mask(96, 160, stor4)
    if code.data[9483 len 20] != 0:
        stor5 = code.data[9471 len 32]
    else:
        create contract with 0 wei
                        code: code.data[529 len 275]
        stor5 = create.new_address or Mask(96, 160, stor5)
    stor1.length = 1
    if not stor1.length <= 1:
        idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf8
        while code.data[9439 len 32] + (2 * stor1.length) > idx:
            stor[idx] = 0
            stor1[idx] = 0
            idx = idx + 1
            continue 
    require 0 < stor1.length
    stor[code.data[9439 len 32]] = 'version_id'
    storB10E = 'reference'
    stor3 = 1
    if not stor3 <= 1:
        idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85d
        while code.data[9407 len 32] + (2 * stor3) > idx:
            stor[idx] = 0
            stor1[idx] = 0
            idx = idx + 1
            continue 
    require 0 < stor3
    stor[code.data[9407 len 32]] = 'user_id'
    storC257 = 'reference'
    return code.data[804 len 8603]
}



// =====================  Runtime code  =====================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[35 len 240]
}



}
