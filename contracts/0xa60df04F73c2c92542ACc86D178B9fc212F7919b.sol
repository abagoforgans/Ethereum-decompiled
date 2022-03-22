contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor5;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 20
    stor0.length.field_8 = 'www.cryptonomica.net' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 31
    stor5.length.field_8 = 'https://cryptonomica.net/#/key/'
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[480 len 3243]
}



// =====================  Runtime code  =====================


#
#  - getStringToSignWithKey(string arg1)
#
array of uint256 creator;
mapping of uint256 sub_d61a86bf;
array of uint256 sub_22652e05;
array of uint256 sub_a2d4e262;
array of uint256 sub_7e808ad2;

function creator() payable {
    return creator[0 len creator.length]
}

function sub_22652e05(?) payable {
    return sub_22652e05[arg1][0 len sub_22652e05[arg1].length]
}

function sub_7e808ad2(?) payable {
    return sub_7e808ad2[arg1][0 len sub_7e808ad2[arg1].length]
}

function sub_a2d4e262(?) payable {
    return sub_a2d4e262[arg1][0 len sub_a2d4e262[arg1].length]
}

function sub_d61a86bf(?) payable {
    return sub_d61a86bf[arg1]
}

function _fallback() payable {
  stop
}

function uploadSignedString(string arg1) payable {
    sub_22652e05[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}



}
