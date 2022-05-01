contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    stor0 = code.data[3102 len 20]
    stor1 = code.data[3134 len 20]
    return code.data[203 len 2887]
}



// =====================  Runtime code  =====================


address sub_c23aa65aAddress;
address adminAddress;
uint256 numVotes;
mapping of struct sub_7c95ac27;
array of uint256 stor4;

function sub_7c95ac27(?) {
    return sub_7c95ac27[arg1].field_0
}

function sub_7e57208c(?) {
    return sub_7c95ac27[arg1].field_512
}

function sub_8b5a8db2(?) {
    return numVotes
}

function numVotes() {
    return numVotes
}

function sub_c23aa65a(?) {
    return sub_c23aa65aAddress
}

function getVoter(uint256 arg1) {
    return sub_7c95ac27[arg1].field_256
}

function sub_efbef75a(?) {
    return bool(sub_7c95ac27[arg1].field_416)
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_0bf3a8b5(?) {
    require msg.sender == sub_c23aa65aAddress
    sub_7c95ac27[arg1].field_0 = arg2
}

function sub_5d0becce(?) {
    require msg.sender == sub_c23aa65aAddress
    sub_7c95ac27[arg1].field_256 = arg2
}

function sub_f5232c6a(?) {
    require msg.sender == sub_c23aa65aAddress
    sub_7c95ac27[arg1].field_512 = arg2
}

function setAdmin(address arg1) {
    require msg.sender == adminAddress
    if arg1:
        adminAddress = arg1
}

function sub_cca14931(?) {
    require msg.sender == adminAddress
    if arg1:
        sub_c23aa65aAddress = arg1
}

function sub_baaf43d2(?) {
    require msg.sender == sub_c23aa65aAddress
    sub_7c95ac27[arg1].field_416 = Mask(96, 0, arg2)
}

function sub_859918af(?) {
    require msg.sender == sub_c23aa65aAddress
    sub_7c95ac27[stor2 + 1].field_0 = arg2
    sub_7c95ac27[stor2 + 1].field_256 = arg1
    sub_7c95ac27[stor2 + 1].field_416 = Mask(96, 0, arg3)
    sub_7c95ac27[stor2 + 1].field_512 = arg4
    stor4[arg2]++
    if not stor4[arg2] <= stor4[arg2] + 1:
        idx = stor4[arg2] + 1
        while stor4[arg2] > idx:
            stor4[arg2][idx] = 0
            idx = idx + 1
            continue 
    stor4[arg2][stor4[arg2]] = numVotes + 1
    numVotes++
    return (numVotes + 1)
}



}
