contract main {


// =======================  Init code  ======================


uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;

function _fallback() payable {
    stor1++
    if not stor1 <= stor1 + 1:
        idx = (4 * stor1 + 1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
        while (4 * stor1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            stor2[idx] = 0
            s = sha3(idx + 2)
            while sha3(idx + 2) + stor2[idx] > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor3[idx] = 0
            mem[0] = idx + 3
            s = sha3(idx + 3)
            while sha3(idx + 3) + stor3[idx] > s:
                stor[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    return code.data[194 len 2362]
}



// =====================  Runtime code  =====================


#
#  - totalSupply(bytes32 arg1)
#
mapping of uint256 sub_c4242719;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;

function sub_c4242719(?) payable {
    return sub_c4242719[arg1]
}

function assets(uint256 arg1) payable {
    require arg1 < assets.length
    return assets[arg1].field_0
}

function _fallback() payable {
  stop
}

function balanceOf(address arg1, bytes32 arg2) payable {
    if 0 == sub_c4242719[arg2]:
        return 0
    require sub_c4242719[arg2] < assets.length
    if not stor[(4 * stor0[arg2]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][arg1]:
        return 0
    require sub_c4242719[arg2] < assets.length
    require stor[(4 * stor0[arg2]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][arg1] < stor[code.data[2330 len 32] + (4 * stor0[arg2])]
    return stor[sha3(code.data[2330 len 32] + (4 * stor0[arg2])) + stor[(4 * stor0[arg2]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][arg1]]
}

function sub_9d12e015(?) payable {
    if sub_c4242719[arg1] > 0:
        return 0
    assets.length++
    if not assets.length <= assets.length + 1:
        idx = (4 * assets.length + 1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
        while (4 * assets.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            stor2[idx] = 0
            s = sha3(idx + 2)
            while sha3(idx + 2) + stor2[idx] > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor3[idx] = 0
            mem[0] = idx + 3
            s = sha3(idx + 3)
            while sha3(idx + 3) + stor3[idx] > s:
                stor[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    mem[288] = 2
    require assets.length < assets.length
    assets[assets.length].field_0 = arg1
    assets[assets.length].field_512 = 2
    s = 0
    idx = 224
    while 288 > idx:
        stor[s + sha3((4 * assets.length) + ('name', 'assets', 1) + 2)].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while assets[assets.length].field_512 > idx:
        address(stor[idx + sha3((4 * assets.length) + ('name', 'assets', 1) + 2)].field_0) = 0
        idx = idx + 1
        continue 
    assets[assets.length].field_768 = 2
    s = 0
    idx = 320
    while 384 > idx:
        stor[s + sha3((4 * assets.length) + ('name', 'assets', 1) + 3)].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while assets[assets.length].field_768 > idx:
        stor[idx + sha3((4 * assets.length) + ('name', 'assets', 1) + 3)].field_0 = 0
        idx = idx + 1
        continue 
    require assets.length < assets.length
    require 1 < stor[code.data[2330 len 32] + (4 * stor1.length)]
    assets[sha3(code.data[2330 len 32] + (4 * assets.length))].field_0 = arg2
    require assets.length < assets.length
    require 1 < storB10E[stor1.length]
    assets[sha3((4 * assets.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308)].field_0 = tx.origin or Mask(96, 160, assets[sha3((4 * assets.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308)].field_0)
    require assets.length < assets.length
    stor[(4 * stor1.length) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin] = 1
    sub_c4242719[arg1] = assets.length
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
        require sub_c4242719[arg3] < assets.length
        if not stor[(4 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin]:
            if arg2 <= 1:
                return 0
            if 0 < arg2:
                return 0
        else:
            require sub_c4242719[arg3] < assets.length
            require stor[(4 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin] < stor[code.data[2330 len 32] + (4 * stor0[arg3])]
            if arg2 <= 1:
                return 0
            if stor[sha3(code.data[2330 len 32] + (4 * stor0[arg3])) + stor[(4 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin]] < arg2:
                return 0
    require sub_c4242719[arg3] < assets.length
    require sub_c4242719[arg3] < assets.length
    if stor[(4 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][arg1]:
        require stor[(4 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin] < stor[code.data[2330 len 32] + (4 * stor0[arg3])]
        stor[sha3(code.data[2330 len 32] + (4 * stor0[arg3])) + stor[(4 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin]] -= arg2
        require sub_c4242719[arg3] < assets.length
        require stor[(4 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][arg1] < stor[code.data[2330 len 32] + (4 * stor0[arg3])]
        stor[stor[(4 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][arg1] + sha3(code.data[2330 len 32] + (4 * stor0[arg3]))] += arg2
    else:
        stor[code.data[2330 len 32] + (4 * stor0[arg3])]++
        if not stor[code.data[2330 len 32] + (4 * stor0[arg3])] <= stor[code.data[2330 len 32] + (4 * stor0[arg3])] + 1:
            idx = stor[code.data[2330 len 32] + (4 * stor0[arg3])] + 1
            while stor[code.data[2330 len 32] + (4 * stor0[arg3])] > idx:
                stor[idx + sha3(code.data[2330 len 32] + (4 * stor0[arg3]))] = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg3] < assets.length
        storB10E[stor0[arg3]]++
        if not storB10E[stor0[arg3]] <= storB10E[stor0[arg3]] + 1:
            idx = storB10E[stor0[arg3]] + 1
            while storB10E[stor0[arg3]] > idx:
                stor[idx + sha3((4 * stor0[arg3]) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308)] = 0
                idx = idx + 1
                continue 
        require sub_c4242719[arg3] < assets.length
        require stor[code.data[2330 len 32] + (4 * stor0[arg3])] < stor[code.data[2330 len 32] + (4 * stor0[arg3])]
        stor[stor[code.data[2330 len 32] + (4 * stor0[arg3])] + sha3(code.data[2330 len 32] + (4 * stor0[arg3]))] = 0
        require sub_c4242719[arg3] < assets.length
        require stor[code.data[2330 len 32] + (4 * stor0[arg3])] < storB10E[stor0[arg3]]
        stor[stor[code.data[2330 len 32] + (4 * stor0[arg3])] + sha3((4 * stor0[arg3]) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308)] = arg1 or Mask(96, 160, stor[stor[code.data[2330 len 32] + (4 * stor0[arg3])] + sha3((4 * stor0[arg3]) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308)])
        require sub_c4242719[arg3] < assets.length
        stor[(4 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][arg1] = stor[code.data[2330 len 32] + (4 * stor0[arg3])]
        require stor[(4 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin] < stor[code.data[2330 len 32] + (4 * stor0[arg3])]
        stor[sha3(code.data[2330 len 32] + (4 * stor0[arg3])) + stor[(4 * stor0[arg3]) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0c][tx.origin]] -= arg2
        require sub_c4242719[arg3] < assets.length
        require stor[code.data[2330 len 32] + (4 * stor0[arg3])] < stor[code.data[2330 len 32] + (4 * stor0[arg3])]
        stor[stor[code.data[2330 len 32] + (4 * stor0[arg3])] + sha3(code.data[2330 len 32] + (4 * stor0[arg3]))] += arg2
    emit 0x30b1b5fb: arg2, tx.origin, arg1, arg3
    return 1
}



}
