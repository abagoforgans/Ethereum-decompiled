contract main {




// =====================  Runtime code  =====================


uint256 sub_d889df34;
address logicContractAddress;
address tokenContractAddress;
array of address validators;
mapping of struct sub_4f1811dd;
uint256 totalVotingPower;
uint256 sub_568873ad;
uint256 sub_f3f39ee5;
uint256 sub_3cd3f6a7;
mapping of uint8 stor9;
mapping of uint256 reserved;

function validators(uint256 arg1) {
    require arg1 < validators.length
    return validators[arg1]
}

function sub_3cd3f6a7(?) {
    return sub_3cd3f6a7
}

function sub_4f1811dd(?) {
    return sub_4f1811dd[arg1].field_0, sub_4f1811dd[arg1].field_8
}

function tokenContract() {
    return tokenContractAddress
}

function sub_568873ad(?) {
    return sub_568873ad
}

function totalVotingPower() {
    return totalVotingPower
}

function reserved(bytes32 arg1) {
    return reserved[arg1]
}

function logicContract() {
    return logicContractAddress
}

function sub_d889df34(?) {
    return sub_d889df34
}

function sub_f21a2116(?) {
    return bool(stor9[arg1])
}

function sub_f3f39ee5(?) {
    return sub_f3f39ee5
}

function _fallback() payable {
    revert
}

function sub_2277e53a(?) {
    delegate logicContractAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
}

function sub_50fbe2d9(?) {
    delegate logicContractAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
}

function sub_7ed93957(?) {
    delegate logicContractAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
}

function sub_945ac863(?) {
    delegate logicContractAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
}



}
