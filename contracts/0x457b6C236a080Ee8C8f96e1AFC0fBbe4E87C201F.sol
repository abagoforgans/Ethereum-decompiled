contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 160
uint256 stor1;

function _fallback() payable {
    mem[96 len -3504] = code.data[3792 len -3504]
    mem[64] = -3408
    stor0 = tx.origin or Mask(96, 160, stor0)
    mem[18] = 10
    mem[50] = 'individual'
    mem[-14] = 160
    mem[82] = mem[mem[128] + 96]
    _5 = mem[mem[128] + 96]
    mem[114 len mem[mem[128] + 96]] = mem[mem[128] + 128 len mem[mem[128] + 96]]
    if not _5 % 32:
        create contract with 0 wei
                        code: mem[Mask(144, 0, 'individual'), mem[82 len 14] len _5 + -Mask(144, 0, 'individual'), mem[82 len 14] + 114]
    else:
        mem[floor32(_5) + 114] = mem[floor32(_5) + -(_5 % 32) + 146 len _5 % 32]
        create contract with 0 wei
                        code: mem[Mask(144, 0, 'individual'), mem[82 len 14] len floor32(_5) + -Mask(144, 0, 'individual'), mem[82 len 14] + 146]
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    return code.data[3618 len 174]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
mapping of uint256 stor5;
uint256 stor7;
uint256 stor26;
uint256 stor8FEE;

function _fallback() payable {
    mem[96 len -2841] = code.data[3330 len -2841]
    mem[64] = -2745
    stor0 = tx.origin or Mask(96, 160, stor0)
    mem[0] = 1
    stor1.length = (2 * mem[mem[96] + 96]) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor26 = 1
    stor8FEE = 1
    stor7 = mem[128]
    stor5[mem[140 len 20]] = 1
    return code.data[489 len 2841]
}



}
