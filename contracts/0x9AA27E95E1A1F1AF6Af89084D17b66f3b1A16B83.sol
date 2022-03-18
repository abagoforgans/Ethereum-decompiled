contract main {


// =======================  Init code  ======================


array of uint8 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor5;
array of uint256 stor6;

function _fallback() payable {
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = (7 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f303
        while (7 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            stor1[idx] = 0
            stor2[idx] = 0
            stor3[idx] = 0
            stor5[idx] = 0
            s = sha3(idx + 5)
            while sha3(idx + 5) + stor5[idx] > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor6[idx] = 0
            mem[0] = idx + 6
            s = sha3(idx + 6)
            while sha3(idx + 6) + stor6[idx] > s:
                stor[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    return code.data[220 len 2951]
}



// =====================  Runtime code  =====================


#
#  - totalSupply(bytes32 arg1)
#
mapping of uint256 sub_c4242719;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor5;
array of uint256 stor6;
array of uint8 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779001;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779003;

function sub_c4242719(?) payable {
    return sub_c4242719[arg1]
}

function _fallback() payable {
  stop
}

function assets(uint256 arg1) payable {
    require arg1 < stor1.length
    return stor1[arg1].field_0, storB10E[arg1], storB10E[arg1], storB10E[arg1]
}

function name(bytes32 arg1) payable {
    if 0 == sub_c4242719[arg1]:
        return 0
    require sub_c4242719[arg1] < stor1.length
    return storB10E[stor0[arg1]]
}

function baseUnit(bytes32 arg1) payable {
    if 0 == sub_c4242719[arg1]:
        return 0
    require sub_c4242719[arg1] < stor1.length
    return storB10E[stor0[arg1]]
}

function description(bytes32 arg1) payable {
    if 0 == sub_c4242719[arg1]:
        return 0
    require sub_c4242719[arg1] < stor1.length
    return storB10E[stor0[arg1]]
}

function balanceOf(address arg1, bytes32 arg2) payable {
    if 0 == sub_c4242719[arg2]:
        return 0
    require sub_c4242719[arg2] < stor1.length
    if not stor[(7 * stor0[arg2]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][arg1]:
        return 0
    require sub_c4242719[arg2] < stor1.length
    require stor[(7 * stor0[arg2]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][arg1] < stor[code.data[2919 len 32] + (7 * stor0[arg2])]
    return stor[sha3(code.data[2919 len 32] + (7 * stor0[arg2])) + stor[(7 * stor0[arg2]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][arg1]]
}

function sub_fbf8871c(?) payable {
    if sub_c4242719[arg1] > 0:
        return 0
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = (7 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f303
        while (7 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            uint8(stor1[idx].field_0) = 0
            stor2[idx] = 0
            stor3[idx] = 0
            stor5[idx] = 0
            s = sha3(idx + 5)
            while sha3(idx + 5) + stor5[idx] > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor6[idx] = 0
            mem[0] = idx + 6
            s = sha3(idx + 6)
            while sha3(idx + 6) + stor6[idx] > s:
                stor[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    mem[384] = 2
    require stor1.length < stor1.length
    stor1[stor1.length].field_0 = arg1
    stor1[stor1.length].field_256 = arg5 or Mask(248, 8, stor1[stor1.length].field_256)
    stor1[stor1.length].field_512 = arg3
    stor1[stor1.length].field_768 = arg4
    stor1[stor1.length].field_1280 = 2
    s = 0
    idx = 320
    while 384 > idx:
        stor[s + sha3((7 * stor1.length) + ('name', 'stor1', 1) + 5)].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor1[stor1.length].field_1280 > idx:
        address(stor[idx + sha3((7 * stor1.length) + ('name', 'stor1', 1) + 5)].field_0) = 0
        idx = idx + 1
        continue 
    stor1[stor1.length].field_1536 = 2
    s = 0
    idx = 416
    while 480 > idx:
        stor[s + sha3((7 * stor1.length) + ('name', 'stor1', 1) + 6)].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor1[stor1.length].field_1536 > idx:
        stor[idx + sha3((7 * stor1.length) + ('name', 'stor1', 1) + 6)].field_0 = 0
        idx = idx + 1
        continue 
    require stor1.length < stor1.length
    require 1 < stor[code.data[2919 len 32] + (7 * stor1.length)]
    stor1[sha3(code.data[2919 len 32] + (7 * stor1.length))].field_0 = arg2
    require stor1.length < stor1.length
    require 1 < storB10E[stor1.length]
    stor1[sha3((7 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f305)].field_0 = tx.origin or Mask(96, 160, stor1[sha3((7 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f305)].field_0)
    require stor1.length < stor1.length
    stor[(7 * stor1.length) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin] = 1
    sub_c4242719[arg1] = stor1.length
    emit 0x30b1b5fb: arg2, 0, tx.origin, arg1
    return 1
}

function transfer(address arg1, uint256 arg2, bytes32 arg3) payable {
    if 0 == sub_c4242719[arg3]:
        return 0
    if 0 == sub_c4242719[arg3]:
        if arg2 <= 1:
            return 0
        if 0 < arg2:
            return 0
    else:
        require sub_c4242719[arg3] < stor1.length
        if not stor[(7 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin]:
            if arg2 <= 1:
                return 0
            if 0 < arg2:
                return 0
        else:
            require sub_c4242719[arg3] < stor1.length
            require stor[(7 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin] < stor[code.data[2919 len 32] + (7 * stor0[arg3])]
            if arg2 <= 1:
                return 0
            if stor[sha3(code.data[2919 len 32] + (7 * stor0[arg3])) + stor[(7 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin]] < arg2:
                return 0
    require sub_c4242719[arg3] < stor1.length
    require sub_c4242719[arg3] < stor1.length
    if stor[(7 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][arg1]:
        require stor[(7 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin] < stor[code.data[2919 len 32] + (7 * stor0[arg3])]
        stor[sha3(code.data[2919 len 32] + (7 * stor0[arg3])) + stor[(7 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin]] -= arg2
        require sub_c4242719[arg3] < stor1.length
        require stor[(7 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][arg1] < stor[code.data[2919 len 32] + (7 * stor0[arg3])]
        stor[stor[(7 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][arg1] + sha3(code.data[2919 len 32] + (7 * stor0[arg3]))] += arg2
    else:
        stor[code.data[2919 len 32] + (7 * stor0[arg3])]++
        if not stor[code.data[2919 len 32] + (7 * stor0[arg3])] <= stor[code.data[2919 len 32] + (7 * stor0[arg3])] + 1:
            idx = stor[code.data[2919 len 32] + (7 * stor0[arg3])] + 1
            while stor[code.data[2919 len 32] + (7 * stor0[arg3])] > idx:
                stor[idx + sha3(code.data[2919 len 32] + (7 * stor0[arg3]))] = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg3] < stor1.length
        storB10E[stor0[arg3]]++
        if not storB10E[stor0[arg3]] <= storB10E[stor0[arg3]] + 1:
            idx = storB10E[stor0[arg3]] + 1
            while storB10E[stor0[arg3]] > idx:
                stor[idx + sha3((7 * stor0[arg3]) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f305)] = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg3] < stor1.length
        require stor[code.data[2919 len 32] + (7 * stor0[arg3])] < stor[code.data[2919 len 32] + (7 * stor0[arg3])]
        stor[stor[code.data[2919 len 32] + (7 * stor0[arg3])] + sha3(code.data[2919 len 32] + (7 * stor0[arg3]))] = 0
        require sub_c4242719[arg3] < stor1.length
        require stor[code.data[2919 len 32] + (7 * stor0[arg3])] < storB10E[stor0[arg3]]
        stor[stor[code.data[2919 len 32] + (7 * stor0[arg3])] + sha3((7 * stor0[arg3]) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f305)] = arg1 or Mask(96, 160, stor[stor[code.data[2919 len 32] + (7 * stor0[arg3])] + sha3((7 * stor0[arg3]) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f305)])
        require sub_c4242719[arg3] < stor1.length
        stor[(7 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][arg1] = stor[code.data[2919 len 32] + (7 * stor0[arg3])]
        require stor[(7 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin] < stor[code.data[2919 len 32] + (7 * stor0[arg3])]
        stor[sha3(code.data[2919 len 32] + (7 * stor0[arg3])) + stor[(7 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin]] -= arg2
        require sub_c4242719[arg3] < stor1.length
        require stor[code.data[2919 len 32] + (7 * stor0[arg3])] < stor[code.data[2919 len 32] + (7 * stor0[arg3])]
        stor[stor[code.data[2919 len 32] + (7 * stor0[arg3])] + sha3(code.data[2919 len 32] + (7 * stor0[arg3]))] += arg2
    emit 0x30b1b5fb: arg2, tx.origin, arg1, arg3
    return 1
}



}
