contract main {


// =======================  Init code  ======================


array of struct stor0;

function _fallback() {
    stor0.length = 1
    if not stor0.length <= 1:
        idx = 3
        while 3 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            stor0[idx].field_512 = 0
            idx = idx + 3
            continue 
    return code.data[124 len 975]
}



// =====================  Runtime code  =====================


array of struct sub_3b3e67c5;
mapping of uint256 partnerID;
uint256 totalShares;
uint256 totalTokens;

function partnerID(address arg1) {
    return partnerID[arg1]
}

function totalShares() {
    return totalShares
}

function sub_3b3e67c5(?) {
    require arg1 < sub_3b3e67c5.length
    return sub_3b3e67c5[arg1].field_256
}

function totalTokens() {
    return totalTokens
}

function getTokenBalance(uint256 arg1) {
    require arg1 < sub_3b3e67c5.length
    return sub_3b3e67c5[arg1].field_512
}

function getHolder(uint256 arg1) {
    require arg1 < sub_3b3e67c5.length
    return sub_3b3e67c5[arg1].field_0
}

function _fallback() payable {
    revert 
}

function numberOfPartners() {
    return (sub_3b3e67c5.length - 1)
}

function partners(uint256 arg1) {
    require arg1 < sub_3b3e67c5.length
    return sub_3b3e67c5[arg1].field_0, sub_3b3e67c5[arg1].field_256, sub_3b3e67c5[arg1].field_512
}

function sub_5211c4ab(?) {
    if not partnerID[address(arg1)]:
        sub_3b3e67c5.length++
        if not sub_3b3e67c5.length <= sub_3b3e67c5.length + 1:
            idx = (3 * sub_3b3e67c5.length) + 3
            while 3 * sub_3b3e67c5.length > idx:
                sub_3b3e67c5[idx].field_0 = 0
                sub_3b3e67c5[idx].field_256 = 0
                sub_3b3e67c5[idx].field_512 = 0
                idx = idx + 3
                continue 
        require sub_3b3e67c5.length < sub_3b3e67c5.length
        partnerID[address(arg1)] = sub_3b3e67c5.length
        sub_3b3e67c5[sub_3b3e67c5.length].field_0 = arg1
        sub_3b3e67c5[sub_3b3e67c5.length].field_256 = arg2
        sub_3b3e67c5[sub_3b3e67c5.length].field_512 = arg3
        totalShares += arg2
        totalTokens += arg3
}



}
