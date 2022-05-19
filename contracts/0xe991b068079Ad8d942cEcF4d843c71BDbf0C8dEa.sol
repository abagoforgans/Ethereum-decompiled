contract main {




// =====================  Runtime code  =====================


const GetVersion = 1000


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 getCreditsPerEth;
address stor6;
address stor7;
mapping of struct getConstructCost;

function GetConstructCost(uint256 arg1, uint256 arg2) {
    return arg2 * getConstructCost[arg1].field_1792 * getConstructCost[arg1].field_768 / 100, 
           arg2 * getConstructCost[arg1].field_1792 * getConstructCost[arg1].field_1024 / 100
}

function GetBuildingParam(uint256 arg1) {
    return getConstructCost[arg1].field_0, getConstructCost[arg1].field_256, getConstructCost[arg1].field_512
}

function GetCreditsPerEth() {
    return getCreditsPerEth
}

function _fallback() payable {
    revert
}

function GetLandData() {
    return stor4, stor3
}

function GetInitData() {
    return stor4, stor3, stor0, stor2, stor1
}

function SetAdmin(address arg1) {
    require stor6 == msg.sender
    stor7 = arg1
}

function GetUpgradeCost(uint256 arg1, uint256 arg2) {
    return (getConstructCost[arg1].field_1280 * getConstructCost[arg1].field_2048 / 100 * arg2)
}

function GetDemolishCost(uint256 arg1, uint256 arg2) {
    return (getConstructCost[arg1].field_1536 * getConstructCost[arg1].field_2304 / 100 * arg2)
}

function SetCreditsPerEth(uint256 arg1) {
    require arg1 > 0
    if stor6 != msg.sender:
        require stor7 == msg.sender
    getCreditsPerEth = arg1
}

function SetInitData(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    if stor6 != msg.sender:
        require stor7 == msg.sender
    stor4 = arg1
    stor3 = arg2
    stor0 = arg3
    stor2 = arg4
    stor1 = arg5
}

function SetBuildingSale(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require arg2 > 0
    require arg2 <= 100
    require 0 < arg3
    require arg3 <= 100
    if stor6 != msg.sender:
        require stor7 == msg.sender
    getConstructCost[arg1].field_1792 = arg2
    getConstructCost[arg1].field_2048 = arg3
    getConstructCost[arg1].field_2304 = arg4
}

function SetBuildingData(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) {
    if stor6 != msg.sender:
        require stor7 == msg.sender
    getConstructCost[arg1].field_0 = arg2
    getConstructCost[arg1].field_256 = arg3
    getConstructCost[arg1].field_512 = arg4
    getConstructCost[arg1].field_768 = arg5
    getConstructCost[arg1].field_1024 = arg6
    getConstructCost[arg1].field_1280 = arg7
    getConstructCost[arg1].field_1536 = arg8
    getConstructCost[arg1].field_1792 = 100
    getConstructCost[arg1].field_2048 = 100
    getConstructCost[arg1].field_2304 = 100
}

function GetBuildingData(uint256 arg1) {
    return arg1, 
           getConstructCost[arg1].field_0,
           getConstructCost[arg1].field_256,
           getConstructCost[arg1].field_512,
           getConstructCost[arg1].field_768,
           getConstructCost[arg1].field_1024,
           getConstructCost[arg1].field_1280,
           getConstructCost[arg1].field_1536,
           getConstructCost[arg1].field_768 * getConstructCost[arg1].field_1792 / 100,
           getConstructCost[arg1].field_1024 * getConstructCost[arg1].field_1792 / 100,
           getConstructCost[arg1].field_1280 * getConstructCost[arg1].field_2048 / 100,
           getConstructCost[arg1].field_1536 * getConstructCost[arg1].field_2304 / 100
}

function SetBuildingDataArray(uint256[] arg1) {
    require not arg1.length % 8
    if stor6 != msg.sender:
        require stor7 == msg.sender
    s = 0
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 8
        require idx + 1 < arg1.length
        getConstructCost[cd[((32 * idx) + arg1 + 36)]].field_0 = cd[((32 * idx + 1) + arg1 + 36)]
        require idx + 2 < arg1.length
        getConstructCost[cd[((32 * idx) + arg1 + 36)]].field_256 = cd[((32 * idx + 2) + arg1 + 36)]
        require idx + 3 < arg1.length
        getConstructCost[cd[((32 * idx) + arg1 + 36)]].field_512 = cd[((32 * idx + 3) + arg1 + 36)]
        require idx + 4 < arg1.length
        getConstructCost[cd[((32 * idx) + arg1 + 36)]].field_768 = cd[((32 * idx + 4) + arg1 + 36)]
        require idx + 5 < arg1.length
        getConstructCost[cd[((32 * idx) + arg1 + 36)]].field_1024 = cd[((32 * idx + 5) + arg1 + 36)]
        require idx + 6 < arg1.length
        getConstructCost[cd[((32 * idx) + arg1 + 36)]].field_1280 = cd[((32 * idx + 6) + arg1 + 36)]
        require idx + 7 < arg1.length
        getConstructCost[cd[((32 * idx) + arg1 + 36)]].field_1536 = cd[((32 * idx + 7) + arg1 + 36)]
        getConstructCost[cd[((32 * idx) + arg1 + 36)]].field_1792 = 100
        getConstructCost[cd[((32 * idx) + arg1 + 36)]].field_2048 = 100
        getConstructCost[cd[((32 * idx) + arg1 + 36)]].field_2304 = 100
        s = sha3(cd[((32 * idx) + arg1 + 36)], 8)
        idx = idx + 8
        continue 
}



}
